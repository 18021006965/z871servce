using CatalogService from '../../srv/cat-service';

annotate CatalogService.Books with @(UI : {
  HeaderInfo  : {
      TypeName : 'Book',
      TypeNamePlural : 'Books',
  },
});

annotate CatalogService.Books with @(UI : {
  HeaderInfo  : {
      TypeName : 'Book',
      TypeNamePlural : 'Books',
  },
  LineItem : [
      { Value: ID,
       Label: 'BOOK ID'
      },
      { Value: stock,
        Label: 'STOCK QUAN'
      },
      {Value: title,
       Label: 'BOOK Title'
      }
  ],
  PresentationVariant : {
      Text           : 'Default',
      SortOrder      : [{Property : title}],
      Visualizations : ['@UI.LineItem']
    },
});