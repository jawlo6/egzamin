function CheckCandidateActiveExamState(
{$.ajax({url:window.candidateActiveExamIntervalUrl,
        type:"POST",
        cache:!1,
        data:{},
        success:function(n){
            n.result&&(window.location.href=n.message?window.candidateLogoutUrl+"?message="+message:window.candidateLogoutUrl)
        },
        error:function(n){
            console.log("Problem z odpowiedzia "+n.responseText.toString())}
        })
}
function CheckCandidateInternetConnectivity(){
    var n=new Image;
    n.onload=doConnectFunction;
    n.src="https://epkz.cke.edu.pl/favicon.ico?d="+escape(Date())
}
function doConnectFunction(){
    $.ajax({url:window.candidateInternetConnectivityUrl,
            type:"POST",
            cache:!1,
            data:{},
            success:function(n){
                n.result&&$.notify(
                    {icon:"glyphicon glyphicon-warning-sign",
                     message:n.message},
                    {type:"danger",                                                delay:15e3})
            },
            error:function(n){
                console.log("Problem z odpowiedzia "+n.responseText.toString())}
           })}

$(document).ready(function(){
    var n=setInterval(CheckCandidateActiveExamState,6e4),
        t=setInterval(CheckCandidateInternetConnectivity,1e4)})