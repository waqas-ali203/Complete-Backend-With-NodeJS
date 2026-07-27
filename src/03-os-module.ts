// os 
// cpu info 
// memory 
// home/temp directory 


import * as os from 'node:os';

function runOsDemo(): void {
    console.log("platform", os.platform());
    console.log("architecture", os.arch());
    console.log("os type", os.type());
    console.log("os release", os.release());
    console.log("home directory", os.homedir());
    console.log("temporary directory", os.tmpdir());
}

runOsDemo();