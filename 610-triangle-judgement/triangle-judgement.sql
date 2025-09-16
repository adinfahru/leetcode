select *,
    case
        when x + y > z and x + z > y and y + z > x THEN 'Yes'
        else 'No'
    end as triangle
from Triangle;