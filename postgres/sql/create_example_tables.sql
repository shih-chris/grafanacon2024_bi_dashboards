-- Create test table
create table if not exists rpt_test_data (
    id int not null,
    date_day date not null,
    url varchar(250) not null,
    page_views int not null,
    primary key (id)
);

copy rpt_test_data from '/usr/share/community_data/example_data.csv' delimiter ',' csv header;

-- Create table for overall community stats
create table if not exists rpt_community_stats_daily (
    id int not null,
    date_day date not null,
    url varchar(250) not null,
    page_views int not null,
    primary key (id)
);

copy rpt_community_stats_daily from '/usr/share/community_data/community_stats_daily.csv' delimiter ',' csv header;
