package assesmentJava;

public class palindrome {

	public static void main(String[] args) {
		int num = 243; 
        int temp = num;
        int reverse = 0;
        while (temp > 0) {
            int digit = temp % 10;
            reverse = (reverse*10)+digit;
            temp /= 10;
        }
        if (num == reverse) {
            System.out.println(num + " is a palindrome");
        } 
        else {
            System.out.println(num + " is not a palindrome");
        }

	}

}
