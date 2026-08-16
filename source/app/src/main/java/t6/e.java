package t6;

import b3.s;

public class e {

    public String f117113a;

    public double f117114b;

    public double f117115c;

    public double f117116d;

    public double f117117e;

    public long f117118f;

    public a f117119g;

    public l f117120h;

    public boolean f117121i = false;

    public interface a {
        void b();
    }

    public e(String name) {
        this.f117113a = Tc.b.d(name);
    }

    public static long l() {
        return System.nanoTime();
    }

    public boolean a(String name) {
        return this.f117113a.equalsIgnoreCase(name);
    }

    public void b(StringBuilder builder, String tab) {
        builder.append(tab);
        builder.append(this.f117113a);
        builder.append(s.f32937c);
        builder.append(Nc.b.v0((float) j(), 2));
        builder.append(" ms");
        builder.append(" [x");
        builder.append(this.f117118f);
        builder.append("]");
        if (this.f117120h != null) {
            builder.append("\n");
            this.f117120h.b(builder, tab + "---");
        }
    }

    public void c() {
        if (this.f117119g == null) {
            return;
        }
        double nanoTime = (System.nanoTime() - this.f117114b) / 1000000.0d;
        this.f117115c = nanoTime;
        double L10 = Nc.b.L(0.0d, nanoTime);
        this.f117115c = L10;
        this.f117116d += L10;
        if (L10 > this.f117117e) {
            this.f117117e = L10;
        }
        this.f117118f++;
        this.f117119g.b();
        this.f117119g = null;
    }

    public double d() {
        long j10 = this.f117118f;
        if (j10 <= 0) {
            return 0.0d;
        }
        return this.f117116d / j10;
    }

    public long e() {
        return this.f117118f;
    }

    public l f() {
        return this.f117120h;
    }

    public double g() {
        return this.f117115c;
    }

    public double h() {
        return this.f117117e;
    }

    public String i() {
        return this.f117113a;
    }

    public double j() {
        return this.f117116d;
    }

    public boolean k() {
        return this.f117121i;
    }

    public void m() {
        l lVar = this.f117120h;
        if (lVar != null) {
            lVar.h();
            this.f117120h = null;
        }
    }

    public void n(String name) {
        this.f117113a = name;
        this.f117114b = 0.0d;
        this.f117115c = 0.0d;
        this.f117116d = 0.0d;
        this.f117117e = 0.0d;
        this.f117118f = 0L;
        this.f117119g = null;
        this.f117120h = null;
    }

    public void o(String name) {
        this.f117113a = name;
    }

    public void p(boolean UIOpen) {
        this.f117121i = UIOpen;
    }

    public l q(int depth, boolean incrementCount) {
        if (this.f117120h == null) {
            this.f117120h = new l(depth + 1);
        }
        return this.f117120h;
    }

    public void r(a listener) {
        if (listener == null) {
            throw new NullPointerException("Listener can't be null");
        }
        this.f117119g = listener;
        this.f117114b = System.nanoTime();
    }
}
