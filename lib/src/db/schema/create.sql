CREATE TABLE IF NOT EXISTS "device"
(
    "address"            text PRIMARY KEY,
    "label"              text     NOT NULL,
    "type"               smallint NOT NULL,
    "firmware_version"   integer  NOT NULL,
    "connection_timeout" integer  NOT NULL,
    "read_timeout"       integer  NOT NULL,
    "reply_timeout"      integer  NOT NULL,
    "ping_interval"      integer  NOT NULL,
    "description"        text     NOT NULL,
    "boot_loader"        bool,
    "serial"             varchar(90)
);
CREATE INDEX "device_serial" ON "device" USING btree ("serial");
CREATE INDEX "device_label" ON "device" USING btree ("label");
CREATE INDEX "device_address" ON "device" USING btree ("address");
CREATE INDEX "device_description" ON "device" USING btree ("description");

CREATE TABLE IF NOT EXISTS "device_log"
(
    "id" serial NOT NULL PRIMARY KEY ,
    "address" varchar(40) NOT NULL REFERENCES "device" ON DELETE CASCADE,
    "stamp" timestamptz NOT NULL DEFAULT NOW(),
    "action" smallint NOT NULL
);
CREATE INDEX "device_log_address" ON "device_log" USING btree ("address");
CREATE INDEX "device_log_stamp" ON "device_log" USING btree ("stamp");
CREATE INDEX "device_log_action" ON "device_log" USING btree ("action");


CREATE TABLE IF NOT EXISTS "relay"
(
    "id"          serial PRIMARY KEY,
    "address"     text     NOT NULL REFERENCES "device" ("address") ON DELETE CASCADE,
    "index"       smallint NOT NULL,
    "description" text     NOT NULL,
    "state"       bool,
    "version"     smallint,
    "mode"        smallint,
    "duration"    integer
);
