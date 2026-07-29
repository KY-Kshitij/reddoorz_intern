
Important: Always call super when appropriate

A common mistake:

def method_missing(method_name, *args)
  puts "Something went wrong"
end

Now every unknown method silently succeeds.

That's dangerous.

Better:

def method_missing(method_name, *args)
  if method_name.to_s.start_with?("find_by_")
    puts "Dynamic finder"
  else
    super
  end
end

This preserves normal Ruby behaviour for unknown methods.