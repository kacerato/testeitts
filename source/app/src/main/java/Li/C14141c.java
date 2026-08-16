package li;

import Qk.InterfaceC3013f;
import hi.C13478B;
import hi.C13479C;
import hi.C13480D;
import hi.C13486b;
import hi.C13496h;
import hi.C13497i;
import hi.C13505q;
import hi.i0;
import hi.j0;
import hi.r;
import java.io.IOException;
import java.io.OutputStream;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import oh.A0;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14530n;
import oh.C14538r0;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import oh.K0;
import oh.M;
import org.bouncycastle.cert.CertIOException;
import org.bouncycastle.util.q;

public class C14141c {

    public static Set f96465a = Collections.unmodifiableSet(new HashSet());

    public static List f96466b = Collections.unmodifiableList(new ArrayList());

    public static void a(C13480D c13480d, C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) throws CertIOException {
        try {
            c13480d.c(c14549x, z10, interfaceC14516g);
        } catch (IOException e10) {
            throw new CertIOException("cannot encode extension: " + e10.getMessage(), e10);
        }
    }

    public static boolean[] b(AbstractC14508c abstractC14508c) {
        if (abstractC14508c == null) {
            return null;
        }
        byte[] F10 = abstractC14508c.F();
        int length = (F10.length * 8) - abstractC14508c.n();
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 != length; i10++) {
            zArr[i10] = (F10[i10 / 8] & (128 >>> (i10 % 8))) != 0;
        }
        return zArr;
    }

    public static C14538r0 c(boolean[] zArr) {
        byte[] bArr = new byte[(zArr.length + 7) / 8];
        for (int i10 = 0; i10 != zArr.length; i10++) {
            int i11 = i10 / 8;
            bArr[i11] = (byte) (bArr[i11] | (zArr[i10] ? 1 << (7 - (i10 % 8)) : 0));
        }
        int length = zArr.length % 8;
        return length == 0 ? new C14538r0(bArr) : new C14538r0(bArr, 8 - length);
    }

    public static C13480D d(C13480D c13480d, C14549x c14549x) {
        C13479C e10 = c13480d.e();
        C13480D c13480d2 = new C13480D();
        Enumeration F10 = e10.F();
        boolean z10 = false;
        while (F10.hasMoreElements()) {
            C14549x c14549x2 = (C14549x) F10.nextElement();
            if (c14549x2.A(c14549x)) {
                z10 = true;
            } else {
                c13480d2.a(e10.x(c14549x2));
            }
        }
        if (z10) {
            return c13480d2;
        }
        throw new IllegalArgumentException("remove - extension (OID = " + ((Object) c14549x) + ") not found");
    }

    public static C13480D e(C13480D c13480d, C13478B c13478b) {
        C13479C e10 = c13480d.e();
        C13480D c13480d2 = new C13480D();
        Enumeration F10 = e10.F();
        boolean z10 = false;
        while (F10.hasMoreElements()) {
            C14549x c14549x = (C14549x) F10.nextElement();
            if (c14549x.A(c13478b.x())) {
                c13480d2.a(c13478b);
                z10 = true;
            } else {
                c13480d2.a(e10.x(c14549x));
            }
        }
        if (z10) {
            return c13480d2;
        }
        throw new IllegalArgumentException("replace - original extension (OID = " + ((Object) c13478b.x()) + ") not found");
    }

    public static C13496h f(C13497i c13497i, C13486b c13486b, byte[] bArr) {
        C14518h c14518h = new C14518h();
        c14518h.a(c13497i);
        c14518h.a(c13486b);
        c14518h.a(new C14538r0(bArr));
        return C13496h.v(new G0(c14518h));
    }

    public static r g(i0 i0Var, C13486b c13486b, byte[] bArr) {
        C14518h c14518h = new C14518h();
        c14518h.a(i0Var);
        c14518h.a(c13486b);
        c14518h.a(new C14538r0(bArr));
        return r.u(new G0(c14518h));
    }

    public static C14143e h(InterfaceC3013f interfaceC3013f, C13497i c13497i) {
        try {
            return new C14143e(f(c13497i, interfaceC3013f.a(), j(interfaceC3013f, c13497i)));
        } catch (IOException unused) {
            throw new IllegalStateException("cannot produce attribute certificate signature");
        }
    }

    public static C14146h i(InterfaceC3013f interfaceC3013f, j0 j0Var) {
        try {
            return new C14146h(k(j0Var, interfaceC3013f.a(), j(interfaceC3013f, j0Var)));
        } catch (IOException unused) {
            throw new IllegalStateException("cannot produce certificate signature");
        }
    }

    public static byte[] j(InterfaceC3013f interfaceC3013f, AbstractC14545v abstractC14545v) throws IOException {
        OutputStream outputStream = interfaceC3013f.getOutputStream();
        abstractC14545v.f(outputStream, InterfaceC14520i.f98892a);
        outputStream.close();
        return interfaceC3013f.getSignature();
    }

    public static C13505q k(j0 j0Var, C13486b c13486b, byte[] bArr) {
        C14518h c14518h = new C14518h();
        c14518h.a(j0Var);
        c14518h.a(c13486b);
        c14518h.a(new C14538r0(bArr));
        return C13505q.v(new G0(c14518h));
    }

    public static Set l(C13479C c13479c) {
        return c13479c == null ? f96465a : Collections.unmodifiableSet(new HashSet(Arrays.asList(c13479c.v())));
    }

    public static List m(C13479C c13479c) {
        return c13479c == null ? f96466b : Collections.unmodifiableList(Arrays.asList(c13479c.y()));
    }

    public static Set n(C13479C c13479c) {
        return c13479c == null ? f96465a : Collections.unmodifiableSet(new HashSet(Arrays.asList(c13479c.E())));
    }

    public static boolean o(C13486b c13486b, C13486b c13486b2) {
        if (!c13486b.u().A(c13486b2.u())) {
            return false;
        }
        if (q.f("org.bouncycastle.x509.allow_absent_equiv_NULL")) {
            if (c13486b.x() == null) {
                return c13486b2.x() == null || c13486b2.x().equals(A0.f98776c);
            }
            if (c13486b2.x() == null) {
                return c13486b.x() == null || c13486b.x().equals(A0.f98776c);
            }
        }
        if (c13486b.x() != null) {
            return c13486b.x().equals(c13486b2.x());
        }
        if (c13486b2.x() != null) {
            return c13486b2.x().equals(c13486b.x());
        }
        return true;
    }

    public static B p(byte[] bArr) throws IOException {
        B B10 = B.B(bArr);
        if (B10 != null) {
            return B10;
        }
        throw new IOException("no content found");
    }

    public static Date q(C14530n c14530n) {
        try {
            return c14530n.I();
        } catch (ParseException e10) {
            throw new IllegalStateException("unable to recover date: " + e10.getMessage());
        }
    }

    public static M r(int i10, C13479C c13479c) {
        E G10 = E.G(c13479c.r());
        C14518h c14518h = new C14518h();
        for (int i11 = 0; i11 != G10.size(); i11++) {
            E G11 = E.G(G10.I(i11));
            if (!C13478B.f90527M.z(G11.I(0))) {
                c14518h.a(G11);
            }
        }
        return new K0(true, i10, (InterfaceC14516g) new G0(c14518h));
    }
}
