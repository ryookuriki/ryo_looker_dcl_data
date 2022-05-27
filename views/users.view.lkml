view: users {
  sql_table_name: `orders.users`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  measure: age_sum {
    type: sum
    sql: ${age} ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.traffic_source ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [id, last_name, first_name, orders.count]
  }

  #------------

  parameter: product_name {
    label: "Column"
    type: string
    allowed_value: {
      label: "Start Time"
      value: "start_time"
    }
    allowed_value: {
      label: "End Time"
      value: "end_times"
    }
  }

    dimension: time {
    label: "{% parameter product_name %}"
    type: string
    sql:
    CASE
    WHEN {% parameter product_name %} = 'start_time' THEN ${first_name}
    WHEN {% parameter product_name %} = 'end_time' THEN ${last_name}
    END
    ;;
  }
}
