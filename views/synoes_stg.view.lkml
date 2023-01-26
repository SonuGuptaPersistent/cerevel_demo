# The name of this view in Looker is "Synoes Stg"
view: synoes_stg {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `mlconsole-poc.cerevel_demo.synoes_stg`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Assigned Monitor First Name" in Explore.

  dimension: assigned_monitor_first_name {
    type: string
    sql: ${TABLE}.Assigned_Monitor_First_Name ;;
  }

  dimension: assigned_monitor_last_name {
    type: string
    sql: ${TABLE}.Assigned_Monitor_Last_Name ;;
  }

  dimension: business_unit {
    type: string
    sql: ${TABLE}.Business_Unit ;;
  }

  dimension: calendar_days_on_site {
    type: number
    sql: ${TABLE}.Calendar_Days_On_Site ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: current_pi_first_name {
    type: string
    sql: ${TABLE}.Current_PI_First_Name ;;
  }

  dimension: current_pi_last_name {
    type: string
    sql: ${TABLE}.Current_PI_Last_Name ;;
  }

  dimension: days_of_effort {
    type: string
    sql: ${TABLE}.Days_of_Effort ;;
  }

  dimension: fup_letter_sent_to_site {
    type: string
    sql: ${TABLE}.FUp_Letter_Sent_To_Site ;;
  }

  dimension: institution {
    type: string
    sql: ${TABLE}.Institution ;;
  }

  dimension: investigator_s__present {
    type: yesno
    sql: ${TABLE}.Investigator_s__Present ;;
  }

  dimension: ip_accountability {
    type: string
    sql: ${TABLE}.IP_Accountability ;;
  }

  dimension: number_of_days_on_site {
    type: number
    sql: ${TABLE}.Number_of_Days_On_Site ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_of_days_on_site {
    type: sum
    sql: ${number_of_days_on_site} ;;
  }

  measure: average_number_of_days_on_site {
    type: average
    sql: ${number_of_days_on_site} ;;
  }

  dimension: number_of_version_submitted {
    type: number
    sql: ${TABLE}.Number_of_Version_Submitted ;;
  }

  dimension: pi_oversee_study {
    type: yesno
    sql: ${TABLE}.PI_Oversee_Study ;;
  }

  dimension: protocol_name {
    type: string
    sql: ${TABLE}.Protocol_Name ;;
  }

  dimension: protocol_number {
    type: string
    sql: ${TABLE}.Protocol_Number ;;
  }

  dimension: site_active {
    type: string
    sql: ${TABLE}.Site_Active ;;
  }

  dimension: site_activity_name {
    type: string
    sql: ${TABLE}.Site_Activity_Name ;;
  }

  dimension: site_no {
    type: string
    sql: ${TABLE}.Site_No ;;
  }

  dimension: site_status {
    type: string
    sql: ${TABLE}.Site_Status ;;
  }

  dimension: site_visit_active {
    type: string
    sql: ${TABLE}.Site_Visit_Active ;;
  }

  dimension: site_visit_category {
    type: string
    sql: ${TABLE}.Site_Visit_Category ;;
  }

  dimension: site_visit_conf_letter_create_date {
    type: string
    sql: ${TABLE}.Site_Visit_Conf_Letter_Create_Date ;;
  }

  dimension: site_visit_end_date {
    type: string
    sql: ${TABLE}.Site_Visit_End_Date ;;
  }

  dimension: site_visit_f_up_letter_create_date {
    type: string
    sql: ${TABLE}.Site_Visit_F_Up_Letter_Create_Date ;;
  }

  dimension: site_visit_mode {
    type: string
    sql: ${TABLE}.Site_Visit_Mode ;;
  }

  dimension: site_visit_notes {
    type: string
    sql: ${TABLE}.Site_Visit_Notes ;;
  }

  dimension: site_visit_planned_date {
    type: string
    sql: ${TABLE}.Site_Visit_Planned_Date ;;
  }

  dimension: site_visit_start_date {
    type: string
    sql: ${TABLE}.Site_Visit_Start_Date ;;
  }

  dimension: site_visit_status {
    type: string
    sql: ${TABLE}.Site_Visit_Status ;;
  }

  dimension: sponsor {
    type: string
    sql: ${TABLE}.Sponsor ;;
  }

  dimension: study_active {
    type: string
    sql: ${TABLE}.Study_Active ;;
  }

  dimension: study_status {
    type: string
    sql: ${TABLE}.Study_Status ;;
  }

  dimension: syneos_number {
    type: string
    sql: ${TABLE}.Syneos_Number ;;
  }

  dimension: visit_attendee_s_ {
    type: string
    sql: ${TABLE}.Visit_Attendee_s_ ;;
  }

  dimension: visit_focus {
    type: string
    sql: ${TABLE}.Visit_Focus ;;
  }

  dimension: visit_report_active {
    type: yesno
    sql: ${TABLE}.Visit_Report_Active ;;
  }

  dimension: visit_report_approved_by {
    type: string
    sql: ${TABLE}.Visit_Report_Approved_By ;;
  }

  dimension: visit_report_approved_date {
    type: string
    sql: ${TABLE}.Visit_Report_Approved_Date ;;
  }

  dimension: visit_report_archived_date {
    type: string
    sql: ${TABLE}.Visit_Report_Archived_Date ;;
  }

  dimension: visit_report_author_first_name {
    type: string
    sql: ${TABLE}.Visit_Report_Author_First_Name ;;
  }

  dimension: visit_report_author_last_name {
    type: string
    sql: ${TABLE}.Visit_Report_Author_Last_Name ;;
  }

  dimension: visit_report_create_date {
    type: string
    sql: ${TABLE}.Visit_Report_Create_Date ;;
  }

  dimension: visit_report_initial_approved_by {
    type: string
    sql: ${TABLE}.Visit_Report_Initial_Approved_By ;;
  }

  dimension: visit_report_initial_approved_date {
    type: string
    sql: ${TABLE}.Visit_Report_Initial_Approved_Date ;;
  }

  dimension: visit_report_initial_calendar_days_to_final {
    type: string
    sql: ${TABLE}.Visit_Report_Initial_Calendar_Days_to_Final ;;
  }

  dimension: visit_report_initial_days_to_goal {
    type: string
    sql: ${TABLE}.Visit_Report_Initial_Days_to_Goal ;;
  }

  dimension: visit_report_initial_days_to_goal_all {
    type: string
    sql: ${TABLE}.Visit_Report_Initial_Days_to_Goal_All ;;
  }

  dimension: visit_report_initial_on_time {
    type: string
    sql: ${TABLE}.Visit_Report_Initial_On_Time ;;
  }

  dimension: visit_report_initial_review_by {
    type: string
    sql: ${TABLE}.Visit_Report_Initial_Review_By ;;
  }

  dimension: visit_report_initial_review_date {
    type: string
    sql: ${TABLE}.Visit_Report_Initial_Review_Date ;;
  }

  dimension: visit_report_initial_submission_by {
    type: string
    sql: ${TABLE}.Visit_Report_Initial_Submission_By ;;
  }

  dimension: visit_report_initial_submission_date {
    type: string
    sql: ${TABLE}.Visit_Report_Initial_Submission_Date ;;
  }

  dimension: visit_report_review_by {
    type: string
    sql: ${TABLE}.Visit_Report_Review_By ;;
  }

  dimension: visit_report_review_date {
    type: string
    sql: ${TABLE}.Visit_Report_Review_Date ;;
  }

  dimension: visit_report_start_date {
    type: string
    sql: ${TABLE}.Visit_Report_Start_Date ;;
  }

  dimension: visit_report_status {
    type: string
    sql: ${TABLE}.Visit_Report_Status ;;
  }

  dimension: visit_report_submission_by {
    type: string
    sql: ${TABLE}.Visit_Report_Submission_By ;;
  }

  dimension: visit_report_submission_date {
    type: string
    sql: ${TABLE}.Visit_Report_Submission_Date ;;
  }

  dimension: visit_report_template_type {
    type: string
    sql: ${TABLE}.Visit_Report_Template_Type ;;
  }

  dimension: visit_trigger {
    type: string
    sql: ${TABLE}.Visit_Trigger ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      visit_report_author_first_name,
      visit_report_author_last_name,
      assigned_monitor_last_name,
      current_pi_last_name,
      site_activity_name,
      protocol_name,
      assigned_monitor_first_name,
      current_pi_first_name
    ]
  }
}
