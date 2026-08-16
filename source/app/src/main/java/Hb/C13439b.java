package hb;

import K8.f;
import java.lang.ref.WeakReference;

public class C13439b extends f {

    public WeakReference<C13438a> f90476b;

    public final String f90477c;

    public C13439b(C13438a vertex, String file) {
        this.f90476b = null;
        this.f90476b = new WeakReference<>(vertex);
        this.f90477c = file;
    }

    public boolean d(String file) {
        return this.f90477c.equals(file);
    }

    public C13438a e() {
        return this.f90476b.get();
    }

    public String getFile() {
        return this.f90477c;
    }

    public boolean validate() {
        return this.f90476b.get() != null;
    }
}
