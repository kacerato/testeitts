package hi;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import org.eclipse.jdt.internal.core.JavaElement;

public class C13491d0 extends AbstractC14545v {

    public C13482F f90783b;

    public C13481E f90784c;

    public C13491d0(C13481E c13481e) {
        this(null, c13481e);
    }

    public static C13491d0 u(Object obj) {
        if (obj instanceof C13491d0) {
            return (C13491d0) obj;
        }
        if (obj != null) {
            return new C13491d0(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        C13482F c13482f = this.f90783b;
        if (c13482f != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) c13482f));
        }
        c14518h.a(new K0(true, 1, (InterfaceC14516g) this.f90784c));
        return new G0(c14518h);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("Name: " + z() + " - Auth: ");
        C13482F c13482f = this.f90783b;
        if (c13482f == null || c13482f.y().length == 0) {
            stringBuffer.append("N/A");
        } else {
            String[] x10 = x();
            stringBuffer.append('[');
            stringBuffer.append(x10[0]);
            for (int i10 = 1; i10 < x10.length; i10++) {
                stringBuffer.append(", ");
                stringBuffer.append(x10[i10]);
            }
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        return stringBuffer.toString();
    }

    public C13482F v() {
        return this.f90783b;
    }

    public String[] x() {
        C13482F c13482f = this.f90783b;
        if (c13482f == null) {
            return new String[0];
        }
        C13481E[] y10 = c13482f.y();
        String[] strArr = new String[y10.length];
        for (int i10 = 0; i10 < y10.length; i10++) {
            InterfaceC14516g x10 = y10[i10].x();
            if (x10 instanceof oh.J) {
                strArr[i10] = ((oh.J) x10).getString();
            } else {
                strArr[i10] = x10.toString();
            }
        }
        return strArr;
    }

    public C13481E y() {
        return this.f90784c;
    }

    public String z() {
        return ((oh.J) this.f90784c.x()).getString();
    }

    public C13491d0(C13482F c13482f, C13481E c13481e) {
        if (c13481e == null || c13481e.g() != 6 || ((oh.J) c13481e.x()).getString().equals("")) {
            throw new IllegalArgumentException("the role name MUST be non empty and MUST use the URI option of GeneralName");
        }
        this.f90783b = c13482f;
        this.f90784c = c13481e;
    }

    public C13491d0(String str) {
        this(new C13481E(6, str == null ? "" : str));
    }

    public C13491d0(oh.E e10) {
        if (e10.size() < 1 || e10.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        for (int i10 = 0; i10 != e10.size(); i10++) {
            oh.M R10 = oh.M.R(e10.I(i10));
            int g10 = R10.g();
            if (g10 == 0) {
                this.f90783b = C13482F.x(R10, false);
            } else {
                if (g10 != 1) {
                    throw new IllegalArgumentException("Unknown tag in RoleSyntax");
                }
                this.f90784c = C13481E.w(R10, true);
            }
        }
    }
}
