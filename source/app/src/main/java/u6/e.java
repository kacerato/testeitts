package u6;

import b3.s;

public class e {

    public String f118540a;

    public double f118541b;

    public double f118542c;

    public a f118543d;

    public h f118544e;

    public boolean f118545f = false;

    public interface a {
        void b();
    }

    public e(String name) {
        this.f118540a = Tc.b.d(name);
    }

    public static long h() {
        return System.nanoTime();
    }

    public boolean a(String name) {
        return this.f118540a.equalsIgnoreCase(name);
    }

    public void b(StringBuilder builder, String tab) {
        builder.append(tab);
        builder.append(this.f118540a);
        builder.append(s.f32937c);
        builder.append(Nc.b.v0((float) e(), 2));
        builder.append(" ms");
        if (this.f118544e != null) {
            builder.append("\n");
            this.f118544e.b(builder, tab + "---");
        }
    }

    public void c() {
        if (this.f118543d == null) {
            return;
        }
        double nanoTime = (System.nanoTime() - this.f118541b) / 1000000.0d;
        this.f118542c = nanoTime;
        this.f118542c = Nc.b.L(0.0d, nanoTime);
        this.f118543d.b();
        this.f118543d = null;
    }

    public h d() {
        return this.f118544e;
    }

    public double e() {
        return this.f118542c;
    }

    public String f() {
        return this.f118540a;
    }

    public boolean g() {
        return this.f118545f;
    }

    public void i() {
        h hVar = this.f118544e;
        if (hVar != null) {
            hVar.h();
            this.f118544e = null;
        }
    }

    public void j(String name) {
        this.f118540a = name;
        this.f118541b = 0.0d;
        this.f118542c = 0.0d;
        this.f118543d = null;
        this.f118544e = null;
        this.f118545f = false;
    }

    public void k(String name) {
        this.f118540a = name;
    }

    public void l(boolean UIOpen) {
        this.f118545f = UIOpen;
    }

    public h m(int depth, boolean incrementCount) {
        if (this.f118544e == null) {
            this.f118544e = new h(depth + 1);
        }
        return this.f118544e;
    }

    public void n(a listener) {
        if (listener == null) {
            throw new NullPointerException("Listener can't be null");
        }
        this.f118543d = listener;
        this.f118541b = System.nanoTime();
    }
}
