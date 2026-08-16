package hi;

import java.io.IOException;
import java.util.Enumeration;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14538r0;
import oh.G0;
import oh.InterfaceC14516g;

public class h0 extends AbstractC14545v {

    public C13486b f90798b;

    public AbstractC14508c f90799c;

    public h0(C13486b c13486b, AbstractC14508c abstractC14508c) {
        this.f90799c = abstractC14508c;
        this.f90798b = c13486b;
    }

    public static h0 w(Object obj) {
        if (obj instanceof h0) {
            return (h0) obj;
        }
        if (obj != null) {
            return new h0(oh.E.G(obj));
        }
        return null;
    }

    public static h0 x(oh.M m10, boolean z10) {
        return w(oh.E.H(m10, z10));
    }

    public oh.B A() throws IOException {
        return oh.B.B(this.f90799c.J());
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f90798b);
        c14518h.a(this.f90799c);
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f90798b;
    }

    public C13486b v() {
        return this.f90798b;
    }

    public oh.B y() throws IOException {
        return oh.B.B(this.f90799c.J());
    }

    public AbstractC14508c z() {
        return this.f90799c;
    }

    public h0(C13486b c13486b, InterfaceC14516g interfaceC14516g) throws IOException {
        this.f90799c = new C14538r0(interfaceC14516g);
        this.f90798b = c13486b;
    }

    public h0(C13486b c13486b, byte[] bArr) {
        this.f90799c = new C14538r0(bArr);
        this.f90798b = c13486b;
    }

    public h0(oh.E e10) {
        if (e10.size() == 2) {
            Enumeration J10 = e10.J();
            this.f90798b = C13486b.v(J10.nextElement());
            this.f90799c = AbstractC14508c.H(J10.nextElement());
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }
}
