package ii;

import oh.AbstractC14545v;
import oh.B;
import oh.C;
import oh.C14539s;
import oh.F0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;

public class C13740c extends AbstractC14545v implements InterfaceC14514f {

    public final int f92283b = 3;

    public final int f92284c = 1;

    public final int f92285d = 999;

    public InterfaceC14516g f92286e;

    public int f92287f;

    public C13740c(int i10) {
        if (i10 > 999 || i10 < 1) {
            throw new IllegalArgumentException("wrong size in numeric code : not in (1..999)");
        }
        this.f92286e = new C14539s(i10);
    }

    public static C13740c v(Object obj) {
        if (obj == null || (obj instanceof C13740c)) {
            return (C13740c) obj;
        }
        if (obj instanceof C14539s) {
            return new C13740c(C14539s.F(obj).O());
        }
        if (obj instanceof C) {
            return new C13740c(C.F(obj).getString());
        }
        throw new IllegalArgumentException("unknown object in getInstance");
    }

    @Override
    public B r() {
        return this.f92286e.r();
    }

    public String u() {
        return ((C) this.f92286e).getString();
    }

    public int x() {
        return ((C14539s) this.f92286e).O();
    }

    public boolean y() {
        return this.f92286e instanceof C;
    }

    public C13740c(String str) {
        if (str.length() > 3) {
            throw new IllegalArgumentException("wrong size in alphabetic code : max size is 3");
        }
        this.f92286e = new F0(str);
    }
}
