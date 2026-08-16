package M9;

import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

public class g {

    public final WeakReference<Object> f14809a;

    public volatile long f14810b;

    public volatile c f14811c;

    public final boolean f14812d;

    public final int f14813e;

    public final a f14814f;

    public final Class f14815g;

    public final Class[] f14816h;

    public h[] f14817i;

    public volatile long f14818j;

    public volatile boolean f14819k;

    public volatile float f14821m;

    public volatile int f14820l = -1;

    public volatile AtomicBoolean f14822n = new AtomicBoolean();

    public g(Object referencedObject, long pointer, c destroyer, boolean canDestroyAsync, int destroyPriority, a destroyChannel, Class[] destroyListenerClasses) {
        if (referencedObject == null) {
            throw new NullPointerException("referencedObject can't be null");
        }
        if (destroyer == null) {
            throw new NullPointerException("destroyer can't be null");
        }
        this.f14815g = referencedObject.getClass();
        this.f14809a = new WeakReference<>(referencedObject);
        this.f14810b = pointer;
        this.f14811c = destroyer;
        this.f14812d = canDestroyAsync;
        this.f14813e = destroyPriority;
        this.f14814f = destroyChannel == null ? a.CPU : destroyChannel;
        this.f14816h = destroyListenerClasses;
    }

    public Object a() {
        return this.f14809a.get();
    }

    public Class b() {
        return this.f14815g;
    }

    public a c() {
        return this.f14814f;
    }

    public Class[] d() {
        return this.f14816h;
    }

    public int e() {
        return this.f14813e;
    }

    public c f() {
        return this.f14811c;
    }

    public long g() {
        return this.f14818j;
    }

    public long h() {
        return this.f14810b;
    }

    public h[] i() {
        return this.f14817i;
    }

    public boolean j() {
        return this.f14812d;
    }

    public void k(h[] registeredDestroyListeners) {
        this.f14817i = registeredDestroyListeners;
    }

    public boolean l() {
        WeakReference<Object> weakReference = this.f14809a;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }
}
