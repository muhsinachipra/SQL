const a= 'aabshraahhddaaattkkuuss'

function findOut(s){
    let obj={}
    for(let i=0;i<s.length;i++){
    
    
    if(s[i]==s[i+1]&&s[i]!==s[i+2]&&s[i]!==s[i-1]){
        let a= s[i]+s[i]
        if(!(a in obj)){
            obj[a]=1
        }else
        {
            obj[a]=obj[a]+1
        }
    }
    
}
return obj

}

console.log(findOut(a))