package lb;

import android.util.Log;
import b3.s;

public class C14068e {

    public long f96234a = System.nanoTime();

    public float f96235b = 0.0f;

    public float f96236c = 0.0f;

    public static C14068e c() {
        C14068e c14068e = new C14068e();
        c14068e.n();
        return c14068e;
    }

    public void a(float time) {
        this.f96235b += time;
    }

    public void b(C14068e time) {
        this.f96235b += time.k();
    }

    public void d(String prefix) {
        Log.d("TimeCounter", prefix + s.f32937c + Nc.b.v0(this.f96235b, 2) + " ms");
    }

    public void e(String prefix) {
        Log.d("TimeCounter", prefix + s.f32937c + Nc.b.v0(this.f96235b, 2) + " ms");
        J4.d.L1("TimeCounter:" + prefix + s.f32937c + Nc.b.v0(this.f96235b, 2) + " ms");
    }

    public void f(String prefix) {
        Log.d("TimeCounter", prefix + s.f32937c + Nc.b.v0(this.f96235b, 2) + " ms");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Nc.b.v0(this.f96235b, 2));
        sb2.append(" ms");
        N7.c.v0(sb2.toString());
    }

    public void g() {
        this.f96235b = ((float) (System.nanoTime() - this.f96234a)) / 1000000.0f;
    }

    public void h(String prefix) {
        this.f96235b = ((float) (System.nanoTime() - this.f96234a)) / 1000000.0f;
        d(prefix);
    }

    public void i(String prefix) {
        this.f96235b = ((float) (System.nanoTime() - this.f96234a)) / 1000000.0f;
        e(prefix);
    }

    public void j(String prefix) {
        this.f96235b = ((float) (System.nanoTime() - this.f96234a)) / 1000000.0f;
        f(prefix);
    }

    public float k() {
        return this.f96235b;
    }

    public void l() {
        this.f96236c = this.f96235b;
        this.f96235b = 0.0f;
    }

    public void m(float intervalTime) {
        this.f96235b = intervalTime;
    }

    public void n() {
        this.f96234a = System.nanoTime();
    }

    public String toString() {
        return Nc.b.v0(this.f96236c, 0) + " ms";
    }
}
