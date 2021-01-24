act_ids <- function() {
  board_register_github(repo = "duju211/strava_act")

  df_act_ids <- pin_find(board = "github") %>%
    transmute(
      id = str_extract(str_extract(name, "act_\\d+"), "\\d+"),
      `athlete.id` = str_extract(name, "\\d+$")) %>%
    filter(!is.na(id))

  board_disconnect("github")

  return(df_act_ids)
}
