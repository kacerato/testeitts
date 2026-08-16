package Rg;

import javax.security.auth.x500.X500Principal;
import w2.C15883c;

public final class d {

    public final String f22786a;

    public final int f22787b;

    public int f22788c;

    public int f22789d;

    public int f22790e;

    public int f22791f;

    public char[] f22792g;

    public d(X500Principal x500Principal) {
        String name = x500Principal.getName(X500Principal.RFC2253);
        this.f22786a = name;
        this.f22787b = name.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009b, code lost:
    
        return new java.lang.String(r1, r2, r8.f22791f - r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String a() {
        char[] cArr;
        int i10;
        int i11;
        char c10;
        int i12 = this.f22788c;
        this.f22789d = i12;
        this.f22790e = i12;
        while (true) {
            int i13 = this.f22788c;
            if (i13 >= this.f22787b) {
                char[] cArr2 = this.f22792g;
                int i14 = this.f22789d;
                return new String(cArr2, i14, this.f22790e - i14);
            }
            cArr = this.f22792g;
            char c11 = cArr[i13];
            if (c11 == ' ') {
                int i15 = this.f22790e;
                this.f22791f = i15;
                this.f22788c = i13 + 1;
                this.f22790e = i15 + 1;
                cArr[i15] = C15883c.f126249O;
                while (true) {
                    i10 = this.f22788c;
                    i11 = this.f22787b;
                    if (i10 >= i11) {
                        break;
                    }
                    char[] cArr3 = this.f22792g;
                    if (cArr3[i10] != ' ') {
                        break;
                    }
                    int i16 = this.f22790e;
                    this.f22790e = i16 + 1;
                    cArr3[i16] = C15883c.f126249O;
                    this.f22788c = i10 + 1;
                }
                if (i10 == i11 || (c10 = this.f22792g[i10]) == ',' || c10 == '+' || c10 == ';') {
                    break;
                }
            } else {
                if (c11 == ';') {
                    break;
                }
                if (c11 == '\\') {
                    int i17 = this.f22790e;
                    this.f22790e = i17 + 1;
                    cArr[i17] = d();
                    this.f22788c++;
                } else {
                    if (c11 == '+' || c11 == ',') {
                        break;
                    }
                    int i18 = this.f22790e;
                    this.f22790e = i18 + 1;
                    cArr[i18] = c11;
                    this.f22788c = i13 + 1;
                }
            }
        }
        int i19 = this.f22789d;
        return new String(cArr, i19, this.f22790e - i19);
    }

    public String b(String str) {
        this.f22788c = 0;
        this.f22789d = 0;
        this.f22790e = 0;
        this.f22791f = 0;
        this.f22792g = this.f22786a.toCharArray();
        String g10 = g();
        if (g10 == null) {
            return null;
        }
        do {
            int i10 = this.f22788c;
            if (i10 == this.f22787b) {
                return null;
            }
            char c10 = this.f22792g[i10];
            String a10 = c10 != '\"' ? c10 != '#' ? (c10 == '+' || c10 == ',' || c10 == ';') ? "" : a() : f() : h();
            if (str.equalsIgnoreCase(g10)) {
                return a10;
            }
            int i11 = this.f22788c;
            if (i11 >= this.f22787b) {
                return null;
            }
            char c11 = this.f22792g[i11];
            if (c11 != ',' && c11 != ';' && c11 != '+') {
                throw new IllegalStateException("Malformed DN: " + this.f22786a);
            }
            this.f22788c = i11 + 1;
            g10 = g();
        } while (g10 != null);
        throw new IllegalStateException("Malformed DN: " + this.f22786a);
    }

    public final int c(int i10) {
        int i11;
        int i12;
        int i13 = i10 + 1;
        if (i13 >= this.f22787b) {
            throw new IllegalStateException("Malformed DN: " + this.f22786a);
        }
        char[] cArr = this.f22792g;
        char c10 = cArr[i10];
        if (c10 >= '0' && c10 <= '9') {
            i11 = c10 - '0';
        } else if (c10 >= 'a' && c10 <= 'f') {
            i11 = c10 - 'W';
        } else {
            if (c10 < 'A' || c10 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f22786a);
            }
            i11 = c10 - '7';
        }
        char c11 = cArr[i13];
        if (c11 >= '0' && c11 <= '9') {
            i12 = c11 - '0';
        } else if (c11 >= 'a' && c11 <= 'f') {
            i12 = c11 - 'W';
        } else {
            if (c11 < 'A' || c11 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f22786a);
            }
            i12 = c11 - '7';
        }
        return (i11 << 4) + i12;
    }

    public final char d() {
        int i10 = this.f22788c + 1;
        this.f22788c = i10;
        if (i10 == this.f22787b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f22786a);
        }
        char c10 = this.f22792g[i10];
        if (c10 == ' ' || c10 == '%' || c10 == '\\' || c10 == '_' || c10 == '\"' || c10 == '#') {
            return c10;
        }
        switch (c10) {
            case '*':
            case '+':
            case ',':
                return c10;
            default:
                switch (c10) {
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                        return c10;
                    default:
                        return e();
                }
        }
    }

    public final char e() {
        int i10;
        int i11;
        int c10 = c(this.f22788c);
        this.f22788c++;
        if (c10 < 128) {
            return (char) c10;
        }
        if (c10 < 192 || c10 > 247) {
            return '?';
        }
        if (c10 <= 223) {
            i10 = c10 & 31;
            i11 = 1;
        } else if (c10 <= 239) {
            i10 = c10 & 15;
            i11 = 2;
        } else {
            i10 = c10 & 7;
            i11 = 3;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = this.f22788c;
            int i14 = i13 + 1;
            this.f22788c = i14;
            if (i14 == this.f22787b || this.f22792g[i14] != '\\') {
                return '?';
            }
            int i15 = i13 + 2;
            this.f22788c = i15;
            int c11 = c(i15);
            this.f22788c++;
            if ((c11 & 192) != 128) {
                return '?';
            }
            i10 = (i10 << 6) + (c11 & 63);
        }
        return (char) i10;
    }

    public final String f() {
        int i10;
        char[] cArr;
        char c10;
        int i11 = this.f22788c;
        if (i11 + 4 >= this.f22787b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f22786a);
        }
        this.f22789d = i11;
        this.f22788c = i11 + 1;
        while (true) {
            i10 = this.f22788c;
            if (i10 == this.f22787b || (c10 = (cArr = this.f22792g)[i10]) == '+' || c10 == ',' || c10 == ';') {
                break;
            }
            if (c10 == ' ') {
                this.f22790e = i10;
                this.f22788c = i10 + 1;
                while (true) {
                    int i12 = this.f22788c;
                    if (i12 >= this.f22787b || this.f22792g[i12] != ' ') {
                        break;
                    }
                    this.f22788c = i12 + 1;
                }
            } else {
                if (c10 >= 'A' && c10 <= 'F') {
                    cArr[i10] = (char) (c10 + C15883c.f126249O);
                }
                this.f22788c = i10 + 1;
            }
        }
        this.f22790e = i10;
        int i13 = this.f22790e;
        int i14 = this.f22789d;
        int i15 = i13 - i14;
        if (i15 < 5 || (i15 & 1) == 0) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f22786a);
        }
        int i16 = i15 / 2;
        byte[] bArr = new byte[i16];
        int i17 = i14 + 1;
        for (int i18 = 0; i18 < i16; i18++) {
            bArr[i18] = (byte) c(i17);
            i17 += 2;
        }
        return new String(this.f22792g, this.f22789d, i15);
    }

    public final String g() {
        int i10;
        int i11;
        int i12;
        int i13;
        char c10;
        int i14;
        int i15;
        char c11;
        char c12;
        while (true) {
            i10 = this.f22788c;
            i11 = this.f22787b;
            if (i10 >= i11 || this.f22792g[i10] != ' ') {
                break;
            }
            this.f22788c = i10 + 1;
        }
        if (i10 == i11) {
            return null;
        }
        this.f22789d = i10;
        this.f22788c = i10 + 1;
        while (true) {
            i12 = this.f22788c;
            i13 = this.f22787b;
            if (i12 >= i13 || (c12 = this.f22792g[i12]) == '=' || c12 == ' ') {
                break;
            }
            this.f22788c = i12 + 1;
        }
        if (i12 >= i13) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f22786a);
        }
        this.f22790e = i12;
        if (this.f22792g[i12] == ' ') {
            while (true) {
                i14 = this.f22788c;
                i15 = this.f22787b;
                if (i14 >= i15 || (c11 = this.f22792g[i14]) == '=' || c11 != ' ') {
                    break;
                }
                this.f22788c = i14 + 1;
            }
            if (this.f22792g[i14] != '=' || i14 == i15) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f22786a);
            }
        }
        this.f22788c++;
        while (true) {
            int i16 = this.f22788c;
            if (i16 >= this.f22787b || this.f22792g[i16] != ' ') {
                break;
            }
            this.f22788c = i16 + 1;
        }
        int i17 = this.f22790e;
        int i18 = this.f22789d;
        if (i17 - i18 > 4) {
            char[] cArr = this.f22792g;
            if (cArr[i18 + 3] == '.' && (((c10 = cArr[i18]) == 'O' || c10 == 'o') && ((cArr[i18 + 1] == 'I' || cArr[i18 + 1] == 'i') && (cArr[i18 + 2] == 'D' || cArr[i18 + 2] == 'd')))) {
                this.f22789d = i18 + 4;
            }
        }
        char[] cArr2 = this.f22792g;
        int i19 = this.f22789d;
        return new String(cArr2, i19, i17 - i19);
    }

    public final String h() {
        int i10 = this.f22788c + 1;
        this.f22788c = i10;
        this.f22789d = i10;
        this.f22790e = i10;
        while (true) {
            int i11 = this.f22788c;
            if (i11 == this.f22787b) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f22786a);
            }
            char[] cArr = this.f22792g;
            char c10 = cArr[i11];
            if (c10 == '\"') {
                this.f22788c = i11 + 1;
                while (true) {
                    int i12 = this.f22788c;
                    if (i12 >= this.f22787b || this.f22792g[i12] != ' ') {
                        break;
                    }
                    this.f22788c = i12 + 1;
                }
                char[] cArr2 = this.f22792g;
                int i13 = this.f22789d;
                return new String(cArr2, i13, this.f22790e - i13);
            }
            if (c10 == '\\') {
                cArr[this.f22790e] = d();
            } else {
                cArr[this.f22790e] = c10;
            }
            this.f22788c++;
            this.f22790e++;
        }
    }
}
