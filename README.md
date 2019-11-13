# Docker_Webhook_Listener
Python 3 and Flask to listen for webhooks


```
docker build -t pylistener .
```

```
docker run  -p 5000:5000 --name pylistener_run pylistener
```

Go into Postman or other caller.

Make a POST call: http://0.0.0.0:5000/ 
In body field chose Raw with Json Type
Copy in json value of {"id" : "1123"}
Or other to see responses from service
