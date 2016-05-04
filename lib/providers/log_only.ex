defmodule Sms.LogOnly do
  @behaviour Sms.SmsProvider
  require Logger
  
  def send(phone, content, options \\ []) do
    Logger.info("Sending SMS to #{phone} with content: #{content}")
    {:ok, "logged"}
  end
end