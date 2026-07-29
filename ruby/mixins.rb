#include extend and prepend


class A
  include a
  include b
  include c
end
##note => priority of included module is  c > b > a

module MusicSystem
  def play_music
    puts "Music system installed"
  end
end


# =========================
# Using include
# =========================

class CarFactory
  include MusicSystem
end

car = CarFactory.new

car.play_music       # ✅
CarFactory.play_music # ❌

# =========================
# Using extend
# =========================

class CarFactory2
  extend MusicSystem
end

car = CarFactory2.new

car.play_music        # ❌
CarFactory2.play_music # ✅



##ancestors - include

# car object
#     ↓
# CarFactory
#     ↓
# MusicSystem
#     ↓
# Object
#     ↓
# Kernel
#     ↓
# BasicObject


##singleton_ancestors - extend

# CarFactory2
#     ↓
# CarFactory2s singleton class
#     ↓
# MusicSystem
#     ↓
# Class
#     ↓
# Module
#     ↓
# Object
#     ↓
# Kernel
#     ↓
# BasicObject


# prepend

class CarFactory
  prepend MusicSystem
end

##ancestors - prepend

# music system
#     ↓
# CarFactory
#     ↓
# Object
#     ↓
# Kernel
#     ↓
# BasicObject
