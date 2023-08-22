sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';
    return {
         onInit: function () {
            var combobox =  this.getView().byId("com.deloitte.btp.patternui::sap.suite.ui.generic.template.ObjectPage.view.Details::PatternDetails--GeneratedFacet1::Pattern_Name::Field");
                combobox.addEventDelegate({
    
                  onclick: () => { 
                    this.open(); 
                  }, 
                  onkeydown: (e) => {  
                    e.preventDefault(); 
                  },
                  
                });
        },
    };
});