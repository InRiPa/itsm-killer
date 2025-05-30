## Retrieve a secret

From our previous scenarios about Kubernetes, we recall that we can access data, using a `jsonpath` query.

Let's try to use that to access one of our secrets.

Executing `kubectl get secret app-file-creds -o jsonpath='{.data}'`{{exec}}

results in
```
{
    "password":"aXRzbV9wYXNzd29yZA==",
    "username":"aXRzbV91c2Vy"
}
```

You might notice, that the values are not the ones, we were using when setting up the secret. 
The reason is, that we get presented with the base64 encoded string of our values.

We can use `jsonpath` and the additional program `base64` to decode the values and reveal the true sensitive data. 

To decode the `username`, we could use: 

`kubectl get secret app-file-creds -o jsonpath='{.data.username}' | base64 --decode`{{exec}}

Try to get the username from `app-file-creds` and store it into `/tmp/appuser.txt`. 
Store the password from `app-file-creds` into `/tmp/apppass.txt`


## Challenge

Try to reveal the secret of our first secret we set up. The one, where we entered the credentials from the terminal.
