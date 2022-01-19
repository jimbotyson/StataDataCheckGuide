sysuse auto.dta, clear
tab1 make
gen make2 = make if inlist(make,"AMC Concord","Buick LeSabre")
separate weight, by(make)
scatter mpg weight , mlabel(make2)