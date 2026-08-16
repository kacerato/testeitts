package sh;

import java.util.HashMap;
import java.util.Map;
import oh.AbstractC14545v;
import oh.C14539s;

public class C15309h extends AbstractC14545v {

    public static final C15309h f109566c;

    public static final C15309h f109567d;

    public static final C15309h f109568e;

    public static final C15309h f109569f;

    public static final C15309h f109570g;

    public static final C15309h f109571h;

    public static final C15309h f109572i;

    public static Map f109573j;

    public final C14539s f109574b;

    static {
        C15309h c15309h = new C15309h(new C14539s(0L));
        f109566c = c15309h;
        C15309h c15309h2 = new C15309h(new C14539s(2L));
        f109567d = c15309h2;
        C15309h c15309h3 = new C15309h(new C14539s(3L));
        f109568e = c15309h3;
        C15309h c15309h4 = new C15309h(new C14539s(4L));
        f109569f = c15309h4;
        C15309h c15309h5 = new C15309h(new C14539s(5L));
        f109570g = c15309h5;
        C15309h c15309h6 = new C15309h(new C14539s(6L));
        f109571h = c15309h6;
        C15309h c15309h7 = new C15309h(new C14539s(7L));
        f109572i = c15309h7;
        HashMap hashMap = new HashMap();
        f109573j = hashMap;
        hashMap.put(c15309h.f109574b, c15309h);
        f109573j.put(c15309h2.f109574b, c15309h2);
        f109573j.put(c15309h3.f109574b, c15309h3);
        f109573j.put(c15309h4.f109574b, c15309h4);
        f109573j.put(c15309h5.f109574b, c15309h5);
        f109573j.put(c15309h6.f109574b, c15309h6);
        f109573j.put(c15309h7.f109574b, c15309h7);
    }

    public C15309h(C14539s c14539s) {
        this.f109574b = c14539s;
    }

    public static C15309h u(Object obj) {
        if (obj instanceof C15309h) {
            return (C15309h) obj;
        }
        if (obj == null) {
            return null;
        }
        C15309h c15309h = (C15309h) f109573j.get(C14539s.F(obj));
        if (c15309h != null) {
            return c15309h;
        }
        throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
    }

    @Override
    public oh.B r() {
        return this.f109574b;
    }
}
