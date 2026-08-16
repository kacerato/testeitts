package z2;

import w2.H;
import w2.z;

@InterfaceC16248e
public class C16246c {

    public final Object f130588a;

    public final Object f130589b;

    public C16246c(Object obj, Object obj2) {
        this.f130588a = H.E(obj);
        this.f130589b = H.E(obj2);
    }

    public Object a() {
        return this.f130589b;
    }

    public Object b() {
        return this.f130588a;
    }

    public String toString() {
        return z.c(this).f("source", this.f130588a).f("event", this.f130589b).toString();
    }
}
