package gb;

import JAVARuntime.AtomicFloat;
import androidx.annotation.NonNull;

public class C13319g extends K8.f {

    public final AtomicFloat f88424b = new AtomicFloat();

    public final AtomicFloat f88425c = new AtomicFloat();

    public final AtomicFloat f88426d = new AtomicFloat(1.0f);

    public final AtomicFloat f88427e = new AtomicFloat(1.0f);

    public float d() {
        return this.f88427e.get();
    }

    public float e() {
        return this.f88426d.get();
    }

    public void f(o4.f percentageRect) {
        j(percentageRect.e());
        k(percentageRect.f());
        i(percentageRect.d());
        h(percentageRect.c());
    }

    public float getX() {
        return this.f88424b.get();
    }

    public float getY() {
        return this.f88425c.get();
    }

    public void h(float h10) {
        this.f88427e.set(h10);
    }

    public void i(float w10) {
        this.f88426d.set(w10);
    }

    public void j(float x10) {
        this.f88424b.set(x10);
    }

    public void k(float y10) {
        this.f88425c.set(y10);
    }

    @NonNull
    public String toString() {
        return "[" + ((Object) this.f88424b) + ", " + ((Object) this.f88425c) + ", " + ((Object) this.f88426d) + ", " + ((Object) this.f88427e) + "]";
    }
}
