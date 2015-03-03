#!/usr/bin/env ruby 

#不允许使用四则运算实现两个正数字的和

def recuadd(a, b)
  return a unless b != 0
  recuadd(a^b, (a&b)<<1)
end

p recuadd(5, 6)
p recuadd(0, 6)
p recuadd(100, -9999999)
p recuadd(-30, -10)
p recuadd(30, -10)
