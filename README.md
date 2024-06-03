# devspace-tutorial

This is a simple tutorial to demonstrate how to use DevSpace to deploy a simple Go application to Kubernetes.

## Spin up a local cluster

```sh
make createCluster
```
If you are done with the cluster, you can delete it with:

```sh
make deleteCluster
```

## Build and deploy the application
    
```sh
devspace build
devspace deploy
```

## Access the application


### Adding articles 

```sh
curl -X POST http://localhost:3333/article -H "Content-Type: application/json" -d '{
  "Id": "3",
  "Title": "New Article",
  "Desc": "New Article Description",
  "Content": "New Article Content"
}'
```

### Listing articles
    
```sh
curl http://localhost:3333/articles
```    

### Getting an article

```sh
curl http://localhost:3333/article/{id}
```

### Deleting an article

```sh
curl -X DELETE http://localhost:3333/article/{id}
```


# Docs

Building the slides:

```sh
make slides
```


