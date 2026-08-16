package Sk;

import Qk.InterfaceC3014g;
import Qk.InterfaceC3015h;
import Xh.C3326a;
import Xh.C3330e;
import Xh.t;
import fi.C13228d;
import hi.C13478B;
import hi.C13479C;
import hi.C13480D;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import oh.AbstractC14508c;
import oh.AbstractC14551y;
import oh.B;
import oh.C14512e;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G;
import oh.I0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.pkcs.PKCSException;
import org.bouncycastle.pkcs.PKCSIOException;

public class e {

    public static C3326a[] f23610f = new C3326a[0];

    public final C3330e f23611a;

    public final boolean f23612b;

    public final C13486b f23613c;

    public final h0 f23614d;

    public final AbstractC14508c f23615e;

    public e(C3330e c3330e) {
        h0 h0Var;
        AbstractC14508c abstractC14508c;
        if (c3330e == null) {
            throw new NullPointerException("certificationRequest cannot be null");
        }
        this.f23611a = c3330e;
        G u10 = c3330e.u().u();
        C13486b c13486b = null;
        if (u10 != null) {
            Enumeration I10 = u10.I();
            h0Var = null;
            abstractC14508c = null;
            while (I10.hasMoreElements()) {
                C3326a y10 = C3326a.y(I10.nextElement());
                c13486b = C13478B.f90526L.A(y10.u()) ? C13486b.v(g(y10)) : c13486b;
                h0Var = C13478B.f90525K.A(y10.u()) ? h0.w(g(y10)) : h0Var;
                if (C13478B.f90527M.A(y10.u())) {
                    abstractC14508c = AbstractC14508c.H(g(y10));
                }
            }
        } else {
            h0Var = null;
            abstractC14508c = null;
        }
        boolean z10 = (c13486b != null) | (h0Var != null) | (abstractC14508c != null);
        this.f23612b = z10;
        if (z10) {
            if (!((abstractC14508c != null) & (c13486b != null) & (h0Var != null))) {
                throw new IllegalArgumentException("invalid alternate public key details found");
            }
        }
        this.f23613c = c13486b;
        this.f23614d = h0Var;
        this.f23615e = abstractC14508c;
    }

    public static InterfaceC14516g g(C3326a c3326a) {
        InterfaceC14516g[] x10 = c3326a.x();
        if (x10.length == 1) {
            return x10[0];
        }
        throw new IllegalArgumentException("single value attribute value not size of 1");
    }

    public static C3330e m(byte[] bArr) throws IOException {
        try {
            C3330e v10 = C3330e.v(B.B(bArr));
            if (v10 != null) {
                return v10;
            }
            throw new PKCSIOException("empty data passed to constructor");
        } catch (ClassCastException e10) {
            throw new PKCSIOException("malformed data: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw new PKCSIOException("malformed data: " + e11.getMessage(), e11);
        }
    }

    public C3326a[] a() {
        G u10 = this.f23611a.u().u();
        if (u10 == null) {
            return f23610f;
        }
        C3326a[] c3326aArr = new C3326a[u10.size()];
        for (int i10 = 0; i10 != u10.size(); i10++) {
            c3326aArr[i10] = C3326a.y(u10.H(i10));
        }
        return c3326aArr;
    }

    public C3326a[] b(C14549x c14549x) {
        G u10 = this.f23611a.u().u();
        if (u10 == null) {
            return f23610f;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 != u10.size(); i10++) {
            C3326a y10 = C3326a.y(u10.H(i10));
            if (y10.u().A(c14549x)) {
                arrayList.add(y10);
            }
        }
        return arrayList.size() == 0 ? f23610f : (C3326a[]) arrayList.toArray(new C3326a[arrayList.size()]);
    }

    public byte[] c() throws IOException {
        return this.f23611a.getEncoded();
    }

    public C13479C d() {
        C3326a[] a10 = a();
        for (int i10 = 0; i10 != a10.length; i10++) {
            C3326a c3326a = a10[i10];
            if (t.f29092d2.A(c3326a.u())) {
                C13480D c13480d = new C13480D();
                G v10 = c3326a.v();
                if (v10 == null || v10.size() == 0) {
                    throw new IllegalStateException("pkcs_9_at_extensionRequest present but has no value");
                }
                try {
                    Enumeration J10 = E.G(v10.H(0)).J();
                    while (J10.hasMoreElements()) {
                        E G10 = E.G(J10.nextElement());
                        boolean z10 = G10.size() == 3 && C14512e.G(G10.I(1)).J();
                        if (G10.size() == 2) {
                            c13480d.d(C14549x.K(G10.I(0)), false, AbstractC14551y.F(G10.I(1)).H());
                        } else {
                            if (G10.size() != 3) {
                                throw new IllegalStateException("incorrect sequence size of Extension get " + G10.size() + " expected 2 or three");
                            }
                            c13480d.d(C14549x.K(G10.I(0)), z10, AbstractC14551y.F(G10.I(2)).H());
                        }
                    }
                    return c13480d.e();
                } catch (IllegalArgumentException e10) {
                    throw org.bouncycastle.util.h.b("asn1 processing issue: " + e10.getMessage(), e10);
                }
            }
        }
        return null;
    }

    public byte[] e() {
        return this.f23611a.x().J();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            return n().equals(((e) obj).n());
        }
        return false;
    }

    public C13486b f() {
        return this.f23611a.y();
    }

    public C13228d h() {
        return C13228d.x(this.f23611a.u().x());
    }

    public int hashCode() {
        return n().hashCode();
    }

    public h0 i() {
        return this.f23611a.u().y();
    }

    public boolean j() {
        return this.f23612b;
    }

    public boolean k(InterfaceC3015h interfaceC3015h) throws PKCSException {
        if (!this.f23612b) {
            throw new IllegalStateException("no alternate public key present");
        }
        Xh.f u10 = this.f23611a.u();
        G u11 = u10.u();
        C14518h c14518h = new C14518h();
        Enumeration I10 = u11.I();
        while (I10.hasMoreElements()) {
            C3326a y10 = C3326a.y(I10.nextElement());
            if (!C13478B.f90527M.A(y10.u())) {
                c14518h.a(y10);
            }
        }
        Xh.f fVar = new Xh.f(u10.x(), u10.y(), new I0(c14518h));
        try {
            InterfaceC3014g a10 = interfaceC3015h.a(this.f23613c);
            OutputStream outputStream = a10.getOutputStream();
            outputStream.write(fVar.s(InterfaceC14520i.f98892a));
            outputStream.close();
            return a10.verify(this.f23615e.J());
        } catch (Exception e10) {
            throw new PKCSException("unable to process signature: " + e10.getMessage(), e10);
        }
    }

    public boolean l(InterfaceC3015h interfaceC3015h) throws PKCSException {
        Xh.f u10 = this.f23611a.u();
        try {
            InterfaceC3014g a10 = interfaceC3015h.a(this.f23611a.y());
            OutputStream outputStream = a10.getOutputStream();
            outputStream.write(u10.s(InterfaceC14520i.f98892a));
            outputStream.close();
            return a10.verify(e());
        } catch (Exception e10) {
            throw new PKCSException("unable to process signature: " + e10.getMessage(), e10);
        }
    }

    public C3330e n() {
        return this.f23611a;
    }

    public e(byte[] bArr) throws IOException {
        this(m(bArr));
    }
}
