-- ============================================================================
--  Copyright (c) 2026 Thierry HUET

-- Licensed under the Apache License, Version 2.0 (the "License"),
-- with the Commons Clause restriction.
-- You may not sell this software or provide it as part of a paid service.

-- ============================================================================
CREATE SCHEMA IF NOT EXISTS urba;

-- UUID generation
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- 
-- urba.metadata definition

CREATE TABLE urba.metadata (
	id serial4 NOT NULL,
	created_at timestamp NULL,
	updated_at timestamp NULL,
	created_by varchar NULL,
	updated_by varchar NULL,
	nc_order numeric NULL,
	meta_key text NULL,
	meta_value text NULL,
  localisation text NULL,
	CONSTRAINT metadata_pkey PRIMARY KEY (id)
);
CREATE INDEX metadata_order_idx ON urba.metadata USING btree (nc_order);

-- Insertions
INSERT INTO urba.metadata (nc_order,meta_key,meta_value,localisation) VALUES
	 (2,'statut','Actif','fr'),
	 (3,'statut','En cours','fr'),
	 (4,'statut','Clôturé','fr'),
	 (1,'lang','fr','fr'),
	 (5,'statut','Terminé','fr');

