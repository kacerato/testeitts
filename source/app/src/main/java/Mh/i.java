package Mh;

import fi.C13226b;
import oh.AbstractC14545v;
import oh.B;

public class i extends AbstractC14545v {

    public C13226b f15313b;

    public i(C13226b c13226b) {
        this.f15313b = c13226b;
    }

    public static i u(Object obj) {
        if (obj instanceof i) {
            return (i) obj;
        }
        if (obj != null) {
            return new i(C13226b.u(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f15313b.r();
    }

    public C13226b v() {
        return this.f15313b;
    }

    public i(String str) {
        this.f15313b = new C13226b(str);
    }
}
