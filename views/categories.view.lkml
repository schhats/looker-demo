view: categories {
  sql_table_name: `Depaul_Demo_DS.categories` ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: product_sku {
    type: string
    sql: ${TABLE}.productSKU ;;
  }
  measure: count {
    type: count
  }
}
