c=0
echo "Enter Your Operation Here"
echo "1.Add 2.Sub 3.Mul 4.Div"
read operationNumber




echo "Please Specify Numbers"
echo "Enter Your First value"
read a
echo "Enter Your Last value"
read b


function process() {
         if [ $3 -eq 1 ]
         then
              c=$(($1+$2))
         elif [ $3 -eq 2 ]
         then
               c=$(($1-$2))
         elif [ $3 -eq 3 ]
         then
               c=$((a*b))
         elif [ $3 -eq 4 ]
         then
                c=$((a/b))
         else 
             echo "Wrong ..."
         fi
}




case $operationNumber in
   1)
      process $a $b $operationNumber
      echo "Your Selected As Addition Operation"
      ;;
   2)
      process $a $b $operationNumber
      echo "Your Selected As Substraction Operation"
      ;;
   3)
      process $a $b $operationNumber
      echo "Your Selected As Multiplication Operation"
      ;;
   4)
      process $a $b $operationNumber
      echo "Your Selected As Division Operation"
      ;;
   *)
     echo "Your Given Input Is Invalid , Please Check Again :("
     ;;
esac