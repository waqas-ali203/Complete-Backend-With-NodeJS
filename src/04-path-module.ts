
// build and read file path 


import path from "node:path";

//  const filePath = projectRoot + "/uplaods" + fileName   [ this is bad practice]

// path.join : uses the correct separator for the current OS  /users/waqas/Project/fileURLToPath.txt 

// c:\users\waqas\project\fileURLToPath.txt 

// process.cwd : the folder from where the node js process was started 

const projectRoot = process.cwd();
console.log(projectRoot)

// uplaods/users/42/profile.photo.png 

const userId = "42";
const originalName = "profile.photo.png"

//  imp -> path.join -> create a path string 
// it will not create the folder 
// it does not check file exist or not

const uploadFilePath = path.join(projectRoot, "uploads", "users" , userId , originalName)
console.log(uploadFilePath)

// final part of the path 

const fileName = path.basename(uploadFilePath);
const fileExt = path.extname(uploadFilePath);
const parentFolder = path.dirname(uploadFilePath)

console.log(fileName, fileExt, parentFolder)