package li;

import Qk.InterfaceC3014g;
import Qk.InterfaceC3015h;
import hi.C13478B;
import hi.C13479C;
import hi.C13486b;
import hi.C13494f;
import hi.C13495g;
import hi.C13496h;
import hi.C13497i;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14520i;
import org.bouncycastle.cert.CertException;
import org.bouncycastle.cert.CertIOException;

public class C14143e implements org.bouncycastle.util.g, Serializable {

    public static final long f96467d = 20170722001L;

    public static C13495g[] f96468e = new C13495g[0];

    public transient C13496h f96469b;

    public transient C13479C f96470c;

    public C14143e(C13496h c13496h) {
        r(c13496h);
    }

    public static C13496h v(byte[] bArr) throws IOException {
        try {
            return C13496h.v(C14141c.p(bArr));
        } catch (ClassCastException e10) {
            throw new CertIOException("malformed data: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw new CertIOException("malformed data: " + e11.getMessage(), e11);
        }
    }

    public C13495g[] a() {
        E v10 = this.f96469b.u().v();
        C13495g[] c13495gArr = new C13495g[v10.size()];
        for (int i10 = 0; i10 != v10.size(); i10++) {
            c13495gArr[i10] = C13495g.y(v10.I(i10));
        }
        return c13495gArr;
    }

    public C13495g[] b(C14549x c14549x) {
        E v10 = this.f96469b.u().v();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 != v10.size(); i10++) {
            C13495g y10 = C13495g.y(v10.I(i10));
            if (y10.u().A(c14549x)) {
                arrayList.add(y10);
            }
        }
        return arrayList.size() == 0 ? f96468e : (C13495g[]) arrayList.toArray(new C13495g[arrayList.size()]);
    }

    public Set c() {
        return C14141c.l(this.f96470c);
    }

    public C13478B d(C14549x c14549x) {
        C13479C c13479c = this.f96470c;
        if (c13479c != null) {
            return c13479c.x(c14549x);
        }
        return null;
    }

    public List e() {
        return C14141c.m(this.f96470c);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C14143e) {
            return this.f96469b.equals(((C14143e) obj).f96469b);
        }
        return false;
    }

    public C13479C f() {
        return this.f96470c;
    }

    public C14139a g() {
        return new C14139a((E) this.f96469b.u().y().r());
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.f96469b.getEncoded();
    }

    public C14140b h() {
        return new C14140b(this.f96469b.u().B());
    }

    public int hashCode() {
        return this.f96469b.hashCode();
    }

    public boolean[] i() {
        return C14141c.b(this.f96469b.u().C());
    }

    public Set j() {
        return C14141c.n(this.f96470c);
    }

    public Date k() {
        return C14141c.q(this.f96469b.u().u().v());
    }

    public Date l() {
        return C14141c.q(this.f96469b.u().u().x());
    }

    public BigInteger m() {
        return this.f96469b.u().D().I();
    }

    public byte[] n() {
        return this.f96469b.y().J();
    }

    public C13486b o() {
        return this.f96469b.x();
    }

    public int p() {
        return this.f96469b.u().F().O() + 1;
    }

    public boolean q() {
        return this.f96470c != null;
    }

    public final void r(C13496h c13496h) {
        this.f96469b = c13496h;
        this.f96470c = c13496h.u().x();
    }

    public boolean s(InterfaceC3015h interfaceC3015h) throws CertException {
        C13497i u10 = this.f96469b.u();
        if (!C14141c.o(u10.E(), this.f96469b.x())) {
            throw new CertException("signature invalid - algorithm identifier mismatch");
        }
        try {
            InterfaceC3014g a10 = interfaceC3015h.a(u10.E());
            OutputStream outputStream = a10.getOutputStream();
            u10.f(outputStream, InterfaceC14520i.f98892a);
            outputStream.close();
            return a10.verify(n());
        } catch (Exception e10) {
            throw new CertException("unable to process signature: " + e10.getMessage(), e10);
        }
    }

    public boolean u(Date date) {
        C13494f u10 = this.f96469b.u().u();
        return (date.before(C14141c.q(u10.x())) || date.after(C14141c.q(u10.v()))) ? false : true;
    }

    public final void w(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        r(C13496h.v(objectInputStream.readObject()));
    }

    public C13496h x() {
        return this.f96469b;
    }

    public final void y(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public C14143e(byte[] bArr) throws IOException {
        this(v(bArr));
    }
}
