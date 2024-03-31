DROP TABLE IF EXISTS rpt_community_stats_daily;
CREATE TABLE rpt_community_stats_daily ( `received_date` Date, `page_views` UInt32, `new_page_views` UInt32, `unique_visitors` UInt32, `unique_pages` UInt32) ENGINE = MergeTree PRIMARY KEY received_date;
DROP TABLE IF EXISTS rpt_community_page_stats_daily;
CREATE TABLE rpt_community_page_stats_daily ( `received_date` Date, `page_path` String, `page_title` String, `is_page_first_day` Boolean, `page_views` UInt32,  `unique_visitors` UInt32) ENGINE = MergeTree PRIMARY KEY (received_date, page_path);
DROP TABLE IF EXISTS dim_community_pages;
CREATE TABLE dim_community_pages ( `page_path` String, `page_title` String, `first_page_date` Date, `t30d_page_views` UInt32,  `t30d_page_rank` UInt32) ENGINE = MergeTree PRIMARY KEY (page_path, page_title);
