defmodule PracticeWeb.PageController do
  use PracticeWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def double(conn, %{"x" => x}) do
    y = case Integer.parse(x) do
       {x, _} -> Practice.double(x)
       _ ->  ""
    end
    render conn, "double.html", x: x, y: y
  end

  def calc(conn, %{"expr" => expr}) do
    y = Practice.calc(expr)
    render conn, "calc.html", expr: expr, y: y
  end

  def factor(conn, %{"x" => x}) do
    y = Practice.factor(x)
    render conn, "factor.html", x: x, y: y
  end

  def palindrome(conn, %{"x" => x}) do
    y = Practice.palindrome(x)
    render conn, "palindrome.html", x: x, y: y
  end
end