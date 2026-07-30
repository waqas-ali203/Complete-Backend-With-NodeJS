

// https://google.com/users?page=2&limit=10

import { URL } from "node:url";

function runUrlDemo(): void{
    // how to create url object from url string 
    const apiUrl = new URL("https://google.com/users?page=2&limit=10")
    // console.log(apiUrl.href,apiUrl.protocol,apiUrl.pathname,apiUrl.search);

    const page = apiUrl.searchParams.get('page');
    const limit = apiUrl.searchParams.get('limit');
    const sort = apiUrl.searchParams.get('sort');

    console.log(page,limit,sort)


    apiUrl.searchParams.set("page", "10");
    apiUrl.searchParams.set("limit", "20");

    console.log(apiUrl.href)

    const querParams = new URLSearchParams({
        search: "node js",
        page: "1",
        limit: "5"
    })

    console.log(querParams.toString())
}

runUrlDemo();