-- Create location table
CREATE TABLE IF NOT EXISTS location(
    location_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    time TIMESTAMPTZ  NOT NULL,
    temperature_2m FLOAT NOT NULL
    );

-- Create weather_hourly table
CREATE TABLE IF NOT EXISTS weather_hourly (
    time TIMESTAMP NOT NULL,
    location_id INTEGER NOT NULL REFERENCES location(location_id),
    temperature_2m FLOAT NOT NULL,
    fetched_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
    );
