package hi;

import fi.C13228d;
import java.util.Enumeration;
import java.util.NoSuchElementException;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14530n;
import oh.C14539s;
import oh.G0;
import oh.K0;

public class i0 extends AbstractC14545v {

    public C14539s f90809b;

    public C13486b f90810c;

    public C13228d f90811d;

    public o0 f90812e;

    public o0 f90813f;

    public oh.E f90814g;

    public C13479C f90815h;

    public static class b extends AbstractC14545v {

        public oh.E f90816b;

        public C13479C f90817c;

        public b(oh.E e10) {
            if (e10.size() >= 2 && e10.size() <= 3) {
                this.f90816b = e10;
                return;
            }
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }

        public static b v(Object obj) {
            if (obj instanceof b) {
                return (b) obj;
            }
            if (obj != null) {
                return new b(oh.E.G(obj));
            }
            return null;
        }

        @Override
        public oh.B r() {
            return this.f90816b;
        }

        public C13479C u() {
            if (this.f90817c == null && this.f90816b.size() == 3) {
                this.f90817c = C13479C.C(this.f90816b.I(2));
            }
            return this.f90817c;
        }

        public o0 x() {
            return o0.v(this.f90816b.I(1));
        }

        public C14539s y() {
            return C14539s.F(this.f90816b.I(0));
        }

        public boolean z() {
            return this.f90816b.size() == 3;
        }
    }

    public static class c implements Enumeration {
        public c() {
        }

        @Override
        public boolean hasMoreElements() {
            return false;
        }

        @Override
        public Object nextElement() {
            throw new NoSuchElementException("Empty Enumeration");
        }
    }

    public static class d implements Enumeration {

        public final Enumeration f90818a;

        public d(Enumeration enumeration) {
            this.f90818a = enumeration;
        }

        @Override
        public boolean hasMoreElements() {
            return this.f90818a.hasMoreElements();
        }

        @Override
        public Object nextElement() {
            return b.v(this.f90818a.nextElement());
        }
    }

    public i0(oh.E e10) {
        if (e10.size() < 3 || e10.size() > 7) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        int i10 = 0;
        if (e10.I(0) instanceof C14539s) {
            this.f90809b = C14539s.F(e10.I(0));
            i10 = 1;
        } else {
            this.f90809b = null;
        }
        this.f90810c = C13486b.v(e10.I(i10));
        this.f90811d = C13228d.x(e10.I(i10 + 1));
        int i11 = i10 + 3;
        this.f90812e = o0.v(e10.I(i10 + 2));
        if (i11 < e10.size() && ((e10.I(i11) instanceof oh.P) || (e10.I(i11) instanceof C14530n) || (e10.I(i11) instanceof o0))) {
            this.f90813f = o0.v(e10.I(i11));
            i11 = i10 + 4;
        }
        if (i11 < e10.size() && !(e10.I(i11) instanceof oh.M)) {
            this.f90814g = oh.E.G(e10.I(i11));
            i11++;
        }
        if (i11 >= e10.size() || !(e10.I(i11) instanceof oh.M)) {
            return;
        }
        this.f90815h = C13479C.C(oh.E.H((oh.M) e10.I(i11), true));
    }

    public static i0 v(Object obj) {
        if (obj instanceof i0) {
            return (i0) obj;
        }
        if (obj != null) {
            return new i0(oh.E.G(obj));
        }
        return null;
    }

    public static i0 w(oh.M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    public b[] A() {
        oh.E e10 = this.f90814g;
        if (e10 == null) {
            return new b[0];
        }
        int size = e10.size();
        b[] bVarArr = new b[size];
        for (int i10 = 0; i10 < size; i10++) {
            bVarArr[i10] = b.v(this.f90814g.I(i10));
        }
        return bVarArr;
    }

    public C13486b B() {
        return this.f90810c;
    }

    public o0 C() {
        return this.f90812e;
    }

    public C14539s D() {
        return this.f90809b;
    }

    public int E() {
        C14539s c14539s = this.f90809b;
        if (c14539s == null) {
            return 1;
        }
        return c14539s.O() + 1;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(7);
        C14539s c14539s = this.f90809b;
        if (c14539s != null) {
            c14518h.a(c14539s);
        }
        c14518h.a(this.f90810c);
        c14518h.a(this.f90811d);
        c14518h.a(this.f90812e);
        o0 o0Var = this.f90813f;
        if (o0Var != null) {
            c14518h.a(o0Var);
        }
        oh.E e10 = this.f90814g;
        if (e10 != null) {
            c14518h.a(e10);
        }
        C13479C c13479c = this.f90815h;
        if (c13479c != null) {
            c14518h.a(new K0(0, c13479c));
        }
        return new G0(c14518h);
    }

    public C13479C u() {
        return this.f90815h;
    }

    public C13228d x() {
        return this.f90811d;
    }

    public o0 y() {
        return this.f90813f;
    }

    public Enumeration z() {
        oh.E e10 = this.f90814g;
        return e10 == null ? new c() : new d(e10.J());
    }
}
