package Ch;

import oh.A0;
import oh.AbstractC14541t;
import oh.AbstractC14545v;
import oh.B;

public class w extends AbstractC14545v {

    public v f4373b;

    public boolean f4374c = true;

    public w() {
    }

    public static w u(Object obj) {
        if (obj instanceof w) {
            return (w) obj;
        }
        if ((obj instanceof AbstractC14541t) || AbstractC14545v.t(obj, 5)) {
            return new w();
        }
        if (obj != null) {
            return new w(v.u(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f4374c ? A0.f98776c : this.f4373b.r();
    }

    public v v() {
        return this.f4373b;
    }

    public boolean x() {
        return this.f4374c;
    }

    public w(v vVar) {
        this.f4373b = vVar;
    }
}
