
def all_flowers
    run_sql("SELECT * FROM flowers ORDER BY id")
end

def create_flower(name,region,family,image_url)
    run_sql("INSERT INTO flowers(name,region,family,image_url) VALUES($1,$2,$3,$4)",[name,region,family,image_url]) 
end

def get_flower(id)
    run_sql("SELECT * FROM flowers WHERE id = $1",[id])[0]
end

def update_flower(id,name,region,family,image_url)
    run_sql("UPDATE flowers SET name = $2, region = $3, family = $4,image_url = $5  WHERE id =$1",[id,name,region,family,image_url])
end

def delete_flower(id)
    run_sql("DELETE FROM flowers  WHERE id = $1",[id])
end

def get_search_flower(name)
    run_sql("SELECT * FROM flowers WHERE name ILIKE $1",[name])
end


