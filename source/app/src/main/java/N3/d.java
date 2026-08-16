package n3;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class d {

    public static volatile d f97720b;

    public final Set<f> f97721a = new HashSet();

    public static d a() {
        d dVar = f97720b;
        if (dVar == null) {
            synchronized (d.class) {
                try {
                    dVar = f97720b;
                    if (dVar == null) {
                        dVar = new d();
                        f97720b = dVar;
                    }
                } finally {
                }
            }
        }
        return dVar;
    }

    public Set<f> b() {
        Set<f> unmodifiableSet;
        synchronized (this.f97721a) {
            unmodifiableSet = Collections.unmodifiableSet(this.f97721a);
        }
        return unmodifiableSet;
    }

    public void c(String str, String str2) {
        synchronized (this.f97721a) {
            this.f97721a.add(f.a(str, str2));
        }
    }
}
