view: derived_table {
  derived_table: {
    sql: SELECT
      id,
      age,
      ARRY_AGG(id ORDER BY {% parameter.part_char_aggregation_strategy %} deck_char_id,
      COUNT(*) AS count
      FROM
      `looker-dcl-data.orders.users`
      WHERE
      {% condition gender %} gender {% endcondition %}
      GROUP BY
      id,
      age
      ;;
  }

  parameter: part_char_aggregation_strategy{}

  filter: gender {
    type: string
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }


}
