











/* 
Problem 2: Rotate the characters in a string by a given input 
and have the overflow appear at the beginning, 
e.g. “MyString” rotated by 2 is “ngMyStri”.
*/


function rotateString(str, num = 0){
    //n gives you the number to rotate by is in fact the modulo between the given n number and the size of string
    const n = num % str.length;

    const strA = str.slice(0, n);
    const strB = str.slice(n);
    return `${strB}${strA}`
}

function rotateRight(string, num = 0){
    const n = num % string.length
    return rotateString(string, string.length - n)
}

console.log(rotateRight("MyString", 2))