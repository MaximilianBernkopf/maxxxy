#' Helper function to apply a function batchwise to a data frame
#'
#' @param df data frame
#' @param function_to_apply_to_party_df function to apply to party df
#' @param values_to_assign values to assign
#' @param packages packages to assign
#'
#' @return data frame after applying function
#'
#' @import dplyr
#' @import multidplyr
#' @export
#'
batch_apply <- function(df, batch_size = 10000, function_to_apply_to_party_df, values_to_assign, packages) {

  splits <- split(1:nrow(df), ceiling(seq_along(1:nrow(df)) / batch_size))

  cluster <- create_cluster() %>%
    cluster_assign_value("function_to_apply_to_party_df", function_to_apply_to_party_df)

  for (i in seq(values_to_assign$name)){
    cluster <- cluster %>%
      cluster_assign_value(values_to_assign$name[i], values_to_assign$value[i])
  }

  df_result <- data_frame()

  for (i in seq_along(splits)) {
    message(timestamp(quiet = T))
    message(paste("CURRENT RUN:", i, "OUT OF", length(splits)))

    party_df_before_fun <- df %>%
      slice(splits[[i]]) %>%
      partition(cluster = cluster)

    party_df_after_fun <- function_to_apply_to_party_df(party_df_before_fun)

    df_current_result <- party_df_after_fun %>%
      collect() %>%
      ungroup() %>%
      select(-c(PARTITION_ID))

    df_result <- bind_rows(df_result, df_current_result)

    rm(party_df_before_fun, party_df_after_fun, df_current_result)
    gc()
  }

  return(df_result)
}
