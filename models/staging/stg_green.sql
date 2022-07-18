select
    vendorid as vendor_id,
    lpep_pickup_datetime,
    lpep_dropoff_datetime,
    store_and_fwd_flag,
    ratecodeid as rate_code_id,
    pulocationid as pu_location_id,
    dolocationid as do_location_id,
    passenger_count,
    trip_distance,
    fare_amount,
    extra,
    mta_tax,
    tip_amount,
    tolls_amount,
    ehail_fee,
    improvement_surcharge,
    total_amount,
    payment_type,
    trip_type,
    congestion_surcharge
--from green
from {{ source('main', 'green') }}
