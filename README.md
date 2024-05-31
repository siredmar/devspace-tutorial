# Adding articles 

```sh
curl -X POST http://localhost:3333/article -H "Content-Type: application/json" -d '{
  "Id": "3",
  "Title": "New Article",
  "Desc": "New Article Description",
  "Content": "New Article Content"
}'
```

# Listing articles
    
```sh
curl http://localhost:3333/articles
```    

# Getting an article

```sh
curl http://localhost:3333/article/{id}
```

# Deleting an article

```sh
curl -X DELETE http://localhost:3333/article/{id}
```

