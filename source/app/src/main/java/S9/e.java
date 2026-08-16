package S9;

import java.lang.ref.WeakReference;

public class e {

    public WeakReference<f> f23021a;

    public e(f listener) {
        this.f23021a = null;
        this.f23021a = new WeakReference<>(listener);
    }

    public f a() {
        return this.f23021a.get();
    }

    public boolean b() {
        return this.f23021a.get() != null;
    }

    public boolean c() {
        return this.f23021a.get() != null;
    }
}
