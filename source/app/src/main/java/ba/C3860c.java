package ba;

import java.lang.ref.WeakReference;

public class C3860c {

    public WeakReference<C3858a> f33048a;

    public C3860c(C3858a layer) {
        this.f33048a = null;
        this.f33048a = new WeakReference<>(layer);
    }

    public C3858a a() {
        return this.f33048a.get();
    }

    public boolean b() {
        return this.f33048a.get() != null;
    }

    public boolean c() {
        return this.f33048a.get() != null;
    }
}
