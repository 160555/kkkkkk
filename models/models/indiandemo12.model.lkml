# Define the database connection to be used for this model.
connection: "indian_vehicle_details"

# include all the views
include: "/views/**/*.view"
include: "/pdt_test.view.lkml"
datagroup: pdt_test {
  sql_trigger: SELECT MAX(id) FROM car_data ;;
  max_cache_age: "15 minutes"
}
persist_with: pdt_test
# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: indiandemo12_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: indiandemo12_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Indiandemo12"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.
explore: pdt_test {}
explore: car_data {
  join: pdt_test {
    type: left_outer
    relationship: many_to_one
    sql_on: ${car_data.id}=${pdt_test.id} ;;
  }
}

explore: indian_vehicle_details {}

explore: country_data {}

explore: house_rent_data {}

explore: old_car_data {}

explore: demo {}

explore: train_data {}

explore: new {}

explore: students {}

explore: proptech_ {}

explore: new_test {}
