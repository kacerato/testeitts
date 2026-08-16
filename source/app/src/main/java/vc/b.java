package Vc;

import android.util.Base64;

public class b {
    public static String a(String base64Input) {
        if (base64Input == null) {
            return null;
        }
        return base64Input.isEmpty() ? "" : new String(Base64.decode(base64Input, 2));
    }

    public static String b(String input) {
        if (input == null) {
            return null;
        }
        return input.isEmpty() ? "" : Base64.encodeToString(input.getBytes(), 2);
    }
}
