-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION tuid" to load this file. \quit
CREATE FUNCTION tuid_generate() RETURNS uuid
AS '$libdir/tuid'
LANGUAGE C IMMUTABLE STRICT;