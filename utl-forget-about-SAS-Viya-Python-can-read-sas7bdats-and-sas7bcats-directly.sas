Forget about SAS Viya Python can read sas7bdats  and sas7bcats directly

github
https://tinyurl.com/y5my84fz
https://github.com/rogerjdeangelis/utl-forget-about-SAS-Viya-Python-can-read-sas7bdats-and-sas7bcats-directly

SAS  Forum
https://communities.sas.com/t5/SAS-Studio/Export-a-SAS-file-to-a-CSV/m-p/558455

https://github.com/Roche/pyreadstat

macros
https://tinyurl.com/y9nfugth
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories

*_                   _
(_)_ __  _ __  _   _| |_
| | '_ \| '_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
;

libname sd1 "d:/sd1";
data sd1.iris;

  set sashelp.iris;
run;quit;

*            _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| '_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
;

  SPECIES  SEPALLENGTH  SEPALWIDTH  PETALLENGTH  PETALWIDTH
0  Setosa         50.0        33.0         14.0         2.0
1  Setosa         46.0        34.0         14.0         3.0
2  Setosa         46.0        36.0         10.0         2.0
3  Setosa         51.0        33.0         17.0         5.0
4  Setosa         55.0        35.0         13.0         2.0

COLUMN NAMES
------------
['SPECIES', 'SEPALLENGTH', 'SEPALWIDTH', 'PETALLENGTH', 'PETALWIDTH']


COLUMN LABELS
--------------
['Iris Species', 'Sepal Length (mm)', 'Sepal Width (mm)', 'Petal Length (mm)', 'Petal Width (mm)']

NUMBER OF ROWS
--------------
150

NUMBER OF VARIABLES
-------------------
5

TABLE NAME
----------
IRIS

TABLE ENCODING
--------------
WINDOWS-1252

*
 _ __  _ __ ___   ___ ___  ___ ___
| '_ \| '__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
;

%utl_submit_py64_37("
import pyreadstat;
df, miris = pyreadstat.read_sas7bdat('d:/sd1/iris.sas7bdat');
print(df.head());
print(miris.column_names);
print(miris.column_labels);
print(miris.number_rows);
print(miris.number_columns);
print(miris.file_label);
print(miris.file_encoding);
");
