package t6;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import t6.e;

public class l {

    public int f117169a;

    public final List<e> f117170b = new LinkedList();

    public final Map<String, e> f117171c = new HashMap();

    public e f117172d = null;

    public boolean f117173e = false;

    public class a implements e.a {
        public a() {
        }

        @Override
        public void b() {
            l.this.f117172d = null;
        }
    }

    public l(int depth) {
        this.f117169a = 0;
        this.f117169a = depth;
    }

    public void b(StringBuilder builder, String tab) {
        int size = this.f117170b.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f117170b.get(i10).b(builder, tab);
            if (i10 < size - 1) {
                builder.append("\n");
            }
        }
    }

    public int c() {
        return this.f117169a;
    }

    public boolean d() {
        return this.f117173e;
    }

    public e e(int i10) {
        return this.f117170b.get(i10);
    }

    public int f() {
        return this.f117170b.size();
    }

    public e g(String name) {
        e eVar = this.f117172d;
        if (eVar != null) {
            int i10 = this.f117169a;
            if (i10 >= j.f117128C0) {
                return null;
            }
            return eVar.q(i10, true).g(name);
        }
        e eVar2 = this.f117171c.get(name);
        if (eVar2 == null) {
            eVar2 = g.b(name);
            this.f117170b.add(eVar2);
            this.f117171c.put(name, eVar2);
        }
        this.f117172d = eVar2;
        eVar2.r(new a());
        return eVar2;
    }

    public void h() {
        int size = this.f117170b.size();
        for (int i10 = 0; i10 < size; i10++) {
            e eVar = this.f117170b.get(i10);
            eVar.m();
            g.c(eVar);
        }
        this.f117170b.clear();
        this.f117171c.clear();
        this.f117172d = null;
    }

    public void i(boolean UIOpen) {
        this.f117173e = UIOpen;
    }
}
