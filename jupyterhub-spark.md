```commandline
$ docker run -it --rm -p 8888:8888 jupyter/pyspark-noteboo
```
in a notebook:
```commandline
import pyspark 
sc = pyspark.SparkContext('local[*]')

sc

import pyspark

from pyspark.sql import SparkSession
from pyspark.sql.types import DoubleType, IntegerType

spark = SparkSession(sc)

spark

sdf = spark.read.format("csv").option("header", "true").load("res.csv")

sdf.show(5)
```
