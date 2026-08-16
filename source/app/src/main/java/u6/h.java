package u6;

import java.util.LinkedList;
import java.util.List;
import u6.e;

public class h {

    public int f118550a;

    public final List<e> f118551b = new LinkedList();

    public e f118552c = null;

    public boolean f118553d = false;

    public class a implements e.a {
        public a() {
        }

        @Override
        public void b() {
            h.this.f118552c = null;
        }
    }

    public h(int depth) {
        this.f118550a = 0;
        this.f118550a = depth;
    }

    public void b(StringBuilder builder, String tab) {
        int size = this.f118551b.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f118551b.get(i10).b(builder, tab);
            if (i10 < size - 1) {
                builder.append("\n");
            }
        }
    }

    public int c() {
        return this.f118550a;
    }

    public boolean d() {
        return this.f118553d;
    }

    public e e(int i10) {
        return this.f118551b.get(i10);
    }

    public int f() {
        return this.f118551b.size();
    }

    public e g(String name) {
        e eVar = this.f118552c;
        if (eVar != null) {
            int i10 = this.f118550a;
            if (i10 >= l.f118564C0) {
                return null;
            }
            return eVar.m(i10, true).g(name);
        }
        e b10 = g.b(name);
        this.f118551b.add(b10);
        this.f118552c = b10;
        b10.n(new a());
        return b10;
    }

    public void h() {
        int size = this.f118551b.size();
        for (int i10 = 0; i10 < size; i10++) {
            e eVar = this.f118551b.get(i10);
            eVar.i();
            g.c(eVar);
        }
    }

    public void i(boolean UIOpen) {
        this.f118553d = UIOpen;
    }
}
