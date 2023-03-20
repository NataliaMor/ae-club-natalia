select *
from {{ ref('customers') }}
order by 4
limit 5
