import { rejects } from "node:assert";
import { error } from "node:console";
import { resolve } from "node:dns";

type User = {
    id: number;
    name: string;
    role: "user" | "super-admin"
}

const users: User[] = [
    {
        id: 1,
        name: "waqas",
        role: 'super-admin'
    },

    {
        id: 2,
        name: "ahmad",
        role: 'user'
    },

    {
        id: 3,
        name: "ammar",
        role: 'user'
    },
]

// callback is a function - this function u r passing to a differnt function
// callback(erro,result) -> *** imp concept -> this is clasic node js pattern 


function findUserWithCallback(userId: number, callback: (error: Error | null, user?: User) => void): void{
    setTimeout(() => {
        // u r actual api call
        const user= users.find(currentUser=> currentUser.id === userId)

        if(!user){
            callback(new Error(`user with id ${userId} was not found`))
            return
        }
        callback(null, user)
    }, 500);
}

function findUserWithPromise(userId: number): Promise<User>{
    return new Promise((resolve, reject)=>{
        setTimeout(()=>{
            const user = users.find((currentUser)=> currentUser.id === userId)

            if(!user){
                reject(new Error(`user with ${userId} was not found`))
                return
            }
            resolve(user)
        })
    })
}


async function findUserWithAsyncAwait(userId: number): Promise<void>{
    try {
        const user = await findUserWithPromise(userId)
        console.log("async/await", user.name);
    } catch (error) {
        const message = error instanceof Error ? error.message : 'unknown error';
        console.log('assyn/await', message)
    }
}

// findUserWithCallback(3,(error,user)=>{
//     if(error){
//         console.log('callback error', error.message)
//         return
//     }
//     console.log('callback result', user?.id, user?.name, user?.role)
// })

// findUserWithPromise(1).then((user)=>{
//     console.log("promise result", user?.id, user?.name, user?.role);
// }).catch((error: Error)=>{
//     console.log("promise Error", error.message)
// })

findUserWithAsyncAwait(1)