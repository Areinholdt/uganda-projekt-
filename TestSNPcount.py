import pandas as pd
df = pd.read_csv("beagle_std.mafs.gz", delimiter="\t")
print(df.head(100))
print(df.query("knownEM > 0.05").shape[0])
