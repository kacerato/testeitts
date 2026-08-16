package p6;

import b3.s;

public class g {

    public String f103600a;

    public double f103601b;

    public double f103602c;

    public a f103603d;

    public j f103604e;

    public boolean f103605f = false;

    public interface a {
        void b();
    }

    public g(String name) {
        this.f103600a = Tc.b.d(name);
    }

    public static long h() {
        return System.nanoTime();
    }

    public boolean a(String name) {
        return this.f103600a.equalsIgnoreCase(name);
    }

    public void b(StringBuilder builder, String tab) {
        builder.append(tab);
        builder.append(this.f103600a);
        builder.append(s.f32937c);
        builder.append(Nc.b.v0((float) e(), 2));
        builder.append(" ms");
        if (this.f103604e != null) {
            builder.append("\n");
            this.f103604e.b(builder, tab + "---");
        }
    }

    public void c() {
        if (this.f103603d == null) {
            return;
        }
        double nanoTime = (System.nanoTime() - this.f103601b) / 1000000.0d;
        this.f103602c = nanoTime;
        this.f103602c = Nc.b.L(0.0d, nanoTime);
        this.f103603d.b();
        this.f103603d = null;
    }

    public j d() {
        return this.f103604e;
    }

    public double e() {
        return this.f103602c;
    }

    public String f() {
        return this.f103600a;
    }

    public boolean g() {
        return this.f103605f;
    }

    public void i() {
        j jVar = this.f103604e;
        if (jVar != null) {
            jVar.h();
            this.f103604e = null;
        }
    }

    public void j(String name) {
        this.f103600a = name;
        this.f103601b = 0.0d;
        this.f103602c = 0.0d;
        this.f103603d = null;
        this.f103604e = null;
        this.f103605f = false;
    }

    public void k(String name) {
        this.f103600a = name;
    }

    public void l(boolean UIOpen) {
        this.f103605f = UIOpen;
    }

    public j m(int depth, boolean incrementCount) {
        if (this.f103604e == null) {
            this.f103604e = new j(depth + 1);
        }
        return this.f103604e;
    }

    public void n(a listener) {
        if (listener == null) {
            throw new NullPointerException("Listener can't be null");
        }
        this.f103603d = listener;
        this.f103601b = System.nanoTime();
    }
}
