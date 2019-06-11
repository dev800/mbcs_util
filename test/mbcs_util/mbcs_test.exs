defmodule MbcsUtil.MbcsTest do
  use ExUnit.Case

  test "mbcs" do
    assert MbcsUtil.Mbcs.encode!("九条カレン", :cp932) == <<139, 227, 143, 240, 131, 74, 131, 140, 131, 147>>
    assert MbcsUtil.Mbcs.decode!([139, 227, 143, 240, 131, 74, 131, 140, 131, 147], :cp932, return: :list) == [20061, 26465, 12459, 12524, 12531]
  end
end
