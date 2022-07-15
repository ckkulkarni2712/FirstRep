import java.util.*;
public class sumoftwonumbers{
	public static void main(String[] args)
	{
		Scanner s=new Scanner(System.in);
		float a, b, c;
		System.out.println("Enter two numbers: ");
		a=s.nextFloat();
		b=s.nextFloat();
		c=a+b;
		System.out.println("Sum of "+a+" and "+b+" is" +c);
	}
}