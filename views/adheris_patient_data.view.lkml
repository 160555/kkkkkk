# The name of this view in Looker is "Adheris Patient Data"
view: adheris_patient_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Adheris_Health_Demodata.adheris_patient_data`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Annual Inc" in Explore.

  dimension: annual_inc {
    type: number
    sql: ${TABLE}.annual_inc ;;
  }

  dimension: application_type {
    type: string
    sql: ${TABLE}.application_type ;;
  }

  dimension: application_type_cat {
    type: number
    sql: ${TABLE}.application_type_cat ;;
  }

  dimension: approval_status {
    type: number
    sql: ${TABLE}.approval_status ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: credit_card_number {
    type: number
    sql: ${TABLE}.credit_card_number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_credit_card_number {
    type: sum
    sql: ${credit_card_number} ;;
  }

  measure: average_credit_card_number {
    type: average
    sql: ${credit_card_number} ;;
  }

  dimension: dti {
    type: number
    sql: ${TABLE}.dti ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.Email_address ;;
  }

  dimension: emp_length_int {
    type: number
    sql: ${TABLE}.emp_length_int ;;
  }

  dimension: final_d {
    type: number
    sql: ${TABLE}.final_d ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.First_Name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}.grade ;;
  }

  dimension: grade_cat {
    type: number
    sql: ${TABLE}.grade_cat ;;
  }

  dimension: home_ownership {
    type: string
    sql: ${TABLE}.home_ownership ;;
  }

  dimension: home_ownership_cat {
    type: number
    sql: ${TABLE}.home_ownership_cat ;;
  }

  dimension: income_cat {
    type: number
    sql: ${TABLE}.income_cat ;;
  }

  dimension: income_category {
    type: string
    sql: ${TABLE}.income_category ;;
  }

  dimension: installment {
    type: number
    sql: ${TABLE}.installment ;;
  }

  dimension: interest_payment_cat {
    type: number
    sql: ${TABLE}.interest_payment_cat ;;
  }

  dimension: interest_payments {
    type: string
    sql: ${TABLE}.interest_payments ;;
  }

  dimension: interest_rate {
    type: number
    sql: ${TABLE}.interest_rate ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: issue_d {
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
    sql: ${TABLE}.issue_d ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.Last_Name ;;
  }

  dimension: loan_amount {
    type: number
    sql: ${TABLE}.loan_amount ;;
  }

  dimension: phone_no {
    type: number
    sql: ${TABLE}.Phone_no ;;
  }

  dimension: purpose {
    type: string
    sql: ${TABLE}.purpose ;;
  }

  dimension: purpose_cat {
    type: number
    sql: ${TABLE}.purpose_cat ;;
  }

  dimension: recoveries {
    type: number
    sql: ${TABLE}.recoveries ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: term {
    type: string
    sql: ${TABLE}.term ;;
  }

  dimension: term_cat {
    type: number
    sql: ${TABLE}.term_cat ;;
  }

  dimension: total_pymnt {
    type: number
    sql: ${TABLE}.total_pymnt ;;
  }

  dimension: total_rec_prncp {
    type: number
    sql: ${TABLE}.total_rec_prncp ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, last_name]
  }
}
