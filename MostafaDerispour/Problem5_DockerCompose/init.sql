
CREATE TABLE IF NOT EXISTS teams (
  id SERIAL PRIMARY KEY,
  team_id VARCHAR UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS containers (
  id SERIAL PRIMARY KEY,
  team_id VARCHAR NOT NULL REFERENCES teams(team_id),
  challenge_id VARCHAR NOT NULL,
  container_id VARCHAR NOT NULL,
  port INTEGER NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
