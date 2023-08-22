const proxy = require('@sap/cds-odata-v2-adapter-proxy');
const cds = require('@sap/cds');

/* For releases before cds 7:
replace:
cds.env.production === false
with:
process.env.NODE_ENV !== 'production'
*/
if (process.env.NODE_ENV !== 'production') {
    const { cds_launchpad_plugin } = require('cds-launchpad-plugin');
    cds.on('bootstrap', app => app.use(proxy()));

    // Enable launchpad plugin
    cds.once('bootstrap', (app) => {
        const handler = new cds_launchpad_plugin();
        app.use(handler.setup({ theme: 'sap_horizon', version: '1.99.0' }));
    });
}

module.exports = cds.server;
