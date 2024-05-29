FROM ubuntu:latest

# Update the package lists and install dependencies
RUN apt-get update && apt-get install -y git g++ cmake libboost-dev libboost-filesystem-dev libboost-thread-dev \
    libboost-system-dev libboost-regex-dev libxml2-dev libsparsehash-dev libbz2-dev \
    zlib1g-dev libzip-dev libgomp1 liblua5.3-dev \
    pkg-config libgdal-dev libboost-program-options-dev libboost-iostreams-dev \
    libboost-test-dev libtbb-dev libexpat1-dev

WORKDIR /osrm-server-india

COPY . /osrm-server-india/

EXPOSE 5555

CMD ["./osrm-routed", "-p", "5555", "--algorithm", "mld", "india-latest.osrm"]
