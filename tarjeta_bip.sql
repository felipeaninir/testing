CREATE OR REPLACE TABLE
  `latam-358120.bip.tarjetas_bip` AS ((
    SELECT
      CODIGO,
      ENTIDAD,
      '' AS NOMBRE_FANTASIA,
      DIRECCION,
      COMUNA,
      HORARIO,
      ESTE,
      NORTE,
      LONGITUD,
      LATITUD,
      'CENTROS BIP! ESTANDAR NORMAL' AS TIPO
    FROM
      `latam-358120.bip.PCMAV_SN`
    UNION ALL
    SELECT
      CODIGO,
      ENTIDAD,
      '' AS NOMBRE_FANTASIA,
      DIRECCION,
      COMUNA,
      HORARIO,
      ESTE,
      NORTE,
      LONGITUD,
      LATITUD,
      'CENTROS BIP! ALTO ESTANDAR' AS TIPO
    FROM
      `latam-358120.bip.PCMAV_AS`)
  UNION ALL (
    SELECT
      CODIGO,
      ENTIDAD,
      NOMBRE_FANTASIA,
      DIRECCION,
      COMUNA,
      HORARIO_REFERENCIAL AS HORARIO,
      ESTE,
      NORTE,
      LONGITUD,
      LATITUD,
      'PUNTOS BIP!' AS TIPO
    FROM
      `latam-358120.bip.PCMA`
    UNION ALL
    SELECT
      CODIGO,
      ENTIDAD,
      NOMBRE_FANTASIA,
      DIRECCION,
      COMUNA,
      HORARIO_REFERENCIAL AS HORARIO,
      ESTE,
      NORTE,
      LONGITUD,
      LATITUD,
      'RETAIL' AS TIPO
    FROM
      `latam-358120.bip.RETAIL_Abiertos`))
