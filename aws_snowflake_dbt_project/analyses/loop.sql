{% set cols = ["nights_booked", "booking_id", "listing_id"] %}

select {% for col in cols %} {{ col }}{% if not loop.last %}, {% endif %} {% endfor %}
from {{ ref("bronze_bookings") }}
