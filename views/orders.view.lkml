view: orders {
  sql_table_name: `orders.orders`
    ;;
  drill_fields: [
    id,
    created_time,
    campaign,
    user_id,
    user.id
    ]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
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

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
    html: <a href="/dashboards/3?Status={{ value }}">{{ value }}</a> ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.last_name, users.id, users.first_name, order_items.count]
  }


  measure: count_distinct_unique_id {
    label: "本人確認番号数"
    description: "申込ID数"
    type: count_distinct
    sql: ${id} ;;
    link: {label: "上限5000件表示" url: "{{ link }}&limit=5000" }
  }
}
