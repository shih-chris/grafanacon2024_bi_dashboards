-- Create test table
create table if not exists rpt_community_stats_daily (
    id int not null,
    date_day date not null,
    url varchar(250) not null,
    page_views int not null,
    primary key (id)
);
