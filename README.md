# LP-CM2
Lurking Place Content Management V2

LP-CM2 is a RSYNC Scheduled Content Management System for basic HTML pages. The project constructs pages using a make file and deploys them to a 
webserver on a scheduled basis. This allows for local editing and eventual deployment.

Content files are placed in /content and end in .htm

Final build is placed in /output and all files will end in .html

Templates are taken from /template

To Build local:
make

To Build and deploy
make deploy
