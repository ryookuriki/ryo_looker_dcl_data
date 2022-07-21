  view: users {
    sql_table_name: `orders.users`
      ;;
    drill_fields: [
      created_time,
      id,
      age,
      city,
      country,
      email,
      first_name,
      last_name,
      zip,
      state,
      traffic_source


      ]

    dimension: id {
      primary_key: yes
      type: number
      sql: ${TABLE}.id ;;
    }

    dimension: age {
      label: "ねんれいいいいいいいい"
      type: number
      sql: ${TABLE}.age ;;
    }

    measure: age_sum {
      type: sum
      sql: ${age} ;;
    }

    dimension: city {
      label: "まちいいいいいいい"
      type: string
      sql: ${TABLE}.city ;;
    }

    dimension: country {
      label: "くにいいいいいいい"
      type: string
      map_layer_name: countries
      sql: ${TABLE}.country ;;
    }

    dimension_group: created {
      type: time
      label: "申請管理作成日時"

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
      label: "いーめーる"
      type: string
      sql: ${TABLE}.email ;;
    }

    dimension: first_name {
      label: "ファーストネーム"
      type: string
      sql: ${TABLE}.first_name ;;
    }

    dimension: gender {
      label: "せいべつつつつつつつっつつつ"
      type: string
      sql: ${TABLE}.gender ;;
    }

    dimension: last_name {
      label: "苗字苗字"
      type: string
      sql: ${TABLE}.last_name ;;
    }

    dimension: state {
      label: "すてーと"
      type: string
      sql: ${TABLE}.state ;;
    }

    dimension: traffic_source {
      label: "とらふぃっくそーす"
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

    dimension: flag_1 {
      type: yesno
      # sql: ${TABLE}.gender = 'm';;
      sql: ${TABLE}.gender;;

      label: "APPLICATION_FLAG1"
      group_label: "APPLICATION_FLAGS"
    }
    dimension: flag_2 {
      type: yesno
      # sql: ${TABLE}.gender = 'm';;
      sql: ${TABLE}.gender;;

      label: "APPLICATION_FLAG2"
      group_label: "APPLICATION_FLAGS"
    }
    dimension: flag_3 {
      type: yesno
      # sql: ${TABLE}.gender = 'm';;
      sql: ${TABLE}.gender;;

      label: "APPLICATION_FLAG3"
      group_label: "APPLICATION_FLAGS"
    }
    dimension: flag_4 {
      type: yesno
      # sql: ${TABLE}.gender = 'm';;
      sql: ${TABLE}.gender;;

      label: "APPLICATION_FLAG4"
      group_label: "APPLICATION_FLAGS"
    }
    dimension: flag_5 {
      type: yesno
      # sql: ${TABLE}.gender = 'm';;
      sql: ${TABLE}.gender;;

      label: "APPLICATION_FLAG5"
      group_label: "APPLICATION_FLAGS"
    }
    dimension: flag_6 {
      type: yesno
      # sql: ${TABLE}.gender = 'm';;
      sql: ${TABLE}.gender;;

      label: "APPLICATION_FLAG6"
      group_label: "APPLICATION_FLAGS"
    }
    dimension: flag_7 {
      type: yesno
      # sql: ${TABLE}.gender = 'm';;
      sql: ${TABLE}.gender;;

      label: "APPLICATION_FLAG7"
      group_label: "APPLICATION_FLAGS"
    }
    dimension: flag_8 {
      type: yesno
      # sql: ${TABLE}.gender = 'm';;
      sql: ${TABLE}.gender;;

      label: "APPLICATION_FLAG8"
      group_label: "APPLICATION_FLAGS"
    }
    dimension: flag_9 {
      type: yesno
      # sql: ${TABLE}.gender = 'm';;
      sql: ${TABLE}.gender;;

      label: "APPLICATION_FLAG9"
      group_label: "APPLICATION_FLAGS"
    }




    measure: count_distinct_unique_id {
      label: "本人確認番号数"
      description: "申込ID数"
      type: count_distinct
      sql: ${id} ;;
      link: {label: "上限5000件表示" url: "{{ link }}&limit=5000" }
    }

    dimension_group: _data {
      type: time
      timeframes: [
        raw,
        date,
        day_of_month,
        week,
        day_of_week,
        month,
        quarter,
        year
      ]
      convert_tz: no
      datatype: date
      sql: ${TABLE}.created_at ;;
    }

    dimension: day_of_week_colored {
      group_label: "Data Date"
      sql: ${_data_day_of_week} ;;
      html:
          {% if value != "Sunday" and value != "Saturday"%}
          <span style="color:green;">{{ value }}</span>
          {% else %}
          <span style="color:blue;">{{ value }}</span>
          {% endif %}
          ;;
    }


  }
