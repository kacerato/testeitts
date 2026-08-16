package q6;

import b3.s;

public class g {

    public String f105987a;

    public double f105988b;

    public double f105989c;

    public a f105990d;

    public j f105991e;

    public boolean f105992f = false;

    public interface a {
        void b();
    }

    public g(String name) {
        this.f105987a = Tc.b.d(name);
    }

    public static long h() {
        return System.nanoTime();
    }

    public boolean a(String name) {
        return this.f105987a.equalsIgnoreCase(name);
    }

    public void b(StringBuilder builder, String tab) {
        builder.append(tab);
        builder.append(this.f105987a);
        builder.append(s.f32937c);
        builder.append(Nc.b.v0((float) e(), 2));
        builder.append(" ms");
        if (this.f105991e != null) {
            builder.append("\n");
            this.f105991e.b(builder, tab + "---");
        }
    }

    public void c() {
        if (this.f105990d == null) {
            return;
        }
        double nanoTime = (System.nanoTime() - this.f105988b) / 1000000.0d;
        this.f105989c = nanoTime;
        this.f105989c = Nc.b.L(0.0d, nanoTime);
        this.f105990d.b();
        this.f105990d = null;
    }

    public j d() {
        return this.f105991e;
    }

    public double e() {
        return this.f105989c;
    }

    public String f() {
        return this.f105987a;
    }

    public boolean g() {
        return this.f105992f;
    }

    public void i() {
        j jVar = this.f105991e;
        if (jVar != null) {
            jVar.h();
            this.f105991e = null;
        }
    }

    public void j(String name) {
        this.f105987a = name;
        this.f105988b = 0.0d;
        this.f105989c = 0.0d;
        this.f105990d = null;
        this.f105991e = null;
        this.f105992f = false;
    }

    public void k(String name) {
        this.f105987a = name;
    }

    public void l(boolean UIOpen) {
        this.f105992f = UIOpen;
    }

    public j m(int depth, boolean incrementCount) {
        if (this.f105991e == null) {
            this.f105991e = new j(depth + 1);
        }
        return this.f105991e;
    }

    public void n(a listener) {
        if (listener == null) {
            throw new NullPointerException("Listener can't be null");
        }
        this.f105990d = listener;
        this.f105988b = System.nanoTime();
    }
}
