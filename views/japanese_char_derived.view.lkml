view: japanese_char_derived {
  # derived_table: {
  #   sql:
  #     select "test" as test, "google" as google, "looker" as looker, null as number
  #     union all
  #     select "テスト" as test, "グーグル" as google, "ルッカー" as looker, 2 as number
  #     union all
  #     select "てすと" as test, "ぐーぐる" as google, "るっかー" as looker, 3 as number
  #     union all
  #     select "試験" as test, "検索" as google, "分析" as looker, 4 as number
  #     union all
  #     select "試験" as test, null as google, null as looker, 5 as number
  #     union all
  #     select "暑い" as test, "あつい" as google, null as looker, 6 as number
  #     union all
  #     select "夏" as test, "なつ" as google, null as looker, 6 as number
  #     union all
  #     select "あつすぎるるるるる　１１０ｍｌ" as test, "あつ" as google, null as looker, 6 as number
  #     union all
  #     select "あつすぎるるるるる　２１０ｍｌ" as test, "あつ" as google, null as looker, 6 as number
  #     union all
  #     select "あつすぎるるるるる　３１０ｍｌ" as test, "あつ" as google, null as looker, 6 as number
  #     union all
  #     select "あつすぎるるるるる　４１０ｍｌ" as test, "あつ" as google, null as looker, 6 as number
  #     union all
  #     select "あつすぎるるるるる　５１０ｍｌ" as test, "あつ" as google, null as looker, 6 as number
  #     union all
  #     select "あつすぎるるるるる　６１０ｍｌ" as test, "あつ" as google, null as looker, 6 as number
  #     union all
  #     select "あつすぎるるるるる　７１０ｍｌ" as test, "あつ" as google, null as looker, 6 as number
  #     union all
  #     select "あつすぎるるるるる　８１０ｍｌ" as test, "あつ" as google, null as looker, 6 as number
  #     union all
  #     select "あつすぎるるるるる　９１０ｍｌ" as test, "あつ" as google, null as looker, 6 as number
  #     union all
  #     select "あつすぎるるるるる　１２０ｍｌ" as test, "あつ" as google, null as looker, 6 as number
  #     union all
  #     select "あつすぎるるるるる　１３０ｍｌ" as test, "あつ" as google, null as looker, 6 as number
  #     union all
  #     select "あつすぎるるるるる　１４０ｍｌ" as test, "あつ" as google, null as looker, 6 as number

  #     ;;
  # }
  derived_table: {
    sql:
      select "暑い" as test, "あつい" as google, null as looker, 6 as number
      union all
      select "夏" as test, "なつ" as google, null as looker, 6 as number
      union all
      select "あつすぎるるるるる　１１０ｍｌ" as test, "あつあ" as google, null as looker, 6 as number
      union all
      select "あつすぎるるるるる　２１０ｍｌ" as test, "あつい" as google, null as looker, 6 as number
      union all
      select "あつすぎるるるるる　３１０ｍｌ" as test, "あつう" as google, null as looker, 6 as number
      union all
      select "あつすぎるるるるる　４１０ｍｌ" as test, "あつえ" as google, null as looker, 6 as number
      union all
      select "あつすぎるるるるる　５１０ｍｌ" as test, "あつお" as google, null as looker, 6 as number
      union all
      select "あつすぎるるるるる　６１０ｍｌ" as test, "あつか" as google, null as looker, 6 as number
      union all
      select "あつすぎるるるるる　７１０ｍｌ" as test, "あつき" as google, null as looker, 6 as number
      union all
      select "あつすぎるるるるる　８１０ｍｌ" as test, "あつく" as google, null as looker, 6 as number
      union all
      select "あつすぎるるるるる　９１０ｍｌ" as test, "あつけ" as google, null as looker, 6 as number
      union all
      select "あつすぎるるるるる　１２０ｍｌ" as test, "あつこ" as google, null as looker, 6 as number
      union all
      select "あつすぎるるるるる　１３０ｍｌ" as test, "あつさ" as google, null as looker, 6 as number
      union all
      select "あつすぎるるるるる　１４０ｍｌ" as test, "あつし" as google, null as looker, 6 as number

      ;;
  }

  dimension: test {
    type: string
    sql: ${TABLE}.test ;;
  }
  dimension: google {
    type: string
    sql: ${TABLE}.google ;;
  }
  measure: number {
    type: number
    sql: sum(${TABLE}.number) ;;
  }

  measure: count {
    type: count
  }
}
