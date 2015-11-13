### What is this? 
This is a reference enviroment for our particle dosimetry work. It has a standard set of scripts to set things up, get code, and run the code and produce output used in the paper.  

### What do I need to use it?
You will need to install three free, small, commonly used tools to use build and use this reference environment.

You will need a copy of vagrant, available here: https://www.vagrantup.com/downloads.html

You will need a copy of git, available here: https://git-scm.com/downloads (when you install, if you're on windows, select "Use Git from the windows command prompt" during the install)

You will need virtualbox, available here: https://www.virtualbox.org/wiki/Downloads


### How do I use it?
Once you have installed the above tools, open up a command prompt and type the following:

```
$ git clone https://github.com/uomsystemsbiology/reference_environment_template.git
$ cd reference_environment_template
$ vagrant up
```

This will build a virtual environment and run through each of the scripts with examples
of use.  
