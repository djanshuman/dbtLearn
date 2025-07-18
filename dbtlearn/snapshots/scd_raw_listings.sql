{%  snapshot scd_raw_listings    %}

{{ 

    config(
            target_schema ='DEV',
            unique_key = 'ID',
            strategy = 'timestamp',
            updated_at = 'updated_at',
            invalidate_hard_deletes = True
    )
}}

select * from {{source('airbnb','listings')}}

{%endsnapshot%}