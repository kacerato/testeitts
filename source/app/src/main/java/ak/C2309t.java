package Ak;

import oh.AbstractC14536q;
import oh.AbstractC14545v;
import oh.C14554z0;

public class C2309t extends AbstractC14545v {

    public final String f998b;

    public C2309t(String str) {
        this.f998b = str;
    }

    public static C2309t u(Object obj) {
        if (obj instanceof C2309t) {
            return (C2309t) obj;
        }
        if (obj != null) {
            return new C2309t(AbstractC14536q.F(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new C14554z0(this.f998b);
    }

    public String v() {
        return this.f998b;
    }

    public C2309t(AbstractC14536q abstractC14536q) {
        this.f998b = abstractC14536q.getString();
    }
}
