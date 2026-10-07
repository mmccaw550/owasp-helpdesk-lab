CREATE TABLE users (
    id       BIGSERIAL PRIMARY KEY,
    username VARCHAR(50)  NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role     VARCHAR(20)  NOT NULL DEFAULT 'USER'
);

CREATE TABLE tickets (
    id          BIGSERIAL PRIMARY KEY,
    title       VARCHAR(200) NOT NULL,
    description TEXT         NOT NULL,
    status      VARCHAR(20)  NOT NULL DEFAULT 'OPEN',
    created_at  TIMESTAMP    NOT NULL DEFAULT NOW(),
    owner_id    BIGINT       NOT NULL REFERENCES users(id)
);

CREATE TABLE comments (
    id         BIGSERIAL PRIMARY KEY,
    body       TEXT      NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    ticket_id  BIGINT    NOT NULL REFERENCES tickets(id),
    author_id  BIGINT    NOT NULL REFERENCES users(id)
);