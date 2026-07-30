import { clear } from "node:console";
import crypto from "node:crypto"


// built in node js modules

// security related tasks
// creating randon UUID, IDs
// creating secure tokens
// hashing data
// to verify of the data was not changed
// encrypt/decrypt


// crypto.randomUUID
// user id , session id, order id

const requestID = crypto.randomUUID();

console.log(requestID);


// crypto.randomBytes

// password reset token
//  email verification 
//  session secrets , api keys

// 32 char string 

const resetToken = crypto.randomBytes(16).toString("hex");
console.log(resetToken)

// crypto.createHash

// hello -> hash

// hash -> hello 

const text = "hello-node";

const hash = crypto.createHash("sha256").update(text).digest("hex");
console.log(hash)


// crypto.createHmac

// normal hash : data -> hash 
//  HMAC : data + secret -> signed hash 

// webhook 
// signed tokens 

const secret = "my-super-secret-key"
const message = "user_id=1"

const signature = crypto.createHmac('sha256', secret).update(message).digest("hex");

console.log(signature)



