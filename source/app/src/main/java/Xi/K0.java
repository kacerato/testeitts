package Xi;

import Bi.InterfaceC2379k;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Locale;

public class K0 implements InterfaceC2379k {

    public static final int f29243c = 0;

    public static final int f29244d = 4;

    public static final int f29245e = 8;

    public static final int f29246f = 12;

    public static final int f29247g = 16;

    public static final int f29248h = 20;

    public static final int f29249i = 48;

    public static final int f29250j = 63;

    public Hashtable f29251b;

    public static class b {

        public Hashtable f29252a = new Hashtable();

        public b() {
        }

        public K0 a() {
            return new K0(this.f29252a);
        }

        public b b(int i10, byte[] bArr) {
            if (bArr == null) {
                throw new IllegalArgumentException("Parameter value must not be null.");
            }
            if (i10 != 0 && (i10 < 4 || i10 >= 63 || i10 == 48)) {
                throw new IllegalArgumentException("Parameter types must be in the range 0,5..47,49..62.");
            }
            if (i10 == 4) {
                throw new IllegalArgumentException("Parameter type 4 is reserved for internal use.");
            }
            this.f29252a.put(org.bouncycastle.util.k.j(i10), bArr);
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

        public b(K0 k02) {
            Enumeration keys = k02.f29251b.keys();
            while (keys.hasMoreElements()) {
                Integer num = (Integer) keys.nextElement();
                this.f29252a.put(num, k02.f29251b.get(num));
            }
        }

        public b(Hashtable hashtable) {
            Enumeration keys = hashtable.keys();
            while (keys.hasMoreElements()) {
                Integer num = (Integer) keys.nextElement();
                this.f29252a.put(num, hashtable.get(num));
            }
        }
    }

    public K0() {
        this(new Hashtable());
    }

    public byte[] b() {
        return (byte[]) this.f29251b.get(org.bouncycastle.util.k.j(0));
    }

    public byte[] c() {
        return (byte[]) this.f29251b.get(org.bouncycastle.util.k.j(16));
    }

    public byte[] d() {
        return (byte[]) this.f29251b.get(org.bouncycastle.util.k.j(20));
    }

    public Hashtable e() {
        return this.f29251b;
    }

    public byte[] f() {
        return (byte[]) this.f29251b.get(org.bouncycastle.util.k.j(8));
    }

    public byte[] g() {
        return (byte[]) this.f29251b.get(org.bouncycastle.util.k.j(12));
    }

    public K0(Hashtable hashtable) {
        this.f29251b = hashtable;
    }
}
