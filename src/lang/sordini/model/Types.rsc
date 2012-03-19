module lang::sordini::model::Types

data Type
  = format(Format format)
  | domain(str name) 
  ;

data Format
  = alpha(int length)
  | alphaNumeric(int length)
  | alphaNumericUpTo(int bound)
  | numeric(int length)
  | numericUpTo(int bound)
  | integer(int length)
  | integerUpTo(int bound)
  ;
