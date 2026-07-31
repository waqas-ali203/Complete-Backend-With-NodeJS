import http, { IncomingMessage , Server, ServerResponse } from "node:http";
import { URL } from "node:url";

const PORT = 5001;

const server = http.createServer((req: IncomingMessage, res:ServerResponse) =>{
    const method = req.method ?? "GET";

    // http://localhost:5001/users  -> req.url : /users

    const requestUrl = new URL(req.url ?? "/", `http:${req.headers.host}`);
    const pathName = requestUrl.pathname

    res.setHeader("Content-Type", "text/plain")

    if(method === "GET" && pathName === "/health"){
        res.statusCode = 200;
        res.end("Server is healthy")
        return
    }
    if(method === "GET" && pathName === "/users"){
        res.statusCode = 200;
        res.end("List of users")
        return
    }
    if(method === "POST" && pathName === "/users"){
        res.statusCode = 201;
        res.end("User list created Successfully")
        return
    }

    res.statusCode  = 404

    // 404 -> not found

    res.end("Route not found");
})

server.listen(PORT , ()=>{
    console.log(`server is running on port ${PORT}`)
})