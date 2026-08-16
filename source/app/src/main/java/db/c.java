package Db;

import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.lang.ref.WeakReference;

public class c {

    public final long f5083a;

    public final WeakReference<Vertex> f5084b;

    public final a f5085c;

    public final int f5086d;

    public c(Vertex axis, a collisionElement, int bufferGUID) {
        this.f5084b = new WeakReference<>(axis);
        this.f5083a = axis.hashCode();
        this.f5085c = collisionElement;
        this.f5086d = bufferGUID;
    }

    public Vertex a() {
        return this.f5084b.get();
    }

    public int b() {
        return this.f5086d;
    }

    public a c() {
        return this.f5085c;
    }

    public long d() {
        return this.f5083a;
    }

    public boolean e() {
        Vertex vertex = this.f5084b.get();
        return vertex != null && vertex.f0() == this.f5086d;
    }
}
