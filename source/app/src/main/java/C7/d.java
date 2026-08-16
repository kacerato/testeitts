package C7;

@Deprecated
public class d {

    public static String f2456a;

    public static String f2457b;

    public static String a() {
        if (f2456a == null) {
            f2456a = "";
        }
        return f2456a;
    }

    public static String b() {
        if (f2457b == null) {
            f2457b = "";
        }
        return f2457b;
    }

    public static void c(String redText, String text) {
        f2456a = redText;
        f2457b = text;
    }
}
