import http, { IncomingMessage, ServerResponse } from "node:http";

const PORT = 5003;

type User = {
    id: number;
    name: string;
    email: string
};

type ApiResponse<T> = {
    success: boolean;
    message: string;
    data?: T;
    error?: string;

};

const users: User[] = [
    { id: 1, name: "waqas", email: "waqas123@gmail.com" },
    { id: 2, name: "Ahmad", email: "ahmad123@gmail.com" },
]

function sendJson<T>(
    res: ServerResponse,
    statusCode: number,
    body: ApiResponse<T>
): void {
    res.statusCode = statusCode

    res.setHeader("Content-Type", "application/json")

    res.end(JSON.stringify(body))
}


const server = http.createServer((req: IncomingMessage, res: ServerResponse) => {

    const method = req.method ?? "GET";
    const requestUrl = new URL(
        req.url ?? "/",
        `http://${req.headers.host}`
    );
    const pathName = requestUrl.pathname;

    if(method === "GET" && pathName === "/"){
        sendJson(res, 200, {
            success : true,
            message: "server is running",
            data: {
                routes: ["GET/users"],
            },
        });
        return
    }
    if(method === "GET" && pathName === "/users"){
        sendJson(res, 200, {
            success : true,
            message: "user fetch successfully",
            data: users,
        });
        return
    }

    sendJson<null>(res,404, {
        success: false,
        message: "routes not found",
        error: `${method} ${pathName} is not exist`
    })
})

server.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});