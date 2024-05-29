import pandas as pd

df=pd.read_csv("Files\Placement.csv")
print(df)

df.iloc[0][2]