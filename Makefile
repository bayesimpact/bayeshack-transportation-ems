# This file is used to simplify the pipeline of data pulling and cleaning
# See Mike Bostock's https://bost.ocks.org/mike/make/
## NOTE: Makefiles need TABS not SPACES for indentation

all: data/nemsis-illinois data/nemsis

clean:
	rm -rf data/nemsis-illinois
	rm -rf data/nemsis

data/nemsis:
	curl -L -o NEMSIS-2014-public-dataset.tar.gz https://www.dropbox.com/s/nbuuiuw7yxuw94a/NEMSIS-2014-public-dataset.tar.gz?dl=1
	mkdir data/nemsis
	mv NEMSIS-2014-public-dataset.tar.gz data/nemsis
	cd data/nemsis; tar -xzvf NEMSIS-2014-public-dataset.tar.gz
	rm data/nemsis/NEMSIS-2014-public-dataset.tar.gz

data/nemsis-illinois:
	curl -L -o nemsis-illinois.tar.gz https://www.dropbox.com/s/qxs3vpehq8a3eyc/nemsis-illinois.tar.gz?dl=1
	mkdir data/nemsis-illinois
	mv NEMSIS-2014-public-dataset.tar.gz data/nemsis-illinois
	cd data/nemsis-illinois; tar -xzvf nemsis-illinois.tar.gz
	rm data/nemsis-illinois/nemsis-illinois.tar.gz
