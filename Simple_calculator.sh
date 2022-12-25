reg='^[-]?[0-9]*[.]?[0-9]+[ ]?[-\/*+^][ ]?[-]?[0-9]*[.]?[0-9]+$' 
text="Enter an arithmetic operation or type 'quit' to quit:" 
wel="Welcome to the basic calculator!"
echo "$wel" 
echo "$wel" >> operation_history.txt
echo "$text" 
echo "$text" >> operation_history.txt
while read -r choice
echo "$choice" >> operation_history.txt
do
if [[ $choice == "quit" ]]; then
    echo "Goodbye!"
    echo "Goodbye!" >> operation_history.txt
break;
elif [[ $choice =~ $reg ]]; then
    total=$(echo "scale=2; ${choice}" | bc)
    echo "$total" 
    echo "$total" >> operation_history.txt
else
   echo "Operation check failed!"
   echo "Operation check failed!" >> operation_history.txt
fi 
echo "$text" 
echo "$text" >> operation_history.txt
done 