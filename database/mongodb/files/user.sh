mongo --eval "db.createUser(
{	user: 'nikhil',
	pwd: 'password',

	roles:[{role: 'userAdminAnyDatabase' , db:'admin'}]});" 
