#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
   # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    navbarPage(
      # theme = bslib::bs_theme(
      #   version = 5
      # ),
      id = 'navbar',
      title = "HRFLOW",
      tabPanel(
        id = "navbar-dash",
        title = "Dashboard"
      ),
      tabPanel(
        id = "navbar-employ",
        title = "Employee"
      ),
      tabPanel(
        id = "navbar-recrut",
        title = "Recrutiment"
      ),
      tabPanel(
        id = "navbar-pay",
        title = "Payroli"
      ),
      tabPanel(
        id = "navbar-report",
        title = "Reports"
      ),
      # footer = div(
      # tags$footer()
      # )
    ),
    # tags$footer(
    #   class="footer",
    #   p(
    #     class="text-copyright",
    #     "Site desenvolvido por: ",
    #     tags$a(href = "https://github.com/czargab18", "czargab18")
    #     )
    #   )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "DashboardShiny"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
