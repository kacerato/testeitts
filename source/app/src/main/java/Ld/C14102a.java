package ld;

import androidx.annotation.NonNull;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.jme3.math.Vector3f;

public class C14102a {

    public final Vector3 f96304a = new Vector3();

    public final Vector3 f96305b = new Vector3();

    public final Vector3 f96306c = new Vector3();

    public int f96307d;

    public double f96308e;

    public C14102a() {
    }

    public int a() {
        return this.f96307d;
    }

    public Vector3 b() {
        return this.f96305b;
    }

    public Vector3 c() {
        return this.f96304a;
    }

    public Vector3 d() {
        return this.f96306c;
    }

    public C14102a e(int idx) {
        this.f96307d = idx;
        return this;
    }

    public C14102a f(Vector3 normal) {
        this.f96305b.set(normal);
        return this;
    }

    public C14102a g(Vector3 vertice) {
        this.f96304a.set(vertice);
        return this;
    }

    public C14102a h(Vector3 vertice) {
        this.f96306c.set(vertice);
        return this;
    }

    public C14102a i(Vector3f vertice) {
        this.f96306c.set(vertice);
        return this;
    }

    @NonNull
    public String toString() {
        return "Vertice" + this.f96304a.toString(2) + " Normal" + this.f96305b.toString(2);
    }

    public C14102a(int idx) {
        this.f96307d = idx;
    }
}
