CREATE TABLE TRUCK (
    id BIGSERIAL PRIMARY KEY,
    plate VARCHAR(255) NOT NULL
);

CREATE TABLE POSITION_RECORD (
    id BIGSERIAL PRIMARY KEY,
    truck_id BIGINT NOT NULL,
    latitude DOUBLE PRECISION NOT NULL,
    longitude DOUBLE PRECISION NOT NULL,
    timestamp BIGINT NOT NULL,
    FOREIGN KEY (truck_id) REFERENCES TRUCK(id) ON DELETE CASCADE
);