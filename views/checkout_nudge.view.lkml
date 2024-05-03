view: checkout_nudge {
  sql_table_name: `Depaul_Demo_DS.checkout_nudge` ;;

  dimension: e_commerce_action_type_max {
    type: string
    sql: ${TABLE}.eCommerceAction_type_max ;;
  }
  dimension: full_visitor_id {
    type: string
    sql: ${TABLE}.fullVisitorID ;;
  }
  dimension: number_of_products_viewed {
    type: number
    sql: ${TABLE}.number_of_products_viewed ;;
  }
  dimension: number_of_sessions {
    type: number
    sql: ${TABLE}.number_of_sessions ;;
  }
  dimension: session_time_on_site_minutes_max {
    type: number
    sql: ${TABLE}.session_time_on_site_minutes_max ;;
  }
  measure: count {
    type: count
  }
}
