using { Pattern.db } from '../db/data-model';

service CatalogService 
     @(requires : ['authenticated-user'])
{
     @(restrict : [{
        grant : ['READ'],
        to    : 'Display'
    },
    {
        grant : ['READ','CREATE','UPDATE','DELETE'],
        to    : 'Manage'
    },
    ])
     entity PatternDetails as projection on db.PatternDetails;
     entity PatternColor as projection on db.Color;
     entity GeneratePatterns as projection on db.GeneratePatterns;
}
