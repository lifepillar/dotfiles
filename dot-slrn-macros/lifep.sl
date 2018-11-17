implements("lifep");

define article_down()
{
  if (is_article_visible())
  {
    call("article_line_down");
  }
  else
  {
    call("header_line_down");
    return;
  }
}
definekey("lifep->article_down", "j", "article");

define article_up()
{
  if (is_article_visible())
  {
    call("article_line_up");
  }
  else
  {
    call("header_line_up");
    return;
  }
}
definekey("lifep->article_up", "k", "article");

define article_page_down()
{
  if (is_article_visible())
  {
    call("article_page_down");
  }
  else
  {
    call("header_page_down");
    return;
  }
}
definekey("lifep->article_page_down", "^F", "article");

define article_page_up()
{
  if (is_article_visible())
  {
    call("article_page_up");
  }
  else
  {
    call("header_page_up");
    return;
  }
}
definekey("lifep->article_page_up", "^B", "article");

