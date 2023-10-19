
FROM kalilinux/kali-rolling
LABEL authors = "danielblazquez 21535220"
LABEL version = "1.0"
LABEL description = "Dockerfile for a custom image of Kali Linux OS"

# Pull Kali Linux OS from a Docker Hub repository


# Update the image
RUN apt-get update

# Install the following packages for our custom image
RUN apt-get install -y \
    nmap 
    

# Set credentials for the root user, ROOT = all privileges, 21535220 = password
ENV USER root
ENV PASSWORD 22049209

# Reduce the size of the image by removing nmap, metasploit
RUN apt-get clean

# Expose ports for nmap and metasploit
EXPOSE 80 443

# Run the following commands when the container is created
CMD ["bash"]

# Build the image
# docker build -t custom-kali-image-21535220 .
# Run the container
# docker run -it --rm --name custom-kali-container-21535220 custom-kali-image-21535220