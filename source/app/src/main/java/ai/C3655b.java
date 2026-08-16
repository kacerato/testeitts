package ai;

import Xh.t;
import java.util.Enumeration;
import java.util.Vector;
import oh.AbstractC14545v;
import oh.B;
import oh.C14549x;
import oh.E;
import uh.C15610a;

public class C3655b extends AbstractC14545v {

    public static final C14549x f32215c = t.f29139t2;

    public static final C14549x f32216d = t.f29142u2;

    public static final C14549x f32217e = t.f29145w2;

    public static final C14549x f32218f = Sh.d.f23323Q;

    public static final C14549x f32219g = Sh.d.f23314H;

    public static final C14549x f32220h = Sh.d.f23373y;

    public static final C14549x f32221i = new C14549x("1.3.6.1.4.1.188.7.1.1.2");

    public static final C14549x f32222j = new C14549x("1.2.840.113533.7.66.10");

    public static final C14549x f32223k = new C14549x("1.3.14.3.2.7");

    public static final C14549x f32224l = t.f29123n1;

    public static final C14549x f32225m = t.f29126o1;

    public E f32226b;

    public C3655b(E e10) {
        this.f32226b = e10;
    }

    public static C3655b v(Object obj) {
        if (obj == null || (obj instanceof C3655b)) {
            return (C3655b) obj;
        }
        if (obj instanceof E) {
            return new C3655b((E) obj);
        }
        if (obj instanceof C15610a) {
            return new C3655b((E) ((C15610a) obj).v().H(0));
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    @Override
    public B r() {
        return this.f32226b;
    }

    public Vector u(C14549x c14549x) {
        Enumeration J10 = this.f32226b.J();
        Vector vector = new Vector();
        if (c14549x == null) {
            while (J10.hasMoreElements()) {
                vector.addElement(C3657d.v(J10.nextElement()));
            }
        } else {
            while (J10.hasMoreElements()) {
                C3657d v10 = C3657d.v(J10.nextElement());
                if (c14549x.A(v10.u())) {
                    vector.addElement(v10);
                }
            }
        }
        return vector;
    }
}
