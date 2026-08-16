package hi;

import java.util.Enumeration;
import java.util.Vector;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class J extends AbstractC14545v {

    public static final int f90663e = 1;

    public static final int f90664f = 2;

    public static final int f90665g = 3;

    public C13482F f90666b;

    public Vector f90667c = new Vector();

    public int f90668d;

    /* JADX WARN: Removed duplicated region for block: B:34:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public J(oh.E e10) {
        int i10;
        C13482F w10;
        this.f90666b = null;
        this.f90668d = -1;
        int i11 = 0;
        if (!(e10.I(0) instanceof oh.M)) {
            w10 = e10.size() == 2 ? C13482F.w(e10.I(0)) : w10;
            if (e10.I(i11) instanceof oh.E) {
                throw new IllegalArgumentException("Non-IetfAttrSyntax encoding");
            }
            Enumeration J10 = ((oh.E) e10.I(i11)).J();
            while (J10.hasMoreElements()) {
                oh.B b10 = (oh.B) J10.nextElement();
                if (b10 instanceof C14549x) {
                    i10 = 2;
                } else if (b10 instanceof oh.Q) {
                    i10 = 3;
                } else {
                    if (!(b10 instanceof oh.C0)) {
                        throw new IllegalArgumentException("Bad value type encoding IetfAttrSyntax");
                    }
                    i10 = 1;
                }
                if (this.f90668d < 0) {
                    this.f90668d = i10;
                }
                if (i10 != this.f90668d) {
                    throw new IllegalArgumentException("Mix of value types in IetfAttrSyntax");
                }
                this.f90667c.addElement(b10);
            }
            return;
        }
        w10 = C13482F.x((oh.M) e10.I(0), false);
        this.f90666b = w10;
        i11 = 1;
        if (e10.I(i11) instanceof oh.E) {
        }
    }

    public static J u(Object obj) {
        if (obj instanceof J) {
            return (J) obj;
        }
        if (obj != null) {
            return new J(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        C13482F c13482f = this.f90666b;
        if (c13482f != null) {
            c14518h.a(new K0(0, c13482f));
        }
        C14518h c14518h2 = new C14518h(this.f90667c.size());
        Enumeration elements = this.f90667c.elements();
        while (elements.hasMoreElements()) {
            c14518h2.a((InterfaceC14516g) elements.nextElement());
        }
        c14518h.a(new G0(c14518h2));
        return new G0(c14518h);
    }

    public C13482F v() {
        return this.f90666b;
    }

    public int x() {
        return this.f90668d;
    }

    public Object[] y() {
        int i10 = 0;
        if (x() == 1) {
            int size = this.f90667c.size();
            AbstractC14551y[] abstractC14551yArr = new AbstractC14551y[size];
            while (i10 != size) {
                abstractC14551yArr[i10] = (AbstractC14551y) this.f90667c.elementAt(i10);
                i10++;
            }
            return abstractC14551yArr;
        }
        if (x() == 2) {
            int size2 = this.f90667c.size();
            C14549x[] c14549xArr = new C14549x[size2];
            while (i10 != size2) {
                c14549xArr[i10] = (C14549x) this.f90667c.elementAt(i10);
                i10++;
            }
            return c14549xArr;
        }
        int size3 = this.f90667c.size();
        oh.Q[] qArr = new oh.Q[size3];
        while (i10 != size3) {
            qArr[i10] = (oh.Q) this.f90667c.elementAt(i10);
            i10++;
        }
        return qArr;
    }
}
