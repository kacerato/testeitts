package Fk;

import oh.AbstractC14545v;
import oh.M0;

public class C2553z extends AbstractC14545v {

    public final String f7193b;

    public C2553z(String str) {
        this.f7193b = str;
    }

    public static C2553z v(Object obj) {
        if (obj instanceof C2553z) {
            return (C2553z) obj;
        }
        if (obj != null) {
            return new C2553z(oh.Q.F(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new M0(this.f7193b);
    }

    public String u() {
        return this.f7193b;
    }

    public C2553z(oh.J j10) {
        this.f7193b = j10.getString();
    }
}
