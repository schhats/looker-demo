view: rev_transactions {
  sql_table_name: `Depaul_Demo_DS.rev_transactions` ;;

  dimension: channel_grouping {
    type: string
    sql: ${TABLE}.channelGrouping ;;
  }
  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }
  dimension: full_visitor_id {
    type: string
    sql: ${TABLE}.fullVisitorId ;;
  }
  dimension: geo_network_city {
    type: string
    sql: ${TABLE}.geoNetwork_city ;;
  }
  dimension: geo_network_country {
    type: string
    sql: ${TABLE}.geoNetwork_country ;;
  }
  dimension: hits_item_currency_code {
    type: string
    sql: ${TABLE}.hits_item_currencyCode ;;
  }
  dimension: hits_item_item_quantity {
    type: number
    sql: ${TABLE}.hits_item_itemQuantity ;;
  }
  dimension: hits_item_item_revenue {
    type: number
    sql: ${TABLE}.hits_item_itemRevenue ;;
  }
  dimension: hits_page_page_path_level1 {
    type: string
    sql: ${TABLE}.hits_page_pagePathLevel1 ;;
  }
  dimension: hits_page_page_title {
    type: string
    sql: ${TABLE}.hits_page_pageTitle ;;
  }
  dimension: hits_page_search_keyword {
    type: string
    sql: ${TABLE}.hits_page_searchKeyword ;;
  }
  dimension: hits_product_product_price {
    type: number
    sql: ${TABLE}.hits_product_productPrice ;;
  }
  dimension: hits_product_product_quantity {
    type: number
    sql: ${TABLE}.hits_product_productQuantity ;;
  }
  dimension: hits_product_product_refund_amount {
    type: number
    sql: ${TABLE}.hits_product_productRefundAmount ;;
  }
  dimension: hits_product_product_revenue {
    type: number
    sql: ${TABLE}.hits_product_productRevenue ;;
  }
  dimension: hits_product_product_sku {
    type: string
    sql: ${TABLE}.hits_product_productSKU ;;
  }
  dimension: hits_product_product_variant {
    type: string
    sql: ${TABLE}.hits_product_productVariant ;;
  }
  dimension: hits_product_v2_product_category {
    type: string
    sql: ${TABLE}.hits_product_v2ProductCategory ;;
  }
  dimension: hits_product_v2_product_name {
    type: string
    sql: ${TABLE}.hits_product_v2ProductName ;;
  }
  dimension: hits_time {
    type: number
    sql: ${TABLE}.hits_time ;;
  }
  dimension: hits_transaction_transaction_id {
    type: string
    sql: ${TABLE}.hits_transaction_transactionId ;;
  }
  dimension: hits_transaction_transaction_revenue {
    type: number
    sql: ${TABLE}.hits_transaction_transactionRevenue ;;
  }
  dimension: hits_type {
    type: string
    sql: ${TABLE}.hits_type ;;
  }
  dimension: totals_pageviews {
    type: number
    sql: ${TABLE}.totals_pageviews ;;
  }
  dimension: totals_time_on_site {
    type: number
    sql: ${TABLE}.totals_timeOnSite ;;
  }
  dimension: totals_total_transaction_revenue {
    type: number
    sql: ${TABLE}.totals_totalTransactionRevenue ;;
  }
  dimension: totals_transactions {
    type: number
    sql: ${TABLE}.totals_transactions ;;
  }
  dimension: visit_id {
    type: number
    sql: ${TABLE}.visitId ;;
  }
  measure: count {
    type: count
    drill_fields: [hits_product_v2_product_name]
  }
}
