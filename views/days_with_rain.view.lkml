view: days_with_rain {
  sql_table_name: `Depaul_Demo_DS.days_with_rain` ;;

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: prcp {
    type: number
    sql: ${TABLE}.prcp ;;
  }
  dimension: station_name {
    type: string
    sql: ${TABLE}.station_name ;;
  }
  measure: count {
    type: count
    drill_fields: [station_name]
  }
}
