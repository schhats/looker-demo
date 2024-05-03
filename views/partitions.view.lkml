view: partitions {
  sql_table_name: `Depaul_Demo_DS.partitions` ;;

  dimension_group: date_formatted {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_formatted ;;
  }
  dimension: total_transactions {
    type: number
    sql: ${TABLE}.total_transactions ;;
  }
  measure: count {
    type: count
  }
}
