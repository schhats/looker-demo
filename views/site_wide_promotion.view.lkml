view: site_wide_promotion {
  sql_table_name: `Depaul_Demo_DS.site_wide_promotion` ;;

  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }
  measure: count {
    type: count
  }
}
