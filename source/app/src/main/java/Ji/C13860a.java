package ji;

import fi.C13226b;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14514f;
import oh.J;

public class C13860a extends AbstractC14545v implements InterfaceC14514f {

    public C13226b f93765b;

    public C13226b f93766c;

    public E f93767d;

    public C13860a(C13226b c13226b) {
        this.f93765b = c13226b;
    }

    public static C13860a v(Object obj) {
        if (obj == null || (obj instanceof C13860a)) {
            return (C13860a) obj;
        }
        if (obj instanceof J) {
            return new C13860a(C13226b.u(obj));
        }
        if (obj instanceof E) {
            return new C13860a((E) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    @Override
    public B r() {
        C13226b c13226b = this.f93765b;
        if (c13226b != null) {
            return c13226b.r();
        }
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f93766c);
        c14518h.a(this.f93767d);
        return new G0(c14518h);
    }

    public C13226b[] u() {
        C13226b[] c13226bArr = new C13226b[this.f93767d.size()];
        Enumeration J10 = this.f93767d.J();
        int i10 = 0;
        while (J10.hasMoreElements()) {
            c13226bArr[i10] = C13226b.u(J10.nextElement());
            i10++;
        }
        return c13226bArr;
    }

    public C13226b x() {
        return this.f93765b;
    }

    public C13226b y() {
        return this.f93766c;
    }

    public C13860a(C13226b c13226b, E e10) {
        this.f93766c = c13226b;
        this.f93767d = e10;
    }

    public C13860a(String str) {
        this(new C13226b(str));
    }

    public C13860a(E e10) {
        if (e10.size() != 2) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        if (e10.I(0) instanceof J) {
            this.f93766c = C13226b.u(e10.I(0));
            this.f93767d = E.G(e10.I(1));
        } else {
            throw new IllegalArgumentException("Bad object encountered: " + ((Object) e10.I(0).getClass()));
        }
    }
}
