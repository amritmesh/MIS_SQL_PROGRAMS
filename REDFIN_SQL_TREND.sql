SELECT date, sum(( (1/0.28) * 0.8  * value * (((average_rate/100)/12)*(power(1+((average_rate/100)/12),360))/ (power(1+((average_rate/100)/12),360)-1)) *12 ) + (Value * 0.0108) + 1899)
from DW_US
group by date
;