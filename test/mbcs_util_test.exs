defmodule MbcsUtilTest do
  use ExUnit.Case
  doctest MbcsUtil

  test "encode" do
    assert MbcsUtil.encode("你好世界！Hello world", :gbk) ==
             {:ok,
              <<196, 227, 186, 195, 202, 192, 189, 231, 163, 161, 72, 101, 108, 108, 111, 32, 119,
                111, 114, 108, 100>>}
  end

  test "encode!" do
    assert MbcsUtil.encode!("你好世界！Hello world", :gbk) ==
             <<196, 227, 186, 195, 202, 192, 189, 231, 163, 161, 72, 101, 108, 108, 111, 32, 119,
               111, 114, 108, 100>>
  end

  test "decode" do
    assert MbcsUtil.decode(
             <<196, 227, 186, 195, 202, 192, 189, 231, 163, 161, 72, 101, 108, 108, 111, 32, 119,
               111, 114, 108, 100>>,
             :gbk
           ) == {:ok, "你好世界！Hello world"}
  end

  test "from_to" do
    assert MbcsUtil.from_to(
             <<196, 227, 186, 195, 202, 192, 189, 231, 163, 161, 72, 101, 108, 108, 111, 32, 119,
               111, 114, 108, 100>>,
             :gbk,
             :utf8
           ) == {:ok, "你好世界！Hello world"}
  end
end
