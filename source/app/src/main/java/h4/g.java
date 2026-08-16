package h4;

import java.lang.ref.WeakReference;

public class g {

    public WeakReference<k> f90234a;

    public g(k vertex) {
        this.f90234a = null;
        this.f90234a = new WeakReference<>(vertex);
    }

    public k a() {
        return this.f90234a.get();
    }

    public boolean b() {
        return this.f90234a.get() != null;
    }
}
