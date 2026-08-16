package yk;

import ei.C13155a;
import fm.C13260d;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;
import oh.A0;
import oh.AbstractC14545v;
import oh.C0;
import oh.C14512e;
import oh.C14518h;
import oh.C14522j;
import oh.C14538r0;
import oh.C14539s;
import oh.C14554z0;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M0;
import org.bouncycastle.util.w;
import yk.C16204f;
import yk.l;

public class C16206h extends FilterInputStream {

    public static final int[] f130464e = {1, 2, 4, 8, 16, 32, 64, 128};

    public static final int[] f130465f = {128, 64, 32, 16, 8, 4, 2, 1};

    public PrintWriter f130466b;

    public int f130467c;

    public PrintWriter f130468d;

    public static class a {

        public static final int[] f130469a;

        static {
            int[] iArr = new int[C16204f.a.values().length];
            f130469a = iArr;
            try {
                iArr[C16204f.a.OPAQUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f130469a[C16204f.a.Switch.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f130469a[C16204f.a.Supplier.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f130469a[C16204f.a.SEQ_OF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f130469a[C16204f.a.SEQ.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f130469a[C16204f.a.CHOICE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f130469a[C16204f.a.ENUM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f130469a[C16204f.a.INT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f130469a[C16204f.a.OCTET_STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f130469a[C16204f.a.IA5String.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f130469a[C16204f.a.UTF8_STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f130469a[C16204f.a.BIT_STRING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f130469a[C16204f.a.NULL.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f130469a[C16204f.a.EXTENSION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f130469a[C16204f.a.BOOLEAN.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public static class b extends C16206h {

        public final int f130470g;

        public final int f130471h;

        public final int f130472i;

        public b(InputStream inputStream) throws IOException {
            super(inputStream);
            int read;
            int read2 = read();
            this.f130470g = read2;
            if (read2 < 0) {
                throw new EOFException("expecting preamble byte of choice");
            }
            this.f130472i = read2 & 192;
            int i10 = read2 & 63;
            if (i10 >= 63) {
                i10 = 0;
                do {
                    read = inputStream.read();
                    if (read < 0) {
                        throw new EOFException("expecting further tag bytes");
                    }
                    i10 = (i10 << 7) | (read & 127);
                } while ((read & 128) != 0);
            }
            this.f130471h = i10;
        }

        public boolean A() {
            return this.f130472i == 192;
        }

        public boolean B() {
            return this.f130472i == 0;
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("CHOICE(");
            int i10 = this.f130472i;
            if (i10 == 0) {
                str = "Universal ";
            } else if (i10 == 64) {
                str = "Application ";
            } else {
                if (i10 != 128) {
                    if (i10 == 192) {
                        str = "Private ";
                    }
                    sb2.append("Tag = " + this.f130471h);
                    sb2.append(")");
                    return sb2.toString();
                }
                str = "ContextSpecific ";
            }
            sb2.append(str);
            sb2.append("Tag = " + this.f130471h);
            sb2.append(")");
            return sb2.toString();
        }

        public int w() {
            return this.f130471h;
        }

        public int x() {
            return this.f130472i;
        }

        public boolean y() {
            return this.f130472i == 64;
        }

        public boolean z() {
            return this.f130472i == 128;
        }
    }

    public static final class c {

        public final BigInteger f130473a;

        public final boolean f130474b;

        public c(BigInteger bigInteger, boolean z10) {
            this.f130473a = bigInteger;
            this.f130474b = z10;
        }

        public final int b() {
            return org.bouncycastle.util.b.l(this.f130473a);
        }
    }

    public static class d extends C16206h {

        public final int f130475g;

        public final boolean[] f130476h;

        public final boolean f130477i;

        public d(InputStream inputStream, C16201c c16201c) throws IOException {
            super(inputStream);
            int i10;
            if (!c16201c.v() && c16201c.o() <= 0 && !c16201c.u()) {
                this.f130475g = 0;
                this.f130477i = false;
                this.f130476h = null;
                return;
            }
            int read = this.f92730in.read();
            this.f130475g = read;
            if (read < 0) {
                throw new EOFException("expecting preamble byte of sequence");
            }
            this.f130477i = c16201c.v() && (read & 128) == 128;
            this.f130476h = new boolean[c16201c.f().size()];
            int i11 = c16201c.v() ? 6 : 7;
            int i12 = 0;
            for (C16201c c16201c2 : c16201c.f()) {
                if (c16201c2.d() != C16204f.a.EXTENSION) {
                    if (c16201c2.e() != 0) {
                        return;
                    }
                    if (c16201c2.x()) {
                        i10 = i12 + 1;
                        this.f130476h[i12] = true;
                    } else {
                        if (i11 < 0) {
                            read = inputStream.read();
                            if (read < 0) {
                                throw new EOFException("expecting mask byte sequence");
                            }
                            i11 = 7;
                        }
                        i10 = i12 + 1;
                        this.f130476h[i12] = (C16206h.f130464e[i11] & read) > 0;
                        i11--;
                    }
                    i12 = i10;
                }
            }
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SEQ(");
            sb2.append(y() ? "Ext " : "");
            if (this.f130476h != null) {
                int i10 = 0;
                while (true) {
                    boolean[] zArr = this.f130476h;
                    if (i10 >= zArr.length) {
                        break;
                    }
                    sb2.append(zArr[i10] ? "1" : "0");
                    i10++;
                }
            } else {
                sb2.append("*");
            }
            sb2.append(")");
            return sb2.toString();
        }

        public boolean y() {
            return this.f130477i;
        }

        public boolean z(int i10) {
            return this.f130476h[i10];
        }
    }

    public C16206h(InputStream inputStream) {
        super(inputStream);
        this.f130466b = null;
        this.f130467c = 1048576;
        this.f130468d = null;
    }

    public static InterfaceC14516g n(byte[] bArr, C16201c c16201c) throws IOException {
        return new C16206h(new ByteArrayInputStream(bArr)).o(c16201c);
    }

    public final InterfaceC14516g a(C16201c c16201c) {
        g(((Object) c16201c) + "Absent");
        return i.f130478d;
    }

    public final byte[] d(int i10) {
        if (i10 <= this.f130467c) {
            return new byte[i10];
        }
        throw new IllegalArgumentException("required byte array size " + i10 + " was greater than " + this.f130467c);
    }

    public b e() throws IOException {
        return new b(this);
    }

    public final int f(C16201c c16201c) {
        Iterator<C16201c> it = c16201c.f().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += !it.next().x() ? 1 : 0;
        }
        return i10;
    }

    public void g(String str) {
        if (this.f130466b == null) {
            return;
        }
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int i10 = -1;
        for (int i11 = 0; i11 != stackTrace.length; i11++) {
            StackTraceElement stackTraceElement = stackTrace[i11];
            if (stackTraceElement.getMethodName().equals("debugPrint")) {
                i10 = 0;
            } else if (stackTraceElement.getClassName().contains("OERInput")) {
                i10++;
            }
        }
        while (true) {
            PrintWriter printWriter = this.f130466b;
            if (i10 <= 0) {
                printWriter.append((CharSequence) str).append((CharSequence) "\n");
                this.f130466b.flush();
                return;
            } else {
                printWriter.append((CharSequence) C13155a.f85806a);
                i10--;
            }
        }
    }

    public BigInteger h() throws IOException {
        int read = read();
        if (read == -1) {
            throw new EOFException("expecting prefix of enumeration");
        }
        if ((read & 128) != 128) {
            return BigInteger.valueOf(read);
        }
        int i10 = read & 127;
        if (i10 == 0) {
            return BigInteger.ZERO;
        }
        byte[] bArr = new byte[i10];
        if (C13260d.g(this, bArr) == i10) {
            return new BigInteger(1, bArr);
        }
        throw new EOFException("unable to fully read integer component of enumeration");
    }

    public BigInteger j() throws Exception {
        return p(false, 2);
    }

    public BigInteger k() throws Exception {
        return p(false, 4);
    }

    public BigInteger l() throws Exception {
        return p(false, 8);
    }

    public BigInteger m() throws Exception {
        return p(false, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:165:0x046c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AbstractC14545v o(C16201c c16201c) throws IOException {
        InterfaceC14516g interfaceC14516g;
        C16201c c16201c2;
        InterfaceC14516g g10;
        byte[] d10;
        BigInteger bigInteger;
        int i10 = 8;
        switch (a.f130469a[c16201c.d().ordinal()]) {
            case 1:
                return o(new C16201c(c16201c.G().build(), c16201c));
            case 2:
                throw new IllegalStateException("A switch element should only be found within a sequence.");
            case 3:
                return o(new C16201c(c16201c.i().build(), c16201c));
            case 4:
                byte[] d11 = d(r().b());
                if (C13260d.g(this, d11) != d11.length) {
                    throw new IOException("could not read all of count of seq-of values");
                }
                int intValue = org.bouncycastle.util.b.i(d11).intValue();
                g(((Object) c16201c) + "(len = " + intValue + ")");
                C14518h c14518h = new C14518h();
                if (c16201c.f().get(0).t() != null) {
                    throw new IllegalStateException("element def for item in SEQ OF has a switch, switches only supported in sequences");
                }
                for (int i11 = 0; i11 < intValue; i11++) {
                    c14518h.a(o(C16201c.c(c16201c.f().get(0), c16201c)));
                }
                return new G0(c14518h);
            case 5:
                d dVar = new d(this.f92730in, c16201c);
                g(((Object) c16201c) + dVar.toString());
                C14518h c14518h2 = new C14518h();
                List<C16201c> f10 = c16201c.f();
                int i12 = 0;
                while (i12 < f10.size()) {
                    C16201c c16201c3 = f10.get(i12);
                    if (c16201c3.d() != C16204f.a.EXTENSION) {
                        if (c16201c3.e() > 0) {
                            if (dVar.f130477i) {
                                byte[] d12 = d(r().b());
                                if (C13260d.g(this.f92730in, d12) != d12.length) {
                                    throw new IOException("did not fully read presence list.");
                                }
                                int length = (d12.length * 8) - d12[0];
                                while (true) {
                                    if (i12 < f10.size() || i10 < length) {
                                        C16201c c16201c4 = i12 < f10.size() ? f10.get(i12) : null;
                                        if (c16201c4 != null) {
                                            if (i10 < length && (d12[i10 / 8] & f130465f[i10 % 8]) != 0) {
                                                interfaceC14516g = q(c16201c4);
                                            } else {
                                                if (c16201c4.x()) {
                                                    throw new IOException("extension is marked as explicit but is not defined in presence list");
                                                }
                                                interfaceC14516g = i.f130478d;
                                            }
                                            c14518h2.a(interfaceC14516g);
                                        } else if ((d12[i10 / 8] & f130465f[i10 % 8]) != 0) {
                                            int b10 = r().b();
                                            while (true) {
                                                b10--;
                                                if (b10 >= 0) {
                                                    this.f92730in.read();
                                                }
                                            }
                                        }
                                        i10++;
                                        i12++;
                                    }
                                }
                            }
                            return new G0(c14518h2);
                        }
                        C16201c c10 = C16201c.c(c16201c3, c16201c);
                        if (c10.t() != null) {
                            c16201c2 = c10.t().a(new l.a(c14518h2));
                            if (c16201c2.p() != c16201c) {
                                c16201c2 = new C16201c(c16201c2, c16201c);
                            }
                        } else {
                            c16201c2 = c10;
                        }
                        if (dVar.f130476h != null) {
                            if (!dVar.f130476h[i12]) {
                                g10 = c16201c2.g() != null ? c10.g() : a(c10);
                            } else if (!c16201c2.x()) {
                                g10 = i.w(o(c16201c2));
                            }
                            c14518h2.a(g10);
                        }
                        g10 = o(c16201c2);
                        c14518h2.a(g10);
                    }
                    i12++;
                }
                if (dVar.f130477i) {
                }
                return new G0(c14518h2);
            case 6:
                b e10 = e();
                g(e10.toString() + " " + e10.f130471h);
                if (!e10.z()) {
                    if (e10.y()) {
                        throw new IllegalStateException("Unimplemented tag type");
                    }
                    if (e10.A()) {
                        throw new IllegalStateException("Unimplemented tag type");
                    }
                    if (e10.B()) {
                        throw new IllegalStateException("Unimplemented tag type");
                    }
                    throw new IllegalStateException("Unimplemented tag type");
                }
                C16201c c11 = C16201c.c(c16201c.f().get(e10.w()), c16201c);
                if (c11.e() > 0) {
                    g("Chosen (Ext): " + ((Object) c11));
                    return new K0(e10.f130471h, q(c11));
                }
                g("Chosen: " + ((Object) c11));
                return new K0(e10.f130471h, o(c11));
            case 7:
                BigInteger h10 = h();
                g(((Object) c16201c) + "ENUM(" + ((Object) h10) + ") = " + c16201c.f().get(h10.intValue()).l());
                return new C14522j(h10);
            case 8:
                int w10 = c16201c.w();
                if (w10 != 0) {
                    d10 = d(Math.abs(w10));
                    C13260d.g(this, d10);
                    bigInteger = w10 < 0 ? new BigInteger(d10) : org.bouncycastle.util.b.i(d10);
                } else if (c16201c.A()) {
                    d10 = d(r().b());
                    C13260d.g(this, d10);
                    if (d10.length != 0) {
                        bigInteger = new BigInteger(1, d10);
                    }
                    bigInteger = BigInteger.ZERO;
                } else {
                    d10 = d(r().b());
                    C13260d.g(this, d10);
                    if (d10.length != 0) {
                        bigInteger = new BigInteger(d10);
                    }
                    bigInteger = BigInteger.ZERO;
                }
                if (this.f130466b != null) {
                    g(((Object) c16201c) + "INTEGER byteLen= " + d10.length + " hex= " + bigInteger.toString(16) + ")");
                }
                return new C14539s(bigInteger);
            case 9:
                int b11 = (c16201c.r() == null || !c16201c.r().equals(c16201c.m())) ? r().b() : c16201c.r().intValue();
                byte[] d13 = d(b11);
                if (C13260d.g(this, d13) != b11) {
                    throw new IOException("did not read all of " + c16201c.l());
                }
                if (this.f130466b != null) {
                    int min = Math.min(d13.length, 32);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append((Object) c16201c);
                    sb2.append("OCTET STRING (");
                    sb2.append(d13.length);
                    sb2.append(") = ");
                    sb2.append(em.h.k(d13, 0, min));
                    sb2.append(" ");
                    sb2.append(d13.length > 32 ? "..." : "");
                    g(sb2.toString());
                }
                return new C0(d13);
            case 10:
                byte[] d14 = d(c16201c.z() ? c16201c.r().intValue() : r().b());
                if (C13260d.g(this, d14) != d14.length) {
                    throw new IOException("could not read all of IA5 string");
                }
                String c12 = w.c(d14);
                if (this.f130466b != null) {
                    g(c16201c.a("IA5 String (" + d14.length + ") = " + c12));
                }
                return new C14554z0(c12);
            case 11:
                byte[] d15 = d(r().b());
                if (C13260d.g(this, d15) != d15.length) {
                    throw new IOException("could not read all of utf 8 string");
                }
                String d16 = w.d(d15);
                if (this.f130466b != null) {
                    g(((Object) c16201c) + "UTF8 String (" + d15.length + ") = " + d16);
                }
                return new M0(d16);
            case 12:
                byte[] d17 = c16201c.z() ? new byte[c16201c.m().intValue() / 8] : d((BigInteger.ZERO.compareTo(c16201c.r()) > 0 ? c16201c.r().intValue() : r().b()) / 8);
                C13260d.g(this, d17);
                if (this.f130466b != null) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("BIT STRING(" + (d17.length * 8) + ") = ");
                    for (int i13 = 0; i13 != d17.length; i13++) {
                        byte b12 = d17[i13];
                        for (int i14 = 0; i14 < 8; i14++) {
                            stringBuffer.append((b12 & 128) > 0 ? "1" : "0");
                            b12 = (byte) (b12 << 1);
                        }
                    }
                    g(((Object) c16201c) + stringBuffer.toString());
                }
                return new C14538r0(d17);
            case 13:
                g(((Object) c16201c) + "NULL");
                return A0.f98776c;
            case 14:
                c r10 = r();
                byte[] bArr = new byte[r10.b()];
                if (C13260d.g(this, bArr) != r10.b()) {
                    throw new IOException("could not read all of count of open value in choice (...) ");
                }
                g("ext " + r10.b() + " " + em.h.j(bArr));
                return new C0(bArr);
            case 15:
                return read() == 0 ? C14512e.f98876f : C14512e.f98877g;
            default:
                throw new IllegalStateException("Unhandled type " + ((Object) c16201c.d()));
        }
    }

    public BigInteger p(boolean z10, int i10) throws Exception {
        byte[] bArr = new byte[i10];
        if (C13260d.g(this, bArr) == i10) {
            return z10 ? new BigInteger(1, bArr) : new BigInteger(bArr);
        }
        throw new IllegalStateException("integer not fully read");
    }

    public InterfaceC14516g q(C16201c c16201c) throws IOException {
        byte[] d10 = d(r().b());
        if (C13260d.g(this.f92730in, d10) != d10.length) {
            throw new IOException("did not fully read open type as raw bytes");
        }
        C16206h c16206h = null;
        try {
            C16206h c16206h2 = new C16206h(new ByteArrayInputStream(d10));
            try {
                AbstractC14545v o10 = c16206h2.o(c16201c);
                c16206h2.close();
                return o10;
            } catch (Throwable th2) {
                th = th2;
                c16206h = c16206h2;
                if (c16206h != null) {
                    c16206h.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public c r() throws IOException {
        int read = read();
        if (read == -1) {
            throw new EOFException("expecting length");
        }
        if ((read & 128) == 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Len (Short form): ");
            int i10 = read & 127;
            sb2.append(i10);
            g(sb2.toString());
            return new c(BigInteger.valueOf(i10), true);
        }
        int i11 = read & 127;
        byte[] bArr = new byte[i11];
        if (C13260d.g(this, bArr) != i11) {
            throw new EOFException("did not read all bytes of length definition");
        }
        g("Len (Long Form): " + i11 + " actual len: " + em.h.j(bArr));
        return new c(org.bouncycastle.util.b.i(bArr), false);
    }

    public BigInteger s() throws Exception {
        return p(true, 2);
    }

    public BigInteger t() throws Exception {
        return p(true, 4);
    }

    public BigInteger u() throws Exception {
        return p(false, 8);
    }

    public BigInteger v() throws Exception {
        return p(true, 1);
    }

    public C16206h(InputStream inputStream, int i10) {
        super(inputStream);
        this.f130466b = null;
        this.f130468d = null;
        this.f130467c = i10;
    }
}
