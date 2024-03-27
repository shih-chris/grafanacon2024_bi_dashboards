#!/bin/bash

clickhouse-client -q "INSERT INTO rpt_community_stats_daily FORMAT CSVWithNames" </home/community_data/community_stats_daily.csv
clickhouse-client -q "INSERT INTO rpt_community_page_stats_daily FORMAT CSVWithNames" </home/community_data/community_page_stats_daily.csv
