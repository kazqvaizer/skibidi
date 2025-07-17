CREATE TABLE IF NOT EXISTS users (
    username_hint TEXT,
    organization_hint TEXT,
    token TEXT NOT NULL DEFAULT (lower(hex(randomblob(16)))) PRIMARY KEY,
    expiration DATETIME NOT NULL DEFAULT (datetime('now', '+9 months')),
    active BOOLEAN NOT NULL DEFAULT(True)
);
