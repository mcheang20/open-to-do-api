# Open Todo API
 API authenticate and manage your information externally on a to-do list application.

## Getting Started
Start by cloning the repository:
```
git clone https://github.com/mcheang20/open-to-do-api.
cd open-to-do-api
```
Install dependencies:
```
bundle install
```
Start the local server:
```
rails s
```
Runs a simple server on port 3000. To view visit http://localhost:3000 on any browser.

## Actions from the Command Line

Authentication:
```
$ curl -u <your username>:<your password> http://localhost:3000/api/users/
```
### Creating from the Command Line
To create a user:
```
$ curl -u username:password -d "user[username]=Steve" -d "user[password]=Jobs" http://localhost:3000/api/users/
```
To create a list:
```
curl -u username:password -d "list[name]=List of things for today" -d "list[permissions]=private" http://localhost:3000/api/users/1/lists
```
To create items:
```
$ curl -u username:password -d "item[description]=Clean room" http://localhost:3000/api/lists/1/items
```
### Deleting from the Command Line
Users, lists, and items can be deleted as well with:
```
$ curl -u username:password -X DELETE http://localhost:3000/api/users/1/
```
or for lists:
```
$ curl -u username:password -X DELETE http://localhost:3000/api/users/1/lists/1
```
### Updating from the Command Line
For permission updates:
```
$ curl -X PUT -u username:password -d "list[permissions]=private" http://localhost:3000/lists/1
```
For item completion:
```
$ curl -X PUT -u username:password -d "item[completed]=true" http://localhost:3000/api/items/1
```
