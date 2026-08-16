package ai;

import Xh.t;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class C3657d extends AbstractC14545v {

    public static final C14549x f32227d = t.f29139t2;

    public static final C14549x f32228e = t.f29142u2;

    public static final C14549x f32229f = t.f29145w2;

    public static final C14549x f32230g = new C14549x("1.3.14.3.2.7");

    public static final C14549x f32231h = t.f29123n1;

    public static final C14549x f32232i = t.f29126o1;

    public static final C14549x f32233j = Sh.d.f23373y;

    public static final C14549x f32234k = Sh.d.f23314H;

    public static final C14549x f32235l = Sh.d.f23323Q;

    public C14549x f32236b;

    public InterfaceC14516g f32237c;

    public C3657d(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f32236b = c14549x;
        this.f32237c = interfaceC14516g;
    }

    public static C3657d v(Object obj) {
        if (obj == null || (obj instanceof C3657d)) {
            return (C3657d) obj;
        }
        if (obj instanceof E) {
            return new C3657d((E) obj);
        }
        throw new IllegalArgumentException("Invalid SMIMECapability");
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f32236b);
        InterfaceC14516g interfaceC14516g = this.f32237c;
        if (interfaceC14516g != null) {
            c14518h.a(interfaceC14516g);
        }
        return new G0(c14518h);
    }

    public C14549x u() {
        return this.f32236b;
    }

    public InterfaceC14516g x() {
        return this.f32237c;
    }

    public C3657d(E e10) {
        this.f32236b = (C14549x) e10.I(0);
        if (e10.size() > 1) {
            this.f32237c = (B) e10.I(1);
        }
    }
}
