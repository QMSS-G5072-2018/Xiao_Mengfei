---
title: "QMSS G5072 Final Project Proposal"
author: "Mengfei Xiao"
date: "November 30th, 2018"
output: 
  html_document:
    keep_md: true
---



### Basic Information
a) Name of project: What factors affect the soccer odds of the World’s Top Football League?
b) Type of project: Option A1
c) Brief Description: Refer to the next section for details.
d) Challenges: 
Are there any significant hurdles that you have doubts about? 
Not solving them will cause to the project incompleteness? 
Transforming the code throughout this project into a package will be a challenge. 
I’m unsure which aspects of my code need to be converted into a package or how many functions are required in the final package. 



### 1.Overview
Soccer odds are a set of values that can reflect the logical relationship between the two soccer teams in a game, which are calculated by the gambling companies based on the team's achievements (goals and the outcome) in a certain period of time. The odds reflect the gambling companies' predictions of the outcome of the game, with the team with higher odds in a game more likely to lose.

The factors that influence the odds are actually closely related to the factors that influence the outcome of a game. If the soccer players can predict the outcome of a game more accurately than the gambling companies, they will get a positive profit from the betting. So the natural question is, what are the odds? Can we build models that predict game outcomes more accurately than gambling companies? Therefore, this is what my study mainly focuses on.

The Five European Football Leagues are the top five European football leagues in terms of influence and competitive level, including La Liga, Premier League, Lega Serie A, Bundesliga, Ligue 1, all of which are also the world's top leagues and soccer gambling is the most developed, received most widely attention by lotteries. Moreover, these leagues' official website provide relatively detailed historical data for reference. At the same time, focusing on the Five European Football Leagues can avoid the problems caused by the difficulty of comparing different leagues.



### 2.Data & Methodology
In order to study the dominant factors of the soccer odds, I obtained the related datasets from Kaggle between December 2016 and May 2018, more than 32,000 games. I selected six data of the Five European Football Leagues. At the same time, in order to measure the strength of the team, I am going to web scraping from the official website of the above leagues to get the characteristic data of the team, such as the league points, international ranking and players' value.

#### 2.1 Time Period
Kaggle's dataset covers the period from December 2016 to May 2018, and the corresponding league table data include the three seasons of 2015-2017.


#### 2.2 Odds Data
Kaggle provides a data set that includes each game's host and guest team name, game time, host team odds, guest team odds and bureau odds. The same observation can be regarded as either the game of the host team or the guest team, so the odds of the host team and the guest team can be both regarded as dependent variables. Since the odds of the same game may change before the beginning of the game, I take the odds closest to the start time of the game as the record. Besides, the final odds of the game may refer to more information than the odds of the starting.


#### 2.3 Team Performance
Kaggle's dataset also provides results for each game, including host team goals, guest team goals and Win-Los. Limited by the availability of data, I intend to measure the team's performance by the winning percentage and average goals in the last n games. It should be noted that there also exists many problems in this way. The winning rate and goal rate of a team with different strength, status and characteristics are totally different. The winning rate and average goals do not take the opponent's information into account, it may cause to information bias.


#### 2.4 Host/Guest Information
Kaggle provides the dataset including the information of host team and guest team, and I regard it as dummy variable.


#### 2.5 Team Strength
The official websites of leagues provide the scores of each team in previous seasons. Compared with other indicators, the scores and ranking of last season reflect the comprehensive strength of the teams. In order to make the points of each league comparable, I will centralize and standardize the points data.


#### 2.6 Number of Football Stars
On the one hand, the number of football stars can reflect the strength of the team; on the other hand, there may be a fan effect, which makes lottery participants more inclined to bet on the team where the star stays, thus influencing the odds. Therefore, I added the number of stars into the model as an explanatory variable. The salary of players better reflects the value and comprehensive ability of players, so I will web scraping the salary list of players from various official websites to measure the number of stars in the team. However, it may be difficult to obtain the information about the changes of players in various teams.



### 3. Datasets Cited
[Football Matches Odds data set from Kaggle](https://www.kaggle.com/eladsil/football-games-odds)

[La Liga Website](https://www.laliga.es/)

[Premier League Website](https://www.premierleague.com/)

[Lega Serie A Website](http://www.legaseriea.it/it)




