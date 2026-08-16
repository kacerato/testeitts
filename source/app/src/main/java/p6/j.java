package p6;

import java.util.LinkedList;
import java.util.List;
import p6.g;

public class j {

    public int f103610a;

    public final List<g> f103611b = new LinkedList();

    public g f103612c = null;

    public boolean f103613d = false;

    public class a implements g.a {
        public a() {
        }

        @Override
        public void b() {
            j.this.f103612c = null;
        }
    }

    public j(int depth) {
        this.f103610a = 0;
        this.f103610a = depth;
    }

    public void b(StringBuilder builder, String tab) {
        int size = this.f103611b.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f103611b.get(i10).b(builder, tab);
            if (i10 < size - 1) {
                builder.append("\n");
            }
        }
    }

    public int c() {
        return this.f103610a;
    }

    public boolean d() {
        return this.f103613d;
    }

    public g e(int i10) {
        return this.f103611b.get(i10);
    }

    public int f() {
        return this.f103611b.size();
    }

    public g g(String name) {
        g gVar = this.f103612c;
        if (gVar != null) {
            int i10 = this.f103610a;
            if (i10 >= d.f103547C0) {
                return null;
            }
            return gVar.m(i10, true).g(name);
        }
        g b10 = i.b(name);
        this.f103611b.add(b10);
        this.f103612c = b10;
        b10.n(new a());
        return b10;
    }

    public void h() {
        int size = this.f103611b.size();
        for (int i10 = 0; i10 < size; i10++) {
            g gVar = this.f103611b.get(i10);
            gVar.i();
            i.c(gVar);
        }
    }

    public void i(boolean UIOpen) {
        this.f103613d = UIOpen;
    }
}
