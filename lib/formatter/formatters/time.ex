defmodule Formatter.Time do
  def seconds_to_podcast_time(seconds) do
    [hours(seconds), minutes(seconds), seconds(seconds)]
    |> Stream.map(&String.pad_leading(&1, 2, "0"))
    |> Enum.join(":")
  end

  defp hours(seconds) do
    seconds
    |> div(3600)
  end

  defp minutes(seconds) do
    seconds
    |> rem(3600)
    |> div(60)
  end

  defp seconds(seconds) do
    seconds
    |> rem(60)
  end
end
