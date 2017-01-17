CREATE OR REPLACE FUNCTION fail(msg text)
RETURNS VOID AS
$$
BEGIN
RAISE EXCEPTION 'FAILED: %', msg; 
END;
$$ language plpgsql;

CREATE OR REPLACE FUNCTION pass()
RETURNS VOID AS
$$
BEGIN
NULL;
END;
$$ language plpgsql;
