# Bayes Hack 2016

### Department of Transportation Prompt #3
_How can data optimize emergency services?_

## Prompt

In 2014 there were more than 6 million traffic crashes in the United States, resulting in 32,675 deaths and 2.3 million injuries. Based on incident and traffic conditions, emergency responders have a number of options for transportation (including helicopter ambulance transport in lieu of ground ambulance). There aren't standardized methods or technologies designed for emergency medical services personnel to predict and optimize transport times by selecting the right response to every incident.

Can rich EMS response data coupled with incident state—including weather conditions, road and traffic conditions, and hospital locations—be used to develop a real-time tool for paramedics and dispatchers?

## Datasets

Two datasets that may come in handy for this prompt are the traffic-fatalities dataset from **FARS** (the Fatality Analysis Reporting System) and the EMS response dataset from **NEMSIS** (the National EMS Information System):

### FARS traffic fatalities dataset

[FARS](http://www-fars.nhtsa.dot.gov//QueryTool/QuerySection/SelectYear.aspx) has detailed data regarding crashes, vehicles, drivers, passengers, and pedestrians involved in all traffic fatalities from 1994 to 2014. You can use the [web interface](http://www-fars.nhtsa.dot.gov//QueryTool/QuerySection/SelectYear.aspx) to query the data fields you want for a given year, or take a look at `data/fatalities-2014-allfields.tsv`, a dump that we prepared of all 2014 crash/driver/occupant/vehicle/pre-crash data fields from FARS, in TSV format.

We have prepared a brief introduction to the FARS dataset, in [an iPython (Jupyter) notebook](https://github.com/bayesimpact/bayeshack-transportation-ems/blob/master/analysis/fars-exploration.ipynb).

### NEMSIS EMS response dataset

NEMSIS has compiled a 4GB dataset of all EMS responses, organized into about 20 tables. To download and extract it, run `make data/nemsis` (or you can manually download it from [here](https://www.dropbox.com/s/nbuuiuw7yxuw94a/NEMSIS-2014-public-dataset.tar.gz?dl=0)).

It may be easier to start with just the Illinois subset (150 MB) of the NEMSIS 2014 data, which is available separately. To download and extract it, run `make data/nemsis-illinois` (or you can manually download it from [here](https://www.dropbox.com/s/qxs3vpehq8a3eyc/nemsis-illinois.tar.gz?dl=0)).

Note that there are some slight differences in data format between the national and Illinois datasets – for example, the tables in the Illinois dataset are CSV, while those in the national dataset use a different delimiter.

To learn more about what the dataset contains and where it comes from, see the `ReadMeFirst.txt` file in the Illinois dataset.

## In This Repo

* `data/`
  * `nemsis/` – this is where the Makefile will download the national NEMSIS 2014 data dump.
  * `nemsis-illinois/` – this is where the Makefile will download the Illinois NEMSIS 2014 data dump.
  * `fatalities-2014-allfields.tsv` – a dump of all 2014 crash/driver/occupant/vehicle/pre-crash data fields from FARS, in TSV format.
  * `fatalities-fieldnames.tsv` – a mapping of field-codes to descriptive field names for the FARS dataset.
  * `fatalities-codes.txt` – a raw text dump of the meanings of all relevant codes for `fatalities-2014-allfields.tsv`.
* `analysis/`
  * `fars-exploration.ipynb` – iPython (Jupyter) basic exploration notebook for the FARS dataset.
* `Makefile` – scripts to download the NEMSIS dataset.

## Resources

- The American Trauma Society hosts a [comprehensive index of trauma centers](http://www.amtrauma.org/?page=FindTraumaCenter) in the United States that incorporates service information.
- The National Highway Traffic Safety Administration's National Center for Statistics and Analysis [open data portal](http://www.nhtsa.gov/NCSA) with troves of high-level statistics. They also run the [Fatality Analysis Reporting System](http://www-fars.nhtsa.dot.gov//QueryTool/QuerySection/SelectYear.aspx), which can be queried year-by-year for individual traffic accident conditions and outcomes _([see the README section on FARS data](#fars-traffic-fatalities-dataset))_.
