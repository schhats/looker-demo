connection: "gps-ax-lakehouse-bq"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: depauldemo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: depauldemo_default_datagroup

explore: all_sessions_raw {}

explore: all_sessions {}

explore: days_with_rain {}

explore: categories {}

explore: classification_model_2_results {
    join: classification_model_2_results__predicted_will_buy_on_return_visit_probs {
      view_label: "Classification Model 2 Results: Predicted Will Buy On Return Visit Probs"
      sql: LEFT JOIN UNNEST(${classification_model_2_results.predicted_will_buy_on_return_visit_probs}) as classification_model_2_results__predicted_will_buy_on_return_visit_probs ;;
      relationship: one_to_many
    }
}

explore: checkout_nudge {}

explore: partitions {}

explore: partition_by_day {}

explore: rev_transactions {}

explore: product_list {}

explore: products {}

explore: site_wide_promotion {}

explore: sales_report {}

explore: sales_by_sku {}

explore: web_analytics {
    join: web_analytics__hits {
      view_label: "Web Analytics: Hits"
      sql: LEFT JOIN UNNEST(${web_analytics.hits}) as web_analytics__hits ;;
      relationship: one_to_many
    }
    join: web_analytics__custom_dimensions {
      view_label: "Web Analytics: Customdimensions"
      sql: LEFT JOIN UNNEST(${web_analytics.custom_dimensions}) as web_analytics__custom_dimensions ;;
      relationship: one_to_many
    }
    join: web_analytics__hits__product {
      view_label: "Web Analytics: Hits Product"
      sql: LEFT JOIN UNNEST(${web_analytics__hits.product}) as web_analytics__hits__product ;;
      relationship: one_to_many
    }
    join: web_analytics__hits__promotion {
      view_label: "Web Analytics: Hits Promotion"
      sql: LEFT JOIN UNNEST(${web_analytics__hits.promotion}) as web_analytics__hits__promotion ;;
      relationship: one_to_many
    }
    join: web_analytics__hits__custom_metrics {
      view_label: "Web Analytics: Hits Custommetrics"
      sql: LEFT JOIN UNNEST(${web_analytics__hits.custom_metrics}) as web_analytics__hits__custom_metrics ;;
      relationship: one_to_many
    }
    join: web_analytics__hits__custom_variables {
      view_label: "Web Analytics: Hits Customvariables"
      sql: LEFT JOIN UNNEST(${web_analytics__hits.custom_variables}) as web_analytics__hits__custom_variables ;;
      relationship: one_to_many
    }
    join: web_analytics__hits__custom_dimensions {
      view_label: "Web Analytics: Hits Customdimensions"
      sql: LEFT JOIN UNNEST(${web_analytics__hits.custom_dimensions}) as web_analytics__hits__custom_dimensions ;;
      relationship: one_to_many
    }
    join: web_analytics__hits__experiment {
      view_label: "Web Analytics: Hits Experiment"
      sql: LEFT JOIN UNNEST(${web_analytics__hits.experiment}) as web_analytics__hits__experiment ;;
      relationship: one_to_many
    }
    join: web_analytics__hits__publisher_infos {
      view_label: "Web Analytics: Hits Publisher Infos"
      sql: LEFT JOIN UNNEST(${web_analytics__hits.publisher_infos}) as web_analytics__hits__publisher_infos ;;
      relationship: one_to_many
    }
    join: web_analytics__hits__product__custom_metrics {
      view_label: "Web Analytics: Hits Product Custommetrics"
      sql: LEFT JOIN UNNEST(${web_analytics__hits__product.custom_metrics}) as web_analytics__hits__product__custom_metrics ;;
      relationship: one_to_many
    }
    join: web_analytics__hits__product__custom_dimensions {
      view_label: "Web Analytics: Hits Product Customdimensions"
      sql: LEFT JOIN UNNEST(${web_analytics__hits__product.custom_dimensions}) as web_analytics__hits__product__custom_dimensions ;;
      relationship: one_to_many
    }
}

