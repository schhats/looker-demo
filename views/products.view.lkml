view: products {
  sql_table_name: `Depaul_Demo_DS.products` ;;

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: ordered_quantity {
    type: number
    sql: ${TABLE}.orderedQuantity ;;
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
  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }
  dimension: stock_level {
    type: number
    sql: ${TABLE}.stockLevel ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
