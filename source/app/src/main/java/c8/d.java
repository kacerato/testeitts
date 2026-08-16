package c8;

import java.lang.ref.WeakReference;

public class d {

    public c f34455a;

    public WeakReference<Object> f34456b;

    public d(Object object, c gameControllerInterface) {
        this.f34455a = gameControllerInterface;
        this.f34456b = new WeakReference<>(object);
    }

    public boolean a() {
        WeakReference<Object> weakReference;
        if (this.f34455a == null || (weakReference = this.f34456b) == null || weakReference.get() == null) {
            return false;
        }
        this.f34455a.a();
        return true;
    }

    public boolean b() {
        WeakReference<Object> weakReference;
        if (this.f34455a == null || (weakReference = this.f34456b) == null || weakReference.get() == null) {
            return false;
        }
        this.f34455a.b();
        return true;
    }

    public boolean c() {
        WeakReference<Object> weakReference;
        if (this.f34455a == null || (weakReference = this.f34456b) == null || weakReference.get() == null) {
            return false;
        }
        this.f34455a.c();
        return true;
    }

    public boolean d() {
        WeakReference<Object> weakReference;
        if (this.f34455a == null || (weakReference = this.f34456b) == null || weakReference.get() == null) {
            return false;
        }
        this.f34455a.d();
        return true;
    }
}
