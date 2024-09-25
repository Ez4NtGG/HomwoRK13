@echo off

docker run --name pg-hw13 -p 5432:5432 --env-file ../.env-prod -d postgres
2

                    

