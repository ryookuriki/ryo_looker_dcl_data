view: retailstudiostaging {

    derived_table: {
      sql:
      select "test1" as test, "google1" as google, null as looker, 6 as number
      union all
      select "test2" as test, "google2" as google, null as looker, 6 as number
      union all
      select "test3" as test, "google3" as google, null as looker, 6 as number
      union all
      select "test4" as test, "google4" as google, null as looker, 6 as number
      union all
      select "test5" as test, "google5" as google, null as looker, 6 as number
      union all
      select "test6" as test, "google6" as google, null as looker, 6 as number
      union all
      select "test7" as test, "google7" as google, null as looker, 6 as number
      union all
      select "test8" as test, "google8" as google, null as looker, 6 as number
      union all
      select "test9" as test, "google9" as google, null as looker, 6 as number
      union all
      select "test10" as test, "google10" as google, null as looker, 6 as number
      union all
      select "test11" as test, "google11" as google, null as looker, 6 as number
      union all
      select "test12" as test, "google12" as google, null as looker, 6 as number
      union all
      select "test13" as test, "google13" as google, null as looker, 6 as number
      union all
      select "test14" as test, "google14" as google, null as looker, 6 as number
      union all
      select "test15" as test, "google15" as google, null as looker, 6 as number
      union all
      select "test16" as test, "google16" as google, null as looker, 6 as number
      union all
      select "test17" as test, "google17" as google, null as looker, 6 as number
      union all
      select "test18" as test, "google18" as google, null as looker, 6 as number
      union all
      select "test19" as test, "google19" as google, null as looker, 6 as number
      union all
      select "test20" as test, "google20" as google, null as looker, 6 as number
      union all
      select "test21" as test, "google21" as google, null as looker, 6 as number
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
