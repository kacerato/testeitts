package o4;

import JAVARuntime.AtomicFloat;
import androidx.annotation.NonNull;

public class f {

    public static final f f98483e = new f();

    public final AtomicFloat f98484a;

    public final AtomicFloat f98485b;

    public final AtomicFloat f98486c;

    public final AtomicFloat f98487d;

    public f() {
        AtomicFloat atomicFloat = new AtomicFloat();
        this.f98484a = atomicFloat;
        AtomicFloat atomicFloat2 = new AtomicFloat();
        this.f98485b = atomicFloat2;
        AtomicFloat atomicFloat3 = new AtomicFloat();
        this.f98486c = atomicFloat3;
        AtomicFloat atomicFloat4 = new AtomicFloat();
        this.f98487d = atomicFloat4;
        atomicFloat.set(0.0f);
        atomicFloat2.set(0.0f);
        atomicFloat3.set(1.0f);
        atomicFloat4.set(1.0f);
    }

    public static f g() {
        f fVar = f98483e;
        fVar.k(0.0f);
        fVar.l(0.0f);
        fVar.j(1.0f);
        fVar.i(1.0f);
        return fVar;
    }

    public f clone() {
        return new f().h(this);
    }

    public boolean b(f o10) {
        return e() == o10.e() && f() == o10.f() && d() == o10.d() && c() == o10.c();
    }

    public float c() {
        return this.f98487d.get();
    }

    public float d() {
        return this.f98486c.get();
    }

    public float e() {
        return this.f98484a.get();
    }

    public float f() {
        return this.f98485b.get();
    }

    public f h(f r10) {
        k(r10.e());
        l(r10.f());
        j(r10.d());
        i(r10.c());
        return this;
    }

    public void i(float h10) {
        this.f98487d.set(h10);
    }

    public void j(float w10) {
        this.f98486c.set(w10);
    }

    public void k(float x10) {
        this.f98484a.set(x10);
    }

    public void l(float y10) {
        this.f98485b.set(y10);
    }

    @NonNull
    public String toString() {
        return "[" + ((Object) this.f98484a) + ", " + ((Object) this.f98485b) + ", " + ((Object) this.f98486c) + ", " + ((Object) this.f98487d) + "]";
    }
}
