Delete from stage_analysis.stg_population;
Delete from stage_analysis.stg_pollution;
Delete from stage_analysis.stg_population_hist;
Delete from stage_analysis.stg_pollution_hist;
Delete from transform_analysis.population_pollution;

select count(1) from stage_analysis.stg_population
union all
select count(1) from stage_analysis.stg_pollution
union all
select count(1) from stage_analysis.stg_population_hist
union all
select count(1) from stage_analysis.stg_pollution_hist
union all
select count(1) from transform_analysis.population_pollution
union all
select count(1) from transform_analysis.dim_Country;


select Country_Code from transform_analysis.population_pollution  as 'pp' join transform_analysis.dim_country as 'bb' on pp.Country_Code=bb.Country_Code;