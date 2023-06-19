# The name of this view in Looker is "Adheris Health Prescription"
view: adheris_health_prescription {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Adheris_Health_Demodata.adheris_health_prescription`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Active Ingred Unit" in Explore.

  dimension: active_ingred_unit {
    type: string
    sql: ${TABLE}.ACTIVE_INGRED_UNIT ;;
  }

  dimension: active_numerator_strength {
    type: string
    sql: ${TABLE}.ACTIVE_NUMERATOR_STRENGTH ;;
  }

  dimension: applicationnumber {
    type: string
    sql: ${TABLE}.APPLICATIONNUMBER ;;
  }

  dimension: deaschedule {
    type: string
    sql: ${TABLE}.DEASCHEDULE ;;
  }

  dimension: dosageformname {
    type: string
    sql: ${TABLE}.DOSAGEFORMNAME ;;
  }

  dimension: endmarketingdate {
    type: number
    sql: ${TABLE}.ENDMARKETINGDATE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_endmarketingdate {
    type: sum
    sql: ${endmarketingdate} ;;
  }

  measure: average_endmarketingdate {
    type: average
    sql: ${endmarketingdate} ;;
  }

  dimension: labelername {
    type: string
    sql: ${TABLE}.LABELERNAME ;;
  }

  dimension: marketingcategoryname {
    type: string
    sql: ${TABLE}.MARKETINGCATEGORYNAME ;;
  }

  dimension: nonproprietaryname {
    type: string
    sql: ${TABLE}.NONPROPRIETARYNAME ;;
  }

  dimension: pharm_classes {
    type: string
    sql: ${TABLE}.PHARM_CLASSES ;;
  }

  dimension: productid {
    type: string
    sql: ${TABLE}.PRODUCTID ;;
  }

  dimension: productndc {
    type: string
    sql: ${TABLE}.PRODUCTNDC ;;
  }

  dimension: producttypename {
    type: string
    sql: ${TABLE}.PRODUCTTYPENAME ;;
  }

  dimension: proprietaryname {
    type: string
    sql: ${TABLE}.PROPRIETARYNAME ;;
  }

  dimension: proprietarynamesuffix {
    type: string
    sql: ${TABLE}.PROPRIETARYNAMESUFFIX ;;
  }

  dimension: routename {
    type: string
    sql: ${TABLE}.ROUTENAME ;;
  }

  dimension: startmarketingdate {
    type: number
    sql: ${TABLE}.STARTMARKETINGDATE ;;
  }

  dimension: substancename {
    type: string
    sql: ${TABLE}.SUBSTANCENAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      dosageformname,
      proprietaryname,
      producttypename,
      labelername,
      nonproprietaryname,
      marketingcategoryname,
      substancename,
      routename
    ]
  }
}
