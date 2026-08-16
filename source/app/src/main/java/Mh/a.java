package Mh;

import fi.C13226b;
import oh.AbstractC14545v;
import oh.B;

public class a extends AbstractC14545v {

    public C13226b f15268b;

    public a(C13226b c13226b) {
        this.f15268b = c13226b;
    }

    public static a v(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(C13226b.u(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f15268b.r();
    }

    public C13226b u() {
        return this.f15268b;
    }

    public a(String str) {
        this(new C13226b(str));
    }
}
