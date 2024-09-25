PUSHD ..\hw13

taskkill /IM "uvicorn.exe" /F
uvicorn main:app --reload --port 9000
taskkill /IM "uvicorn.exe" /F

POPD