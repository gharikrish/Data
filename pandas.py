import pandas as pd
lst = ['india','russia','US','germany','japan']

df = pd.DataFrame(lst)
print(df)

#%%
# initialise data of lists
data = {'NAME':['tom','nick','krish','jack'],'AGE':[19,20,18,22]}
df = pd.DataFrame(data)
print(df)
#%%
data  = [['tom','nick','krish','jack'],[19,20,18,22],[2000,2200,4000,4590]]
df = pd.DataFrame(data)
print(df)
#%%
#define dicitionary contain empoloyee data
data = {'NAME':['tom','nick','krish','jack'],
        'AGE':[19,20,18,22],
        'ADDRESS':['ciatal','austin','sanantanio','losvegas'],
        'qualification':['MCA','BBA','MS','MSS']}
df = pd.DataFrame(data)
print(df)

#selec t two columns
print(df[['NAME','ADDRESS']])