# The singleton-class ancestor puzzle
module M
  def x
    "M"
  end
end

class A
  include M
end

class B < A
end

class << B   #means open singelton class of B    ##no effect on B ke ancestors
  prepend M
end

p B.ancestors                 #ans B,A,M,object...
p B.singleton_class.ancestors #ans M... (same as below)

#this means while opening class and adding prepend will add it to singelton class methods


module M
  def x
    "M"
  end
end

class A
  include M
end

class B < A
  prepend M
end

p B.ancestors                  #ans M,B,A,M,object,Kernel,BasicObject
p B.singleton_class.ancestors  #ans class B, class A, class object, class Basicobject, class, module, object....