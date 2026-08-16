package L9;

import java.lang.ref.WeakReference;

public class c {

    public WeakReference<b> f11666a;

    public c(b fixedFraming) {
        this.f11666a = null;
        this.f11666a = new WeakReference<>(fixedFraming);
    }

    public b a() {
        return this.f11666a.get();
    }

    public boolean b() {
        return this.f11666a.get() != null;
    }
}
