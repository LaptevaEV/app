data <- read.csv2("C:/Rğàáî÷àÿ/app-master/data/data1.csv")
data$storey_range
data$storey=data.frame(do.call('rbind', strsplit(as.character(data$storey_range),' TO ',fixed=TRUE)))[,1]
data$storey_max=data.frame(do.call('rbind', strsplit(as.character(data$storey_range),' TO ',fixed=TRUE)))[,2]
data$month=as.POSIXct (data$date, tz = "UTC", format="%Y-%m-%d")
town_list=list("ANG MO KIO"=1,"BEDOK"=2,"BISHAN"=3,
               "BUKIT BATOK"=4,"BUKIT MERAH"=5,"BUKIT PANJANG"=6,
               "BUKIT TIMAH"=7,"CENTRAL AREA"=8,"CHOA CHU KANG"=9,
               "CLEMENTI"=10,"GEYLANG"=11,"HOUGANG"=12,
               "JURONG EAST"=13,"JURONG WEST"=14,"KALLANG/WHAMPOA"=15,
               "MARINE PARADE"=16,   "PASIR RIS"=17,       "PUNGGOL"=18,        
               "QUEENSTOWN"=19,      "SEMBAWANG"=20,       "SENGKANG"=21,       
               "SERANGOON"=22,       "TAMPINES"=23,        "TOA PAYOH"=24,      
               "WOODLANDS"=25,       "YISHUN"=26)
