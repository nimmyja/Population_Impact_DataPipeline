from sqlalchemy import create_engine
import pandas as pd
import psycopg2
from sqlalchemy.ext.declarative import declarative_base
Base = declarative_base()
from sqlalchemy import Column, Integer, String, Float
from io import StringIO



def copy_from_stringio(conn, df, table,schema):

    # save dataframe to an in memory buffer
    buffer = StringIO()
    df.to_csv(buffer, index_label='id', header=False)
    buffer.seek(0)
    cursor = conn.cursor()
    cursor.execute("SET search_path = "+schema)
    try:
        cursor.copy_from(buffer, table, sep=",")
        conn.commit()
    except (Exception, psycopg2.DatabaseError) as error:
        
        print("Error: %s" % error)
        conn.rollback()
        cursor.close()
        return 1
    print("copy_from_stringio() done")
    cursor.close()

def read_files(path,name_col,header_rows,key):
    df_set =pd.read_csv(path,names=name_col,skiprows=header_rows,quotechar='"')
    df_set.replace(',',' ', regex=True, inplace=True)
    df_set.set_index(keys=key,inplace=True)
    return df_set
    