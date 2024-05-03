view: all_sessions_raw {
  sql_table_name: `Depaul_Demo_DS.all_sessions_raw` ;;

  dimension: channel_grouping {
    type: string
    sql: ${TABLE}.channelGrouping ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: currency_code {
    type: string
    sql: ${TABLE}.currencyCode ;;
  }
  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }
  dimension: e_commerce_action_option {
    type: string
    sql: ${TABLE}.eCommerceAction_option ;;
  }
  dimension: e_commerce_action_step {
    type: number
    sql: ${TABLE}.eCommerceAction_step ;;
  }
  dimension: e_commerce_action_type {
    type: string
    sql: ${TABLE}.eCommerceAction_type ;;
  }
  dimension: full_visitor_id {
    type: string
    sql: ${TABLE}.fullVisitorId ;;
  }
  dimension: item_quantity {
    type: number
    sql: ${TABLE}.itemQuantity ;;
  }
  dimension: item_revenue {
    type: number
    sql: ${TABLE}.itemRevenue ;;
  }
  dimension: page_path_level1 {
    type: string
    sql: ${TABLE}.pagePathLevel1 ;;
  }
  dimension: page_title {
    type: string
    sql: ${TABLE}.pageTitle ;;
  }
  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
  }
  dimension: product_price {
    type: number
    sql: ${TABLE}.productPrice ;;
  }
  dimension: product_quantity {
    type: number
    sql: ${TABLE}.productQuantity ;;
  }
  dimension: product_refund_amount {
    type: number
    sql: ${TABLE}.productRefundAmount ;;
  }
  dimension: product_revenue {
    type: number
    sql: ${TABLE}.productRevenue ;;
  }
  dimension: product_sku {
    type: string
    sql: ${TABLE}.productSKU ;;
  }
  dimension: product_variant {
    type: string
    sql: ${TABLE}.productVariant ;;
  }
  dimension: search_keyword {
    type: string
    sql: ${TABLE}.searchKeyword ;;
  }
  dimension: session_quality_dim {
    type: number
    sql: ${TABLE}.sessionQualityDim ;;
  }
  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }
  dimension: time_on_site {
    type: number
    sql: ${TABLE}.timeOnSite ;;
  }
  dimension: total_transaction_revenue {
    type: number
    sql: ${TABLE}.totalTransactionRevenue ;;
  }
  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transactionId ;;
  }
  dimension: transaction_revenue {
    type: number
    sql: ${TABLE}.transactionRevenue ;;
  }
  dimension: transactions {
    type: number
    sql: ${TABLE}.transactions ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: v2_product_category {
    type: string
    sql: ${TABLE}.v2ProductCategory ;;
  }
  dimension: v2_product_name {
    type: string
    sql: ${TABLE}.v2ProductName ;;
  }
  dimension: visit_id {
    type: number
    sql: ${TABLE}.visitId ;;
  }
  measure: count {
    type: count
    drill_fields: [v2_product_name]
  }
}
