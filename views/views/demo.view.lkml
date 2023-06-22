# The name of this view in Looker is "Demo"
view: demo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sagar_choudhary.DEMO`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Ac" in Explore.

  dimension: ac {
    type: string
    sql: ${TABLE}.AC ;;
  }

  dimension: assessment_nbhd {
    type: string
    sql: ${TABLE}.ASSESSMENT_NBHD ;;
  }

  dimension: assessment_subnbhd {
    type: string
    sql: ${TABLE}.ASSESSMENT_SUBNBHD ;;
  }

  dimension: ayb {
    type: string
    sql: ${TABLE}.AYB ;;
  }

  dimension: bathrm {
    type: string
    sql: ${TABLE}.BATHRM ;;
  }

  dimension: bedrm {
    type: string
    sql: ${TABLE}.BEDRM ;;
  }

  dimension: bldg_num {
    type: string
    sql: ${TABLE}.BLDG_NUM ;;
  }

  dimension: census_block {
    type: string
    sql: ${TABLE}.CENSUS_BLOCK ;;
  }

  dimension: census_tract {
    type: string
    sql: ${TABLE}.CENSUS_TRACT ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: cmplx_num {
    type: string
    sql: ${TABLE}.CMPLX_NUM ;;
  }

  dimension: cndtn {
    type: string
    sql: ${TABLE}.CNDTN ;;
  }

  dimension: extwall {
    type: string
    sql: ${TABLE}.EXTWALL ;;
  }

  dimension: eyb {
    type: string
    sql: ${TABLE}.EYB ;;
  }

  dimension: fireplaces {
    type: string
    sql: ${TABLE}.FIREPLACES ;;
  }

  dimension: fulladdress {
    type: string
    sql: ${TABLE}.FULLADDRESS ;;
  }

  dimension: gba {
    type: string
    sql: ${TABLE}.GBA ;;
  }

  dimension: gis_last_mod_dttm {
    type: string
    sql: ${TABLE}.GIS_LAST_MOD_DTTM ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}.GRADE ;;
  }

  dimension: heat {
    type: string
    sql: ${TABLE}.HEAT ;;
  }

  dimension: hf_bathrm {
    type: string
    sql: ${TABLE}.HF_BATHRM ;;
  }

  dimension: intwall {
    type: string
    sql: ${TABLE}.INTWALL ;;
  }

  dimension: kitchens {
    type: string
    sql: ${TABLE}.KITCHENS ;;
  }

  dimension: landarea {
    type: string
    sql: ${TABLE}.LANDAREA ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.LATITUDE ;;
  }

  dimension: living_gba {
    type: string
    sql: ${TABLE}.LIVING_GBA ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.LONGITUDE ;;
  }

  dimension: nationalgrid {
    type: string
    sql: ${TABLE}.NATIONALGRID ;;
  }

  dimension: num_units {
    type: string
    sql: ${TABLE}.NUM_UNITS ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.PRICE ;;
  }

  dimension: quadrant {
    type: string
    sql: ${TABLE}.QUADRANT ;;
  }

  dimension: qualified {
    type: string
    sql: ${TABLE}.QUALIFIED ;;
  }

  dimension: roof {
    type: string
    sql: ${TABLE}.ROOF ;;
  }

  dimension: rooms {
    type: string
    sql: ${TABLE}.ROOMS ;;
  }

  dimension: sale_num {
    type: string
    sql: ${TABLE}.SALE_NUM ;;
  }

  dimension: saledate {
    type: string
    sql: ${TABLE}.SALEDATE ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: square {
    type: string
    sql: ${TABLE}.SQUARE ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: stories {
    type: string
    sql: ${TABLE}.STORIES ;;
  }

  dimension: struct {
    type: string
    sql: ${TABLE}.`STRUCT` ;;
  }

  dimension: style {
    type: string
    sql: ${TABLE}.STYLE ;;
  }

  dimension: usecode {
    type: string
    sql: ${TABLE}.USECODE ;;
  }

  dimension: ward {
    type: string
    sql: ${TABLE}.WARD ;;
  }

  dimension: x {
    type: string
    sql: ${TABLE}.X ;;
  }

  dimension: y {
    type: string
    sql: ${TABLE}.Y ;;
  }

  dimension: yr_rmdl {
    type: string
    sql: ${TABLE}.YR_RMDL ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.ZIPCODE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
