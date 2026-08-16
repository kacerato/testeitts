package th;

import fi.C13228d;
import hi.C13481E;
import hi.C13486b;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14530n;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class G extends AbstractC14545v {

    public static final C13481E f117475n = new C13481E(C13228d.x(new G0()));

    public static final int f117476o = 1;

    public static final int f117477p = 2;

    public static final int f117478q = 3;

    public final C14539s f117479b;

    public final C13481E f117480c;

    public final C13481E f117481d;

    public C14530n f117482e;

    public C13486b f117483f;

    public AbstractC14551y f117484g;

    public AbstractC14551y f117485h;

    public AbstractC14551y f117486i;

    public AbstractC14551y f117487j;

    public AbstractC14551y f117488k;

    public F f117489l;

    public oh.E f117490m;

    public G(int i10, C13481E c13481e, C13481E c13481e2) {
        this(new C14539s(i10), c13481e, c13481e2);
    }

    private void u(C14518h c14518h, int i10, InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g != null) {
            c14518h.a(new K0(true, i10, interfaceC14516g));
        }
    }

    public static G y(Object obj) {
        if (obj instanceof G) {
            return (G) obj;
        }
        if (obj != null) {
            return new G(oh.E.G(obj));
        }
        return null;
    }

    public C13486b A() {
        return this.f117483f;
    }

    public C14539s B() {
        return this.f117479b;
    }

    public AbstractC14551y C() {
        return this.f117485h;
    }

    public AbstractC14551y D() {
        return this.f117488k;
    }

    public C13481E E() {
        return this.f117481d;
    }

    public C13481E F() {
        return this.f117480c;
    }

    public AbstractC14551y G() {
        return this.f117484g;
    }

    public AbstractC14551y H() {
        return this.f117487j;
    }

    public AbstractC14551y I() {
        return this.f117486i;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(12);
        c14518h.a(this.f117479b);
        c14518h.a(this.f117480c);
        c14518h.a(this.f117481d);
        u(c14518h, 0, this.f117482e);
        u(c14518h, 1, this.f117483f);
        u(c14518h, 2, this.f117484g);
        u(c14518h, 3, this.f117485h);
        u(c14518h, 4, this.f117486i);
        u(c14518h, 5, this.f117487j);
        u(c14518h, 6, this.f117488k);
        u(c14518h, 7, this.f117489l);
        u(c14518h, 8, this.f117490m);
        return new G0(c14518h);
    }

    public F v() {
        return this.f117489l;
    }

    public C15443t[] x() {
        oh.E e10 = this.f117490m;
        if (e10 == null) {
            return null;
        }
        int size = e10.size();
        C15443t[] c15443tArr = new C15443t[size];
        for (int i10 = 0; i10 < size; i10++) {
            c15443tArr[i10] = C15443t.w(this.f117490m.I(i10));
        }
        return c15443tArr;
    }

    public C14530n z() {
        return this.f117482e;
    }

    public G(C14539s c14539s, C13481E c13481e, C13481E c13481e2) {
        this.f117479b = c14539s;
        this.f117480c = c13481e;
        this.f117481d = c13481e2;
    }

    public G(oh.E e10) {
        Enumeration J10 = e10.J();
        this.f117479b = C14539s.F(J10.nextElement());
        this.f117480c = C13481E.v(J10.nextElement());
        this.f117481d = C13481E.v(J10.nextElement());
        while (J10.hasMoreElements()) {
            oh.M m10 = (oh.M) J10.nextElement();
            if (!m10.o()) {
                throw new IllegalArgumentException("unknown tag: " + oh.V.y(m10));
            }
            switch (m10.g()) {
                case 0:
                    this.f117482e = C14530n.K(m10, true);
                    break;
                case 1:
                    this.f117483f = C13486b.w(m10, true);
                    break;
                case 2:
                    this.f117484g = AbstractC14551y.G(m10, true);
                    break;
                case 3:
                    this.f117485h = AbstractC14551y.G(m10, true);
                    break;
                case 4:
                    this.f117486i = AbstractC14551y.G(m10, true);
                    break;
                case 5:
                    this.f117487j = AbstractC14551y.G(m10, true);
                    break;
                case 6:
                    this.f117488k = AbstractC14551y.G(m10, true);
                    break;
                case 7:
                    this.f117489l = F.v(m10, true);
                    break;
                case 8:
                    this.f117490m = oh.E.H(m10, true);
                    break;
                default:
                    throw new IllegalArgumentException("unknown tag number: " + m10.g());
            }
        }
    }
}
