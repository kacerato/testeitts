package com.android.tools.r8.internal;

import java.io.Closeable;
import java.io.EOFException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.JavaElement;

public class C8240lL implements Closeable {

    public final Reader f49938a;

    public long f49946i;

    public int f49947j;

    public String f49948k;

    public int[] f49949l;

    public String[] f49951n;

    public int[] f49952o;

    public boolean f49939b = false;

    public final char[] f49940c = new char[1024];

    public int f49941d = 0;

    public int f49942e = 0;

    public int f49943f = 0;

    public int f49944g = 0;

    public int f49945h = 0;

    public int f49950m = 1;

    static {
        C8073kL.f49592a = new C8073kL();
    }

    public C8240lL(Reader reader) {
        int[] iArr = new int[32];
        this.f49949l = iArr;
        iArr[0] = 6;
        this.f49951n = new String[32];
        this.f49952o = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.f49938a = reader;
    }

    public final String a(char c10) {
        char[] cArr = this.f49940c;
        StringBuilder sb2 = null;
        do {
            int i10 = this.f49941d;
            int i11 = this.f49942e;
            int i12 = i10;
            while (i10 < i11) {
                int i13 = i10 + 1;
                char c11 = cArr[i10];
                if (c11 == c10) {
                    this.f49941d = i13;
                    int i14 = (i13 - i12) - 1;
                    if (sb2 == null) {
                        return new String(cArr, i12, i14);
                    }
                    sb2.append(cArr, i12, i14);
                    return sb2.toString();
                }
                if (c11 == '\\') {
                    this.f49941d = i13;
                    int i15 = i13 - i12;
                    int i16 = i15 - 1;
                    if (sb2 == null) {
                        sb2 = new StringBuilder(Math.max(i15 * 2, 16));
                    }
                    sb2.append(cArr, i12, i16);
                    sb2.append(v());
                    i12 = this.f49941d;
                    i11 = this.f49942e;
                    i10 = i12;
                } else {
                    if (c11 == '\n') {
                        this.f49943f++;
                        this.f49944g = i13;
                    }
                    i10 = i13;
                }
            }
            if (sb2 == null) {
                sb2 = new StringBuilder(Math.max((i10 - i12) * 2, 16));
            }
            sb2.append(cArr, i12, i10 - i12);
            this.f49941d = i10;
        } while (a(1));
        b("Unterminated string");
        throw null;
    }

    public final void b(char c10) {
        char[] cArr = this.f49940c;
        do {
            int i10 = this.f49941d;
            int i11 = this.f49942e;
            while (i10 < i11) {
                int i12 = i10 + 1;
                char c11 = cArr[i10];
                if (c11 == c10) {
                    this.f49941d = i12;
                    return;
                }
                if (c11 == '\\') {
                    this.f49941d = i12;
                    v();
                    i10 = this.f49941d;
                    i11 = this.f49942e;
                } else {
                    if (c11 == '\n') {
                        this.f49943f++;
                        this.f49944g = i12;
                    }
                    i10 = i12;
                }
            }
            this.f49941d = i10;
        } while (a(1));
        b("Unterminated string");
        throw null;
    }

    public void c() {
        int i10 = this.f49945h;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 3) {
            b(1);
            this.f49952o[this.f49950m - 1] = 0;
            this.f49945h = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + AbstractC8574nL.a(u()) + l());
        }
    }

    @Override
    public void close() {
        this.f49945h = 0;
        this.f49949l[0] = 8;
        this.f49950m = 1;
        this.f49938a.close();
    }

    public void d() {
        int i10 = this.f49945h;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 1) {
            b(3);
            this.f49945h = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + AbstractC8574nL.a(u()) + l());
        }
    }

    public final void e() {
        if (this.f49939b) {
            return;
        }
        b("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:249:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01b2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x02e5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int f() {
        int b10;
        int b11;
        int i10;
        String str;
        String str2;
        int i11;
        char c10;
        char c11;
        char c12;
        int i12;
        char c13;
        int i13;
        int[] iArr = this.f49949l;
        boolean z10 = true;
        int i14 = this.f49950m - 1;
        int i15 = iArr[i14];
        if (i15 == 1) {
            iArr[i14] = 2;
        } else if (i15 == 2) {
            int b12 = b(true);
            if (b12 != 44) {
                if (b12 != 59) {
                    if (b12 == 93) {
                        this.f49945h = 4;
                        return 4;
                    }
                    b("Unterminated array");
                    throw null;
                }
                e();
            }
        } else {
            if (i15 == 3 || i15 == 5) {
                iArr[i14] = 4;
                if (i15 == 5 && (b10 = b(true)) != 44) {
                    if (b10 != 59) {
                        if (b10 == 125) {
                            this.f49945h = 2;
                            return 2;
                        }
                        b("Unterminated object");
                        throw null;
                    }
                    e();
                }
                int b13 = b(true);
                if (b13 == 34) {
                    this.f49945h = 13;
                    return 13;
                }
                if (b13 == 39) {
                    e();
                    this.f49945h = 12;
                    return 12;
                }
                if (b13 == 125) {
                    if (i15 != 5) {
                        this.f49945h = 2;
                        return 2;
                    }
                    b("Expected name");
                    throw null;
                }
                e();
                this.f49941d--;
                char c14 = (char) b13;
                if (c14 != '\t' && c14 != '\n' && c14 != '\f' && c14 != '\r' && c14 != ' ') {
                    if (c14 != '#') {
                        if (c14 != ',') {
                            if (c14 != '/' && c14 != '=') {
                                if (c14 != '{' && c14 != '}' && c14 != ':') {
                                    if (c14 != ';') {
                                        switch (c14) {
                                            case '[':
                                            case ']':
                                                break;
                                            case '\\':
                                                break;
                                            default:
                                                this.f49945h = 14;
                                                return 14;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    e();
                }
                b("Expected name");
                throw null;
            }
            if (i15 == 4) {
                iArr[i14] = 5;
                int b14 = b(true);
                if (b14 != 58) {
                    if (b14 != 61) {
                        b("Expected ':'");
                        throw null;
                    }
                    e();
                    if (this.f49941d < this.f49942e || a(1)) {
                        char[] cArr = this.f49940c;
                        int i16 = this.f49941d;
                        if (cArr[i16] == '>') {
                            this.f49941d = i16 + 1;
                        }
                    }
                }
            } else {
                if (i15 != 6) {
                    if (i15 == 7) {
                        if (b(false) == -1) {
                            this.f49945h = 17;
                            return 17;
                        }
                        e();
                        this.f49941d--;
                    } else if (i15 == 8) {
                        throw new IllegalStateException("JsonReader is closed");
                    }
                    b11 = b(true);
                    if (b11 != 34) {
                        this.f49945h = 9;
                        return 9;
                    }
                    if (b11 == 39) {
                        e();
                        this.f49945h = 8;
                        return 8;
                    }
                    if (b11 == 44 || b11 == 59) {
                        i10 = 1;
                    } else {
                        if (b11 == 91) {
                            this.f49945h = 3;
                            return 3;
                        }
                        if (b11 == 93) {
                            i10 = 1;
                            if (i15 == 1) {
                                this.f49945h = 4;
                                return 4;
                            }
                        } else {
                            if (b11 == 123) {
                                this.f49945h = 1;
                                return 1;
                            }
                            int i17 = this.f49941d - 1;
                            this.f49941d = i17;
                            char c15 = this.f49940c[i17];
                            if (c15 == 't' || c15 == 'T') {
                                str = "true";
                                str2 = "TRUE";
                                i11 = 5;
                            } else if (c15 == 'f' || c15 == 'F') {
                                str = "false";
                                str2 = "FALSE";
                                i11 = 6;
                            } else {
                                if (c15 == 'n' || c15 == 'N') {
                                    str = "null";
                                    str2 = "NULL";
                                    i11 = 7;
                                }
                                i11 = 0;
                                if (i11 == 0) {
                                    return i11;
                                }
                                char[] cArr2 = this.f49940c;
                                int i18 = this.f49941d;
                                int i19 = this.f49942e;
                                long j10 = 0;
                                boolean z11 = true;
                                char c16 = 0;
                                int i20 = 0;
                                boolean z12 = false;
                                while (true) {
                                    if (i18 + i20 == i19) {
                                        if (i20 != cArr2.length) {
                                            if (a(i20 + 1)) {
                                                i18 = this.f49941d;
                                                i19 = this.f49942e;
                                            }
                                        }
                                    }
                                    c12 = cArr2[i18 + i20];
                                    if (c12 != '+') {
                                        if (c12 == 'E' || c12 == 'e') {
                                            i12 = i19;
                                            if (c16 == 2 || c16 == 4) {
                                                c16 = 5;
                                                i20++;
                                                i19 = i12;
                                                z10 = true;
                                            }
                                        } else if (c12 == '-') {
                                            i12 = i19;
                                            c13 = 6;
                                            if (c16 == 0) {
                                                c16 = 1;
                                                z12 = true;
                                                i20++;
                                                i19 = i12;
                                                z10 = true;
                                            } else {
                                                if (c16 != 5) {
                                                }
                                                c16 = c13;
                                                i20++;
                                                i19 = i12;
                                                z10 = true;
                                            }
                                        } else if (c12 == '.') {
                                            i12 = i19;
                                            if (c16 == 2) {
                                                c16 = 3;
                                                i20++;
                                                i19 = i12;
                                                z10 = true;
                                            }
                                        } else if (c12 >= '0' && c12 <= '9') {
                                            if (c16 == z10 || c16 == 0) {
                                                i12 = i19;
                                                j10 = -(c12 - '0');
                                                c16 = 2;
                                            } else if (c16 != 2) {
                                                i12 = i19;
                                                if (c16 == 3) {
                                                    c16 = 4;
                                                } else {
                                                    if (c16 != 5 && c16 != 6) {
                                                    }
                                                    c16 = 7;
                                                }
                                            } else if (j10 != 0) {
                                                i12 = i19;
                                                long j11 = (10 * j10) - (c12 - '0');
                                                z11 &= j10 > -922337203685477580L || (j10 == -922337203685477580L && j11 < j10);
                                                j10 = j11;
                                            }
                                            i20++;
                                            i19 = i12;
                                            z10 = true;
                                        }
                                        if (i13 != 0) {
                                            return i13;
                                        }
                                        char c17 = this.f49940c[this.f49941d];
                                        if (c17 != '\t' && c17 != '\n' && c17 != '\f' && c17 != '\r' && c17 != ' ') {
                                            if (c17 != '#') {
                                                if (c17 != ',') {
                                                    if (c17 != '/' && c17 != '=') {
                                                        if (c17 != '{' && c17 != '}' && c17 != ':') {
                                                            if (c17 != ';') {
                                                                switch (c17) {
                                                                    case '[':
                                                                    case ']':
                                                                        break;
                                                                    case '\\':
                                                                        break;
                                                                    default:
                                                                        e();
                                                                        this.f49945h = 10;
                                                                        return 10;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            e();
                                        }
                                        b("Expected value");
                                        throw null;
                                    }
                                    i12 = i19;
                                    c13 = 6;
                                    if (c16 != 5) {
                                    }
                                    c16 = c13;
                                    i20++;
                                    i19 = i12;
                                    z10 = true;
                                }
                                if (c12 != '\t' && c12 != '\n' && c12 != '\f' && c12 != '\r' && c12 != ' ') {
                                    if (c12 != '#') {
                                        if (c12 != ',') {
                                            if (c12 != '/' && c12 != '=') {
                                                if (c12 != '{' && c12 != '}' && c12 != ':') {
                                                    if (c12 != ';') {
                                                        switch (c12) {
                                                            case '\\':
                                                                break;
                                                            case '[':
                                                            case ']':
                                                                break;
                                                            default:
                                                                i13 = 0;
                                                                break;
                                                        }
                                                        if (i13 != 0) {
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    e();
                                }
                                if (c16 == 2 && z11 && ((j10 != Long.MIN_VALUE || z12) && (j10 != 0 || !z12))) {
                                    if (!z12) {
                                        j10 = -j10;
                                    }
                                    this.f49946i = j10;
                                    this.f49941d += i20;
                                    i13 = 15;
                                    this.f49945h = 15;
                                } else {
                                    if (c16 == 2 || c16 == 4 || c16 == 7) {
                                        this.f49947j = i20;
                                        i13 = 16;
                                        this.f49945h = 16;
                                    }
                                    i13 = 0;
                                }
                                if (i13 != 0) {
                                }
                            }
                            int length = str.length();
                            int i21 = 1;
                            while (true) {
                                if (i21 >= length) {
                                    if ((this.f49941d + length < this.f49942e || a(length + 1)) && (c10 = this.f49940c[this.f49941d + length]) != '\t' && c10 != '\n' && c10 != '\f' && c10 != '\r' && c10 != ' ') {
                                        if (c10 != '#') {
                                            if (c10 != ',') {
                                                if (c10 != '/' && c10 != '=') {
                                                    if (c10 != '{' && c10 != '}' && c10 != ':') {
                                                        if (c10 != ';') {
                                                            switch (c10) {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        e();
                                    }
                                    this.f49941d += length;
                                    this.f49945h = i11;
                                } else {
                                    if ((this.f49941d + i21 >= this.f49942e && !a(i21 + 1)) || ((c11 = this.f49940c[this.f49941d + i21]) != str.charAt(i21) && c11 != str2.charAt(i21))) {
                                        break;
                                    }
                                    i21++;
                                }
                            }
                            i11 = 0;
                            if (i11 == 0) {
                            }
                        }
                    }
                    if (i15 != i10 && i15 != 2) {
                        b("Unexpected value");
                        throw null;
                    }
                    e();
                    this.f49941d -= i10;
                    this.f49945h = 7;
                    return 7;
                }
                if (this.f49939b) {
                    b(true);
                    int i22 = this.f49941d;
                    this.f49941d = i22 - 1;
                    if (i22 + 4 <= this.f49942e || a(5)) {
                        int i23 = this.f49941d;
                        char[] cArr3 = this.f49940c;
                        if (cArr3[i23] == ')' && cArr3[i23 + 1] == ']' && cArr3[i23 + 2] == '}' && cArr3[i23 + 3] == '\'' && cArr3[i23 + 4] == '\n') {
                            this.f49941d = i23 + 5;
                        }
                    }
                }
                this.f49949l[this.f49950m - 1] = 7;
            }
        }
        b11 = b(true);
        if (b11 != 34) {
        }
    }

    public void g() {
        int i10 = this.f49945h;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + AbstractC8574nL.a(u()) + l());
        }
        int i11 = this.f49950m;
        this.f49950m = i11 - 1;
        int[] iArr = this.f49952o;
        int i12 = i11 - 2;
        iArr[i12] = iArr[i12] + 1;
        this.f49945h = 0;
    }

    public void h() {
        int i10 = this.f49945h;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + AbstractC8574nL.a(u()) + l());
        }
        int i11 = this.f49950m;
        int i12 = i11 - 1;
        this.f49950m = i12;
        this.f49951n[i12] = null;
        int[] iArr = this.f49952o;
        int i13 = i11 - 2;
        iArr[i13] = iArr[i13] + 1;
        this.f49945h = 0;
    }

    public String i() {
        return a(false);
    }

    public String j() {
        return a(true);
    }

    public boolean k() {
        int i10 = this.f49945h;
        if (i10 == 0) {
            i10 = f();
        }
        return (i10 == 2 || i10 == 4 || i10 == 17) ? false : true;
    }

    public final String l() {
        return " at line " + (this.f49943f + 1) + " column " + ((this.f49941d - this.f49944g) + 1) + " path " + i();
    }

    public boolean m() {
        int i10 = this.f49945h;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 5) {
            this.f49945h = 0;
            int[] iArr = this.f49952o;
            int i11 = this.f49950m - 1;
            iArr[i11] = iArr[i11] + 1;
            return true;
        }
        if (i10 != 6) {
            throw new IllegalStateException("Expected a boolean but was " + AbstractC8574nL.a(u()) + l());
        }
        this.f49945h = 0;
        int[] iArr2 = this.f49952o;
        int i12 = this.f49950m - 1;
        iArr2[i12] = iArr2[i12] + 1;
        return false;
    }

    public double n() {
        int i10 = this.f49945h;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 15) {
            this.f49945h = 0;
            int[] iArr = this.f49952o;
            int i11 = this.f49950m - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.f49946i;
        }
        if (i10 == 16) {
            this.f49948k = new String(this.f49940c, this.f49941d, this.f49947j);
            this.f49941d += this.f49947j;
        } else if (i10 == 8 || i10 == 9) {
            this.f49948k = a(i10 == 8 ? JavaElement.JEM_MODULAR_CLASSFILE : '\"');
        } else if (i10 == 10) {
            this.f49948k = t();
        } else if (i10 != 11) {
            throw new IllegalStateException("Expected a double but was " + AbstractC8574nL.a(u()) + l());
        }
        this.f49945h = 11;
        double parseDouble = Double.parseDouble(this.f49948k);
        if (!this.f49939b && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw new GU("JSON forbids NaN and infinities: " + parseDouble + l());
        }
        this.f49948k = null;
        this.f49945h = 0;
        int[] iArr2 = this.f49952o;
        int i12 = this.f49950m - 1;
        iArr2[i12] = iArr2[i12] + 1;
        return parseDouble;
    }

    public int o() {
        int i10 = this.f49945h;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 15) {
            long j10 = this.f49946i;
            int i11 = (int) j10;
            if (j10 != i11) {
                throw new NumberFormatException("Expected an int but was " + this.f49946i + l());
            }
            this.f49945h = 0;
            int[] iArr = this.f49952o;
            int i12 = this.f49950m - 1;
            iArr[i12] = iArr[i12] + 1;
            return i11;
        }
        if (i10 == 16) {
            this.f49948k = new String(this.f49940c, this.f49941d, this.f49947j);
            this.f49941d += this.f49947j;
        } else {
            if (i10 != 8 && i10 != 9 && i10 != 10) {
                throw new IllegalStateException("Expected an int but was " + AbstractC8574nL.a(u()) + l());
            }
            if (i10 == 10) {
                this.f49948k = t();
            } else {
                this.f49948k = a(i10 == 8 ? JavaElement.JEM_MODULAR_CLASSFILE : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.f49948k);
                this.f49945h = 0;
                int[] iArr2 = this.f49952o;
                int i13 = this.f49950m - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        this.f49945h = 11;
        double parseDouble = Double.parseDouble(this.f49948k);
        int i14 = (int) parseDouble;
        if (i14 != parseDouble) {
            throw new NumberFormatException("Expected an int but was " + this.f49948k + l());
        }
        this.f49948k = null;
        this.f49945h = 0;
        int[] iArr3 = this.f49952o;
        int i15 = this.f49950m - 1;
        iArr3[i15] = iArr3[i15] + 1;
        return i14;
    }

    public long p() {
        int i10 = this.f49945h;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 15) {
            this.f49945h = 0;
            int[] iArr = this.f49952o;
            int i11 = this.f49950m - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.f49946i;
        }
        if (i10 == 16) {
            this.f49948k = new String(this.f49940c, this.f49941d, this.f49947j);
            this.f49941d += this.f49947j;
        } else {
            if (i10 != 8 && i10 != 9 && i10 != 10) {
                throw new IllegalStateException("Expected a long but was " + AbstractC8574nL.a(u()) + l());
            }
            if (i10 == 10) {
                this.f49948k = t();
            } else {
                this.f49948k = a(i10 == 8 ? JavaElement.JEM_MODULAR_CLASSFILE : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.f49948k);
                this.f49945h = 0;
                int[] iArr2 = this.f49952o;
                int i12 = this.f49950m - 1;
                iArr2[i12] = iArr2[i12] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        this.f49945h = 11;
        double parseDouble = Double.parseDouble(this.f49948k);
        long j10 = (long) parseDouble;
        if (j10 != parseDouble) {
            throw new NumberFormatException("Expected a long but was " + this.f49948k + l());
        }
        this.f49948k = null;
        this.f49945h = 0;
        int[] iArr3 = this.f49952o;
        int i13 = this.f49950m - 1;
        iArr3[i13] = iArr3[i13] + 1;
        return j10;
    }

    public String q() {
        String a10;
        int i10 = this.f49945h;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 14) {
            a10 = t();
        } else if (i10 == 12) {
            a10 = a(JavaElement.JEM_MODULAR_CLASSFILE);
        } else {
            if (i10 != 13) {
                throw new IllegalStateException("Expected a name but was " + AbstractC8574nL.a(u()) + l());
            }
            a10 = a('\"');
        }
        this.f49945h = 0;
        this.f49951n[this.f49950m - 1] = a10;
        return a10;
    }

    public void r() {
        int i10 = this.f49945h;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 != 7) {
            throw new IllegalStateException("Expected null but was " + AbstractC8574nL.a(u()) + l());
        }
        this.f49945h = 0;
        int[] iArr = this.f49952o;
        int i11 = this.f49950m - 1;
        iArr[i11] = iArr[i11] + 1;
    }

    public String s() {
        String str;
        int i10 = this.f49945h;
        if (i10 == 0) {
            i10 = f();
        }
        if (i10 == 10) {
            str = t();
        } else if (i10 == 8) {
            str = a(JavaElement.JEM_MODULAR_CLASSFILE);
        } else if (i10 == 9) {
            str = a('\"');
        } else if (i10 == 11) {
            str = this.f49948k;
            this.f49948k = null;
        } else if (i10 == 15) {
            str = Long.toString(this.f49946i);
        } else {
            if (i10 != 16) {
                throw new IllegalStateException("Expected a string but was " + AbstractC8574nL.a(u()) + l());
            }
            str = new String(this.f49940c, this.f49941d, this.f49947j);
            this.f49941d += this.f49947j;
        }
        this.f49945h = 0;
        int[] iArr = this.f49952o;
        int i11 = this.f49950m - 1;
        iArr[i11] = iArr[i11] + 1;
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0048, code lost:
    
        e();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:54:0x0042. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String t() {
        String sb2;
        StringBuilder sb3 = null;
        int i10 = 0;
        do {
            int i11 = 0;
            while (true) {
                int i12 = this.f49941d + i11;
                if (i12 < this.f49942e) {
                    char c10 = this.f49940c[i12];
                    if (c10 != '\t' && c10 != '\n' && c10 != '\f' && c10 != '\r' && c10 != ' ') {
                        if (c10 != '#') {
                            if (c10 != ',') {
                                if (c10 != '/' && c10 != '=') {
                                    if (c10 != '{' && c10 != '}' && c10 != ':') {
                                        if (c10 != ';') {
                                            switch (c10) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i11++;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else if (i11 >= this.f49940c.length) {
                    if (sb3 == null) {
                        sb3 = new StringBuilder(Math.max(i11, 16));
                    }
                    sb3.append(this.f49940c, this.f49941d, i11);
                    this.f49941d += i11;
                } else if (a(i11 + 1)) {
                }
            }
            i10 = i11;
            if (sb3 != null) {
                sb2 = new String(this.f49940c, this.f49941d, i10);
            } else {
                sb3.append(this.f49940c, this.f49941d, i10);
                sb2 = sb3.toString();
            }
            this.f49941d += i10;
            return sb2;
        } while (a(1));
        if (sb3 != null) {
        }
        this.f49941d += i10;
        return sb2;
    }

    public String toString() {
        return getClass().getSimpleName() + l();
    }

    public int u() {
        int i10 = this.f49945h;
        if (i10 == 0) {
            i10 = f();
        }
        switch (i10) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case 9:
            case 10:
            case 11:
                return 6;
            case 12:
            case 13:
            case 14:
                return 5;
            case 15:
            case 16:
                return 7;
            case 17:
                return 10;
            default:
                throw new AssertionError();
        }
    }

    public final char v() {
        int i10;
        if (this.f49941d == this.f49942e && !a(1)) {
            b("Unterminated escape sequence");
            throw null;
        }
        char[] cArr = this.f49940c;
        int i11 = this.f49941d;
        int i12 = i11 + 1;
        this.f49941d = i12;
        char c10 = cArr[i11];
        if (c10 == '\n') {
            this.f49943f++;
            this.f49944g = i12;
            return c10;
        }
        if (c10 == '\"' || c10 == '\'' || c10 == '/' || c10 == '\\') {
            return c10;
        }
        if (c10 == 'b') {
            return '\b';
        }
        if (c10 == 'f') {
            return '\f';
        }
        if (c10 == 'n') {
            return '\n';
        }
        if (c10 == 'r') {
            return CharUtils.CR;
        }
        if (c10 == 't') {
            return '\t';
        }
        if (c10 != 'u') {
            b("Invalid escape sequence");
            throw null;
        }
        if (i11 + 5 > this.f49942e && !a(4)) {
            b("Unterminated escape sequence");
            throw null;
        }
        int i13 = this.f49941d;
        int i14 = i13 + 4;
        char c11 = 0;
        while (i13 < i14) {
            char c12 = this.f49940c[i13];
            char c13 = (char) (c11 << 4);
            if (c12 >= '0' && c12 <= '9') {
                i10 = c12 - '0';
            } else if (c12 >= 'a' && c12 <= 'f') {
                i10 = c12 - 'W';
            } else {
                if (c12 < 'A' || c12 > 'F') {
                    throw new NumberFormatException("\\u".concat(new String(this.f49940c, this.f49941d, 4)));
                }
                i10 = c12 - '7';
            }
            c11 = (char) (i10 + c13);
            i13++;
        }
        this.f49941d += 4;
        return c11;
    }

    public final void w() {
        char c10;
        do {
            if (this.f49941d >= this.f49942e && !a(1)) {
                return;
            }
            char[] cArr = this.f49940c;
            int i10 = this.f49941d;
            int i11 = i10 + 1;
            this.f49941d = i11;
            c10 = cArr[i10];
            if (c10 == '\n') {
                this.f49943f++;
                this.f49944g = i11;
                return;
            }
        } while (c10 != '\r');
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:411)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:201)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:242)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    public final void x() {
        /*
            r3 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r3.f49941d
            int r1 = r1 + r0
            int r2 = r3.f49942e
            if (r1 >= r2) goto L4f
            char[] r2 = r3.f49940c
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L49
            r2 = 10
            if (r1 == r2) goto L49
            r2 = 12
            if (r1 == r2) goto L49
            r2 = 13
            if (r1 == r2) goto L49
            r2 = 32
            if (r1 == r2) goto L49
            r2 = 35
            if (r1 == r2) goto L46
            r2 = 44
            if (r1 == r2) goto L49
            r2 = 47
            if (r1 == r2) goto L46
            r2 = 61
            if (r1 == r2) goto L46
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L49
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L49
            r2 = 58
            if (r1 == r2) goto L49
            r2 = 59
            if (r1 == r2) goto L46
            switch(r1) {
                case 91: goto L49;
                case 92: goto L46;
                case 93: goto L49;
                default: goto L43;
            }
        L43:
            int r0 = r0 + 1
            goto L1
        L46:
            r3.e()
        L49:
            int r1 = r3.f49941d
            int r1 = r1 + r0
            r3.f49941d = r1
            return
        L4f:
            r3.f49941d = r1
            r0 = 1
            boolean r0 = r3.a(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.tools.r8.internal.C8240lL.x():void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0011. Please report as an issue. */
    public void y() {
        int i10 = 0;
        do {
            int i11 = this.f49945h;
            if (i11 == 0) {
                i11 = f();
            }
            switch (i11) {
                case 1:
                    b(3);
                    i10++;
                    this.f49945h = 0;
                    break;
                case 2:
                    if (i10 == 0) {
                        this.f49951n[this.f49950m - 1] = null;
                    }
                    this.f49950m--;
                    i10--;
                    this.f49945h = 0;
                    break;
                case 3:
                    b(1);
                    i10++;
                    this.f49945h = 0;
                    break;
                case 4:
                    this.f49950m--;
                    i10--;
                    this.f49945h = 0;
                    break;
                case 5:
                case 6:
                case 7:
                case 11:
                case 15:
                default:
                    this.f49945h = 0;
                    break;
                case 8:
                    b(JavaElement.JEM_MODULAR_CLASSFILE);
                    this.f49945h = 0;
                    break;
                case 9:
                    b('\"');
                    this.f49945h = 0;
                    break;
                case 10:
                    x();
                    this.f49945h = 0;
                    break;
                case 12:
                    b(JavaElement.JEM_MODULAR_CLASSFILE);
                    if (i10 == 0) {
                        this.f49951n[this.f49950m - 1] = "<skipped>";
                    }
                    this.f49945h = 0;
                    break;
                case 13:
                    b('\"');
                    if (i10 == 0) {
                        this.f49951n[this.f49950m - 1] = "<skipped>";
                    }
                    this.f49945h = 0;
                    break;
                case 14:
                    x();
                    if (i10 == 0) {
                        this.f49951n[this.f49950m - 1] = "<skipped>";
                    }
                    this.f49945h = 0;
                    break;
                case 16:
                    this.f49941d += this.f49947j;
                    this.f49945h = 0;
                    break;
                case 17:
                    return;
            }
        } while (i10 > 0);
        int[] iArr = this.f49952o;
        int i12 = this.f49950m - 1;
        iArr[i12] = iArr[i12] + 1;
    }

    public final void b(int i10) {
        int i11 = this.f49950m;
        int[] iArr = this.f49949l;
        if (i11 == iArr.length) {
            int i12 = i11 * 2;
            this.f49949l = Arrays.copyOf(iArr, i12);
            this.f49952o = Arrays.copyOf(this.f49952o, i12);
            this.f49951n = (String[]) Arrays.copyOf(this.f49951n, i12);
        }
        int[] iArr2 = this.f49949l;
        int i13 = this.f49950m;
        this.f49950m = i13 + 1;
        iArr2[i13] = i10;
    }

    public final int b(boolean z10) {
        char c10;
        char[] cArr = this.f49940c;
        int i10 = this.f49941d;
        int i11 = this.f49942e;
        while (true) {
            if (i10 == i11) {
                this.f49941d = i10;
                if (!a(1)) {
                    if (!z10) {
                        return -1;
                    }
                    throw new EOFException("End of input" + l());
                }
                i10 = this.f49941d;
                i11 = this.f49942e;
            }
            int i12 = i10 + 1;
            c10 = cArr[i10];
            if (c10 == '\n') {
                this.f49943f++;
                this.f49944g = i12;
            } else if (c10 != ' ' && c10 != '\r' && c10 != '\t') {
                if (c10 == '/') {
                    this.f49941d = i12;
                    if (i12 == i11) {
                        this.f49941d = i10;
                        boolean a10 = a(2);
                        this.f49941d++;
                        if (!a10) {
                            break;
                        }
                    }
                    e();
                    int i13 = this.f49941d;
                    char c11 = cArr[i13];
                    if (c11 != '*') {
                        if (c11 != '/') {
                            break;
                        }
                        this.f49941d = i13 + 1;
                        w();
                        i10 = this.f49941d;
                        i11 = this.f49942e;
                    } else {
                        this.f49941d = i13 + 1;
                        while (true) {
                            if (this.f49941d + 2 > this.f49942e && !a(2)) {
                                b("Unterminated comment");
                                throw null;
                            }
                            char[] cArr2 = this.f49940c;
                            int i14 = this.f49941d;
                            if (cArr2[i14] == '\n') {
                                this.f49943f++;
                                this.f49944g = i14 + 1;
                            } else {
                                for (int i15 = 0; i15 < 2; i15++) {
                                    if (this.f49940c[this.f49941d + i15] != "*/".charAt(i15)) {
                                        break;
                                    }
                                }
                                i10 = this.f49941d + 2;
                                i11 = this.f49942e;
                                break;
                            }
                            this.f49941d++;
                        }
                    }
                } else if (c10 == '#') {
                    this.f49941d = i12;
                    e();
                    w();
                    i10 = this.f49941d;
                    i11 = this.f49942e;
                } else {
                    this.f49941d = i12;
                    return c10;
                }
            }
            i10 = i12;
        }
        return c10;
    }

    public final boolean a(int i10) {
        int i11;
        int i12;
        char[] cArr = this.f49940c;
        int i13 = this.f49944g;
        int i14 = this.f49941d;
        this.f49944g = i13 - i14;
        int i15 = this.f49942e;
        if (i15 != i14) {
            int i16 = i15 - i14;
            this.f49942e = i16;
            System.arraycopy(cArr, i14, cArr, 0, i16);
        } else {
            this.f49942e = 0;
        }
        this.f49941d = 0;
        do {
            Reader reader = this.f49938a;
            int i17 = this.f49942e;
            int read = reader.read(cArr, i17, cArr.length - i17);
            if (read == -1) {
                return false;
            }
            i11 = this.f49942e + read;
            this.f49942e = i11;
            if (this.f49943f == 0 && (i12 = this.f49944g) == 0 && i11 > 0 && cArr[0] == '\ufeff') {
                this.f49941d++;
                this.f49944g = i12 + 1;
                i10++;
            }
        } while (i11 < i10);
        return true;
    }

    public final String a(boolean z10) {
        StringBuilder sb2 = new StringBuilder("$");
        int i10 = 0;
        while (true) {
            int i11 = this.f49950m;
            if (i10 < i11) {
                int i12 = this.f49949l[i10];
                if (i12 == 1 || i12 == 2) {
                    int i13 = this.f49952o[i10];
                    if (z10 && i13 > 0 && i10 == i11 - 1) {
                        i13--;
                    }
                    sb2.append('[');
                    sb2.append(i13);
                    sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                } else if (i12 == 3 || i12 == 4 || i12 == 5) {
                    sb2.append('.');
                    String str = this.f49951n[i10];
                    if (str != null) {
                        sb2.append(str);
                    }
                }
                i10++;
            } else {
                return sb2.toString();
            }
        }
    }

    public final void b(String str) {
        throw new GU(str + l());
    }
}
