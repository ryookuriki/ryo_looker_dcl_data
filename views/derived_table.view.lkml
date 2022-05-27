view: derived_table {
  derived_table: {
    sql: SELECT
      id,
      age,
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
