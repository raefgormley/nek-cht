#EDIT ALL CASE FILES AND INPUT FILES
#sed -i 's/letters .*/letters abc/' testfile # change content in front of keyword letters to desired value


#pull changes from github
git pull origin bejan84-history-points --no-edit #--no-edit gets around needing to enter a message explaining the merge

#COMPILE NEK5000
#genbox #creates mesh
#reatore2 #converts .rea file to .re2
#genmap
#makenek cht2d

#make compile and answers files executable
#chmod -x ./compile
#chmod -x ./answers

#call expect script to compile case automatically from case files
./answers

#COPY TO DATA DIRECTORY AND RUN
echo ${PWD##*/} #Echo current directory
path='/data/RaefData/'${PWD##*/}        #define path to data directory
echo $path #print path where files will be transferred in the data directory
#sudo mkdir -p $path #make directory in data directory
#sudo rsync -a . $path  #copy files to data directory

cd $path # Switch to data directory for execution

#run simulation
nekbmpi cht2d 4
