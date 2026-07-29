#Hidden edge case

nil && 100
#=> nil
#Not false.

#It returns the actual object.


10 && 20
#=> 20

#Why?
#Because both are truthy.

#Ruby returns last evaluated value.
#&& returns first falsy value
#or last truthy value
#false dominates