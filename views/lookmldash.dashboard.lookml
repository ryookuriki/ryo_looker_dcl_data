- dashboard: testdash
  title: testdash
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: testdash
    name: testdash
    model: ryo_test
    explore: orders
    type: looker_column
    fields: [orders.status, orders.count, count_of_user_id]
    sorts: [orders.count desc]
    limit: 500
    reference_lines:
    - value: mean
    dynamic_fields: [{measure: count_of_user_id, based_on: orders.user_id, expression: '',
        label: Count of User ID, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: count_of_user_id, id: count_of_user_id,
            name: Count of User ID}, {axisId: orders.count, id: orders.count, name: Orders}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types:
      count_of_user_id: line
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 12
