my_data <-read.csv("netflix_titles.csv")
class(my_data)
install.packages("data.table")
my_data<-fread("netflix_titles.csv")
my_data
library("data.table")
df <-fread("1	China	1,439,323,776	0.39 %	5,540,090	153	9,388,211	-348,399	1.7	38	61 %	18.47 %
2	India	1,380,004,385	0.99 %	13,586,631	464	2,973,190	-532,687	2.2	28	35 %	17.70 %
3	United States	331,002,651	0.59 %	1,937,734	36	9,147,420	954,806	1.8	38	83 %	4.25 %
4	Indonesia	273,523,615	1.07 %	2,898,047	151	1,811,570	-98,955	2.3	30	56 %	3.51 %
5	Pakistan	220,892,340	2.00 %	4,327,022	287	770,880	-233,379	3.6	23	35 %	2.83 %
6	Brazil	212,559,417	0.72 %	1,509,890	25	8,358,140	21,200	1.7	33	88 %	2.73 %
7	Nigeria	206,139,589	2.58 %	5,175,990	226	910,770	-60,000	5.4	18	52 %	2.64 %
8	Bangladesh	164,689,383	1.01 %	1,643,222	1,265	130,170	-369,501	2.1	28	39 %	2.11 %
9	Russia	145,934,462	0.04 %	62,206	9	16,376,870	182,456	1.8	40	74 %	1.87 %
10	Mexico	128,932,753	1.06 %	1,357,224	66	1,943,950	-60,000	2.1	29	84 %	1.65 %")
df
df<-fread("1	China	1,439,323,776	0.39 %	5,540,090	153	9,388,211	-348,399	1.7	38	61 %	18.47 %
2	India	1,380,004,385	0.99 %	13,586,631	464	2,973,190	-532,687	2.2	28	35 %	17.70 %
3	United States	331,002,651	0.59 %	1,937,734	36	9,147,420	954,806	1.8	38	83 %	4.25 %
4	Indonesia	273,523,615	1.07 %	2,898,047	151	1,811,570	-98,955	2.3	30	56 %	3.51 %
5	Pakistan	220,892,340	2.00 %	4,327,022	287	770,880	-233,379	3.6	23	35 %	2.83 %
6	Brazil	212,559,417	0.72 %	1,509,890	25	8,358,140	21,200	1.7	33	88 %	2.73 %
7	Nigeria	206,139,589	2.58 %	5,175,990	226	910,770	-60,000	5.4	18	52 %	2.64 %
8	Bangladesh	164,689,383	1.01 %	1,643,222	1,265	130,170	-369,501	2.1	28	39 %	2.11 %
9	Russia	145,934,462	0.04 %	62,206	9	16,376,870	182,456	1.8	40	74 %	1.87 %
10	Mexico	128,932,753	1.06 %	1,357,224	66	1,943,950	-60,000	2.1	29	84 %	1.65 %",
          col.names = c("Ranks","country","population ","Yearly change ","net cahnges","density","land_area","migrants","fert range","med_age","urban_pop","world_share"))
df