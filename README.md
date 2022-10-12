# Gradle-Project 

1. In build.gradle , I have added the task printName which is used to complete the task , that is to print the "Hello < Name given on Command line>" .
   Command which we need to run is "gradle -PparamName=Gaurav printName" , Which will give the Output as "Hello Gaurav" .
   
2. I have added Jenkinsfile with different stages to trigger the specified jobs at a particular time. 
   We can Checkout , Build , Publish and Cleanup the checkout using this Jenkinsfile.

3. Next , I have added Crontab.sh file , to Complete the Cronjobs which is Clone , create a log file with a naming convention which consists of print last 5 git logs 
   with Author and Modified Files only . To trigger the cronjob at 3 PM every day , we need to create a crontab with " 0 15 * * * /crontab.sh " , which will automate
   the Cronjobs at 3 PM everyday .
   
   
   
