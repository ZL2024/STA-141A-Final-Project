#141A Final Project
#t1 means the blue team and t2 means the red team

blue_win = subset(matches, matches$newdata.winningTeam == 100)
nrow(blue_win)#5148
red_win = subset(matches, matches$newdata.winningTeam == 200)
nrow(red_win)#4887

newdata = merge(matches_info_4_4_1_, matches_meta_4_4_1_, by='matchId')
total_tower_blue = newdata$t1TopTowerTaken + newdata$t1MidTowerTaken + newdata$t1BotTowerTaken
sum(total_tower_blue) #4085
total_tower_red = newdata$t2TopTowerTaken + newdata$t2MidTowerTaken + newdata$t2BotTowerTaken
sum(total_tower_red)#5185


total_gold_diff = newdata$topGoldDiff + newdata$jgGoldDiff + newdata$midGoldDiff + newdata$adcGoldDiff + newdata$suppGoldDiff
sum(total_gold_diff)#201472

dragon_diff = newdata$t1Dragons-newdata$t2Dragons
sum(dragon_diff)#-243
rift_diff = newdata$t1Rift - newdata$t2Rift
sum(rift_diff)#478

tower_diff = total_tower_blue - total_tower_red
sum(tower_diff) #-380
matches = data.frame(newdata$matchId,dragon_diff,rift_diff,total_gold_diff,tower_diff,newdata$gameLength,newdata$winningTeam)

1+1
