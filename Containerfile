    FROM nodered/node-red:latest
    USER root
    RUN npm install node-red-contrib-bcrypt node-red-node-mysql node-red-contrib-jwt
    
    # Remove the next line once integrated with PVC
    COPY flows.json /data
    USER node-red