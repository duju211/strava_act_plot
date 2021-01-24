source("libraries.R")
dir_ls("R") %>%
  walk(source)

act_plot_plan <- drake_plan(
  df_act_ids = act_ids(),
  df_act = read_act(),
  df_act_meas_nested = read_meas_nested(df_act_ids),
  df_act_meas = unnest(df_act_meas_nested, meas),
  gg_act_meas = vis_act_meas(df_act, df_act_meas)
)

drake_config(act_plot_plan)
