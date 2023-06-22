setup:
	conda env create -f environment.yml

export-conda-env:
	conda env export --no-builds > environment.yml