package Vd;

import com.android.dex.DexFormat;
import kotlin.jvm.internal.r0;

public class a {

    public static final boolean f26852a;

    public static final int f26853b = 10;

    public static final float f26854c = 0.5f;

    public static final byte f26855d;

    public static final short f26856e;

    public static final char f26857f;

    public static final int f26858g;

    public static final long f26859h;

    public static final float f26860i;

    public static final double f26861j;

    static {
        char c10 = 0;
        boolean z10 = System.getProperty("gnu.trove.verbose", null) != null;
        f26852a = z10;
        String property = System.getProperty("gnu.trove.no_entry.byte", "0");
        byte b10 = Byte.MIN_VALUE;
        byte byteValue = "MAX_VALUE".equalsIgnoreCase(property) ? Byte.MAX_VALUE : "MIN_VALUE".equalsIgnoreCase(property) ? Byte.MIN_VALUE : Byte.valueOf(property).byteValue();
        if (byteValue > Byte.MAX_VALUE) {
            b10 = Byte.MAX_VALUE;
        } else if (byteValue >= Byte.MIN_VALUE) {
            b10 = byteValue;
        }
        f26855d = b10;
        if (z10) {
            System.out.println("DEFAULT_BYTE_NO_ENTRY_VALUE: " + ((int) b10));
        }
        String property2 = System.getProperty("gnu.trove.no_entry.short", "0");
        boolean equalsIgnoreCase = "MAX_VALUE".equalsIgnoreCase(property2);
        short s10 = r0.f95769b;
        short shortValue = equalsIgnoreCase ? Short.MAX_VALUE : "MIN_VALUE".equalsIgnoreCase(property2) ? Short.MIN_VALUE : Short.valueOf(property2).shortValue();
        if (shortValue > Short.MAX_VALUE) {
            s10 = Short.MAX_VALUE;
        } else if (shortValue >= Short.MIN_VALUE) {
            s10 = shortValue;
        }
        f26856e = s10;
        if (z10) {
            System.out.println("DEFAULT_SHORT_NO_ENTRY_VALUE: " + ((int) s10));
        }
        String property3 = System.getProperty("gnu.trove.no_entry.char", DexFormat.MAGIC_SUFFIX);
        char c11 = "MAX_VALUE".equalsIgnoreCase(property3) ? '\uffff' : "MIN_VALUE".equalsIgnoreCase(property3) ? (char) 0 : property3.toCharArray()[0];
        if (c11 > '\uffff') {
            c10 = '\uffff';
        } else if (c11 >= 0) {
            c10 = c11;
        }
        f26857f = c10;
        if (z10) {
            System.out.println("DEFAULT_CHAR_NO_ENTRY_VALUE: " + ((Object) Integer.valueOf(c10)));
        }
        String property4 = System.getProperty("gnu.trove.no_entry.int", "0");
        int intValue = "MAX_VALUE".equalsIgnoreCase(property4) ? Integer.MAX_VALUE : "MIN_VALUE".equalsIgnoreCase(property4) ? Integer.MIN_VALUE : Integer.valueOf(property4).intValue();
        f26858g = intValue;
        if (z10) {
            System.out.println("DEFAULT_INT_NO_ENTRY_VALUE: " + intValue);
        }
        String property5 = System.getProperty("gnu.trove.no_entry.long", "0");
        long longValue = "MAX_VALUE".equalsIgnoreCase(property5) ? Long.MAX_VALUE : "MIN_VALUE".equalsIgnoreCase(property5) ? Long.MIN_VALUE : Long.valueOf(property5).longValue();
        f26859h = longValue;
        if (z10) {
            System.out.println("DEFAULT_LONG_NO_ENTRY_VALUE: " + longValue);
        }
        String property6 = System.getProperty("gnu.trove.no_entry.float", "0");
        float floatValue = "MAX_VALUE".equalsIgnoreCase(property6) ? Float.MAX_VALUE : "MIN_VALUE".equalsIgnoreCase(property6) ? Float.MIN_VALUE : "MIN_NORMAL".equalsIgnoreCase(property6) ? Float.MIN_NORMAL : "NEGATIVE_INFINITY".equalsIgnoreCase(property6) ? Float.NEGATIVE_INFINITY : "POSITIVE_INFINITY".equalsIgnoreCase(property6) ? Float.POSITIVE_INFINITY : Float.valueOf(property6).floatValue();
        f26860i = floatValue;
        if (z10) {
            System.out.println("DEFAULT_FLOAT_NO_ENTRY_VALUE: " + floatValue);
        }
        String property7 = System.getProperty("gnu.trove.no_entry.double", "0");
        double doubleValue = "MAX_VALUE".equalsIgnoreCase(property7) ? Double.MAX_VALUE : "MIN_VALUE".equalsIgnoreCase(property7) ? Double.MIN_VALUE : "MIN_NORMAL".equalsIgnoreCase(property7) ? Double.MIN_NORMAL : "NEGATIVE_INFINITY".equalsIgnoreCase(property7) ? Double.NEGATIVE_INFINITY : "POSITIVE_INFINITY".equalsIgnoreCase(property7) ? Double.POSITIVE_INFINITY : Double.valueOf(property7).doubleValue();
        f26861j = doubleValue;
        if (z10) {
            System.out.println("DEFAULT_DOUBLE_NO_ENTRY_VALUE: " + doubleValue);
        }
    }
}
