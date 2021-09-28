sqlfiles="false"
SApassword=$1
sqlpath=$2

echo "SELECT * FROM SYS.DATABASES" | dd of=testsqlconnection.sql
for i in {1..60};
do
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SApassword -d master -i testsqlconnection.sql
    if [ $? -eq 0 ]
    then
        echo "sql server ready"
        break
    else
        echo "not ready yet..."
        sleep 1
    fi
done
rm testsqlconnection.sql

for f in $sqlpath/*
do
    if [ $f == $sqlpath/*".sql" ]
    then
        sqlfiles="true"
        echo "found sql file $f"
    fi
done

if [ $sqlfiles == "true" ]
then
    for f in $sqlpath/*
    do
        if [ $f == $sqlpath/*".sql" ]
        then
            echo "executing $f"
            /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SApassword -d master -i $f
        fi
    done
fi