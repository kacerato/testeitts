package tb;

import java.lang.ref.WeakReference;

public class c {

    public WeakReference<C15391a> f117267a;

    public long f117268b;

    public c(C15391a font) {
        this.f117267a = null;
        this.f117267a = new WeakReference<>(font);
        this.f117268b = font.d();
    }

    public C15391a a() {
        return this.f117267a.get();
    }

    public boolean b() {
        return this.f117267a.get() != null;
    }

    public boolean c() {
        return this.f117267a.get() != null;
    }
}
