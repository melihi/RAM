#!/bin/bash
#   gihub.com/melihi
#   Author : Melih Isbilen 
#   02/11/2022
#consts
RED="\033[31m"
GREEN="\u001b[32;1m"
YELLOW="\u001b[33;1m"
RESET="\033[0;39m"

#global var
url=""
urlpath=""
total_url=0
inputfile=$1
targetsArray=()
 

 
trap ctrl_c 2

ctrl_c(){
     
    printf "\n$RED Keyboard Interrupt detected, killing processes...\n $GREEN https://github.com/melihi $RESET"
    
    exitf
}
parseurl(){
 
    while IFS= read -r line
    do
        if [[ "$(echo $line | cut -c1-4)" == "http" ]]
        then
        targetsArray+=("$line")
        total_url=${#targetsArray[@]}
        fi
    done < "$inputfile"
     
    printf "$GREEN================= \n Total Url fetched : $YELLOW %s  \n Total bypass method : 43" "$total_url"
    ram_path

}
#check_resp(){
#    if [ "$(echo $out | cut -c2-2)" -eq 2 ] 
#        then
#        printf "$GREEN  %.35s... $out  $RESET\n" "$i" 
#        elif [ "$(echo $out | cut -c2-2)" -eq 3 ]
#        then
#        printf "$YELLOW  %.35s... $out  $RESET\n" "$i" 
#        else
#        printf "$RED  %.35s... $out  $RESET\n" "$i" 
#        fi
#}
exitf(){
    
    
    pkill thread.sh
    pkill thread.sh
    sleep 10
    pid=$(pidof -x thread.sh)
    if [ ${#pid} == "0" ] 
    then
    printf "$GREEN Finished \n $RESET"
    exit
    else 
    printf "$GREEN Killing threads ... \n $RESET"
    pkill thread.sh
    exitf
    fi
   
}
ram_path(){
    printf "$YELLOW RAM bypass process started ...   $RESET\n"
    for i in "${targetsArray[@]}"
    do
        url=$(echo "$i" |  grep -oP "^(?:https?:\/\/)?(?:[^@\/\n]+@)?(?:www\.)?([^:\/?\n]+)")
        urlpath="${i//$url/}" 
       
       ./thread.sh "$url" "$urlpath" &
       sleep 0.1
    done
    exitf
}

banner(){
printf """ 
        :~?YP5YJY5GG5YYJ!:                  .~?YY5GGP5JJ5P5J!^             
     .7PPPP577!~!!77??YY?YPJ^            :?55JJYJ?77!!~!77YPPPPJ^          
    ?#@#BBB#@&P7!^^^^~~!7?JJYP7.       !PPJJ?7!~^^^^^~!Y#@&#BB#@@5:        
  ^PGY!J^J^Y^Y#@G!!!!~~~~~~!7?5B7    ^PG5J?!~^^^~~!~~YG#P~?77~7!J#&7       
 ^BP^!^^J7J5~77J#@B7!7!!!~^...^5@P77J@B~...:^!!!!!!5##Y~J:YJ??7:7^5@7      
 GP^!~!!7J7Y5J5P7P@@&PJ?7?J5G#@&B?::!P&@&BPY?77J5#@@B!P5YYY???!7~!~?&^     
?B~!!!~!?JYJ55G&#5Y&@@@@@@@@&GJ^      :?P#@@@@@@@@@PJ#&B55JYY?!~~!!~55     
G?~!7?J7?Y5PG#&@BBBP&&#BPY?~:            .^7YPB#&@GGBG&&#GP55J7J?7!!~B:    
B~~~!PJ.:!??77Y#P7J#G:.                         .J&Y7Y#5777?7:.!B7!~^P~    
G^~~~?5 ?&#&#BY!Y#&@5~^:                      :^^?@&@P7YGBB##G ?Y~~~^Y!    
G~!7!~??7GBBBBBBYJB@B~!YG7                  ~PP7~5@&55#@#BBBGJ7J~~~!~Y~    
P!!~J?7Y5YGGBB##&&&@GJP5G@G^              .Y@B5P55@&@@@&#BGG5YY?7J!~~5:    
?J~!555JJ?JYYPGGPY5PB@#5GG#&?            ~#@GB5B@#G5Y5GGGY5?J?J5YP?~75     
.P!!!?J55J7!!!7PP?.  ?P!7!!PG            J#!!7!J5.  !5P?!!!!?55J?7!~5~     
 !5!!!77?Y5?~!~.!GB! .P     Y7          ^P:    Y~ :GBJ:^!~!55?77!!!JY      
  ?5777?JJJPY^~!~^5&! ?.     !.         !.     J.:#B~^!~^7GJJJ?77!Y5       
   !Y?7?J5&JGJ~~!~!GP ^?                      !7 J&7~~~^!#?#PJ???PJ        
    :JPYJ?G?PG!777?GG. !Y:   .:        .:   .?7  JBJ7!!!Y&!GJJJP5~         
      :?5PPGG?7??5##!   JG7  ?:         J. ~PP   ^B&PJ7775GPP5J^           
         :!YJY5PGGJ:    ~7~!.Y          ?^~7~?    .7PGP55JY7^              
           .::::.       :?  ^Y~?JJ^.7Y?!?7  ~!       .::::.                
                        .P:^7~7JG#&#&GY77~! P^                             
                         ~?JY ::  JP. .^ !P7!                              
                           :JY!^^^7J^^:^??~                                
                             ~P7!!!!!~!Y?                                  
                              :!!!!!!!!^      
                                                                                                    
$RED Author : Melih Isbilen \n github.com/melihi  2022 $RESET \n Input File : %s                                     
""" "$inputfile"

}
 


if [ ! $# -ge 1 ]
then

    printf "$RED github.com/melihi \n$YELLOW Usage  : ./RAM url_list.txt outputfile.txt $RESET  \n"
    exit
else
    
    banner
    parseurl 

fi

