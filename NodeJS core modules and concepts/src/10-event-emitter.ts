
import EventEmitter from "node:events";

// user registered 
// send a welcome emial 
// write a log 
// notify some other services 

// emit one event -> listerners listen to this event, do something 

// .on() - register one listener 
// .once() - register one listerncer that runs only one time
// .emit() - triggers an event and sends to the listerns 

const appEvent = new EventEmitter()

type userRegisterPayload = {
    id: number;
    email: string
}

appEvent.on("user: registered",(user : userRegisterPayload) =>{
    console.log(`email listener : welcom email sent to this ${user.email} `)
})
appEvent.on("user: registered",(user : userRegisterPayload) =>{
    console.log(`email listener :user ${user.id} and email is ${user.email} `)
})

appEvent.once("app.started", ()=>{
    console.log("once lisnter: app started")
})

function registerUser(): void{
    const user = {
        id: 1,
        email: 'waqas123@gmail.com'
    }

    console.log("user saved")

    appEvent.emit("user: registered", user)

    console.log("registered user: event listener completed")
}
appEvent.emit("app.started");
appEvent.emit("app.started");

registerUser();