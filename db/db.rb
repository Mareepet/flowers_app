
require 'pg'
# (\c flowers_app)connect to the db
def run_sql(sql,sql_params = [])
    # db = PG.connect(dbname: 'flowers_app')
    db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'flowers_app'})
    results = db.exec_params(sql,sql_params)
    db.close
    results
end