public final static String e = "2.71828182845904523536028747135266249775724709369995957496696762772407663035354759457138217852516642742746639193200305992181741359662904357";  

double num;
String digits;

ArrayList <Integer> test2 = new ArrayList <Integer>();
int dig;
String oneDigit;

int start = 0;
int end = 10;
int sum = 0;

public void setup()  
{     

    for(int i = 2; i < e.length() - 10; i++)
    {
        digits = e.substring(i, i + 10);
        num = Double.parseDouble(digits);

        if(isPrime(num) == true)
        {
            System.out.println(num);
            break;
        }
    }

    for(int i = 101; i < e.length() - 1; i++)
    {
        oneDigit = e.substring(i, i + 1);

        dig = Integer.parseInt(oneDigit);
        test2.add(dig);

        if(equals49(test2) == true)
        {
            for(int j = start - 1; j < end - 1; j++)
                System.out.print(test2.get(j));

            break;
        }
    }
}  

public void draw()  
{   
    //not needed for this assignment
}

public boolean isPrime(double dNum)  
{   
    for(int i = 2; i <= Math.sqrt(dNum); i++)
        if(dNum % i == 0)
            return false; 

    return true;  
} 

public boolean equals49(ArrayList <Integer> num)
{
    sum = 0;

    if(num.size() == end)
    {
        for(int i = start; i < end; i++)
            sum += num.get(i);

        start++;
        end++;

        if(sum != 49)
            return false;

        return true;
    }

    return false;
}



