view: pdt_test {
 derived_table: {
   datagroup_trigger: pdt_test
  explore_source: car_data {
    column: id  {
      field: car_data.id
    }
    column: body_type {
      field: car_data.body_type
    }
  }
 }
dimension: id {
  primary_key: yes
  type: number
  sql: ${TABLE}.id ;;
}
  dimension: body_type {
    type: string
    sql: ${TABLE}.body_type ;;
  }
}
