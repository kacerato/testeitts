package sh;

import java.util.HashMap;
import java.util.Map;
import oh.AbstractC14545v;
import oh.C14539s;

public class C15306e extends AbstractC14545v {

    public static final C15306e f109508c;

    public static final C15306e f109509d;

    public static final C15306e f109510e;

    public static final C15306e f109511f;

    public static final C15306e f109512g;

    public static final C15306e f109513h;

    public static final C15306e f109514i;

    public static final C15306e f109515j;

    public static final C15306e f109516k;

    public static final C15306e f109517l;

    public static final C15306e f109518m;

    public static final C15306e f109519n;

    public static final C15306e f109520o;

    public static final C15306e f109521p;

    public static Map f109522q;

    public final C14539s f109523b;

    static {
        C15306e c15306e = new C15306e(new C14539s(0L));
        f109508c = c15306e;
        C15306e c15306e2 = new C15306e(new C14539s(1L));
        f109509d = c15306e2;
        C15306e c15306e3 = new C15306e(new C14539s(2L));
        f109510e = c15306e3;
        C15306e c15306e4 = new C15306e(new C14539s(3L));
        f109511f = c15306e4;
        C15306e c15306e5 = new C15306e(new C14539s(4L));
        f109512g = c15306e5;
        C15306e c15306e6 = new C15306e(new C14539s(5L));
        f109513h = c15306e6;
        C15306e c15306e7 = new C15306e(new C14539s(6L));
        f109514i = c15306e7;
        C15306e c15306e8 = new C15306e(new C14539s(7L));
        f109515j = c15306e8;
        C15306e c15306e9 = new C15306e(new C14539s(8L));
        f109516k = c15306e9;
        C15306e c15306e10 = new C15306e(new C14539s(9L));
        f109517l = c15306e10;
        C15306e c15306e11 = new C15306e(new C14539s(10L));
        f109518m = c15306e11;
        C15306e c15306e12 = new C15306e(new C14539s(11L));
        f109519n = c15306e12;
        C15306e c15306e13 = new C15306e(new C14539s(12L));
        f109520o = c15306e13;
        C15306e c15306e14 = new C15306e(new C14539s(13L));
        f109521p = c15306e14;
        HashMap hashMap = new HashMap();
        f109522q = hashMap;
        hashMap.put(c15306e.f109523b, c15306e);
        f109522q.put(c15306e2.f109523b, c15306e2);
        f109522q.put(c15306e3.f109523b, c15306e3);
        f109522q.put(c15306e4.f109523b, c15306e4);
        f109522q.put(c15306e5.f109523b, c15306e5);
        f109522q.put(c15306e9.f109523b, c15306e9);
        f109522q.put(c15306e6.f109523b, c15306e6);
        f109522q.put(c15306e7.f109523b, c15306e7);
        f109522q.put(c15306e8.f109523b, c15306e8);
        f109522q.put(c15306e9.f109523b, c15306e9);
        f109522q.put(c15306e10.f109523b, c15306e10);
        f109522q.put(c15306e5.f109523b, c15306e5);
        f109522q.put(c15306e9.f109523b, c15306e9);
        f109522q.put(c15306e11.f109523b, c15306e11);
        f109522q.put(c15306e12.f109523b, c15306e12);
        f109522q.put(c15306e13.f109523b, c15306e13);
        f109522q.put(c15306e14.f109523b, c15306e14);
    }

    public C15306e(C14539s c14539s) {
        this.f109523b = c14539s;
    }

    public static C15306e u(Object obj) {
        if (obj instanceof C15306e) {
            return (C15306e) obj;
        }
        if (obj == null) {
            return null;
        }
        C15306e c15306e = (C15306e) f109522q.get(C14539s.F(obj));
        if (c15306e != null) {
            return c15306e;
        }
        throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
    }

    @Override
    public oh.B r() {
        return this.f109523b;
    }
}
