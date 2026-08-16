package Ak;

import oh.AbstractC14536q;
import oh.AbstractC14545v;
import oh.C14554z0;

public class a0 extends AbstractC14545v {

    public final String f916b;

    public a0(String str) {
        this.f916b = str;
    }

    public static a0 u(Object obj) {
        if (obj instanceof a0) {
            return (a0) obj;
        }
        if (obj != null) {
            return new a0(AbstractC14536q.F(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new C14554z0(this.f916b);
    }

    public String v() {
        return this.f916b;
    }

    public a0(AbstractC14536q abstractC14536q) {
        this.f916b = abstractC14536q.getString();
    }
}
