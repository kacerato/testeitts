package q6;

import java.util.LinkedList;
import java.util.List;
import q6.g;

public class j {

    public int f105997a;

    public final List<g> f105998b = new LinkedList();

    public g f105999c = null;

    public boolean f106000d = false;

    public class a implements g.a {
        public a() {
        }

        @Override
        public void b() {
            j.this.f105999c = null;
        }
    }

    public j(int depth) {
        this.f105997a = 0;
        this.f105997a = depth;
    }

    public void b(StringBuilder builder, String tab) {
        int size = this.f105998b.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f105998b.get(i10).b(builder, tab);
            if (i10 < size - 1) {
                builder.append("\n");
            }
        }
    }

    public int c() {
        return this.f105997a;
    }

    public boolean d() {
        return this.f106000d;
    }

    public g e(int i10) {
        return this.f105998b.get(i10);
    }

    public int f() {
        return this.f105998b.size();
    }

    public g g(String name) {
        g gVar = this.f105999c;
        if (gVar != null) {
            int i10 = this.f105997a;
            if (i10 >= f.f105950B0) {
                return null;
            }
            return gVar.m(i10, true).g(name);
        }
        g b10 = i.b(name);
        this.f105998b.add(b10);
        this.f105999c = b10;
        b10.n(new a());
        return b10;
    }

    public void h() {
        int size = this.f105998b.size();
        for (int i10 = 0; i10 < size; i10++) {
            g gVar = this.f105998b.get(i10);
            gVar.i();
            i.c(gVar);
        }
    }

    public void i(boolean UIOpen) {
        this.f106000d = UIOpen;
    }
}
