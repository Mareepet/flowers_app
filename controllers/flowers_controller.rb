require './models/flower'


get '/' do
 flowers = all_flowers()

  erb :'flowers/index', locals: {
    flowers: flowers
  }
end

get '/flowers/new' do
  erb :'flowers/new'
end

post '/flowers' do
  name = params['name']
  region = params['region']
  family = params['family']
  image_url = params['image_url']

  create_flower(name,region,family,image_url)
  redirect '/'
end

get '/flowers/:id/edit' do
    id = params['id']
    flower = get_flower(id)

    erb :'flowers/edit', locals: {
        flower: flower
    }
end

post '/flowers/:id' do
    id = params['id']
    name =params['name']
    region =params['region']
    family = params['family']
    image_url = params['image_url']

    update_flower(id,name,region,family,image_url)
    redirect'/'
  end

delete '/flowers/:id' do
  id = params['id']

  delete_flower(id)
  redirect'/'
end

 get '/search' do
   name = params['name']
  #  selected_flower = get_search_flower(name)
  selected_flower = get_search_flower(name)

   erb :'flowers/search',locals:{
    selected_flower: selected_flower
}
 end

 get '/all' do
  flowers = all_flowers()

  erb :'flowers/all',locals:{
   flowers: flowers
  }
end

get '/more' do
  erb :'flowers/more'
end



