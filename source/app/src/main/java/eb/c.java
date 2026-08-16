package Eb;

import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.lang.ref.WeakReference;

public class c {

    public final long f5762a;

    public final WeakReference<Vertex> f5763b;

    public final a f5764c;

    public final int f5765d;

    public c(Vertex axis, a convexElement, int bufferGUID) {
        this.f5763b = new WeakReference<>(axis);
        this.f5762a = axis.hashCode();
        this.f5764c = convexElement;
        this.f5765d = bufferGUID;
    }

    public Vertex a() {
        return this.f5763b.get();
    }

    public int b() {
        return this.f5765d;
    }

    public a c() {
        return this.f5764c;
    }

    public long d() {
        return this.f5762a;
    }

    public boolean e() {
        return this.f5763b.get() != null;
    }
}
