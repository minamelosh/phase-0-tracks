
What are some of the key design philosophies of the Linux operating system?
There are nine major tenets to the Linux philosophy:
Small is Beautiful
Each Program Does One Thing Well
Prototype as Soon as Possible
Choose Portability Over Efficiency
Store Data in Flat Text Files
Use Software Leverage
Use Shell Scripts to Increase Leverage and Portability
Avoid Captive User Interfaces
Make Every Program a Filter

In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
A VPS is a virtual machine that is sold as a service by an Internet hosting service. A VPS runs its own copy of an operating system, and customers may have superuser-level access to that operating system instance, so they can install almost any software that runs on that OS.

Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
When you're running from root all applications are running with root privilegies -- every vulnerability in Firefox, Flash, OpenOffice etc. now can destroy your system, because possible viruses now have access everywhere. It is not just viruses, the system won't ask questions, if you click format this disk, that one click will change everything.  Also a small bug in your program could erase some system files etc.
