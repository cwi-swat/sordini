module lang::sordini::model::Domains

import lang::sordini::model::Types;

data Domains = domains(list[Decl] decls);

data Decl = decl(str name, Format format, list[str] mask, list[Range] ranges, list[Field] fields);

data Field
  = field(str name);

data Range
  = enum(list[Value] values)
  | range(int fromInt, int toInt)
  | range(real fromReal, real toReal)
  ;  

