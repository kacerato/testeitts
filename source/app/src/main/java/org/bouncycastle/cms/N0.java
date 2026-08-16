package org.bouncycastle.cms;

import Qk.InterfaceC3014g;
import android.security.keystore.KeyProperties;
import fm.C13262f;
import hi.C13486b;
import hi.C13510w;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.operator.OperatorCreationException;
import uh.C15610a;
import uh.C15611b;
import uh.C15618i;
import uh.C15634z;
import uh.InterfaceC15619j;

public class N0 {

    public final K0 f100561a;

    public final F f100562b;

    public final byte[] f100563c;

    public final C14549x f100564d;

    public final boolean f100565e;

    public C15611b f100566f;

    public C15611b f100567g;

    public byte[] f100568h;

    public final uh.Y f100569i;

    public final C13486b f100570j;

    public final C13486b f100571k;

    public final oh.G f100572l;

    public final oh.G f100573m;

    public N0(N0 n02) {
        this(n02, n02.f100569i);
    }

    public static N0 a(N0 n02, O0 o02) {
        uh.Y y10 = n02.f100569i;
        C15611b q10 = n02.q();
        C14518h h10 = q10 != null ? q10.h() : new C14518h();
        C14518h c14518h = new C14518h();
        Iterator<N0> it = o02.b().iterator();
        while (it.hasNext()) {
            c14518h.a(it.next().u());
        }
        h10.a(new C15610a(InterfaceC15619j.f120690d, new oh.I0(c14518h)));
        return new N0(new uh.Y(y10.A(), y10.v(), y10.u(), y10.x(), y10.y(), new oh.I0(h10)), n02.f100564d, n02.f100562b, null);
    }

    public static N0 t(N0 n02, C15611b c15611b) {
        uh.Y y10 = n02.f100569i;
        return new N0(new uh.Y(y10.A(), y10.v(), y10.u(), y10.x(), y10.y(), c15611b != null ? new oh.I0(c15611b.h()) : null), n02.f100564d, n02.f100562b, null);
    }

    public static C13486b v(C13486b c13486b, C13486b c13486b2) {
        return (Xh.t.f29017H0.A(c13486b.u()) && (Wh.b.f27787k.A(c13486b2.u()) || Xh.t.f29030L0.A(c13486b2.u()))) ? new C13486b(Wh.b.f27785i, oh.A0.f98776c) : c13486b2;
    }

    public final void A() throws CMSException {
        oh.B p10 = p(InterfaceC15619j.f120688b, "message-digest");
        if (p10 == null) {
            if (this.f100572l != null) {
                throw new CMSException("the message-digest signed attribute type MUST be present when there are any signed attributes present");
            }
        } else {
            if (!(p10 instanceof AbstractC14551y)) {
                throw new CMSException("message-digest attribute value not of ASN.1 type 'OCTET STRING'");
            }
            if (!org.bouncycastle.util.a.I(this.f100568h, ((AbstractC14551y) p10).H())) {
                throw new CMSSignerDigestMismatchException("message-digest attribute value does not match calculated value");
            }
        }
    }

    public final boolean b(P0 p02) throws CMSException {
        String f10 = U.f100642a.f(j());
        C13486b v10 = this.f100572l != null ? this.f100569i.v() : v(this.f100571k, this.f100569i.v());
        try {
            InterfaceC3014g b10 = p02.b(this.f100571k, v10);
            try {
                OutputStream outputStream = b10.getOutputStream();
                if (this.f100568h == null) {
                    Qk.p c10 = p02.c(v10);
                    if (this.f100562b != null) {
                        OutputStream outputStream2 = c10.getOutputStream();
                        if (this.f100572l != null) {
                            this.f100562b.b(outputStream2);
                            outputStream.write(i());
                        } else if (b10 instanceof Qk.H) {
                            this.f100562b.b(outputStream2);
                        } else {
                            C13262f c13262f = new C13262f(outputStream2, outputStream);
                            this.f100562b.b(c13262f);
                            c13262f.close();
                        }
                        outputStream2.close();
                    } else {
                        if (this.f100572l == null) {
                            throw new CMSException("data not encapsulated in signature - use detached constructor.");
                        }
                        outputStream.write(i());
                    }
                    this.f100568h = c10.b();
                } else if (this.f100572l == null) {
                    F f11 = this.f100562b;
                    if (f11 != null) {
                        f11.b(outputStream);
                    }
                } else {
                    outputStream.write(i());
                }
                outputStream.close();
                y();
                C15611b n10 = n();
                x(n10);
                A();
                z(n10);
                try {
                    if (this.f100572l != null || this.f100568h == null || !(b10 instanceof Qk.H)) {
                        return b10.verify(m());
                    }
                    Qk.H h10 = (Qk.H) b10;
                    return f10.equals(KeyProperties.KEY_ALGORITHM_RSA) ? h10.b(new C13510w(new C13486b(v10.u(), oh.A0.f98776c), this.f100568h).s(InterfaceC14520i.f98892a), m()) : h10.b(this.f100568h, m());
                } catch (IOException e10) {
                    throw new CMSException("can't process mime object to create signature.", e10);
                }
            } catch (IOException e11) {
                throw new CMSException("can't process mime object to create signature.", e11);
            } catch (OperatorCreationException e12) {
                throw new CMSException("can't create digest calculator: " + e12.getMessage(), e12);
            }
        } catch (OperatorCreationException e13) {
            throw new CMSException("can't create content verifier: " + e13.getMessage(), e13);
        }
    }

    public byte[] c() {
        byte[] bArr = this.f100568h;
        if (bArr != null) {
            return org.bouncycastle.util.a.p(bArr);
        }
        throw new IllegalStateException("method can only be called after verify.");
    }

    public C14549x d() {
        return this.f100564d;
    }

    public O0 e() {
        C15611b q10 = q();
        if (q10 == null) {
            return new O0(new ArrayList(0));
        }
        ArrayList arrayList = new ArrayList();
        C14518h e10 = q10.e(InterfaceC15619j.f120690d);
        for (int i10 = 0; i10 < e10.i(); i10++) {
            oh.G v10 = ((C15610a) e10.g(i10)).v();
            v10.size();
            Enumeration I10 = v10.I();
            while (I10.hasMoreElements()) {
                arrayList.add(new N0(uh.Y.z(I10.nextElement()), null, new G(m()), null));
            }
        }
        return new O0(arrayList);
    }

    public String f() {
        return this.f100570j.u().J();
    }

    public byte[] g() {
        try {
            return X.l(this.f100570j.x());
        } catch (Exception e10) {
            throw new RuntimeException("exception getting digest parameters " + ((Object) e10));
        }
    }

    public C13486b h() {
        return this.f100570j;
    }

    public byte[] i() throws IOException {
        oh.G g10 = this.f100572l;
        if (g10 != null) {
            return g10.s(InterfaceC14520i.f98892a);
        }
        return null;
    }

    public String j() {
        return this.f100571k.u().J();
    }

    public byte[] k() {
        try {
            return X.l(this.f100571k.x());
        } catch (Exception e10) {
            throw new RuntimeException("exception getting encryption parameters " + ((Object) e10));
        }
    }

    public K0 l() {
        return this.f100561a;
    }

    public byte[] m() {
        return org.bouncycastle.util.a.p(this.f100563c);
    }

    public C15611b n() {
        oh.G g10 = this.f100572l;
        if (g10 != null && this.f100566f == null) {
            this.f100566f = new C15611b(g10);
        }
        return this.f100566f;
    }

    public final uh.Z o() throws CMSException {
        oh.B p10 = p(InterfaceC15619j.f120689c, "signing-time");
        if (p10 == null) {
            return null;
        }
        try {
            return uh.Z.v(p10);
        } catch (IllegalArgumentException unused) {
            throw new CMSException("signing-time attribute value not a valid 'Time' structure");
        }
    }

    public final oh.B p(C14549x c14549x, String str) throws CMSException {
        C14518h e10;
        int i10;
        C15611b q10 = q();
        if (q10 != null && q10.e(c14549x).i() > 0) {
            throw new CMSException("The " + str + " attribute MUST NOT be an unsigned attribute");
        }
        C15611b n10 = n();
        if (n10 == null || (i10 = (e10 = n10.e(c14549x)).i()) == 0) {
            return null;
        }
        if (i10 != 1) {
            throw new CMSException("The SignedAttributes in a signerInfo MUST NOT include multiple instances of the " + str + " attribute");
        }
        oh.G v10 = ((C15610a) e10.g(0)).v();
        if (v10.size() == 1) {
            return v10.H(0).r();
        }
        throw new CMSException("A " + str + " attribute MUST have a single attribute value");
    }

    public C15611b q() {
        oh.G g10 = this.f100573m;
        if (g10 != null && this.f100567g == null) {
            this.f100567g = new C15611b(g10);
        }
        return this.f100567g;
    }

    public int r() {
        return this.f100569i.C().O();
    }

    public boolean s() {
        return this.f100565e;
    }

    public uh.Y u() {
        return this.f100569i;
    }

    public boolean w(P0 p02) throws CMSException {
        uh.Z o10 = o();
        if (!p02.d() || o10 == null || p02.a().u(o10.u())) {
            return b(p02);
        }
        throw new CMSVerifierCertificateNotValidException("verifier not valid at signingTime");
    }

    public final void x(C15611b c15611b) throws CMSException {
        C15611b q10 = q();
        if (q10 != null && q10.e(InterfaceC15619j.f120693g).i() > 0) {
            throw new CMSException("A cmsAlgorithmProtect attribute MUST be a signed attribute");
        }
        if (c15611b != null) {
            C14518h e10 = c15611b.e(InterfaceC15619j.f120693g);
            if (e10.i() > 1) {
                throw new CMSException("Only one instance of a cmsAlgorithmProtect attribute can be present");
            }
            if (e10.i() > 0) {
                C15610a y10 = C15610a.y(e10.g(0));
                if (y10.v().size() != 1) {
                    throw new CMSException("A cmsAlgorithmProtect attribute MUST contain exactly one value");
                }
                C15618i v10 = C15618i.v(y10.x()[0]);
                if (!X.A(v10.u(), this.f100569i.v())) {
                    throw new CMSException("CMS Algorithm Identifier Protection check failed for digestAlgorithm");
                }
                if (!X.A(v10.y(), this.f100569i.x())) {
                    throw new CMSException("CMS Algorithm Identifier Protection check failed for signatureAlgorithm");
                }
            }
        }
    }

    public final void y() throws CMSException {
        oh.B p10 = p(InterfaceC15619j.f120687a, "content-type");
        if (p10 == null) {
            if (!this.f100565e && this.f100572l != null) {
                throw new CMSException("The content-type attribute type MUST be present whenever signed attributes are present in signed-data");
            }
        } else {
            if (this.f100565e) {
                throw new CMSException("[For counter signatures,] the signedAttributes field MUST NOT contain a content-type attribute");
            }
            if (!(p10 instanceof C14549x)) {
                throw new CMSException("content-type attribute value not of ASN.1 type 'OBJECT IDENTIFIER'");
            }
            if (!((C14549x) p10).A(this.f100564d)) {
                throw new CMSException("content-type attribute value does not match eContentType");
            }
        }
    }

    public final void z(C15611b c15611b) throws CMSException {
        if (c15611b != null && c15611b.e(InterfaceC15619j.f120690d).i() > 0) {
            throw new CMSException("A countersignature attribute MUST NOT be a signed attribute");
        }
        C15611b q10 = q();
        if (q10 != null) {
            C14518h e10 = q10.e(InterfaceC15619j.f120690d);
            for (int i10 = 0; i10 < e10.i(); i10++) {
                if (C15610a.y(e10.g(i10)).v().size() < 1) {
                    throw new CMSException("A countersignature attribute MUST contain at least one AttributeValue");
                }
            }
        }
    }

    public N0(N0 n02, uh.Y y10) {
        this.f100569i = y10;
        this.f100564d = n02.f100564d;
        this.f100565e = n02.s();
        this.f100561a = n02.l();
        this.f100570j = y10.v();
        this.f100572l = y10.u();
        this.f100573m = y10.B();
        this.f100571k = y10.x();
        this.f100563c = y10.y().H();
        this.f100562b = n02.f100562b;
        this.f100568h = n02.f100568h;
        this.f100566f = n();
        this.f100567g = q();
    }

    public N0(uh.Y y10, C14549x c14549x, F f10, byte[] bArr) {
        K0 k02;
        this.f100569i = y10;
        this.f100564d = c14549x;
        this.f100565e = c14549x == null;
        uh.X A10 = y10.A();
        boolean x10 = A10.x();
        InterfaceC14516g u10 = A10.u();
        if (x10) {
            k02 = new K0(AbstractC14551y.F(u10).H());
        } else {
            C15634z u11 = C15634z.u(u10);
            k02 = new K0(u11.v(), u11.x().I());
        }
        this.f100561a = k02;
        this.f100570j = y10.v();
        this.f100572l = y10.u();
        this.f100573m = y10.B();
        this.f100571k = y10.x();
        this.f100563c = y10.y().H();
        this.f100562b = f10;
        this.f100568h = bArr;
    }
}
