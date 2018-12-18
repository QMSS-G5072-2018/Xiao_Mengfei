#' @title Merged Dataset
#'
#' @description
#' This is the merged dataset collected from web scraping and API these two methods.
#'
#' @format A data frame with 17 rows and 12 variables.
#'
#' @source
#' 1.\url{https://m.qtx.com/dbsoccer/stading_92_2018.html}
#' 2.\url{https://api.football-data.org/v2/teams/86/matches?status=SCHEDULED.}
"football.teams"
globalVariables("football.teams")
