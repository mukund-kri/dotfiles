Create a zellij layout for fit-customer-app.

- All the code is in /home/mukund/workarea/getforj
- it should have two panes, 1 for servers and the the othere for the vite apps
- The left pane is further split into the spark api and in-bay-orchestrator server
- spark pane should cd to /home/mukund/workarea/getforj/core/spark and run npm run api:fitting
- in-bay-orchestrator pane should cd to /home/mukund/workarea/getforj/core/in-bay-orchestrator and run uv run uvicorn app.main:app --reload --port 8082
- The right pane should be split into the fit-customer-app and teebox-fit-app
- for the teebox-fit-app should cd into /home/mukund/workarea/getforj/core/teebox-fit-app and run 'npm run dev'
- for the fit-customer-app should cd into /home/mukund/workarea/getforj/core/fit-customer-app and run 'npm run dev'
