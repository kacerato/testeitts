package Tm;

import w2.C15883c;

public class d {

    public static final String f25534a = "[A-Za-z][A-Za-z0-9-]*";

    public static final String f25535b = "[a-zA-Z_:][a-zA-Z0-9:._-]*";

    public static final String f25536c = "[^\"'=<>`\\x00-\\x20]+";

    public static final String f25537d = "'[^']*'";

    public static final String f25538e = "\"[^\"]*\"";

    public static final String f25539f = "(?:[^\"'=<>`\\x00-\\x20]+|'[^']*'|\"[^\"]*\")";

    public static final String f25540g = "(?:\\s*=\\s*(?:[^\"'=<>`\\x00-\\x20]+|'[^']*'|\"[^\"]*\"))";

    public static final String f25541h = "(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"'=<>`\\x00-\\x20]+|'[^']*'|\"[^\"]*\"))?)";

    public static final String f25542i = "<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"'=<>`\\x00-\\x20]+|'[^']*'|\"[^\"]*\"))?)*\\s*/?>";

    public static final String f25543j = "</[A-Za-z][A-Za-z0-9-]*\\s*[>]";

    public static int f25544k = 4;

    public static int a(int i10) {
        return 4 - (i10 % 4);
    }

    public static int b(char c10, CharSequence charSequence, int i10) {
        int length = charSequence.length();
        while (i10 < length) {
            if (charSequence.charAt(i10) == c10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int c(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        while (i10 < length) {
            char charAt = charSequence.charAt(i10);
            if (charAt == '\n' || charAt == '\r') {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int d(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        while (i10 < length) {
            char charAt = charSequence.charAt(i10);
            if (charAt != ' ') {
                switch (charAt) {
                    case '\t':
                    case '\n':
                    case 11:
                    case '\f':
                    case '\r':
                        break;
                    default:
                        return i10;
                }
            }
            i10++;
        }
        return -1;
    }

    public static boolean e(CharSequence charSequence) {
        int length = charSequence.length();
        return k(C15883c.f126249O, charSequence, 0, length) != length;
    }

    public static boolean f(CharSequence charSequence) {
        return d(charSequence, 0) == -1;
    }

    public static boolean g(CharSequence charSequence, int i10) {
        if (i10 >= charSequence.length()) {
            return false;
        }
        char charAt = charSequence.charAt(i10);
        switch (charAt) {
            case '!':
            case '\"':
            case '#':
            case '$':
            case '%':
            case '&':
            case '\'':
            case '(':
            case ')':
            case '*':
            case '+':
            case ',':
            case '-':
            case '.':
            case '/':
                return true;
            default:
                switch (charAt) {
                    case ':':
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                    case '?':
                    case '@':
                        return true;
                    default:
                        switch (charAt) {
                            case '[':
                            case '\\':
                            case ']':
                            case '^':
                            case '_':
                            case '`':
                                return true;
                            default:
                                switch (charAt) {
                                    case '{':
                                    case '|':
                                    case '}':
                                    case '~':
                                        return true;
                                    default:
                                        return false;
                                }
                        }
                }
        }
    }

    public static boolean h(CharSequence charSequence, int i10) {
        return Character.isLetter(Character.codePointAt(charSequence, i10));
    }

    public static boolean i(CharSequence charSequence, int i10) {
        if (i10 >= charSequence.length()) {
            return false;
        }
        char charAt = charSequence.charAt(i10);
        return charAt == '\t' || charAt == ' ';
    }

    public static CharSequence j(CharSequence charSequence) {
        int length = charSequence.length();
        StringBuilder sb2 = null;
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = charSequence.charAt(i10);
            if (charAt == 0) {
                if (sb2 == null) {
                    sb2 = new StringBuilder(length);
                    sb2.append(charSequence, 0, i10);
                }
                sb2.append('\ufffd');
            } else if (sb2 != null) {
                sb2.append(charAt);
            }
        }
        return sb2 != null ? sb2.toString() : charSequence;
    }

    public static int k(char c10, CharSequence charSequence, int i10, int i11) {
        while (i10 < i11) {
            if (charSequence.charAt(i10) != c10) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static int l(char c10, CharSequence charSequence, int i10, int i11) {
        while (i10 >= i11) {
            if (charSequence.charAt(i10) != c10) {
                return i10;
            }
            i10--;
        }
        return i11 - 1;
    }

    public static int m(CharSequence charSequence, int i10, int i11) {
        while (i10 < i11) {
            char charAt = charSequence.charAt(i10);
            if (charAt != '\t' && charAt != ' ') {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static int n(CharSequence charSequence, int i10, int i11) {
        while (i10 >= i11) {
            char charAt = charSequence.charAt(i10);
            if (charAt != '\t' && charAt != ' ') {
                return i10;
            }
            i10--;
        }
        return i11 - 1;
    }
}
