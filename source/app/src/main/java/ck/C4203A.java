package ck;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.security.spec.AlgorithmParameterSpec;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class C4203A implements AlgorithmParameterSpec {

    public static final int f34869c = 0;

    public static final int f34870d = 4;

    public static final int f34871e = 8;

    public static final int f34872f = 12;

    public static final int f34873g = 16;

    public static final int f34874h = 20;

    public static final int f34875i = 48;

    public static final int f34876j = 63;

    public Map f34877b;

    public static class b {

        public Map f34878a = new HashMap();

        public b() {
        }

        public C4203A a() {
            return new C4203A(this.f34878a);
        }

        public b b(int i10, byte[] bArr) {
            if (bArr == null) {
                throw new IllegalArgumentException("Parameter value must not be null.");
            }
            if (i10 != 0 && (i10 <= 4 || i10 >= 63 || i10 == 48)) {
                throw new IllegalArgumentException("Parameter types must be in the range 0,5..47,49..62.");
            }
            if (i10 == 4) {
                throw new IllegalArgumentException("Parameter type 4 is reserved for internal use.");
            }
            this.f34878a.put(org.bouncycastle.util.k.j(i10), bArr);
            return this;
        }

        public b c(byte[] bArr) {
            return b(0, bArr);
        }

        public b d(byte[] bArr) {
            return b(16, bArr);
        }

        public b e(byte[] bArr) {
            return b(20, bArr);
        }

        public b f(Date date, String str, String str2) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream, "UTF-8");
                outputStreamWriter.write(new SimpleDateFormat("yyyyMMdd").format(date));
                outputStreamWriter.write(" ");
                outputStreamWriter.write(str);
                outputStreamWriter.write(" ");
                outputStreamWriter.write(str2);
                outputStreamWriter.close();
                return b(8, byteArrayOutputStream.toByteArray());
            } catch (IOException e10) {
                throw new IllegalStateException("Byte I/O failed: " + ((Object) e10));
            }
        }

        public b g(Date date, Locale locale, String str, String str2) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream, "UTF-8");
                outputStreamWriter.write(new SimpleDateFormat("yyyyMMdd", locale).format(date));
                outputStreamWriter.write(" ");
                outputStreamWriter.write(str);
                outputStreamWriter.write(" ");
                outputStreamWriter.write(str2);
                outputStreamWriter.close();
                return b(8, byteArrayOutputStream.toByteArray());
            } catch (IOException e10) {
                throw new IllegalStateException("Byte I/O failed: " + ((Object) e10));
            }
        }

        public b h(byte[] bArr) {
            return b(8, bArr);
        }

        public b i(byte[] bArr) {
            return b(12, bArr);
        }

        public b(C4203A c4203a) {
            for (Integer num : c4203a.f34877b.o()) {
                this.f34878a.put(num, c4203a.f34877b.get(num));
            }
        }
    }

    public C4203A() {
        this(new HashMap());
    }

    public byte[] b() {
        return org.bouncycastle.util.a.p((byte[]) this.f34877b.get(org.bouncycastle.util.k.j(0)));
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p((byte[]) this.f34877b.get(org.bouncycastle.util.k.j(16)));
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p((byte[]) this.f34877b.get(org.bouncycastle.util.k.j(20)));
    }

    public Map e() {
        return this.f34877b;
    }

    public byte[] f() {
        return org.bouncycastle.util.a.p((byte[]) this.f34877b.get(org.bouncycastle.util.k.j(8)));
    }

    public byte[] g() {
        return org.bouncycastle.util.a.p((byte[]) this.f34877b.get(org.bouncycastle.util.k.j(12)));
    }

    public C4203A(Map map) {
        this.f34877b = Collections.unmodifiableMap(map);
    }
}
