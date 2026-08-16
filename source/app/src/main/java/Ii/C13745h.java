package ii;

import oh.AbstractC14545v;
import oh.B;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;

public class C13745h extends AbstractC14545v implements InterfaceC14514f {

    public static final int f92297c = 0;

    public static final int f92298d = 1;

    public InterfaceC14516g f92299b;

    public C13745h(int i10) {
        if (i10 == 0 || i10 == 1) {
            this.f92299b = new C14539s(i10);
            return;
        }
        throw new IllegalArgumentException("unknow PredefinedBiometricType : " + i10);
    }

    public static C13745h v(Object obj) {
        if (obj == null || (obj instanceof C13745h)) {
            return (C13745h) obj;
        }
        if (obj instanceof C14539s) {
            return new C13745h(C14539s.F(obj).O());
        }
        if (obj instanceof C14549x) {
            return new C13745h(C14549x.K(obj));
        }
        throw new IllegalArgumentException("unknown object in getInstance");
    }

    @Override
    public B r() {
        return this.f92299b.r();
    }

    public C14549x u() {
        return (C14549x) this.f92299b;
    }

    public int x() {
        return ((C14539s) this.f92299b).O();
    }

    public boolean y() {
        return this.f92299b instanceof C14539s;
    }

    public C13745h(C14549x c14549x) {
        this.f92299b = c14549x;
    }
}
