package Ac;

public class a {
    public static boolean a(char c12, char c22) {
        char upperCase;
        char upperCase2;
        return c12 == c22 || (upperCase = Character.toUpperCase(c12)) == (upperCase2 = Character.toUpperCase(c22)) || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }
}
