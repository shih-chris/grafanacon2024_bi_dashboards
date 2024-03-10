# GrafanaCON 2024 - Building interactive Grafana dashboards for business intelligence
## Overview
This is a demo dashboard for use in the [Building interactive Grafana dashboards for business intelligence](https://grafana.com/about/events/grafanacon/2024/building-interactive-bi-dashboards-tips-and-tricks/) presentation!


In this repo, we will build a Grafana dashboard that digs into our Grafana Community data to share and example of how we have used Grafana's native interactivity to create business intelligence dashboards that encourage users to explore.


**Event Synopsis:**
> At Grafana Labs, we lean heavily on “dogfooding” as one way to maintain a close tie with our users’ experiences. For the product analytics team, this means that we love testing the limits of Grafana dashboards for internal analytics and business intelligence! In doing so, one thing that has stood out is how Grafana’s native interactivity allows for easy exploration, even for our non-technical Grafanistas. This has enabled our small data team to extend our impact by creating dashboards that behave more like data apps, rather than the static dashboards people typically associate with business intelligence. In this session, Director of Analytics Chris Shih will dig into Grafana community data and showcase a few of our most common tips and tricks for building interactive business intelligence dashboards.

## Structure
At Grafana Labs we leverage a central data warehouse to combine and store much of our business data. In particular, we make heavy use of our BigQuery data source plugin.

However, for this demo, in order to appease the demo gods, we will build everything locally, store our data in a PostgresDB, and leverage our Grafana Postgres data source.

## How to Run
To run the demo setup:

```bash
docker-compose up -d
```

Connect to postgres:

```sql
psql -h localhost -p 5432 postgres postgres
```

View the grafana dashboard at [http://localhost:3000/](http://localhost:3000/)

## Relevant Links
- [GrafanaCON agenda link](https://grafana.com/about/events/grafanacon/2024/agenda/)
- [Building interactive Grafana dashboards for business intelligence](https://grafana.com/about/events/grafanacon/2024/building-interactive-bi-dashboards-tips-and-tricks/) event details
- [Grafana for business intelligence](https://grafana.com/blog/2022/05/31/grafana-for-business-intelligence-how-grafana-labs-uses-dashboards-for-more-than-observability-data/)
