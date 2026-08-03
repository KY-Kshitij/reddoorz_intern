#Proc created inside method, called outside method

#This is a very important edge case.

def create_proc
  Proc.new do
    return "inside proc"
  end
end

x = create_proc
x.call

#This causes a LocalJumpError.

#while returning anything inside proc 
# it will not only return from the proc but also from the method.


#A lambda's return returns from the lambda itself, not the surrounding method.




# next and return  inside Proc
# This is different:

def t
  x = Proc.new do
    print "p2"
    next
    print "p3" #not executed
  end

  x.call

  print "p4"
end

#output p2p4

def t
  x = Proc.new do
    next 100
  end

  result = x.call

  puts result
end

#Output: 100

def t
  x = Proc.new do
    print "p2"
    return
  end

  print "p1"
  x.call
  print "p3"
end

#output: p1p2