# Use an official Python runtime as a parent image
FROM dcn-ansible:latest

# Set the working directory to /app

# Copy the current directory contents into the container at /app
# COPY . /app

ENV http_proxy=''
ENV https_proxy=''

# RUN apk add zsh
# RUN apk add vim
# RUN apk add tmux

# RUN git clone https://github.com/Parth/dotfiles.git

# RUN printf "source '$HOME/dotfiles/zsh/zshrc_manager.sh'" > ~/.zshrc
# RUN printf "so $HOME/dotfiles/vim/vimrc.vim" > ~/.vimrc
# RUN printf "source-file $HOME/dotfiles/tmux/tmux.conf" > ~/.tmux.conf

COPY ./ssh-config/* ./.ssh/


COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

# Install any needed packages specified in requirements.txt
# RUN pip install jsnapy

# Make port 80 available to the world outside this container
# EXPOSE 0

# Define environment variable
# ENV NAME World

# Run app.py when the container launches
# CMD ["python", "app.py"]
# RUN git clone https://github.com/dravetech/napalm-ansible-tutorial.git
