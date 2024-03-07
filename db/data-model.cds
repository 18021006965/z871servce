namespace customer.z871servce;
using { Country, managed } from '@sap/cds/common';

@cds.persistence.skip
entity OnlyTest{
  key id: Integer;
  title: String;
}

// @cds.persistence.exists
entity Books {
  key ID : Integer;
  title  : localized String;
  author : Association to Authors;
  stock  : Integer;
}

@cds.persistence.skip
entity Authors {
  key ID : Integer;
  name   : String;
  books  : Association to many Books on books.author = $self;
}

// @cds.persistence.exists
entity Orders : managed {
  key ID  : UUID;
  book    : Association to Books;
  country : Country;
  amount  : Integer;
}
