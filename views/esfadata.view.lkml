view: esfadata{
  sql_table_name: schema_name.table_name ;; # Reemplaza con el esquema y nombre de la tabla en tu base de datos

  dimension: operacion {
    type: number
    sql: ${TABLE}.OPERACIÓN ;;
  }

  dimension: fundador {
    type: string
    sql: ${TABLE}.FUNDADOR ;;
  }

  dimension: fecha_desembolso {
    type: date
    sql: ${TABLE}.`FECHA DESEMBOLSO` ;;
  }

  dimension: fecha_pago {
    type: date
    sql: ${TABLE}.`FECHA PAGO` ;;
  }

  dimension: valor {
    type: number
    sql: ${TABLE}.VALOR ;;
    value_format: "$#,##0.00"
  }

  dimension: plazo_meses {
    type: number
    sql: ${TABLE}.`PLAZO (MESES)` ;;
  }

  dimension: tasa_nm {
    type: number
    sql: ${TABLE}.`TASA (NM)` ;;
    value_format: "#,##0.00%"
  }

  dimension: tasa_ea {
    type: number
    sql: ${TABLE}.`TASA (EA)` ;;
    value_format: "#,##0.00%"
  }

  dimension: dia_vencimiento {
    type: number
    sql: ${TABLE}.`DÍA VENC.` ;;
  }

  dimension: periodicidad {
    type: number
    sql: ${TABLE}.PERIODICIDAD ;;
  }

  dimension: tipo_pago {
    type: string
    sql: ${TABLE}.Bullet ;; # Verifica si Bullet es una columna fija o un valor único
  }

  dimension: porcentaje {
    type: number
    sql: ${TABLE}.`%` ;; # Asegúrate de usar el nombre correcto para esta columna
    value_format: "#,##0.00%"
  }
}
