read_act <- function() {
  board_register_github(repo = "duju211/strava_act", branch = "master")

  df_act <- pin_get("df_act", board = "github", )

  board_disconnect("github")

  return(df_act)
}
