library(htmltools)

icon_card <- function(x) {
  div(
    class = "card border-light",
    p(a(
      href = x$link,
      class = "bi huge x$icon_name"
    )),
    div(
      class = "card-body",
      p(a(
        href = x$link,
        class = "btn btn-danger center",
        strong(x$botton_name)
      ))
    )
  )
}

card_group <- function(file) {
  cards <- yaml::yaml.load_file(file)
  div(class = "card-group", tagList(lapply(cards, icon_card)))
}
