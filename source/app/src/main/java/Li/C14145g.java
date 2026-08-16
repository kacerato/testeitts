package li;

import Qk.InterfaceC3014g;
import Qk.InterfaceC3015h;
import fi.C13228d;
import hi.C13478B;
import hi.C13479C;
import hi.C13481E;
import hi.C13482F;
import hi.C13486b;
import hi.C13488c;
import hi.C13490d;
import hi.L;
import hi.i0;
import hi.o0;
import hi.r;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Set;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14520i;
import org.bouncycastle.cert.CertException;
import org.bouncycastle.cert.CertIOException;

public class C14145g implements org.bouncycastle.util.g, Serializable {

    public static final long f96473f = 20170722001L;

    public transient r f96474b;

    public transient boolean f96475c;

    public transient C13479C f96476d;

    public transient C13482F f96477e;

    public C14145g(r rVar) {
        l(rVar);
    }

    public static boolean n(C13479C c13479c) {
        C13478B x10;
        return (c13479c == null || (x10 = c13479c.x(C13478B.f90541q)) == null || !L.y(x10.A()).B()) ? false : true;
    }

    public static r p(InputStream inputStream) throws IOException {
        try {
            B k10 = new oh.r(inputStream, true).k();
            if (k10 != null) {
                return r.u(k10);
            }
            throw new IOException("no content found");
        } catch (ClassCastException e10) {
            throw new CertIOException("malformed data: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw new CertIOException("malformed data: " + e11.getMessage(), e11);
        }
    }

    private void q(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        l(r.u(objectInputStream.readObject()));
    }

    private void s(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public Set a() {
        return C14141c.l(this.f96476d);
    }

    public C13478B b(C14549x c14549x) {
        C13479C c13479c = this.f96476d;
        if (c13479c != null) {
            return c13479c.x(c14549x);
        }
        return null;
    }

    public List c() {
        return C14141c.m(this.f96476d);
    }

    public C13479C d() {
        return this.f96476d;
    }

    public C13228d e() {
        return C13228d.x(this.f96474b.x());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C14145g) {
            return this.f96474b.equals(((C14145g) obj).f96474b);
        }
        return false;
    }

    public Date f() {
        o0 y10 = this.f96474b.y();
        if (y10 != null) {
            return y10.u();
        }
        return null;
    }

    public Set g() {
        return C14141c.n(this.f96476d);
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.f96474b.getEncoded();
    }

    public C14144f h(BigInteger bigInteger) {
        C13478B x10;
        C13482F c13482f = this.f96477e;
        Enumeration z10 = this.f96474b.z();
        while (z10.hasMoreElements()) {
            i0.b bVar = (i0.b) z10.nextElement();
            if (bVar.y().L(bigInteger)) {
                return new C14144f(bVar, this.f96475c, c13482f);
            }
            if (this.f96475c && bVar.z() && (x10 = bVar.u().x(C13478B.f90542r)) != null) {
                c13482f = C13482F.w(x10.A());
            }
        }
        return null;
    }

    public int hashCode() {
        return this.f96474b.hashCode();
    }

    public Collection i() {
        ArrayList arrayList = new ArrayList(this.f96474b.A().length);
        C13482F c13482f = this.f96477e;
        Enumeration z10 = this.f96474b.z();
        while (z10.hasMoreElements()) {
            C14144f c14144f = new C14144f((i0.b) z10.nextElement(), this.f96475c, c13482f);
            arrayList.add(c14144f);
            c13482f = c14144f.a();
        }
        return arrayList;
    }

    public Date j() {
        return this.f96474b.E().u();
    }

    public boolean k() {
        return this.f96476d != null;
    }

    public final void l(r rVar) {
        this.f96474b = rVar;
        C13479C u10 = rVar.D().u();
        this.f96476d = u10;
        this.f96475c = n(u10);
        this.f96477e = new C13482F(new C13481E(rVar.x()));
    }

    public boolean m(InterfaceC3015h interfaceC3015h) throws CertException {
        int i10;
        i0 D10 = this.f96474b.D();
        C13488c u10 = C13488c.u(D10.u());
        C13490d u11 = C13490d.u(D10.u());
        try {
            InterfaceC3014g a10 = interfaceC3015h.a(C13486b.v(u10.r()));
            OutputStream outputStream = a10.getOutputStream();
            E G10 = E.G(D10.r());
            C14518h c14518h = new C14518h();
            if (G10.I(0) instanceof C14539s) {
                c14518h.a(G10.I(0));
                i10 = 2;
            } else {
                i10 = 1;
            }
            while (i10 != G10.size() - 1) {
                c14518h.a(G10.I(i10));
                i10++;
            }
            c14518h.a(C14141c.r(0, D10.u()));
            new G0(c14518h).f(outputStream, InterfaceC14520i.f98892a);
            outputStream.close();
            return a10.verify(u11.x().J());
        } catch (Exception e10) {
            throw new CertException("unable to process signature: " + e10.getMessage(), e10);
        }
    }

    public boolean o(InterfaceC3015h interfaceC3015h) throws CertException {
        i0 D10 = this.f96474b.D();
        if (!C14141c.o(D10.B(), this.f96474b.C())) {
            throw new CertException("signature invalid - algorithm identifier mismatch");
        }
        try {
            InterfaceC3014g a10 = interfaceC3015h.a(D10.B());
            OutputStream outputStream = a10.getOutputStream();
            D10.f(outputStream, InterfaceC14520i.f98892a);
            outputStream.close();
            return a10.verify(this.f96474b.B().J());
        } catch (Exception e10) {
            throw new CertException("unable to process signature: " + e10.getMessage(), e10);
        }
    }

    public r r() {
        return this.f96474b;
    }

    public C14145g(InputStream inputStream) throws IOException {
        this(p(inputStream));
    }

    public C14145g(byte[] bArr) throws IOException {
        this(p(new ByteArrayInputStream(bArr)));
    }
}
