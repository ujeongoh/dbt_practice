WITH src_user_metadata AS (
  SELECT * FROM {{ ref('src_user_metadata') }}
)
SELECT
  user_id,
  age,
  gender,
  updated_at
FROM
  src_user_metadata