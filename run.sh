#pull changes from github
git pull origin bejan84-history-points --no-edit

#make first scripts runnable
chmod -x ./rootAnswers
chmod -x ./copyData

#take user input to name session
read -p "enter session name: " sessionName
path='/data/RaefData/'$sessionName

#run rootAnswers to create folder in data and copy files over
./rootAnswers

#switch to data directory
cd $path

#make answers and compile runnable
chmod -x ./answers
chmod -x ./compile

#run answers to compile case
./answers

#run case
nekbmpi $sessionName 4
