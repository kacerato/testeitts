package javax.vecmath;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

public class VecMathI18N {
    public static String getString(String str) {
        try {
            return ResourceBundle.getBundle("javax.vecmath.ExceptionStrings").getString(str);
        } catch (MissingResourceException unused) {
            System.err.println("VecMathI18N: Error looking up: " + str);
            return str;
        }
    }
}
