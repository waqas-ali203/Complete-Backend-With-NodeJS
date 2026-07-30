
// buffers - raw binary data 
// binary data means - when u have ur data stored in bytes 

// reading files 
// recieving http req bodies 
// working with streams
//  handling images , pdf FileSystem, video 
// encrypt and hashing 

// string - human readable text 
// buffer - raw bytes 


const textBuffer = Buffer.from("Node")
console.log(textBuffer);
console.log(textBuffer.toString('utf-8'))


// .alloc 

const fixedBuffer = Buffer.alloc(5);
console.log("empty fixed buffer",fixedBuffer)

fixedBuffer.write("API");

console.log("Fixed buffer after write", fixedBuffer);
console.log("Fixed buffer as text", fixedBuffer.toString('utf-8'))


// chunks 

const chunks = [
    Buffer.from("Hello"),
    Buffer.from("Node"),
    Buffer.from("JS")
]

const combineBuffer = Buffer.concat(chunks);
console.log(combineBuffer, combineBuffer.toString('utf-8'))
