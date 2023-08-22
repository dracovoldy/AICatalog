const cds = require('@sap/cds');
class CatalogService extends cds.ApplicationService {
    async init() {
     const { PatternDetails,PatternColor } = this.entities;
     const clientConnect = await cds.connect.to('db');
     //Custom handlers

     this.on('READ', PatternColor, async (req, res) => {
      var responseS4 = await clientConnect.tx(req).run(req.query);
      return responseS4;       //color value dropdown
     });

     this.on('READ', PatternDetails, async (req, res) => {
         var responseS4 = await clientConnect.tx(req).run(req.query);
       var res = responseS4;
       for(var i = 0; i<res.length;i++){
        if(res[i].Pattern_Name === 'Green'){
          res[i].Critical = 3
        }
        if(res[i].Pattern_Name === 'Yellow'){
          res[i].Critical = 2
        }
        if(res[i].Pattern_Name === 'Red'){
          res[i].Critical = 1
        }
       }
       
     return res;
   });
        await super.init()
    }
}
module.exports = { CatalogService }