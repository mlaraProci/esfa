connection: "smb_prueba"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: smb_p_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: smb_p_default_datagroup

explore: esfadata {}
