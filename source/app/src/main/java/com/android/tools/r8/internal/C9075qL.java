package com.android.tools.r8.internal;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;
import kotlin.time.C14038j;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class C9075qL implements Closeable, Flushable {

    public static final Pattern f51754i = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");

    public static final String[] f51755j = new String[128];

    public static final String[] f51756k;

    public final Writer f51757a;

    public int[] f51758b = new int[32];

    public int f51759c = 0;

    public final String f51760d;

    public boolean f51761e;

    public boolean f51762f;

    public String f51763g;

    public boolean f51764h;

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            f51755j[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        String[] strArr = f51755j;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f51756k = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public C9075qL(Writer writer) {
        a(6);
        this.f51760d = b3.s.f32937c;
        this.f51764h = true;
        Objects.requireNonNull(writer, "out == null");
        this.f51757a = writer;
    }

    public final void a(int i10) {
        int i11 = this.f51759c;
        int[] iArr = this.f51758b;
        if (i11 == iArr.length) {
            this.f51758b = Arrays.copyOf(iArr, i11 * 2);
        }
        int[] iArr2 = this.f51758b;
        int i12 = this.f51759c;
        this.f51759c = i12 + 1;
        iArr2[i12] = i10;
    }

    public void b(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.f51763g != null) {
            throw new IllegalStateException();
        }
        if (this.f51759c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f51763g = str;
    }

    public final void c() {
        int i10 = this.f51759c;
        if (i10 != 0) {
            int[] iArr = this.f51758b;
            int i11 = i10 - 1;
            int i12 = iArr[i11];
            if (i12 == 1) {
                iArr[i11] = 2;
                h();
                return;
            }
            if (i12 == 2) {
                this.f51757a.append(IIndexConstants.PARAMETER_SEPARATOR);
                h();
                return;
            } else {
                if (i12 != 4) {
                    if (i12 != 6) {
                        if (i12 == 7) {
                            if (!this.f51761e) {
                                throw new IllegalStateException("JSON must have only one top-level value.");
                            }
                        } else {
                            throw new IllegalStateException("Nesting problem.");
                        }
                    }
                    iArr[i11] = 7;
                    return;
                }
                this.f51757a.append((CharSequence) this.f51760d);
                this.f51758b[this.f51759c - 1] = 5;
                return;
            }
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    @Override
    public void close() {
        this.f51757a.close();
        int i10 = this.f51759c;
        if (i10 > 1 || (i10 == 1 && this.f51758b[i10 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f51759c = 0;
    }

    public void d() {
        j();
        c();
        a(1);
        this.f51757a.write(91);
    }

    public void e() {
        j();
        c();
        a(3);
        this.f51757a.write(123);
    }

    public void f() {
        a(1, 2, JavaElement.JEM_TYPE_PARAMETER);
    }

    @Override
    public void flush() {
        if (this.f51759c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f51757a.flush();
    }

    public void g() {
        a(3, 5, JavaElement.JEM_ANNOTATION);
    }

    public final void h() {
    }

    public C9075qL i() {
        if (this.f51763g != null) {
            if (!this.f51764h) {
                this.f51763g = null;
                return this;
            }
            j();
        }
        c();
        this.f51757a.write("null");
        return this;
    }

    public final void j() {
        if (this.f51763g != null) {
            int i10 = this.f51759c;
            if (i10 == 0) {
                throw new IllegalStateException("JsonWriter is closed.");
            }
            int i11 = this.f51758b[i10 - 1];
            if (i11 == 5) {
                this.f51757a.write(44);
            } else if (i11 != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            h();
            this.f51758b[this.f51759c - 1] = 4;
            c(this.f51763g);
            this.f51763g = null;
        }
    }

    public final C9075qL a(int i10, int i11, char c10) {
        int i12 = this.f51759c;
        if (i12 != 0) {
            int i13 = i12 - 1;
            int i14 = this.f51758b[i13];
            if (i14 != i11 && i14 != i10) {
                throw new IllegalStateException("Nesting problem.");
            }
            if (this.f51763g == null) {
                this.f51759c = i13;
                if (i14 == i11) {
                    h();
                }
                this.f51757a.write(c10);
                return this;
            }
            throw new IllegalStateException("Dangling name: " + this.f51763g);
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public void d(String str) {
        if (str == null) {
            i();
            return;
        }
        j();
        c();
        c(str);
    }

    public void a(boolean z10) {
        j();
        c();
        this.f51757a.write(z10 ? "true" : "false");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(String str) {
        int i10;
        String str2;
        String[] strArr = this.f51762f ? f51756k : f51755j;
        this.f51757a.write(34);
        int length = str.length();
        int i11 = 0;
        while (i10 < length) {
            char charAt = str.charAt(i10);
            if (charAt < '\u0080') {
                str2 = strArr[charAt];
                i10 = str2 == null ? i10 + 1 : 0;
                if (i11 < i10) {
                    this.f51757a.write(str, i11, i10 - i11);
                }
                this.f51757a.write(str2);
                i11 = i10 + 1;
            } else {
                if (charAt == '\u2028') {
                    str2 = "\\u2028";
                } else if (charAt == '\u2029') {
                    str2 = "\\u2029";
                }
                if (i11 < i10) {
                }
                this.f51757a.write(str2);
                i11 = i10 + 1;
            }
        }
        if (i11 < length) {
            this.f51757a.write(str, i11, length - i11);
        }
        this.f51757a.write(34);
    }

    public void a(double d10) {
        j();
        if (!this.f51761e && (Double.isNaN(d10) || Double.isInfinite(d10))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d10);
        }
        c();
        this.f51757a.append((CharSequence) Double.toString(d10));
    }

    public void a(long j10) {
        j();
        c();
        this.f51757a.write(Long.toString(j10));
    }

    public void a(Number number) {
        if (number == null) {
            i();
            return;
        }
        j();
        String obj = number.toString();
        if (!obj.equals("-Infinity") && !obj.equals(C14038j.f95883k) && !obj.equals("NaN")) {
            Class<?> cls = number.getClass();
            if (cls != Integer.class && cls != Long.class && cls != Double.class && cls != Float.class && cls != Byte.class && cls != Short.class && cls != BigDecimal.class && cls != BigInteger.class && cls != AtomicInteger.class && cls != AtomicLong.class && !f51754i.matcher(obj).matches()) {
                throw new IllegalArgumentException("String created by " + ((Object) cls) + " is not a valid JSON number: " + obj);
            }
        } else if (!this.f51761e) {
            throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(obj));
        }
        c();
        this.f51757a.append((CharSequence) obj);
    }
}
