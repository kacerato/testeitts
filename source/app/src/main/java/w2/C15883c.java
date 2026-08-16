package w2;

@InterfaceC15894k
@v2.b
public final class C15883c {

    public static final byte f126235A = 23;

    public static final byte f126236B = 24;

    public static final byte f126237C = 25;

    public static final byte f126238D = 26;

    public static final byte f126239E = 27;

    public static final byte f126240F = 28;

    public static final byte f126241G = 29;

    public static final byte f126242H = 30;

    public static final byte f126243I = 31;

    public static final byte f126244J = 32;

    public static final byte f126245K = 32;

    public static final byte f126246L = Byte.MAX_VALUE;

    public static final char f126247M = 0;

    public static final char f126248N = '\u007f';

    public static final char f126249O = ' ';

    public static final byte f126250a = 0;

    public static final byte f126251b = 1;

    public static final byte f126252c = 2;

    public static final byte f126253d = 3;

    public static final byte f126254e = 4;

    public static final byte f126255f = 5;

    public static final byte f126256g = 6;

    public static final byte f126257h = 7;

    public static final byte f126258i = 8;

    public static final byte f126259j = 9;

    public static final byte f126260k = 10;

    public static final byte f126261l = 10;

    public static final byte f126262m = 11;

    public static final byte f126263n = 12;

    public static final byte f126264o = 13;

    public static final byte f126265p = 14;

    public static final byte f126266q = 15;

    public static final byte f126267r = 16;

    public static final byte f126268s = 17;

    public static final byte f126269t = 17;

    public static final byte f126270u = 18;

    public static final byte f126271v = 19;

    public static final byte f126272w = 19;

    public static final byte f126273x = 20;

    public static final byte f126274y = 21;

    public static final byte f126275z = 22;

    public static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        int b10;
        int length = charSequence.length();
        if (charSequence == charSequence2) {
            return true;
        }
        if (length != charSequence2.length()) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = charSequence.charAt(i10);
            char charAt2 = charSequence2.charAt(i10);
            if (charAt != charAt2 && ((b10 = b(charAt)) >= 26 || b10 != b(charAt2))) {
                return false;
            }
        }
        return true;
    }

    public static int b(char c10) {
        return (char) ((c10 | f126249O) - 97);
    }

    public static boolean c(char c10) {
        return c10 >= 'a' && c10 <= 'z';
    }

    public static boolean d(char c10) {
        return c10 >= 'A' && c10 <= 'Z';
    }

    public static char e(char c10) {
        return d(c10) ? (char) (c10 ^ f126249O) : c10;
    }

    public static String f(CharSequence charSequence) {
        if (charSequence instanceof String) {
            return g((String) charSequence);
        }
        int length = charSequence.length();
        char[] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = e(charSequence.charAt(i10));
        }
        return String.valueOf(cArr);
    }

    public static String g(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            if (d(str.charAt(i10))) {
                char[] charArray = str.toCharArray();
                while (i10 < length) {
                    char c10 = charArray[i10];
                    if (d(c10)) {
                        charArray[i10] = (char) (c10 ^ f126249O);
                    }
                    i10++;
                }
                return String.valueOf(charArray);
            }
            i10++;
        }
        return str;
    }

    public static char h(char c10) {
        return c(c10) ? (char) (c10 ^ f126249O) : c10;
    }

    public static String i(CharSequence charSequence) {
        if (charSequence instanceof String) {
            return j((String) charSequence);
        }
        int length = charSequence.length();
        char[] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = h(charSequence.charAt(i10));
        }
        return String.valueOf(cArr);
    }

    public static String j(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            if (c(str.charAt(i10))) {
                char[] charArray = str.toCharArray();
                while (i10 < length) {
                    char c10 = charArray[i10];
                    if (c(c10)) {
                        charArray[i10] = (char) (c10 ^ f126249O);
                    }
                    i10++;
                }
                return String.valueOf(charArray);
            }
            i10++;
        }
        return str;
    }

    public static String k(CharSequence charSequence, int i10, String str) {
        H.E(charSequence);
        int length = i10 - str.length();
        H.m(length >= 0, "maxLength (%s) must be >= length of the truncation indicator (%s)", i10, str.length());
        int length2 = charSequence.length();
        String str2 = charSequence;
        if (length2 <= i10) {
            String charSequence2 = charSequence.toString();
            int length3 = charSequence2.length();
            str2 = charSequence2;
            if (length3 <= i10) {
                return charSequence2;
            }
        }
        StringBuilder sb2 = new StringBuilder(i10);
        sb2.append((CharSequence) str2, 0, length);
        sb2.append(str);
        return sb2.toString();
    }
}
