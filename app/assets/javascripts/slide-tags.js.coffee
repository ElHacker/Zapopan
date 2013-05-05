$(document).ready ->
  paramTags = ""
  slider = $(".bxslider").bxSlider(
    controls: false
    pager: false
  )

  # Displays the first three found books using the params tags
  # for a search
  searchBooks = (paramTags) ->
    searchURL = "books/search_with_tags"
    $.get(searchURL, tags: paramTags, (books, textStatus, jqXHR) ->
      book_template = (title, author) -> """
        <a>
          <div class="book">
            <span class="title">#{title}</span>
            <span class="author">#{author}</span>
          </div>
        </a>
      """
      book_list_html = ""
      for book, index in books
        if index < 3
          book_list_html += book_template(book.title, book.author)
        else
          # TODO: not cool
          break
      $(".books.recomendations").prepend(book_list_html)
    )

  # Shows the clicked tags on the ui
  $(".tag").on "click", (event) ->
    event.preventDefault()
    $this = $(this)
    tagName = $this.text()
    prevMsg = $("#msg").text()
    tagMsg = ""
    if prevMsg is `undefined` or prevMsg is ""
      # First time
      tagMsg = tagName + " + "
      paramTags = tagName + ", "
    else
      # Second time
      tagMsg = prevMsg + tagName
      paramTags += tagName
      searchBooks(paramTags)
    $("#msg").text tagMsg
    #$(".more-books").attr("href", "books/search_with_tags?tags=#{paramTags}")
    slider.goToNextSlide()
