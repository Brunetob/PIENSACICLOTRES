-- Crear la tabla para almacenar la información de los dispositivos láser
CREATE TABLE laser_devices (
    device_id VARCHAR(255) PRIMARY KEY,
    device_name VARCHAR(255) NOT NULL,
    description VARCHAR(255)
);

-- Crear la tabla para almacenar las mediciones del láser
CREATE TABLE laser_measurements (
    measurement_id SERIAL PRIMARY KEY,
    device_id VARCHAR(255),
    distance DOUBLE PRECISION NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);