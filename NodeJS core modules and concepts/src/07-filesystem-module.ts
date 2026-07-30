

import path from "node:path";
import fs, { stat } from 'node:fs';
import { promises as fsPromises } from "node:fs";

const DEMO_FOLDER_PATH = path.join(process.cwd(), 'file-system', 'fs-demo')

const SYNC_FILE_PATH = path.join(DEMO_FOLDER_PATH, 'Sync-note.txt')
const CALLBACK_FILE_PATH = path.join(DEMO_FOLDER_PATH, 'Callback-note.txt')
const PROMISE_FILE_PATH = path.join(DEMO_FOLDER_PATH, 'Promise-note.txt')

type FileResult = {
    style: string;
    fileNmae: string;
    content: string;
    sizeInBytes: number
}


// create folders 
// write files 
// read files 
// chekc file information 
// delete files 

// sync apis: fs.readfilessync
// callback apis 
// promises apis 



// not good or even bad practice 
// not https req handelrs 
// not high trafic apis 
// not background jobs 


function ensureDemoFolderExists(): void {
    if (!fs.existsSync(DEMO_FOLDER_PATH)) {
        fs.mkdirSync(DEMO_FOLDER_PATH, { recursive: true })
    }
}


function runSyncExample(): FileResult {
    // write content to a file

    fs.writeFileSync(SYNC_FILE_PATH, "created using sync fs", 'utf-8');

    fs.appendFileSync(SYNC_FILE_PATH, "Append using sync fs", 'utf-8');

    const content = fs.readFileSync(SYNC_FILE_PATH, 'utf-8');

    const stats = fs.statSync(SYNC_FILE_PATH);

    return {
        style: 'sync',
        content,
        fileNmae: path.basename(SYNC_FILE_PATH),
        sizeInBytes: stats.size
    }
}


function runCallbackExample(): Promise<FileResult> {
    return new Promise((resolve, reject) => {
        fs.writeFile(CALLBACK_FILE_PATH, "Created using callback fs", 'utf-8', (writeError) => {
            if (writeError) {
                reject(writeError)
                return
            }
            fs.appendFile(CALLBACK_FILE_PATH, "Append using callback fs", "utf-8", (appendError) => {
                if (appendError) {
                    reject(appendError)
                    return
                }
                fs.readFile(CALLBACK_FILE_PATH, 'utf-8', (readError, content) => {
                    if (readError) {
                        reject(readError)
                        return
                    }

                    fs.stat(CALLBACK_FILE_PATH, (statError, stats) => {
                        if (statError) {
                            reject(statError)
                            return
                        }

                        resolve({
                            style: "callback",
                            content,
                            sizeInBytes: stats.size,
                            fileNmae: path.basename(CALLBACK_FILE_PATH),
                        });
                    })
                })
            })
        })
    })
}



// promises api


async function runPromiseExample(): Promise<FileResult> {
    await fsPromises.writeFile(PROMISE_FILE_PATH, "Created using promises apis", 'utf-8')
    await fsPromises.appendFile(PROMISE_FILE_PATH, "Append using promises apis", 'utf-8')

    const content = await fsPromises.readFile(PROMISE_FILE_PATH, "utf-8")
    const stats = await fsPromises.stat(PROMISE_FILE_PATH)

    return {
        style: 'Promoises',
        content,
        fileNmae: path.basename(PROMISE_FILE_PATH),
        sizeInBytes: stats.size
    }
}





async function main(): Promise<void> {

    try {
        ensureDemoFolderExists()
        const syncResult = runSyncExample();
        const callbackResult = await runCallbackExample();
        const PromiseResult = await runPromiseExample();
        console.log([syncResult, callbackResult,PromiseResult])
    } catch (error) {
        const message = error instanceof Error ? error.message : "unknown-error"
        console.error("file system error", message)

    }
}

main();