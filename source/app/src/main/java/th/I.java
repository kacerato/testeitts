package th;

import java.util.Enumeration;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class I extends AbstractC14545v {

    public final G f117503b;

    public final C f117504c;

    public final AbstractC14508c f117505d;

    public final oh.E f117506e;

    public I(oh.E e10) {
        Enumeration J10 = e10.J();
        this.f117503b = G.y(J10.nextElement());
        if (!J10.hasMoreElements()) {
            throw new IllegalArgumentException("PKIMessage missing PKIBody structure");
        }
        this.f117504c = C.w(J10.nextElement());
        AbstractC14508c abstractC14508c = null;
        oh.E e11 = null;
        while (J10.hasMoreElements()) {
            oh.M m10 = (oh.M) J10.nextElement();
            if (m10.g() == 0) {
                abstractC14508c = AbstractC14508c.I(m10, true);
            } else {
                e11 = oh.E.H(m10, true);
            }
        }
        this.f117505d = abstractC14508c;
        this.f117506e = e11;
    }

    private void u(C14518h c14518h, int i10, InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g != null) {
            c14518h.a(new K0(true, i10, interfaceC14516g));
        }
    }

    public static I z(Object obj) {
        if (obj instanceof I) {
            return (I) obj;
        }
        if (obj != null) {
            return new I(oh.E.G(obj));
        }
        return null;
    }

    public AbstractC14508c A() {
        return this.f117505d;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f117503b);
        c14518h.a(this.f117504c);
        u(c14518h, 0, this.f117505d);
        u(c14518h, 1, this.f117506e);
        return new G0(c14518h);
    }

    public C v() {
        return this.f117504c;
    }

    public C15426b[] x() {
        oh.E e10 = this.f117506e;
        if (e10 == null) {
            return null;
        }
        int size = e10.size();
        C15426b[] c15426bArr = new C15426b[size];
        for (int i10 = 0; i10 < size; i10++) {
            c15426bArr[i10] = C15426b.u(this.f117506e.I(i10));
        }
        return c15426bArr;
    }

    public G y() {
        return this.f117503b;
    }

    public I(G g10, C c10) {
        this(g10, c10, null, null);
    }

    public I(G g10, C c10, AbstractC14508c abstractC14508c) {
        this(g10, c10, abstractC14508c, null);
    }

    public I(G g10, C c10, AbstractC14508c abstractC14508c, C15426b[] c15426bArr) {
        this.f117503b = g10;
        this.f117504c = c10;
        this.f117505d = abstractC14508c;
        this.f117506e = c15426bArr != null ? new G0(c15426bArr) : null;
    }
}
