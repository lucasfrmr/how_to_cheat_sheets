#how to update node
  nvm install 6

#Installing MongoDB on a Cloud9 workspace
  To install MongoDB in your workspace, you can open a terminal and run the following command:
    sudo apt-get install -y mongodb-org
    
#Running MongoDB on a Cloud9 workspace
  MongoDB is preinstalled in your workspace. To run MongoDB, run the following below (passing the correct parameters to it). 
  Mongodb data will be stored in the folder data.

    mkdir data
    echo 'mongod --bind_ip=$IP --dbpath=data --nojournal --rest "$@"' > mongod
    chmod a+x mongod
  
  You can start mongodb by running the mongod script on your project root:
    ./mongod
  
  MongoDB parameters used:
  --dbpath=data - Because it defaults to /var/db (which isn't accessible)
  --nojournal - Because mongodb usually pre-allocates 2 GB journal file (which exceeds Cloud9 disk space quota)
  --bind_ip=$IP - Because you can't bind to 0.0.0.0
  --rest - Runs on default port 28017

  Drivers
  You should use the host $IP instead of localhost as your driver connection URL. For example, in Node, it is:
    process.env.IP
