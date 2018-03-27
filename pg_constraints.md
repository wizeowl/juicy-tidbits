# Postgresql Constraints

Based on the excellent article [Protect Your Data with PostgreSQL Constraints](http://nathanmlong.com/2016/01/protect-your-data-with-postgresql-constraints/) 

#### Types
#### NOT NULL
#### Check constraints
```postgres-sql
ALTER TABLE reservations ADD CONSTRAINT positive_duration
CHECK(checkout_time>checkin_time);
```
#### Exclusion constraints
In order to use gist, you need to first
```postgres-sql
CREATE EXTENSION btree_gist
```
#####1 Unique
```postgres-sql
ALTER TABLE users ADD CONSTRAINT unique_username
EXCLUDE USING gist (username WITH =);
```
#####2 No overlap
```postgres-sql
ALTER TABLE reservations ADD CONSTRAINT no_overlapping_rentals
EXCLUDE USING gist (
    property_id WITH =,
    tsrange("checkin_time", "checkout_time", '[]') WITH &&
);
```
#####3 With where
```postgres-sql
ALTER TABLE assignments ADD CONSTRAINT one_manager_per_store
EXCLUDE USING gist (store_id WITH =) WHERE (role = 'manager');
```
```postgres-sql
ALTER TABLE reservations ADD CONSTRAINT no_overlapping_rentals
EXCLUDE USING gist (
    property_id WITH =,
    tsrange("checkin_time", "checkout_time", '[]') WITH &&
)
WHERE (status != 'cancelled');
```

#### Differing constraints
#####a DIFERRED
Until the end of the transation
#####b IMMEDIATE
#####c Example
```postgres-sql
ALTER TABLE assignments ADD CONSTRAINT one_manager_per_store
EXCLUDE USING gist (store_id WITH =) WHERE (role = 'manager')
DIFERRABLE INITIALLY DIFERRED;
```

#### Foreign key cconstraints
```postgres-sql
ALTER TABLE reservations
ADD CONSTRAINT reservations_property_id_fk
FOREIGN KEY(property_id) REFERENCES properties(id)
DEFERRABLE INITIALLY DEFERRED;
```