FROM cm2network/steamcmd:latest

USER root
# Add required architecture for SRCDS dependencies
RUN dpkg --add-architecture i386
# Update packages
RUN apt-get update --yes
# Install SRCDS required libraries
RUN apt-get install libtinfo5:i386 git --yes
# Switch to steam user
USER steam
# Set up symlinks
COPY update.sh .
COPY symlinks.sh .
RUN bash ./update.sh
RUN bash ./symlinks.sh
# Copy launch script
COPY launch.sh /home/steam/gmodds
# Set entrypoint
ENTRYPOINT ["/home/steam/gmodds/launch.sh"]
CMD []

