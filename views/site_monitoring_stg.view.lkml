# The name of this view in Looker is "Site Monitoring Stg"
view: site_monitoring_stg {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `mlconsole-poc.cerevel_demo.site_monitoring_stg`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " Days Between Imvs per Site " in Explore.

  dimension: __days_between_imvs__per_site_ {
    type: number
    sql: ${TABLE}.__Days_Between_IMVs__per_Site_ ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total___days_between_imvs__per_site_ {
    type: sum
    sql: ${__days_between_imvs__per_site_} ;;
  }

  measure: average___days_between_imvs__per_site_ {
    type: average
    sql: ${__days_between_imvs__per_site_} ;;
  }

  dimension: __days_visit_comp_to_subm__last_ {
    type: number
    sql: ${TABLE}.__Days_Visit_Comp_to_Subm__Last_ ;;
  }

  dimension: __of_visit_days_on_site {
    type: number
    sql: ${TABLE}.__of_Visit_Days_On_Site ;;
  }

  dimension: _ctm__supervisor {
    type: string
    sql: ${TABLE}._CTM__Supervisor ;;
  }

  dimension: aes_site_indicator {
    type: yesno
    sql: ${TABLE}.AES_Site_Indicator ;;
  }

  dimension: bc__ {
    type: string
    sql: ${TABLE}.BC__ ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: confirmation_letter_sent_date {
    type: string
    sql: ${TABLE}.Confirmation_Letter_Sent_Date ;;
  }

  dimension: conversion_level {
    type: string
    sql: ${TABLE}.Conversion_Level ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: covid_19_filter {
    type: string
    sql: ${TABLE}.COVID_19_Filter ;;
  }

  dimension: crg_delivery_unit {
    type: string
    sql: ${TABLE}.CRG_Delivery_Unit ;;
  }

  dimension: ctm__global_or_lead_ {
    type: string
    sql: ${TABLE}.CTM__Global_or_Lead_ ;;
  }

  dimension: days_completed_to_initial_subm {
    type: number
    sql: ${TABLE}.Days_Completed_to_Initial_Subm ;;
  }

  dimension: days_fsi__site__to_first_imv {
    type: number
    sql: ${TABLE}.Days_FSI__site__to_First_IMV ;;
  }

  dimension: days_on_site {
    type: number
    sql: ${TABLE}.Days_on_Site ;;
  }

  dimension: days_visit_comp_to_follow_up {
    type: number
    sql: ${TABLE}.Days_Visit_Comp_to_Follow_Up ;;
  }

  dimension: days_visit_comp_to_sent_to_sponsor {
    type: number
    sql: ${TABLE}.Days_Visit_Comp_to_Sent_to_Sponsor ;;
  }

  dimension: days_visit_completed_to_mvr_approved {
    type: number
    sql: ${TABLE}.Days_Visit_Completed_to_MVR_Approved ;;
  }

  dimension: first_imv_after_fsi__site_ {
    type: string
    sql: ${TABLE}.First_IMV_after_FSI__Site_ ;;
  }

  dimension: forecasting_imv_max {
    type: string
    sql: ${TABLE}.Forecasting_IMV_Max ;;
  }

  dimension: forecasting_imv_min {
    type: string
    sql: ${TABLE}.Forecasting_IMV_Min ;;
  }

  dimension: forecasting_imv_unit {
    type: string
    sql: ${TABLE}.Forecasting_IMV_Unit ;;
  }

  dimension: forecasting_smc_max {
    type: number
    sql: ${TABLE}.Forecasting_SMC_Max ;;
  }

  dimension: forecasting_smc_min {
    type: number
    sql: ${TABLE}.Forecasting_SMC_Min ;;
  }

  dimension: forecasting_smc_unit {
    type: string
    sql: ${TABLE}.Forecasting_SMC_Unit ;;
  }

  dimension: ful_due_date {
    type: string
    sql: ${TABLE}.FUL_Due_Date ;;
  }

  dimension: ful_risk_status {
    type: string
    sql: ${TABLE}.FUL_Risk_Status ;;
  }

  dimension: ful_sent_date {
    type: string
    sql: ${TABLE}.FUL_Sent_Date ;;
  }

  dimension: hours_on_site {
    type: number
    sql: ${TABLE}.Hours_on_Site ;;
  }

  dimension: met_with_pi_at_visit {
    type: yesno
    sql: ${TABLE}.Met_With_PI_At_Visit ;;
  }

  dimension: mvr_approved_date {
    type: string
    sql: ${TABLE}.MVR_Approved_Date ;;
  }

  dimension: mvr_due_date {
    type: string
    sql: ${TABLE}.MVR_Due_Date ;;
  }

  dimension: mvr_returned_for_revision_date {
    type: string
    sql: ${TABLE}.MVR_Returned_For_Revision_Date ;;
  }

  dimension: mvr_review_cycles {
    type: number
    sql: ${TABLE}.MVR_Review_Cycles ;;
  }

  dimension: mvr_risk_flag {
    type: string
    sql: ${TABLE}.MVR_Risk_Flag ;;
  }

  dimension: mvr_sent_to_sponsor_date {
    type: string
    sql: ${TABLE}.MVR_Sent_To_Sponsor_Date ;;
  }

  dimension: mvr_status__report_ {
    type: string
    sql: ${TABLE}.MVR_Status__Report_ ;;
  }

  dimension: mvr_status__risk_ {
    type: string
    sql: ${TABLE}.MVR_Status__Risk_ ;;
  }

  dimension: mvr_status_effective_date {
    type: string
    sql: ${TABLE}.MVR_Status_Effective_Date ;;
  }

  dimension: mvr_submitted_initial_date {
    type: string
    sql: ${TABLE}.MVR_Submitted_Initial_Date ;;
  }

  dimension: pharmacy_visited {
    type: string
    sql: ${TABLE}.Pharmacy_Visited ;;
  }

  dimension: phase {
    type: string
    sql: ${TABLE}.Phase ;;
  }

  dimension: pi_name {
    type: string
    sql: ${TABLE}.PI_Name ;;
  }

  dimension: ppd_division {
    type: string
    sql: ${TABLE}.PPD_Division ;;
  }

  dimension: ppd_primary_site_contact {
    type: string
    sql: ${TABLE}.PPD_Primary_Site_Contact ;;
  }

  dimension: ppd_region {
    type: string
    sql: ${TABLE}.PPD_Region ;;
  }

  dimension: previous_visit_method {
    type: string
    sql: ${TABLE}.Previous_Visit_Method ;;
  }

  dimension: project_lead {
    type: string
    sql: ${TABLE}.Project_Lead ;;
  }

  dimension: protocol__ {
    type: string
    sql: ${TABLE}.Protocol__ ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}.Province_State ;;
  }

  dimension: report_author {
    type: string
    sql: ${TABLE}.Report_Author ;;
  }

  dimension: report_reviewer {
    type: string
    sql: ${TABLE}.Report_Reviewer ;;
  }

  dimension: risk_based_monitoring {
    type: string
    sql: ${TABLE}.Risk_Based_Monitoring ;;
  }

  dimension: rpt_sent_to_site__gov_only_ {
    type: string
    sql: ${TABLE}.Rpt_Sent_to_Site__Gov_Only_ ;;
  }

  dimension: rsm {
    type: string
    sql: ${TABLE}.RSM ;;
  }

  dimension: site__ {
    type: string
    sql: ${TABLE}.Site__ ;;
  }

  dimension: site_account {
    type: string
    sql: ${TABLE}.Site_Account ;;
  }

  dimension: site_health_enabled_indicatior {
    type: yesno
    sql: ${TABLE}.Site_Health_Enabled_Indicatior ;;
  }

  dimension: site_health_status__current_ {
    type: string
    sql: ${TABLE}.Site_Health_Status__Current_ ;;
  }

  dimension: site_health_status__visit_ {
    type: string
    sql: ${TABLE}.Site_Health_Status__Visit_ ;;
  }

  dimension: site_id {
    type: string
    sql: ${TABLE}.Site_ID ;;
  }

  dimension: site_status {
    type: string
    sql: ${TABLE}.Site_Status ;;
  }

  dimension: site_status_effective_date {
    type: string
    sql: ${TABLE}.Site_Status_Effective_Date ;;
  }

  dimension: site_status_reason {
    type: string
    sql: ${TABLE}.Site_Status_Reason ;;
  }

  dimension: site_suspended_reason {
    type: string
    sql: ${TABLE}.Site_Suspended_Reason ;;
  }

  dimension: site_visit_method_change__y_n_ {
    type: yesno
    sql: ${TABLE}.Site_Visit_Method_Change__Y_N_ ;;
  }

  dimension: site_visit_row_id {
    type: string
    sql: ${TABLE}.Site_Visit_Row_ID ;;
  }

  dimension: sponsor {
    type: string
    sql: ${TABLE}.Sponsor ;;
  }

  dimension: sponsor_addendum_approved_date {
    type: string
    sql: ${TABLE}.Sponsor_Addendum_Approved_Date ;;
  }

  dimension: sponsor_addendum_complete_date {
    type: string
    sql: ${TABLE}.Sponsor_Addendum_Complete_Date ;;
  }

  dimension: status_sponsor_addendum_requested {
    type: string
    sql: ${TABLE}.Status_Sponsor_Addendum_Requested ;;
  }

  dimension: study_id {
    type: string
    sql: ${TABLE}.Study_ID ;;
  }

  dimension: study_type {
    type: string
    sql: ${TABLE}.Study_Type ;;
  }

  dimension: therapeutic_area {
    type: string
    sql: ${TABLE}.Therapeutic_Area ;;
  }

  dimension: travel_time {
    type: number
    sql: ${TABLE}.Travel_Time ;;
  }

  dimension: visit_completed_date {
    type: string
    sql: ${TABLE}.Visit_Completed_Date ;;
  }

  dimension: visit_cra_fte__current_ {
    type: number
    sql: ${TABLE}.Visit_CRA_FTE__Current_ ;;
  }

  dimension: visit_cra_name {
    type: string
    sql: ${TABLE}.Visit_CRA_Name ;;
  }

  dimension: visit_cra_supervisor {
    type: string
    sql: ${TABLE}.Visit_CRA_Supervisor ;;
  }

  dimension: visit_cra_user_id {
    type: string
    sql: ${TABLE}.Visit_CRA_User_Id ;;
  }

  dimension: visit_method {
    type: string
    sql: ${TABLE}.Visit_Method ;;
  }

  dimension: visit_name {
    type: string
    sql: ${TABLE}.Visit_Name ;;
  }

  dimension: visit_risk_flag {
    type: string
    sql: ${TABLE}.Visit_Risk_Flag ;;
  }

  dimension: visit_start_date {
    type: string
    sql: ${TABLE}.Visit_Start_Date ;;
  }

  dimension: visit_status {
    type: string
    sql: ${TABLE}.Visit_Status ;;
  }

  dimension: visit_status_effective_date {
    type: string
    sql: ${TABLE}.Visit_Status_Effective_Date ;;
  }

  dimension: visit_type {
    type: string
    sql: ${TABLE}.Visit_Type ;;
  }

  dimension: visit_window_max_date {
    type: string
    sql: ${TABLE}.Visit_Window_Max_Date ;;
  }

  dimension: visit_window_min_date {
    type: string
    sql: ${TABLE}.Visit_Window_Min_Date ;;
  }

  measure: count {
    type: count
    drill_fields: [visit_name, pi_name, visit_cra_name]
  }
}
