# IndiaVaccineFinderUtility

## To use the CLI script vaccine_finder_cli.sh

**Installation**
* Install JQ using "brew install jq"
* Download attached script, change extension from .txt to .sh and change permission using chmod 755 

**Using Script**
* Script will find available open appointments for coming days starting today
* If no argument is provided to the script it will check for all age groups [./vaccine_finder_cli.sh 18]
* To look for vaccines for 18+ use argument 18 [./vaccine_finder_cli.sh 18]
* To look for vaccines for 45+ use argument 45 [./vaccine_finder_cli.sh 45]

**Note**: If a hospital has at least one available slot you will see all the available as well not available slots for that hospital 
