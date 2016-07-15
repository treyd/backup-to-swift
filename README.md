# backup-to-swift
script to backup files to Swift using incron in a Docker container

## Usage
You must have a file with your Swift credentials that looks like:

    export ST_AUTH=https://swift.cluster.com/auth/v1.0
    export ST_USER=username
    export ST_KEY=password
    
You will also need to have a local directory for uploading files.
Within that directory should be a directory called `dump`

    $ docker run -v /path/to/swift-creds:/root/swift.env \
        -v /path/to/local/dir:/data
        swift-uploader 

## Building
     docker build . --rm=false -t swift-uploader