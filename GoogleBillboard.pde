public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  

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

    for(int i = 101; i <= e.length() - 1; i++)
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



