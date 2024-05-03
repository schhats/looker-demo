view: product_list {
  sql_table_name: `Depaul_Demo_DS.product_list` ;;

  dimension: product_sku {
    type: string
    sql: ${TABLE}.productSKU ;;
  }
  dimension: v2_product_name {
    type: string
    sql: ${TABLE}.v2ProductName ;;
  }
  measure: count {
    type: count
    drill_fields: [v2_product_name]
  }
}
