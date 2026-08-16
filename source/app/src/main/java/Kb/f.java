package Kb;

public class f {
    public static int a(String value) {
        if (value == null) {
            return 0;
        }
        if (value.equals("invisible")) {
            return 4;
        }
        return !value.equals("gone") ? 0 : 8;
    }
}
