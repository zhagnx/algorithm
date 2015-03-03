#! /usr/bin/env ruby


def func(n)
  if n == 1 then
    return "hoge"
  elsif n > 1
    func(n-1)
  end
end
p func ARGV[0].to_i
