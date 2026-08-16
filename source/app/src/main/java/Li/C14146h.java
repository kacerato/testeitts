package li;

import Qk.InterfaceC3014g;
import Qk.InterfaceC3015h;
import fi.C13228d;
import hi.C13478B;
import hi.C13479C;
import hi.C13486b;
import hi.C13488c;
import hi.C13490d;
import hi.C13505q;
import hi.h0;
import hi.j0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;
import java.util.List;
import java.util.Set;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14520i;
import org.bouncycastle.cert.CertException;
import org.bouncycastle.cert.CertIOException;

public class C14146h implements org.bouncycastle.util.g, Serializable {

    public static final long f96478d = 20170722001L;

    public transient C13505q f96479b;

    public transient C13479C f96480c;

    public C14146h(C13505q c13505q) {
        q(c13505q);
    }

    public static C13505q v(byte[] bArr) throws IOException {
        try {
            return C13505q.v(C14141c.p(bArr));
        } catch (ClassCastException e10) {
            throw new CertIOException("malformed data: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw new CertIOException("malformed data: " + e11.getMessage(), e11);
        }
    }

    private void w(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        q(C13505q.v(objectInputStream.readObject()));
    }

    private void y(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public Set a() {
        return C14141c.l(this.f96480c);
    }

    public C13478B b(C14549x c14549x) {
        C13479C c13479c = this.f96480c;
        if (c13479c != null) {
            return c13479c.x(c14549x);
        }
        return null;
    }

    public List c() {
        return C14141c.m(this.f96480c);
    }

    public C13479C d() {
        return this.f96480c;
    }

    public C13228d e() {
        return C13228d.x(this.f96479b.x());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C14146h) {
            return this.f96479b.equals(((C14146h) obj).f96479b);
        }
        return false;
    }

    public Set f() {
        return C14141c.n(this.f96480c);
    }

    public Date g() {
        return this.f96479b.u().u();
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.f96479b.getEncoded();
    }

    public Date h() {
        return this.f96479b.B().u();
    }

    public int hashCode() {
        return this.f96479b.hashCode();
    }

    public BigInteger i() {
        return this.f96479b.y().I();
    }

    public byte[] j() {
        return this.f96479b.z().J();
    }

    public C13486b k() {
        return this.f96479b.A();
    }

    public C13228d l() {
        return C13228d.x(this.f96479b.C());
    }

    public h0 m() {
        return this.f96479b.D();
    }

    public int n() {
        return this.f96479b.G();
    }

    public int o() {
        return this.f96479b.G();
    }

    public boolean p() {
        return this.f96480c != null;
    }

    public final void q(C13505q c13505q) {
        this.f96479b = c13505q;
        this.f96480c = c13505q.E().v();
    }

    public boolean r(InterfaceC3015h interfaceC3015h) throws CertException {
        j0 E10 = this.f96479b.E();
        C13488c u10 = C13488c.u(E10.v());
        C13490d u11 = C13490d.u(E10.v());
        try {
            InterfaceC3014g a10 = interfaceC3015h.a(C13486b.v(u10.r()));
            OutputStream outputStream = a10.getOutputStream();
            E G10 = E.G(E10.r());
            C14518h c14518h = new C14518h();
            for (int i10 = 0; i10 != G10.size() - 1; i10++) {
                if (i10 != 2) {
                    c14518h.a(G10.I(i10));
                }
            }
            c14518h.a(C14141c.r(3, E10.v()));
            new G0(c14518h).f(outputStream, InterfaceC14520i.f98892a);
            outputStream.close();
            return a10.verify(u11.x().J());
        } catch (Exception e10) {
            throw new CertException("unable to process signature: " + e10.getMessage(), e10);
        }
    }

    public boolean s(InterfaceC3015h interfaceC3015h) throws CertException {
        j0 E10 = this.f96479b.E();
        if (!C14141c.o(E10.B(), this.f96479b.A())) {
            throw new CertException("signature invalid - algorithm identifier mismatch");
        }
        try {
            InterfaceC3014g a10 = interfaceC3015h.a(E10.B());
            OutputStream outputStream = a10.getOutputStream();
            E10.f(outputStream, InterfaceC14520i.f98892a);
            outputStream.close();
            return a10.verify(j());
        } catch (Exception e10) {
            throw new CertException("unable to process signature: " + e10.getMessage(), e10);
        }
    }

    public boolean u(Date date) {
        return (date.before(this.f96479b.B().u()) || date.after(this.f96479b.u().u())) ? false : true;
    }

    public C13505q x() {
        return this.f96479b;
    }

    public C14146h(byte[] bArr) throws IOException {
        this(v(bArr));
    }
}
