package th;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.M0;

public class F extends AbstractC14545v {

    public oh.E f117474b;

    public F(String str) {
        this(new M0(str));
    }

    public static F u(Object obj) {
        if (obj instanceof F) {
            return (F) obj;
        }
        if (obj != null) {
            return new F(oh.E.G(obj));
        }
        return null;
    }

    public static F v(oh.M m10, boolean z10) {
        return u(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        return this.f117474b;
    }

    public int size() {
        return this.f117474b.size();
    }

    public M0 w(int i10) {
        oh.Q x10 = x(i10);
        return (x10 == null || (x10 instanceof M0)) ? (M0) x10 : new M0(x10.getString());
    }

    public oh.Q x(int i10) {
        return (oh.Q) this.f117474b.I(i10);
    }

    public F(oh.E e10) {
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            if (!(J10.nextElement() instanceof oh.Q)) {
                throw new IllegalArgumentException("attempt to insert non UTF8 STRING into PKIFreeText");
            }
        }
        this.f117474b = e10;
    }

    public F(oh.Q q10) {
        this.f117474b = new G0(q10);
    }

    public F(String[] strArr) {
        C14518h c14518h = new C14518h(strArr.length);
        for (String str : strArr) {
            c14518h.a(new M0(str));
        }
        this.f117474b = new G0(c14518h);
    }

    public F(oh.Q[] qArr) {
        this.f117474b = new G0(qArr);
    }
}
