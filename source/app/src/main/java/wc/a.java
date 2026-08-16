package Wc;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class a {

    public static String f27413a = "HH:mm:ss dd-MM-yyyy";

    public static String f27414b = "HH-mm-ss dd-MM-yyyy";

    public static String a() {
        return new SimpleDateFormat(f27413a, Locale.getDefault()).format(new Date());
    }

    public static String b() {
        return new SimpleDateFormat(f27414b, Locale.getDefault()).format(new Date());
    }
}
