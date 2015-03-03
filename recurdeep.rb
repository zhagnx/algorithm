#! /usr/bin/env ruby

# 用程序测试当前ruby所在运行版本,系统所支持的递归调用的最大次数
# 可以在参数里面，通过2分法不断的尝试，得到最大的递归调用次数
# 在我的测试环境结果如下：
# $ruby -v
# ruby 2.0.0p481 (2014-05-08 revision 45883) [universal.x86_64-darwin13]
# $ uname -a
# Darwin 90201667n.local 13.4.0 Darwin Kernel Version 13.4.0: Sun Aug 17 19:50:11 PDT 2014; root:xnu-2422.115.4~1/RELEASE_X86_64 x86_64


def func(n)
  if n == 1
    return "hoge"
  elsif n > 1
    func(n-1)
  end
end
p func ARGV[0].to_i
