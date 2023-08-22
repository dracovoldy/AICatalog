using CatalogService as service from '../../srv/cat-service';
annotate service.PatternDetails with {
     Pattern_Name   @(Common : {                      //field name from PatternDetails entity  
        ValueListWithFixedValues : true,
        ValueList                : {
            CollectionPath : 'PatternColor',      //entity name
            Parameters     : [{
                $Type             : 'Common.ValueListParameterInOut',
                LocalDataProperty : Pattern_Name,
                ValueListProperty : 'Color_ID'             //Color Entity field name 
            }]
        },
    }, );
}

annotate service.PatternDetails with {
@UI.MultiLineText
    Description;
@UI.Hidden  
    Critical ;
};

annotate service.PatternDetails with @(
    UI.HeaderInfo : 
        {
            TypeName : 'PatternDetails',
            TypeNamePlural : 'PatternDetails',
        },

    
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Pattern Colour',
            Value : Pattern_Name,
           // CriticalityRepresentation : #WithoutIcon,
            Criticality : Critical,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Pattern ID',
            Value : Pattern_ID,
        },

        {
           $Type : 'UI.DataField',
            Label : 'Pattern Description',
            Value : Description,
        },

        {
           $Type : 'UI.DataField',
            Label : 'Keyword',
            Value : Keyword,
        },
    ]
);

annotate service.PatternDetails with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
                    {
            $Type : 'UI.DataField',
            Label : 'Pattern Colour',
            Value : Pattern_Name,
           // CriticalityRepresentation : #WithoutIcon,
            Criticality : Critical,
        },
            {
            $Type : 'UI.DataField',
            Label : 'Pattern ID',
            Value : Pattern_ID,
        },

        {
           $Type : 'UI.DataField',
            Label : 'Pattern Description',
            Value : Description,
        },

        {
           $Type : 'UI.DataField',
            Label : 'Keyword',
            Value : Keyword,
        },
        ],
    },

    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
