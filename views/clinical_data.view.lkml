# The name of this view in Looker is "Clinical Data"
view: clinical_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `cerevel_demo.clinical_data`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Data Source" in Explore.

  dimension: data_source {
    type: string
    sql: ${TABLE}.data_source ;;
  }

  dimension: form_id {
    type: string
    sql: ${TABLE}.form_id ;;
  }

  dimension: form_repeat_key {
    type: number
    sql: ${TABLE}.form_repeat_key ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_form_repeat_key {
    type: sum
    sql: ${form_repeat_key} ;;
  }

  measure: average_form_repeat_key {
    type: average
    sql: ${form_repeat_key} ;;
  }

  dimension: item_group_id {
    type: string
    sql: ${TABLE}.item_group_id ;;
  }

  dimension: item_group_row_id {
    type: number
    sql: ${TABLE}.item_group_row_id ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension: item_value {
    type: string
    sql: ${TABLE}.item_value ;;
  }

  dimension: site_id {
    type: number
    sql: ${TABLE}.site_id ;;
  }

  dimension: study_id {
    type: number
    sql: ${TABLE}.study_id ;;
  }

  dimension: subject_id {
    type: string
    sql: ${TABLE}.subject_id ;;
  }

  dimension: subject_native_key {
    type: string
    sql: ${TABLE}.subject_native_key ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: visit {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.visit_date ;;
  }

  dimension: visit_id {
    type: string
    sql: ${TABLE}.visit_id ;;
  }

  dimension: visit_repeat_key {
    type: number
    sql: ${TABLE}.visit_repeat_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
