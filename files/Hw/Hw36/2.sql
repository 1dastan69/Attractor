select company.city_id, city.id 
from company, city
where company.city_id = city.id