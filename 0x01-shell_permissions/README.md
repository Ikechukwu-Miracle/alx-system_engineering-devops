0-iam_betty switches current user to betty
1-who_am_i prints the effective username
2-groups prints all the groups the user belongs to
3-new_owner changes the owner of the file 'hello' to betty
4-empty creates the empty file 'hello'
5-execute makes 'hello' executable by the owner
6-multiple_permissions gives rwx to user, r-x to group and r-- to others for the hello file 
7-everybody gives everyone execute permission on the file 'hello'
8-James_Bond gives all the rights (rwx) to other users only
9-John_Doe gives the permissions -rwxr-x-wx to the file 'hello'
10-mirror_permissions copies the mode of olleh into hello
11-directories_permissions gives execute permission to everyone for the sub-directories of the current directory
12-directory_permissions creates a new dir my_dir and assigns it 751 permissions
13-change_group changes the group of the file 'hello' to 'school'
100-change_owner_and_group changes owner and group to vincent and staff respectively for all files and dir
101-symbolic_link_permissions changes owner and group to vincent and staff respectively for _hello_
102-if_only changes owner of the file hello to betty only if the owner is guillaume 
