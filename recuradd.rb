#!/usr/bin/env ruby 

# 不允许使用四则运算实现两个数字的和
# 注意在某些例子中，有可能由于循环的次数超过系统所限制的次数，从而抛出“stack level too deep (SystemStackError)” 异常

def recuadd(a, b)
  return a unless b != 0
  recuadd(a^b, (a&b)<<1)
end

p recuadd(5, 6)
p recuadd(0, 6)
p recuadd(100, -9999999)
p recuadd(-30, -10)
p recuadd(30, -10)
