package Hb;

import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.lang.ref.WeakReference;

public class c {

    public WeakReference<Vertex> f8327a;

    public String f8328b;

    public c(Vertex vertex, String file) {
        this.f8327a = null;
        this.f8327a = new WeakReference<>(vertex);
        this.f8328b = file;
    }

    public boolean a(String file) {
        return this.f8328b.equals(file);
    }

    public Vertex b() {
        WeakReference<Vertex> weakReference = this.f8327a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public String c() {
        return this.f8328b;
    }

    public void d() {
        this.f8327a = null;
    }

    public boolean e() {
        WeakReference<Vertex> weakReference = this.f8327a;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    public boolean f() {
        WeakReference<Vertex> weakReference = this.f8327a;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }
}
