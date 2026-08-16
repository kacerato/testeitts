package yk;

import ei.C13155a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import oh.AbstractC14508c;
import oh.AbstractC14536q;
import oh.AbstractC14551y;
import oh.B;
import oh.C14512e;
import oh.C14522j;
import oh.C14539s;
import oh.E;
import oh.G;
import oh.InterfaceC14516g;
import oh.M;
import oh.Q;
import org.bouncycastle.util.p;
import org.bouncycastle.util.w;
import yk.C16204f;
import yk.l;

public class j extends OutputStream {

    public static final int[] f130483d = {1, 2, 4, 8, 16, 32, 64, 128};

    public final OutputStream f130484b;

    public PrintWriter f130485c = null;

    public static class a {

        public static final int[] f130486a;

        static {
            int[] iArr = new int[C16204f.a.values().length];
            f130486a = iArr;
            try {
                iArr[C16204f.a.Supplier.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f130486a[C16204f.a.SEQ.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f130486a[C16204f.a.SEQ_OF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f130486a[C16204f.a.CHOICE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f130486a[C16204f.a.ENUM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f130486a[C16204f.a.INT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f130486a[C16204f.a.OCTET_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f130486a[C16204f.a.IA5String.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f130486a[C16204f.a.UTF8_STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f130486a[C16204f.a.BIT_STRING.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f130486a[C16204f.a.NULL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f130486a[C16204f.a.EXTENSION.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f130486a[C16204f.a.ENUM_ITEM.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f130486a[C16204f.a.BOOLEAN.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    public j(OutputStream outputStream) {
        this.f130484b = outputStream;
    }

    public static int a(long j10) {
        int i10 = 8;
        while (i10 > 0 && ((-72057594037927936L) & j10) == 0) {
            j10 <<= 8;
            i10--;
        }
        return i10;
    }

    public void b(String str) {
        if (this.f130485c == null) {
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
            PrintWriter printWriter = this.f130485c;
            if (i10 <= 0) {
                printWriter.append((CharSequence) str).append((CharSequence) "\n");
                this.f130485c.flush();
                return;
            } else {
                printWriter.append((CharSequence) C13155a.f85806a);
                i10--;
            }
        }
    }

    public final void c(long j10) throws IOException {
        if (j10 <= 127) {
            this.f130484b.write((int) j10);
            return;
        }
        byte[] c10 = org.bouncycastle.util.b.c(BigInteger.valueOf(j10));
        this.f130484b.write(c10.length | 128);
        this.f130484b.write(c10);
    }

    public final void d(long j10) throws IOException {
        byte[] c10 = org.bouncycastle.util.b.c(BigInteger.valueOf(j10));
        this.f130484b.write(c10.length);
        this.f130484b.write(c10);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x002e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:154:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x04a3  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0392  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void e(InterfaceC14516g interfaceC14516g, C16201c c16201c) throws IOException {
        boolean z10;
        int i10;
        List<C16201c> f10;
        int i11;
        int i12;
        Enumeration J10;
        int size;
        String str;
        byte[] H10;
        String a10;
        if (interfaceC14516g == i.f130478d) {
            return;
        }
        if (interfaceC14516g instanceof i) {
            e(((i) interfaceC14516g).v(), c16201c);
            return;
        }
        B r10 = interfaceC14516g.r();
        int i13 = 6;
        switch (a.f130486a[c16201c.d().ordinal()]) {
            case 1:
                e(r10, c16201c.i().build());
                return;
            case 2:
                E G10 = E.G(r10);
                if (c16201c.y()) {
                    for (int i14 = 0; i14 < c16201c.f().size(); i14++) {
                        C16201c c16201c2 = c16201c.f().get(i14);
                        if (c16201c2.d() == C16204f.a.EXTENSION) {
                            z10 = false;
                            i10 = z10 ? f130483d[7] : 0;
                        } else if (c16201c2.e() > 0 && i14 < G10.size() && !i.f130478d.equals(G10.I(i14))) {
                            z10 = true;
                            if (z10) {
                            }
                        }
                    }
                    z10 = false;
                    if (z10) {
                    }
                } else {
                    i13 = 7;
                    z10 = false;
                    i10 = 0;
                }
                for (int i15 = 0; i15 < c16201c.f().size(); i15++) {
                    C16201c c16201c3 = c16201c.f().get(i15);
                    if (c16201c3.d() != C16204f.a.EXTENSION) {
                        if (c16201c3.e() > 0) {
                            if (i13 != 7) {
                                this.f130484b.write(i10);
                            }
                            f10 = c16201c.f();
                            i11 = 0;
                            while (i11 < f10.size()) {
                                C16201c c16201c4 = c16201c.f().get(i11);
                                if (c16201c4.d() != C16204f.a.EXTENSION) {
                                    if (c16201c4.e() > 0) {
                                        if (z10) {
                                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                            int i16 = 7;
                                            int i17 = 0;
                                            for (int i18 = i11; i18 < f10.size(); i18++) {
                                                if (i16 < 0) {
                                                    byteArrayOutputStream.write(i17);
                                                    i16 = 7;
                                                    i17 = 0;
                                                }
                                                if (i18 < G10.size() && !i.f130478d.equals(G10.I(i18))) {
                                                    i17 |= f130483d[i16];
                                                }
                                                i16--;
                                            }
                                            if (i16 != 7) {
                                                byteArrayOutputStream.write(i17);
                                            }
                                            c(byteArrayOutputStream.size() + 1);
                                            if (i16 == 7) {
                                                write(0);
                                            } else {
                                                write(i16 + 1);
                                            }
                                            write(byteArrayOutputStream.toByteArray());
                                            while (i11 < f10.size()) {
                                                if (i11 < G10.size() && !i.f130478d.equals(G10.I(i11))) {
                                                    f(G10.I(i11), f10.get(i11));
                                                }
                                                i11++;
                                            }
                                        }
                                        this.f130484b.flush();
                                        b(c16201c.a(""));
                                        return;
                                    }
                                    InterfaceC14516g I10 = G10.I(i11);
                                    if (c16201c4.t() != null) {
                                        c16201c4 = c16201c4.t().a(new l.b(G10));
                                    }
                                    if (c16201c4.g() == null || !c16201c4.g().equals(I10)) {
                                        e(I10, c16201c4);
                                    }
                                }
                                i11++;
                            }
                            if (z10) {
                            }
                            this.f130484b.flush();
                            b(c16201c.a(""));
                            return;
                        }
                        C16201c c10 = C16201c.c(c16201c3, c16201c);
                        if (c16201c.t() != null) {
                            c10 = C16201c.c(c16201c.t().a(new l.b(G10)), c16201c);
                        }
                        if (i13 < 0) {
                            this.f130484b.write(i10);
                            i13 = 7;
                            i10 = 0;
                        }
                        InterfaceC14516g I11 = G10.I(i15);
                        if (c10.x() && (I11 instanceof i)) {
                            throw new IllegalStateException("absent sequence element that is required by oer definition");
                        }
                        if (!c10.x()) {
                            InterfaceC14516g I12 = G10.I(i15);
                            if (c10.g() == null) {
                                if (I11 != i.f130478d) {
                                    i12 = f130483d[i13];
                                    i10 |= i12;
                                }
                                i13--;
                            } else if (I12 instanceof i) {
                                i iVar = (i) I12;
                                if (iVar.z() && !iVar.v().equals(c10.g())) {
                                    i12 = f130483d[i13];
                                    i10 |= i12;
                                }
                                i13--;
                            } else {
                                if (!c10.g().equals(I12)) {
                                    i12 = f130483d[i13];
                                    i10 |= i12;
                                }
                                i13--;
                            }
                        }
                    }
                }
                if (i13 != 7) {
                }
                f10 = c16201c.f();
                i11 = 0;
                while (i11 < f10.size()) {
                }
                if (z10) {
                }
                this.f130484b.flush();
                b(c16201c.a(""));
                return;
            case 3:
                if (r10 instanceof G) {
                    G g10 = (G) r10;
                    J10 = g10.I();
                    size = g10.size();
                } else {
                    if (!(r10 instanceof E)) {
                        throw new IllegalStateException("encodable at for SEQ_OF is not a container");
                    }
                    E e10 = (E) r10;
                    J10 = e10.J();
                    size = e10.size();
                }
                d(size);
                C16201c c11 = C16201c.c(c16201c.k(), c16201c);
                while (J10.hasMoreElements()) {
                    e((InterfaceC14516g) J10.nextElement(), c11);
                }
                this.f130484b.flush();
                b(c16201c.a(""));
                return;
            case 4:
                B r11 = r10.r();
                C16199a c16199a = new C16199a();
                if (!(r11 instanceof M)) {
                    throw new IllegalStateException("only support tagged objects");
                }
                M m10 = (M) r11;
                int l10 = m10.l();
                c16199a.f(l10 & 128).f(l10 & 64);
                int g11 = m10.g();
                B r12 = m10.L().r();
                if (g11 <= 63) {
                    c16199a.g(g11, 6);
                } else {
                    c16199a.g(255L, 6);
                    c16199a.c(g11);
                }
                if (this.f130485c != null && (r11 instanceof M)) {
                    int l11 = m10.l();
                    if (l11 == 64) {
                        str = "AS";
                    } else if (l11 == 128) {
                        str = "CS";
                    } else if (l11 == 192) {
                        str = "PR";
                    }
                    b(c16201c.a(str));
                }
                c16199a.e(this.f130484b);
                C16201c c12 = C16201c.c(c16201c.f().get(g11), c16201c);
                if (c12.e() > 0) {
                    f(r12, c12);
                } else {
                    e(r12, c12);
                }
                this.f130484b.flush();
                return;
            case 5:
                BigInteger I13 = r10 instanceof C14539s ? C14539s.F(r10).I() : C14522j.F(r10).H();
                Iterator<C16201c> it = c16201c.f().iterator();
                while (it.hasNext()) {
                    if (C16201c.c(it.next(), c16201c).j().equals(I13)) {
                        if (I13.compareTo(BigInteger.valueOf(127L)) > 0) {
                            byte[] byteArray = I13.toByteArray();
                            this.f130484b.write((byteArray.length & 255) | 128);
                            this.f130484b.write(byteArray);
                        } else {
                            this.f130484b.write(I13.intValue() & 127);
                        }
                        this.f130484b.flush();
                        b(c16201c.a(c16201c.F()));
                        return;
                    }
                }
                throw new IllegalArgumentException("enum value " + ((Object) I13) + " " + em.h.j(I13.toByteArray()) + " no in defined child list");
            case 6:
                C14539s F10 = C14539s.F(r10);
                int w10 = c16201c.w();
                if (w10 > 0) {
                    byte[] b10 = org.bouncycastle.util.b.b(w10, F10.I());
                    if (w10 != 1 && w10 != 2 && w10 != 4 && w10 != 8) {
                        throw new IllegalStateException("unknown uint length " + w10);
                    }
                    this.f130484b.write(b10);
                } else if (w10 < 0) {
                    BigInteger I14 = F10.I();
                    if (w10 == -8) {
                        H10 = p.H(org.bouncycastle.util.b.m(I14));
                    } else if (w10 == -4) {
                        H10 = p.k(org.bouncycastle.util.b.l(I14));
                    } else if (w10 == -2) {
                        H10 = p.Q(org.bouncycastle.util.b.r(I14));
                    } else {
                        if (w10 != -1) {
                            throw new IllegalStateException("unknown twos compliment length");
                        }
                        H10 = new byte[]{org.bouncycastle.util.b.d(I14)};
                    }
                    this.f130484b.write(H10);
                } else {
                    boolean A10 = c16201c.A();
                    BigInteger I15 = F10.I();
                    byte[] c13 = A10 ? org.bouncycastle.util.b.c(I15) : I15.toByteArray();
                    c(c13.length);
                    this.f130484b.write(c13);
                }
                a10 = c16201c.a(c16201c.F());
                b(a10);
                this.f130484b.flush();
                return;
            case 7:
                byte[] H11 = AbstractC14551y.F(r10).H();
                if (!c16201c.z()) {
                    c(H11.length);
                }
                this.f130484b.write(H11);
                a10 = c16201c.a(c16201c.F());
                b(a10);
                this.f130484b.flush();
                return;
            case 8:
                byte[] H12 = AbstractC14536q.F(r10).H();
                if (c16201c.z() && c16201c.r().intValue() != H12.length) {
                    throw new IOException("IA5String string length does not equal declared fixed length " + H12.length + " " + ((Object) c16201c.r()));
                }
                if (!c16201c.z()) {
                    c(H12.length);
                }
                this.f130484b.write(H12);
                a10 = c16201c.a("");
                b(a10);
                this.f130484b.flush();
                return;
            case 9:
                byte[] n10 = w.n(Q.F(r10).getString());
                c(n10.length);
                this.f130484b.write(n10);
                a10 = c16201c.a("");
                b(a10);
                this.f130484b.flush();
                return;
            case 10:
                AbstractC14508c H13 = AbstractC14508c.H(r10);
                byte[] F11 = H13.F();
                if (!c16201c.z()) {
                    int n11 = H13.n();
                    c(F11.length + 1);
                    this.f130484b.write(n11);
                }
                this.f130484b.write(F11);
                a10 = c16201c.a(c16201c.F());
                b(a10);
                this.f130484b.flush();
                return;
            case 11:
            case 13:
            default:
                return;
            case 12:
                byte[] H14 = AbstractC14551y.F(r10).H();
                if (!c16201c.z()) {
                    c(H14.length);
                }
                this.f130484b.write(H14);
                a10 = c16201c.a(c16201c.F());
                b(a10);
                this.f130484b.flush();
                return;
            case 14:
                b(c16201c.l());
                if (C14512e.G(r10).J()) {
                    this.f130484b.write(255);
                } else {
                    this.f130484b.write(0);
                }
                this.f130484b.flush();
                return;
        }
    }

    public void f(InterfaceC14516g interfaceC14516g, C16201c c16201c) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        j jVar = new j(byteArrayOutputStream);
        jVar.e(interfaceC14516g, c16201c);
        jVar.flush();
        jVar.close();
        c(byteArrayOutputStream.size());
        write(byteArrayOutputStream.toByteArray());
    }

    @Override
    public void write(int i10) throws IOException {
        this.f130484b.write(i10);
    }
}
