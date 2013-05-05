$(document).ready ->
  paramTags = []
  slider = $(".bxslider").bxSlider(
    controls: false
    pager: false
  )

  # Displays the first three found books using the params tags
  # for a search
  searchBooks = (paramTags) ->
    searchURL = "books/search_with_tags.json"
    $.get(searchURL, tags: paramTags, (books, textStatus, jqXHR) ->
      book_template = (id, title, author) -> """
        <a href='books/#{id}'>
          <div class="book">
            <span class="title">#{title}</span>
            <span class="author">#{author}</span>
          </div>
        </a>
      """
      book_list_html = ""
      for book, index in books
        if index < 3
          book_list_html += book_template(book.id, book.title, book.author)
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
    paramTags.push tagName
    prevMsg = $("#msg").text()
    tagMsg = ""
    if prevMsg is `undefined` or prevMsg is ""
      # First time
      $("h1.head-quote #message").html("Libros de:")
      $("h1.head-quote").append("<span id='msg'></span>")
      tagMsg = tagName + " + "
    else
      # Second time
      tagMsg = prevMsg + tagName
      searchBooks(paramTags)

    $("#msg").text tagMsg
    $(".more-books").attr("href", "books/search_with_tags?tags=#{paramTags}")
    slider.goToNextSlide()
