package oi;

import Qk.InterfaceC3014g;
import Qk.InterfaceC3015h;
import java.io.IOException;
import oh.AbstractC14545v;
import oh.C14539s;
import oh.C14549x;
import oh.Q;
import org.bouncycastle.cert.CertIOException;
import org.bouncycastle.cert.crmf.CRMFException;
import org.bouncycastle.operator.OperatorCreationException;
import wh.C16003a;
import wh.InterfaceC16004b;

public class C14561g implements org.bouncycastle.util.g {

    public static final int f99013d = 0;

    public static final int f99014e = 1;

    public static final int f99015f = 2;

    public static final int f99016g = 3;

    public final wh.e f99017b;

    public final wh.i f99018c;

    public C14561g(wh.e eVar) {
        this.f99017b = eVar;
        this.f99018c = eVar.v().x();
    }

    public static wh.e l(byte[] bArr) throws IOException {
        try {
            return wh.e.w(bArr);
        } catch (ClassCastException e10) {
            throw new CertIOException("malformed data: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw new CertIOException("malformed data: " + e11.getMessage(), e11);
        }
    }

    public final C16003a a(C14549x c14549x) {
        wh.i iVar = this.f99018c;
        if (iVar == null) {
            return null;
        }
        C16003a[] v10 = iVar.v();
        for (int i10 = 0; i10 != v10.length; i10++) {
            if (v10[i10].v().A(c14549x)) {
                return v10[i10];
            }
        }
        return null;
    }

    public C14539s b() {
        return this.f99017b.v().u();
    }

    public wh.g c() {
        return this.f99017b.v().v();
    }

    public InterfaceC14565k d(C14549x c14549x) {
        C16003a a10 = a(c14549x);
        if (a10 == null) {
            return null;
        }
        if (a10.v().A(InterfaceC16004b.f127480g)) {
            return new C14569o(wh.o.u(a10.x()));
        }
        if (a10.v().A(InterfaceC16004b.f127477d)) {
            return new C14576v(Q.F(a10.x()));
        }
        if (a10.v().A(InterfaceC16004b.f127478e)) {
            return new C14555a(Q.F(a10.x()));
        }
        return null;
    }

    public int e() {
        return this.f99017b.y().x();
    }

    public boolean f(C14549x c14549x) {
        return a(c14549x) != null;
    }

    public boolean g() {
        return this.f99018c != null;
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.f99017b.getEncoded();
    }

    public boolean h() {
        return this.f99017b.y() != null;
    }

    public boolean i() {
        wh.u y10 = this.f99017b.y();
        return y10.x() == 1 && wh.s.v(y10.v()).x().x() != null;
    }

    public boolean j(InterfaceC3015h interfaceC3015h) throws CRMFException, IllegalStateException {
        wh.u y10 = this.f99017b.y();
        if (y10.x() != 1) {
            throw new IllegalStateException("not Signing Key type of proof of possession");
        }
        wh.s v10 = wh.s.v(y10.v());
        if (v10.x() == null || v10.x().x() == null) {
            return n(interfaceC3015h, v10);
        }
        throw new IllegalStateException("verification requires password check");
    }

    public boolean k(InterfaceC3015h interfaceC3015h, C14571q c14571q, char[] cArr) throws CRMFException, IllegalStateException {
        wh.u y10 = this.f99017b.y();
        if (y10.x() != 1) {
            throw new IllegalStateException("not Signing Key type of proof of possession");
        }
        wh.s v10 = wh.s.v(y10.v());
        if (v10.x() == null || v10.x().y() != null) {
            throw new IllegalStateException("no PKMAC present in proof of possession");
        }
        return new C14573s(c14571q).a(v10.x().x(), cArr, c().z()) && n(interfaceC3015h, v10);
    }

    public wh.e m() {
        return this.f99017b;
    }

    public final boolean n(InterfaceC3015h interfaceC3015h, wh.s sVar) throws CRMFException {
        try {
            InterfaceC3014g a10 = interfaceC3015h.a(sVar.u());
            AbstractC14545v x10 = sVar.x();
            if (x10 == null) {
                x10 = this.f99017b.v();
            }
            C14556b.b(x10, a10.getOutputStream());
            return a10.verify(sVar.y().J());
        } catch (OperatorCreationException e10) {
            throw new CRMFException("unable to create verifier: " + e10.getMessage(), e10);
        }
    }

    public C14561g(byte[] bArr) throws IOException {
        this(l(bArr));
    }
}
