package com.google.android.gms.common.server.response;

import G0.F;
import T0.C3033c;
import T0.r;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.server.response.a;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import mk.C14289h;

@F
@C0.a
public class FastParser<T extends a> {

    public static final char[] f61367g = {'u', 'l', 'l'};

    public static final char[] f61368h = {'r', 'u', 'e'};

    public static final char[] f61369i = {'r', 'u', 'e', '\"'};

    public static final char[] f61370j = {'a', 'l', 's', 'e'};

    public static final char[] f61371k = {'a', 'l', 's', 'e', '\"'};

    public static final char[] f61372l = {'\n'};

    public static final l f61373m = new d();

    public static final l f61374n = new e();

    public static final l f61375o = new f();

    public static final l f61376p = new g();

    public static final l f61377q = new h();

    public static final l f61378r = new i();

    public static final l f61379s = new j();

    public static final l f61380t = new k();

    public final char[] f61381a = new char[1];

    public final char[] f61382b = new char[32];

    public final char[] f61383c = new char[1024];

    public final StringBuilder f61384d = new StringBuilder(32);

    public final StringBuilder f61385e = new StringBuilder(1024);

    public final Stack f61386f = new Stack();

    @F
    @C0.a
    public static class ParseException extends Exception {
        public ParseException(@NonNull String str) {
            super(str);
        }

        public ParseException(@NonNull String str, @NonNull Throwable th2) {
            super("Error instantiating inner object", th2);
        }

        public ParseException(@NonNull Throwable th2) {
            super(th2);
        }
    }

    public static final String b(BufferedReader bufferedReader, char[] cArr, StringBuilder sb2, @Nullable char[] cArr2) throws ParseException, IOException {
        sb2.setLength(0);
        bufferedReader.mark(cArr.length);
        boolean z10 = false;
        boolean z11 = false;
        loop0: while (true) {
            int read = bufferedReader.read(cArr);
            if (read == -1) {
                throw new ParseException("Unexpected EOF while parsing string");
            }
            int i10 = 0;
            while (i10 < read) {
                char c10 = cArr[i10];
                if (!Character.isISOControl(c10) || (cArr2 != null && cArr2[0] == c10)) {
                    int i11 = i10 + 1;
                    if (c10 == '\"') {
                        if (!z10) {
                            sb2.append(cArr, 0, i10);
                            bufferedReader.reset();
                            bufferedReader.skip(i11);
                            return z11 ? r.c(sb2.toString()) : sb2.toString();
                        }
                    } else if (c10 == '\\') {
                        z10 = !z10;
                        z11 = true;
                        i10 = i11;
                    }
                    z10 = false;
                    i10 = i11;
                }
            }
            sb2.append(cArr, 0, read);
            bufferedReader.mark(cArr.length);
        }
        throw new ParseException("Unexpected control character while reading string");
    }

    public final boolean A(BufferedReader bufferedReader, boolean z10) throws ParseException, IOException {
        char k10 = k(bufferedReader);
        if (k10 == '\"') {
            if (z10) {
                throw new ParseException("No boolean value found in string");
            }
            return A(bufferedReader, true);
        }
        if (k10 == 'f') {
            z(bufferedReader, z10 ? f61371k : f61370j);
            return false;
        }
        if (k10 == 'n') {
            z(bufferedReader, f61367g);
            return false;
        }
        if (k10 == 't') {
            z(bufferedReader, z10 ? f61369i : f61368h);
            return true;
        }
        throw new ParseException("Unexpected token: " + k10);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x003b. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x027b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x025f A[SYNTHETIC] */
    @ResultIgnorabilityUnspecified
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean B(BufferedReader bufferedReader, a aVar) throws ParseException, IOException {
        int i10;
        HashMap hashMap;
        char k10;
        Map<String, a.C0954a<?, ?>> d10 = aVar.d();
        String s10 = s(bufferedReader);
        if (s10 == null) {
            y(1);
            return false;
        }
        while (s10 != null) {
            a.C0954a<?, ?> c0954a = d10.get(s10);
            if (c0954a == null) {
                s10 = t(bufferedReader);
            } else {
                this.f61386f.push(4);
                int i11 = c0954a.f61388c;
                switch (i11) {
                    case 0:
                        if (c0954a.f61389d) {
                            aVar.A0(c0954a, w(bufferedReader, f61373m));
                        } else {
                            aVar.z0(c0954a, n(bufferedReader));
                        }
                        i10 = 4;
                        y(i10);
                        y(2);
                        k10 = k(bufferedReader);
                        if (k10 == ',') {
                            s10 = s(bufferedReader);
                            break;
                        } else {
                            if (k10 != '}') {
                                throw new ParseException("Expected end of object or field separator, but found: " + k10);
                            }
                            s10 = null;
                            break;
                        }
                    case 1:
                        if (c0954a.f61389d) {
                            aVar.W(c0954a, w(bufferedReader, f61379s));
                        } else {
                            aVar.T(c0954a, v(bufferedReader));
                        }
                        i10 = 4;
                        y(i10);
                        y(2);
                        k10 = k(bufferedReader);
                        if (k10 == ',') {
                        }
                        break;
                    case 2:
                        if (c0954a.f61389d) {
                            aVar.D0(c0954a, w(bufferedReader, f61374n));
                        } else {
                            aVar.C0(c0954a, p(bufferedReader));
                        }
                        i10 = 4;
                        y(i10);
                        y(2);
                        k10 = k(bufferedReader);
                        if (k10 == ',') {
                        }
                        break;
                    case 3:
                        if (c0954a.f61389d) {
                            aVar.x0(c0954a, w(bufferedReader, f61375o));
                        } else {
                            aVar.v0(c0954a, m(bufferedReader));
                        }
                        i10 = 4;
                        y(i10);
                        y(2);
                        k10 = k(bufferedReader);
                        if (k10 == ',') {
                        }
                        break;
                    case 4:
                        if (c0954a.f61389d) {
                            aVar.t0(c0954a, w(bufferedReader, f61376p));
                        } else {
                            aVar.n0(c0954a, l(bufferedReader));
                        }
                        i10 = 4;
                        y(i10);
                        y(2);
                        k10 = k(bufferedReader);
                        if (k10 == ',') {
                        }
                        break;
                    case 5:
                        if (c0954a.f61389d) {
                            aVar.O(c0954a, w(bufferedReader, f61380t));
                        } else {
                            aVar.K(c0954a, u(bufferedReader));
                        }
                        i10 = 4;
                        y(i10);
                        y(2);
                        k10 = k(bufferedReader);
                        if (k10 == ',') {
                        }
                        break;
                    case 6:
                        if (c0954a.f61389d) {
                            aVar.b0(c0954a, w(bufferedReader, f61377q));
                        } else {
                            aVar.a0(c0954a, A(bufferedReader, false));
                        }
                        i10 = 4;
                        y(i10);
                        y(2);
                        k10 = k(bufferedReader);
                        if (k10 == ',') {
                        }
                        break;
                    case 7:
                        if (c0954a.f61389d) {
                            aVar.E(c0954a, w(bufferedReader, f61378r));
                        } else {
                            aVar.C(c0954a, q(bufferedReader));
                        }
                        i10 = 4;
                        y(i10);
                        y(2);
                        k10 = k(bufferedReader);
                        if (k10 == ',') {
                        }
                        break;
                    case 8:
                        aVar.l0(c0954a, C3033c.a(r(bufferedReader, this.f61383c, this.f61385e, f61372l)));
                        i10 = 4;
                        y(i10);
                        y(2);
                        k10 = k(bufferedReader);
                        if (k10 == ',') {
                        }
                        break;
                    case 9:
                        aVar.l0(c0954a, C3033c.b(r(bufferedReader, this.f61383c, this.f61385e, f61372l)));
                        i10 = 4;
                        y(i10);
                        y(2);
                        k10 = k(bufferedReader);
                        if (k10 == ',') {
                        }
                        break;
                    case 10:
                        char k11 = k(bufferedReader);
                        if (k11 == 'n') {
                            z(bufferedReader, f61367g);
                            hashMap = null;
                        } else {
                            if (k11 != '{') {
                                throw new ParseException("Expected start of a map object");
                            }
                            this.f61386f.push(1);
                            hashMap = new HashMap();
                            while (true) {
                                char k12 = k(bufferedReader);
                                if (k12 == 0) {
                                    throw new ParseException("Unexpected EOF");
                                }
                                if (k12 == '\"') {
                                    String b10 = b(bufferedReader, this.f61382b, this.f61384d, null);
                                    if (k(bufferedReader) != ':') {
                                        throw new ParseException("No map value found for key ".concat(String.valueOf(b10)));
                                    }
                                    if (k(bufferedReader) != '\"') {
                                        throw new ParseException("Expected String value for key ".concat(String.valueOf(b10)));
                                    }
                                    hashMap.put(b10, b(bufferedReader, this.f61382b, this.f61384d, null));
                                    char k13 = k(bufferedReader);
                                    if (k13 != ',') {
                                        if (k13 != '}') {
                                            throw new ParseException("Unexpected character while parsing string map: " + k13);
                                        }
                                        y(1);
                                    }
                                } else if (k12 == '}') {
                                    y(1);
                                }
                                i10 = 4;
                                y(i10);
                                y(2);
                                k10 = k(bufferedReader);
                                if (k10 == ',') {
                                }
                            }
                        }
                        aVar.D(c0954a, hashMap);
                        i10 = 4;
                        y(i10);
                        y(2);
                        k10 = k(bufferedReader);
                        if (k10 == ',') {
                        }
                        break;
                    case 11:
                        if (c0954a.f61389d) {
                            char k14 = k(bufferedReader);
                            if (k14 == 'n') {
                                z(bufferedReader, f61367g);
                                aVar.b(c0954a, c0954a.f61392g, null);
                            } else {
                                this.f61386f.push(5);
                                if (k14 != '[') {
                                    throw new ParseException("Expected array start");
                                }
                                aVar.b(c0954a, c0954a.f61392g, x(bufferedReader, c0954a));
                            }
                        } else {
                            char k15 = k(bufferedReader);
                            if (k15 == 'n') {
                                z(bufferedReader, f61367g);
                                aVar.c(c0954a, c0954a.f61392g, null);
                            } else {
                                this.f61386f.push(1);
                                if (k15 != '{') {
                                    throw new ParseException("Expected start of object");
                                }
                                try {
                                    a E02 = c0954a.E0();
                                    B(bufferedReader, E02);
                                    aVar.c(c0954a, c0954a.f61392g, E02);
                                } catch (IllegalAccessException e10) {
                                    throw new ParseException("Error instantiating inner object", e10);
                                } catch (InstantiationException e11) {
                                    throw new ParseException("Error instantiating inner object", e11);
                                }
                            }
                        }
                        i10 = 4;
                        y(i10);
                        y(2);
                        k10 = k(bufferedReader);
                        if (k10 == ',') {
                        }
                        break;
                    default:
                        throw new ParseException("Invalid field type " + i11);
                }
            }
        }
        y(1);
        return true;
    }

    @C0.a
    public void a(@NonNull InputStream inputStream, @NonNull T t10) throws ParseException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 1024);
        try {
            try {
                this.f61386f.push(0);
                char k10 = k(bufferedReader);
                if (k10 == 0) {
                    throw new ParseException("No data to parse");
                }
                if (k10 == '[') {
                    this.f61386f.push(5);
                    Map<String, a.C0954a<?, ?>> d10 = t10.d();
                    if (d10.size() != 1) {
                        throw new ParseException("Object array response class must have a single Field");
                    }
                    a.C0954a<?, ?> value = d10.entrySet().iterator().next().getValue();
                    t10.b(value, value.f61392g, x(bufferedReader, value));
                } else {
                    if (k10 != '{') {
                        throw new ParseException("Unexpected token: " + k10);
                    }
                    this.f61386f.push(1);
                    B(bufferedReader, t10);
                }
                y(0);
                try {
                    bufferedReader.close();
                } catch (IOException unused) {
                    Log.w("FastParser", "Failed to close reader while parsing.");
                }
            } catch (IOException e10) {
                throw new ParseException(e10);
            }
        } catch (Throwable th2) {
            try {
                bufferedReader.close();
            } catch (IOException unused2) {
                Log.w("FastParser", "Failed to close reader while parsing.");
            }
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0021, code lost:
    
        return r3.f61381a[0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0022, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0008, code lost:
    
        if (r4.read(r3.f61381a) != (-1)) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (java.lang.Character.isWhitespace(r3.f61381a[0]) == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001a, code lost:
    
        if (r4.read(r3.f61381a) != (-1)) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final char k(BufferedReader bufferedReader) throws ParseException, IOException {
    }

    public final double l(BufferedReader bufferedReader) throws ParseException, IOException {
        int o10 = o(bufferedReader, this.f61383c);
        if (o10 == 0) {
            return 0.0d;
        }
        return Double.parseDouble(new String(this.f61383c, 0, o10));
    }

    public final float m(BufferedReader bufferedReader) throws ParseException, IOException {
        int o10 = o(bufferedReader, this.f61383c);
        if (o10 == 0) {
            return 0.0f;
        }
        return Float.parseFloat(new String(this.f61383c, 0, o10));
    }

    public final int n(BufferedReader bufferedReader) throws ParseException, IOException {
        int i10;
        int i11;
        int o10 = o(bufferedReader, this.f61383c);
        if (o10 == 0) {
            return 0;
        }
        char[] cArr = this.f61383c;
        if (o10 <= 0) {
            throw new ParseException("No number to parse");
        }
        char c10 = cArr[0];
        int i12 = c10 == '-' ? Integer.MIN_VALUE : C14289h.f97343g;
        int i13 = c10 == '-' ? 1 : 0;
        if (i13 < o10) {
            i11 = i13 + 1;
            int digit = Character.digit(cArr[i13], 10);
            if (digit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            i10 = -digit;
        } else {
            i10 = 0;
            i11 = i13;
        }
        while (i11 < o10) {
            int i14 = i11 + 1;
            int digit2 = Character.digit(cArr[i11], 10);
            if (digit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (i10 < -214748364) {
                throw new ParseException("Number too large");
            }
            int i15 = i10 * 10;
            if (i15 < i12 + digit2) {
                throw new ParseException("Number too large");
            }
            i10 = i15 - digit2;
            i11 = i14;
        }
        if (i13 == 0) {
            return -i10;
        }
        if (i11 > 1) {
            return i10;
        }
        throw new ParseException("No digits to parse");
    }

    @ResultIgnorabilityUnspecified
    public final int o(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i10;
        char k10 = k(bufferedReader);
        if (k10 == 0) {
            throw new ParseException("Unexpected EOF");
        }
        if (k10 == ',') {
            throw new ParseException("Missing value");
        }
        if (k10 == 'n') {
            z(bufferedReader, f61367g);
            return 0;
        }
        bufferedReader.mark(1024);
        if (k10 == '\"') {
            i10 = 0;
            boolean z10 = false;
            while (i10 < 1024 && bufferedReader.read(cArr, i10, 1) != -1) {
                char c10 = cArr[i10];
                if (Character.isISOControl(c10)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
                int i11 = i10 + 1;
                if (c10 == '\"') {
                    if (!z10) {
                        bufferedReader.reset();
                        bufferedReader.skip(i11);
                        return i10;
                    }
                } else if (c10 == '\\') {
                    z10 = !z10;
                    i10 = i11;
                }
                z10 = false;
                i10 = i11;
            }
        } else {
            cArr[0] = k10;
            i10 = 1;
            while (i10 < 1024 && bufferedReader.read(cArr, i10, 1) != -1) {
                char c11 = cArr[i10];
                if (c11 == '}' || c11 == ',' || Character.isWhitespace(c11) || cArr[i10] == ']') {
                    bufferedReader.reset();
                    bufferedReader.skip(i10 - 1);
                    cArr[i10] = 0;
                    return i10;
                }
                i10++;
            }
        }
        if (i10 == 1024) {
            throw new ParseException("Absurdly long value");
        }
        throw new ParseException("Unexpected EOF");
    }

    public final long p(BufferedReader bufferedReader) throws ParseException, IOException {
        long j10;
        int i10;
        int o10 = o(bufferedReader, this.f61383c);
        if (o10 == 0) {
            return 0L;
        }
        char[] cArr = this.f61383c;
        if (o10 <= 0) {
            throw new ParseException("No number to parse");
        }
        char c10 = cArr[0];
        long j11 = c10 == '-' ? Long.MIN_VALUE : -9223372036854775807L;
        int i11 = c10 == '-' ? 1 : 0;
        if (i11 < o10) {
            i10 = i11 + 1;
            int digit = Character.digit(cArr[i11], 10);
            if (digit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            j10 = -digit;
        } else {
            j10 = 0;
            i10 = i11;
        }
        while (i10 < o10) {
            int i12 = i10 + 1;
            int digit2 = Character.digit(cArr[i10], 10);
            if (digit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (j10 < -922337203685477580L) {
                throw new ParseException("Number too large");
            }
            long j12 = j10 * 10;
            int i13 = o10;
            long j13 = digit2;
            if (j12 < j11 + j13) {
                throw new ParseException("Number too large");
            }
            j10 = j12 - j13;
            o10 = i13;
            i10 = i12;
        }
        if (i11 == 0) {
            return -j10;
        }
        if (i10 > 1) {
            return j10;
        }
        throw new ParseException("No digits to parse");
    }

    @Nullable
    public final String q(BufferedReader bufferedReader) throws ParseException, IOException {
        return r(bufferedReader, this.f61382b, this.f61384d, null);
    }

    @Nullable
    public final String r(BufferedReader bufferedReader, char[] cArr, StringBuilder sb2, @Nullable char[] cArr2) throws ParseException, IOException {
        char k10 = k(bufferedReader);
        if (k10 == '\"') {
            return b(bufferedReader, cArr, sb2, cArr2);
        }
        if (k10 != 'n') {
            throw new ParseException("Expected string");
        }
        z(bufferedReader, f61367g);
        return null;
    }

    @Nullable
    @ResultIgnorabilityUnspecified
    public final String s(BufferedReader bufferedReader) throws ParseException, IOException {
        this.f61386f.push(2);
        char k10 = k(bufferedReader);
        if (k10 == '\"') {
            this.f61386f.push(3);
            String b10 = b(bufferedReader, this.f61382b, this.f61384d, null);
            y(3);
            if (k(bufferedReader) == ':') {
                return b10;
            }
            throw new ParseException("Expected key/value separator");
        }
        if (k10 == ']') {
            y(2);
            y(1);
            y(5);
            return null;
        }
        if (k10 == '}') {
            y(2);
            return null;
        }
        throw new ParseException("Unexpected token: " + k10);
    }

    @Nullable
    public final String t(BufferedReader bufferedReader) throws ParseException, IOException {
        bufferedReader.mark(1024);
        char k10 = k(bufferedReader);
        int i10 = 1;
        if (k10 == '\"') {
            if (bufferedReader.read(this.f61381a) == -1) {
                throw new ParseException("Unexpected EOF while parsing string");
            }
            char c10 = this.f61381a[0];
            boolean z10 = false;
            do {
                if (c10 == '\"') {
                    if (z10) {
                        c10 = '\"';
                        z10 = true;
                    }
                }
                z10 = c10 == '\\' ? !z10 : false;
                if (bufferedReader.read(this.f61381a) == -1) {
                    throw new ParseException("Unexpected EOF while parsing string");
                }
                c10 = this.f61381a[0];
            } while (!Character.isISOControl(c10));
            throw new ParseException("Unexpected control character while reading string");
        }
        if (k10 == ',') {
            throw new ParseException("Missing value");
        }
        if (k10 == '[') {
            this.f61386f.push(5);
            bufferedReader.mark(32);
            if (k(bufferedReader) == ']') {
                y(5);
            } else {
                bufferedReader.reset();
                boolean z11 = false;
                boolean z12 = false;
                while (i10 > 0) {
                    char k11 = k(bufferedReader);
                    if (k11 == 0) {
                        throw new ParseException("Unexpected EOF while parsing array");
                    }
                    if (Character.isISOControl(k11)) {
                        throw new ParseException("Unexpected control character while reading array");
                    }
                    if (k11 == '\"') {
                        if (!z12) {
                            z11 = !z11;
                        }
                        k11 = '\"';
                    }
                    if (k11 == '[') {
                        if (!z11) {
                            i10++;
                        }
                        k11 = '[';
                    }
                    if (k11 == ']' && !z11) {
                        i10--;
                    }
                    z12 = (k11 == '\\' && z11) ? !z12 : false;
                }
                y(5);
            }
        } else if (k10 != '{') {
            bufferedReader.reset();
            o(bufferedReader, this.f61383c);
        } else {
            this.f61386f.push(1);
            bufferedReader.mark(32);
            char k12 = k(bufferedReader);
            if (k12 == '}') {
                y(1);
            } else {
                if (k12 != '\"') {
                    throw new ParseException("Unexpected token " + k12);
                }
                bufferedReader.reset();
                s(bufferedReader);
                do {
                } while (t(bufferedReader) != null);
                y(1);
            }
        }
        char k13 = k(bufferedReader);
        if (k13 == ',') {
            y(2);
            return s(bufferedReader);
        }
        if (k13 == '}') {
            y(2);
            return null;
        }
        throw new ParseException("Unexpected token " + k13);
    }

    @Nullable
    public final BigDecimal u(BufferedReader bufferedReader) throws ParseException, IOException {
        int o10 = o(bufferedReader, this.f61383c);
        if (o10 == 0) {
            return null;
        }
        return new BigDecimal(new String(this.f61383c, 0, o10));
    }

    @Nullable
    public final BigInteger v(BufferedReader bufferedReader) throws ParseException, IOException {
        int o10 = o(bufferedReader, this.f61383c);
        if (o10 == 0) {
            return null;
        }
        return new BigInteger(new String(this.f61383c, 0, o10));
    }

    @Nullable
    public final ArrayList w(BufferedReader bufferedReader, l lVar) throws ParseException, IOException {
        char k10 = k(bufferedReader);
        if (k10 == 'n') {
            z(bufferedReader, f61367g);
            return null;
        }
        if (k10 != '[') {
            throw new ParseException("Expected start of array");
        }
        this.f61386f.push(5);
        ArrayList arrayList = new ArrayList();
        while (true) {
            bufferedReader.mark(1024);
            char k11 = k(bufferedReader);
            if (k11 == 0) {
                throw new ParseException("Unexpected EOF");
            }
            if (k11 != ',') {
                if (k11 == ']') {
                    y(5);
                    return arrayList;
                }
                bufferedReader.reset();
                arrayList.add(lVar.a(this, bufferedReader));
            }
        }
    }

    @Nullable
    public final ArrayList x(BufferedReader bufferedReader, a.C0954a c0954a) throws ParseException, IOException {
        ArrayList arrayList = new ArrayList();
        char k10 = k(bufferedReader);
        if (k10 == ']') {
            y(5);
            return arrayList;
        }
        if (k10 == 'n') {
            z(bufferedReader, f61367g);
            y(5);
            return null;
        }
        if (k10 != '{') {
            throw new ParseException("Unexpected token: " + k10);
        }
        this.f61386f.push(1);
        while (true) {
            try {
                a E02 = c0954a.E0();
                if (!B(bufferedReader, E02)) {
                    return arrayList;
                }
                arrayList.add(E02);
                char k11 = k(bufferedReader);
                if (k11 != ',') {
                    if (k11 == ']') {
                        y(5);
                        return arrayList;
                    }
                    throw new ParseException("Unexpected token: " + k11);
                }
                if (k(bufferedReader) != '{') {
                    throw new ParseException("Expected start of next object in array");
                }
                this.f61386f.push(1);
            } catch (IllegalAccessException e10) {
                throw new ParseException("Error instantiating inner object", e10);
            } catch (InstantiationException e11) {
                throw new ParseException("Error instantiating inner object", e11);
            }
        }
    }

    public final void y(int i10) throws ParseException {
        if (this.f61386f.isEmpty()) {
            throw new ParseException("Expected state " + i10 + " but had empty stack");
        }
        int intValue = ((Integer) this.f61386f.pop()).intValue();
        if (intValue == i10) {
            return;
        }
        throw new ParseException("Expected state " + i10 + " but had " + intValue);
    }

    public final void z(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i10 = 0;
        while (true) {
            int length = cArr.length;
            if (i10 >= length) {
                return;
            }
            int read = bufferedReader.read(this.f61382b, 0, length - i10);
            if (read == -1) {
                throw new ParseException("Unexpected EOF");
            }
            for (int i11 = 0; i11 < read; i11++) {
                if (cArr[i11 + i10] != this.f61382b[i11]) {
                    throw new ParseException("Unexpected character");
                }
            }
            i10 += read;
        }
    }
}
