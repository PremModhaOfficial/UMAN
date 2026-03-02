CREATE TABLE IF NOT EXISTS _users_ (
    id            BIGSERIAL       PRIMARY KEY,
    _username_      TEXT            NOT NULL UNIQUE,
    _email_         TEXT            NOT NULL UNIQUE,
    _password_       TEXT            NOT NULL,
    _first_name_    TEXT            NOT NULL DEFAULT '',
    _last_name_     TEXT            NOT NULL DEFAULT '',
    _is_active_     BOOLEAN         NOT NULL DEFAULT true,
    _created_at_    TIMESTAMPTZ     NOT NULL DEFAULT NOW(),
    _updated_at_    TIMESTAMPTZ     NOT NULL DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS _roles_ (
    id            BIGSERIAL       PRIMARY KEY,
    _name_          TEXT            NOT NULL UNIQUE,
    _description_   TEXT            NOT NULL DEFAULT '',
    _created_at_    TIMESTAMPTZ     NOT NULL DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS _user_roles_ (
);
