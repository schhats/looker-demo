view: sales_report {
  sql_table_name: `Depaul_Demo_DS.sales_report` ;;

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: product_sku {
    type: string
    sql: ${TABLE}.productSKU ;;
  }
  dimension: ratio {
    type: number
    sql: ${TABLE}.ratio ;;
  }
  dimension: restocking_lead_time {
    type: number
    sql: ${TABLE}.restockingLeadTime ;;
  }
  dimension: sentiment_magnitude {
    type: number
    sql: ${TABLE}.sentimentMagnitude ;;
  }
  dimension: sentiment_score {
    type: number
    sql: ${TABLE}.sentimentScore ;;
  }
  dimension: stock_level {
    type: number
    sql: ${TABLE}.stockLevel ;;
  }
  dimension: total_ordered {
    type: number
    sql: ${TABLE}.total_ordered ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
