WITH src_user_metadata AS (
--  SELECT * FROM raw_data.user_metadata
 SELECT * FROM {{ source("yujeong", "metadata") }}
)
SELECT
  user_id,
  age,
  gender,
  updated_at
FROM
  src_user_metadata