view: sales_by_sku {
  sql_table_name: `Depaul_Demo_DS.sales_by_sku` ;;

  dimension: product_sku {
    type: string
    sql: ${TABLE}.productSKU ;;
  }
  dimension: total_ordered {
    type: number
    sql: ${TABLE}.total_ordered ;;
  }
  measure: count {
    type: count
  }
}
