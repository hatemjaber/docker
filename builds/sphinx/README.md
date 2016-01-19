sphinxsearch:2.2.10 is a base docker image that should be used to build a sphinxsearch docker image from.

cd into the directory sphinxsearch2.2.10
sudo docker build -t sphinxsearch:2.2.10 .

once you have the base image, do the same for the sphinxsearch directory

cd into the directory sphinxsearch
sudo docker build -t sphinxsearch .

sphinxsearch is the example to use


If you want to use other versions of sphinx, you need to open up the Dockerfile in sphinxsearch:2.2.10 and change ENV SPHINX_VERSION= to the version that you want to try. Create a new image using the sphinxsearch making sure that you are creating FROM the right new image that you created.

These are just to serve as a way to get sphinxsearch setup and ready for testing without having to install on your local machine.

Once you have built your Dockerfile's, to create a container...

- create a directory wherever you like on your host machine named some-sphinx with 2 sub directories etc and var
	sudo docker run -it --hostname some-sphinx --name some-sphinx -v /PATH-ON-HOST-MACHINE/some-sphinx/etc:/usr/local/sphinx/etc -v ~/PATH-ON-HOST-MACHINE/some-sphinx/var:/usr/local/sphinx/var -p 9306:9306 -d mysphinx /bin/bash
