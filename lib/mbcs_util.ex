defmodule MbcsUtil do
  @moduledoc """
  Documentation for MbcsUtil.
  """

  defdelegate encode(string, to, options \\ []), to: MbcsUtil.Mbcs
  defdelegate encode!(string, to, options \\ []), to: MbcsUtil.Mbcs
  defdelegate decode(string, from, options \\ []), to: MbcsUtil.Mbcs
  defdelegate decode!(string, from, options \\ []), to: MbcsUtil.Mbcs
  defdelegate from_to(string, from, to, options \\ []), to: MbcsUtil.Mbcs
  defdelegate from_to!(string, from, to, options \\ []), to: MbcsUtil.Mbcs
end
