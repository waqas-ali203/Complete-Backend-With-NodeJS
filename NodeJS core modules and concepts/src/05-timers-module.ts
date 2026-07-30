
// after some delay 
// repeatedly after some internals -2 seconds 


// settimeout 
// setinterval 
// cleartimeout 
// clearinterval 
// settimeimmediate 


function runsetTimeoutExample(): void{
    console.log('1. settimeout example start');

    setTimeout(() => {
        console.log('2. this run after 1 second');
    }, 1000);

    console.log('3. this runs immediately, node doesnot wait')
}

function runClearTimeoutExample(): void{
    const timerId = setTimeout(()=>{
        console.log('this message will not run')
    },2000)

    clearTimeout(timerId);
    console.log('4. cleartimeout cancel the 2 second timer')
}

// setinterval is not going to run  the callback again and again after the fixed delay

function runSetIntervalExample(): void{
    let count = 0;

    const intervalId = setInterval(() =>{
        count++;

        console.log(`5. setInterval tick ${count}`);

        if(count === 3){
            clearInterval(intervalId)
            console.log('6. setInterval Stopped')
        }
    })
}

function runsetTimerDemo(): void{
    runsetTimeoutExample();
    runClearTimeoutExample();
    runSetIntervalExample();
}

runsetTimerDemo();