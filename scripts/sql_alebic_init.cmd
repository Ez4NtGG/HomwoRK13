@echo off
PUSHD ..\hw13

alembic init migrations

alembic revision --autogenerate -m "Init"

POPD