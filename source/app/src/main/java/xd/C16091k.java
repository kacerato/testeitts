package xd;

import java.util.ArrayList;
import java.util.List;

public class C16091k {

    public final List<C16097q> f128114a = new ArrayList();

    public final List<C16096p> f128115b = new ArrayList();

    public final List<C16092l> f128116c = new ArrayList();

    public final List<C16093m> f128117d = new ArrayList();

    public final List<String> f128118e = new ArrayList();

    public List<String> a() {
        return this.f128118e;
    }

    public C16092l b(C16088h c16088h) {
        return this.f128116c.get(c16088h.f128109b);
    }

    public List<C16092l> c() {
        return this.f128116c;
    }

    public C16093m d(String str) {
        for (C16093m c16093m : this.f128117d) {
            if (str.equals(c16093m.b())) {
                return c16093m;
            }
        }
        return null;
    }

    public List<C16093m> e() {
        return this.f128117d;
    }

    public C16096p f(C16088h c16088h) {
        return this.f128115b.get(c16088h.f128110c);
    }

    public List<C16096p> g() {
        return this.f128115b;
    }

    public C16097q h(C16088h c16088h) {
        return this.f128114a.get(c16088h.f128108a);
    }

    public List<C16097q> i() {
        return this.f128114a;
    }
}
