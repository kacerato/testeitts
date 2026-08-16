package org.bouncycastle.tsp;

import Qk.p;
import Xh.t;
import ci.C4199j;
import fi.C13228d;
import hi.C13481E;
import hi.C13486b;
import hi.K;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collection;
import li.C14143e;
import li.C14145g;
import li.C14146h;
import oh.B;
import oh.InterfaceC14520i;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.K0;
import org.bouncycastle.cms.N0;
import org.bouncycastle.cms.O;
import org.bouncycastle.cms.P0;
import org.bouncycastle.cms.V;
import org.bouncycastle.operator.OperatorCreationException;
import uh.C15610a;
import uh.C15611b;
import uh.C15624o;
import uh.C15634z;

public class h {

    public O f102281a;

    public N0 f102282b;

    public j f102283c;

    public a f102284d;

    public static class a {

        public Dh.c f102285a;

        public Dh.d f102286b;

        public a(Dh.c cVar) {
            this.f102285a = cVar;
            this.f102286b = null;
        }

        public byte[] a() {
            Dh.c cVar = this.f102285a;
            return cVar != null ? cVar.u() : this.f102286b.u();
        }

        public C13486b b() {
            return this.f102285a != null ? new C13486b(Wh.b.f27785i) : this.f102286b.v();
        }

        public K c() {
            Dh.c cVar = this.f102285a;
            return cVar != null ? cVar.x() : this.f102286b.x();
        }

        public a(Dh.d dVar) {
            this.f102286b = dVar;
            this.f102285a = null;
        }
    }

    public h(O o10) throws TSPException, IOException {
        a aVar;
        this.f102281a = o10;
        if (!o10.j().equals(t.f29153z2.J())) {
            throw new TSPValidationException("ContentInfo object not for a time stamp.");
        }
        Collection<N0> b10 = this.f102281a.l().b();
        if (b10.size() != 1) {
            throw new IllegalArgumentException("Time-stamp token signed by " + b10.size() + " signers, but it must contain just the TSA signature.");
        }
        this.f102282b = b10.iterator().next();
        try {
            V i10 = this.f102281a.i();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            i10.b(byteArrayOutputStream);
            this.f102283c = new j(C4199j.y(B.B(byteArrayOutputStream.toByteArray())));
            C15610a d10 = this.f102282b.n().d(t.f29122l3);
            if (d10 != null) {
                aVar = new a(Dh.c.v(Dh.g.v(d10.v().H(0)).u()[0]));
            } else {
                C15610a d11 = this.f102282b.n().d(t.f29125n3);
                if (d11 == null) {
                    throw new TSPValidationException("no signing certificate attribute found, time stamp invalid.");
                }
                aVar = new a(Dh.d.w(Dh.h.v(d11.v().H(0)).u()[0]));
            }
            this.f102284d = aVar;
        } catch (CMSException e10) {
            throw new TSPException(e10.getMessage(), e10.getUnderlyingException());
        }
    }

    public static O h(C15624o c15624o) throws TSPException {
        try {
            return new O(c15624o);
        } catch (CMSException e10) {
            throw new TSPException("TSP parsing error: " + e10.getMessage(), e10.getCause());
        }
    }

    public org.bouncycastle.util.t<C14143e> a() {
        return this.f102281a.c();
    }

    public org.bouncycastle.util.t<C14145g> b() {
        return this.f102281a.d();
    }

    public org.bouncycastle.util.t<C14146h> c() {
        return this.f102281a.e();
    }

    public byte[] d() throws IOException {
        return this.f102281a.g(InterfaceC14520i.f98893b);
    }

    public byte[] e(String str) throws IOException {
        return this.f102281a.g(str);
    }

    public K0 f() {
        return this.f102282b.l();
    }

    public C15611b g() {
        return this.f102282b.n();
    }

    public j i() {
        return this.f102283c;
    }

    public C15611b j() {
        return this.f102282b.q();
    }

    public boolean k(P0 p02) throws TSPException {
        try {
            return this.f102282b.w(p02);
        } catch (CMSException e10) {
            if (e10.getUnderlyingException() != null) {
                throw new TSPException(e10.getMessage(), e10.getUnderlyingException());
            }
            throw new TSPException("CMS exception: " + ((Object) e10), e10);
        }
    }

    public O l() {
        return this.f102281a;
    }

    public void m(P0 p02) throws TSPException, TSPValidationException {
        if (!p02.d()) {
            throw new IllegalArgumentException("verifier provider needs an associated certificate");
        }
        try {
            C14146h a10 = p02.a();
            p c10 = p02.c(this.f102284d.b());
            OutputStream outputStream = c10.getOutputStream();
            outputStream.write(a10.getEncoded());
            outputStream.close();
            if (!org.bouncycastle.util.a.I(this.f102284d.a(), c10.b())) {
                throw new TSPValidationException("certificate hash does not match certID hash.");
            }
            if (this.f102284d.c() != null) {
                C15634z c15634z = new C15634z(a10.x());
                if (!this.f102284d.c().z().A(c15634z.x())) {
                    throw new TSPValidationException("certificate serial number does not match certID for signature.");
                }
                C13481E[] y10 = this.f102284d.c().x().y();
                for (int i10 = 0; i10 != y10.length; i10++) {
                    if (y10[i10].g() != 4 || !C13228d.x(y10[i10].x()).equals(C13228d.x(c15634z.v()))) {
                    }
                }
                throw new TSPValidationException("certificate name does not match certID for signature. ");
            }
            c.e(a10);
            if (!a10.u(this.f102283c.d())) {
                throw new TSPValidationException("certificate not valid when time stamp created.");
            }
            if (!this.f102282b.w(p02)) {
                throw new TSPValidationException("signature not created by certificate.");
            }
        } catch (IOException e10) {
            throw new TSPException("problem processing certificate: " + ((Object) e10), e10);
        } catch (CMSException e11) {
            if (e11.getUnderlyingException() != null) {
                throw new TSPException(e11.getMessage(), e11.getUnderlyingException());
            }
            throw new TSPException("CMS exception: " + ((Object) e11), e11);
        } catch (OperatorCreationException e12) {
            throw new TSPException("unable to create digest: " + e12.getMessage(), e12);
        }
    }

    public h(C15624o c15624o) throws TSPException, IOException {
        this(h(c15624o));
    }
}
