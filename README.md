# Docker container for PHP development using Apache server

First you must have Docker installed on your machine.  

Then, open this directory in terminal and paste:
```

docker build -t ${your_image_name} .

```

Using the following command you can see the list of created images:
```

docker images -a

```

After that, run the following command to run container (instance) of your already created image:
```

docker run -d -p 80:80 ${your_image_name}

```

Now you can open your browser at `localhost:80` or `localhost` and see Apache server working.



To stop container run:
```

docker stop ${container_id}

```


To see the list of running containers and corresponding ids, run:
```

docker ps -a

```

---

When making changes in your local `www` directory, you have to rebuild container after every change to sync local changes with container.  
Or you can run the following command when running container to see changes instantly:
```

docker run -v $(pwd)/www:/var/www/html -d -p 80:80 ${your_image_name}

```

This command mounts local files to container.  
It may be done easier with Docker compose.
