@echo off
PUSHD ..\hw13

rem alembic revision --autogenerate -m "Updates"
alembic upgrade head 

POPD