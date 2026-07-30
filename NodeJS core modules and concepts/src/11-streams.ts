   

// piece by piece
// not loading the data at once 
// read large files 
// uplaod files 
// dowloand files 
// audio/vidoe processing 
// compression 

import { Readable, Transform, Writable } from "node:stream";
import { pipeline } from "node:stream/promises";

// CHUNKS 

// here is my full 500mb file 
// here is chunk 1 
// here is chunk 2 
// here is chunk 3 
// here is chunk 4 
// here is chunk 5

// memory efficient 

// streams tyep 

// readable stream - source of data 
// writable stream - destination where the data is written 
// transform stream - read the data , chaneg it and pass that forward 


const readableStrem = Readable.from([
    "hello",
    "from",
    "node.js",
    "strem"
])

// callbackify(error , result) 

const uppercaseTransformation = new Transform({
    transform(chunk, encoding , callback){
        const text= chunk.toString();

        callback(null, text.toUpperCase())
    }
})

const writeableStrem = new Writable({
    write(chunk, encoding, callback) {
        console.log('recieved chunk', chunk.toString());
        callback()
    },
})

async function main(): Promise<void> {
    try {
        await pipeline(readableStrem, uppercaseTransformation, writeableStrem)
        console.log("strem completed")
    } catch (error) {
        const message = error instanceof Error ? error.message : "unknown-error"
        console.error("strem failde",message)
    }
}

main();