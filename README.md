# IndiaVaccineFinderUtility

## CLI script vaccine_finder_cli.sh
This script will check for available vaccines slots for COVISHIELD in Delhi and Ghaziabad every 5 minutes and display them on the command line

**Installation**
* Install JQ using "brew install jq"
* Download attached script, change permission using chmod 755 

**Using Script**
* Script will find available open appointments for coming days starting today
* If no argument is provided to the script it will check for all age groups [./vaccine_finder_cli.sh]
* To look for vaccines for 18+ use argument 18 [./vaccine_finder_cli.sh 18]
* To look for vaccines for 45+ use argument 45 [./vaccine_finder_cli.sh 45]

**Note**: If a hospital has at least one available slot you will see all the available as well not available slots for that hospital 


## HTML page IndiaVaccineFinder.html
* You can look for vaccines of a type and age group for all Delhi districts and Ghaziabad district in one shot
* The page will auo refresh after 5 minutes to get the latest results, so you do not have to keep refreshing

**Installation**
* Download the file IndiaVaccineFinder.html and double click to open the page in Browser. (Tested on Chrome)

**Screenshots**
![image](https://user-images.githubusercontent.com/41709035/118023865-e5bbb780-b312-11eb-9fea-312cf7c01c0a.png)

