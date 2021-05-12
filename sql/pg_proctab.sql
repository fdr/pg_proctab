-- Copyright (C) 2008 Mark Wong
CREATE OR REPLACE FUNCTION pg_proctab(
		OUT pid INTEGER,
		OUT comm VARCHAR,
		OUT fullcomm VARCHAR,
		OUT state CHAR,
		OUT ppid INTEGER,
		OUT pgrp INTEGER,
		OUT session INTEGER,
		OUT tty_nr INTEGER,
		OUT tpgid INTEGER,
		OUT flags INTEGER,
		OUT minflt BIGINT,
		OUT cminflt BIGINT,
		OUT majflt BIGINT,
		OUT cmajflt BIGINT,
		OUT utime BIGINT,
		OUT stime BIGINT,
		OUT cutime BIGINT,
		OUT cstime BIGINT,
		OUT priority BIGINT,
		OUT nice BIGINT,
		OUT num_threads BIGINT,
		OUT itrealvalue BIGINT,
		OUT starttime BIGINT,
		OUT vsize BIGINT,
		OUT rss BIGINT,
		OUT exit_signal INTEGER,
		OUT processor INTEGER,
		OUT rt_priority BIGINT,
		OUT policy BIGINT,
		OUT delayacct_blkio_ticks BIGINT,
		OUT uid INTEGER,
		OUT username VARCHAR,
		OUT rchar BIGINT,
		OUT wchar BIGINT,
		OUT syscr BIGINT,
		OUT syscw BIGINT,
		OUT reads BIGINT,
		OUT writes BIGINT,
		OUT cwrites BIGINT)
RETURNS SETOF record
AS 'MODULE_PATHNAME', 'pg_proctab'
LANGUAGE C IMMUTABLE STRICT;

CREATE OR REPLACE FUNCTION pg_cputime(
		OUT "user" BIGINT,
		OUT nice BIGINT,
		OUT system BIGINT,
		OUT idle BIGINT,
		OUT iowait BIGINT)
RETURNS SETOF record
AS 'MODULE_PATHNAME', 'pg_cputime'
LANGUAGE C IMMUTABLE STRICT;

CREATE OR REPLACE FUNCTION pg_loadavg(
		OUT load1 FLOAT,
		OUT load5 FLOAT,
		OUT load15 FLOAT,
		OUT last_pid INTEGER)
RETURNS SETOF record
AS 'MODULE_PATHNAME', 'pg_loadavg'
LANGUAGE C IMMUTABLE STRICT;

CREATE OR REPLACE FUNCTION pg_memusage(
		OUT memused BIGINT,
		OUT memfree BIGINT,
		OUT memshared BIGINT,
		OUT membuffers BIGINT,
		OUT memcached BIGINT,
		OUT swapused BIGINT,
		OUT swapfree BIGINT,
		OUT swapcached BIGINT)
RETURNS SETOF record
AS 'MODULE_PATHNAME', 'pg_memusage'
LANGUAGE C IMMUTABLE STRICT;

CREATE OR REPLACE FUNCTION pg_diskusage (
        OUT major smallint,
        OUT minor smallint,
        OUT devname text,
        OUT reads_completed bigint,
        OUT reads_merged bigint,
        OUT sectors_read bigint,
        OUT readtime bigint,
        OUT writes_completed bigint,
        OUT writes_merged bigint,
        OUT sectors_written bigint,
        OUT writetime bigint,
        OUT current_io bigint,
        OUT iotime bigint,
        OUT totaliotime bigint,
        OUT discards_completed bigint,
        OUT discards_merged bigint,
        OUT sectors_discarded bigint,
        OUT discardtime bigint,
        OUT flushes_completed bigint,
        OUT flushtime bigint
)
RETURNS SETOF record
AS 'MODULE_PATHNAME', 'pg_diskusage'
LANGUAGE C IMMUTABLE STRICT;
