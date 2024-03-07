using customer.z871servce as my from '../db/data-model';

@path : 'browse'
service CatalogService {
  entity OnlyTest as projection on my.OnlyTest;
  entity Books @readonly as projection on my.Books;
  entity Authors @readonly as projection on my.Authors;
  // entity Orders @insertonly as projection on my.Orders;
    entity Orders @readonly as projection on my.Orders;
}
