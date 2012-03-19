module lang::sordini::model::Form

import lang::sordini::model::Types;

data Form
  = form(str name, list[Node] nodes);

data Node
  = section(str longname, int lowerBound, int upperBound, list[Node] kids)
  | datum(str longname, Id name, Type \type, list[MetaData] metaData); 
 
data MetaData
  = definition(str text)
  | description(str text)
  | algorithm(str text)
  | reference(str text)
  | source(str text)
  | rule(str label, Exp exp)
  | formula(Exp exp)
  | usedBy(list[Id] ids)
  ;

data Id 
  = id(str name)
  ;

data Exp
  = call(str name, Exp arg)
  | datum(Id id)
  | field(Exp arg, Id id)
  | const(Value \value)
  | sum(Exp arg) 
  | abs(Exp arg)
  | not(Exp arg)
  | right(Exp arg1, Exp arg2) 
  | left(Exp arg1, Exp arg2) 
  | max(Exp arg1, Exp arg2) 
  | min(Exp arg1, Exp arg2) 
  | pos(Exp arg)
  | add(Exp lhs, Exp rhs) 
  | sub(Exp lhs, Exp rhs) 
  | mul(Exp lhs, Exp rhs) 
  | div(Exp lhs, Exp rhs) 
  | eq(Exp lhs, Exp rhs) 
  | leq(Exp lhs, Exp rhs) 
  | geq(Exp lhs, Exp rhs) 
  | gt(Exp lhs, Exp rhs) 
  | lt(Exp lhs, Exp rhs)
  | and(Exp lhs, Exp rhs)
  | or(Exp lhs, Exp rhs)
  | defined(Exp arg)
  | isDefined(Exp arg)
  | isUndefined(Exp arg)
  | ifThen(Exp cond, Exp body)
  | ifThenElse(Exp cond, Exp body, Exp elseBody)
  | parseError(str src, loc l) 
  ;


data Value
  = symbol(Id id)
  | string(str strValue)
  | integer(int intValue)
  ;

    