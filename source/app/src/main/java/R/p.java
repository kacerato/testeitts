package R;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public final class p implements i {

    public final Set<V.p<?>> f22543b = Collections.newSetFromMap(new WeakHashMap());

    @Override
    public void b() {
        Iterator it = Y.m.k(this.f22543b).iterator();
        while (it.hasNext()) {
            ((V.p) it.next()).b();
        }
    }

    @Override
    public void c() {
        Iterator it = Y.m.k(this.f22543b).iterator();
        while (it.hasNext()) {
            ((V.p) it.next()).c();
        }
    }

    public void d() {
        this.f22543b.clear();
    }

    @NonNull
    public List<V.p<?>> e() {
        return Y.m.k(this.f22543b);
    }

    public void j(@NonNull V.p<?> pVar) {
        this.f22543b.add(pVar);
    }

    public void l(@NonNull V.p<?> pVar) {
        this.f22543b.remove(pVar);
    }

    @Override
    public void onStart() {
        Iterator it = Y.m.k(this.f22543b).iterator();
        while (it.hasNext()) {
            ((V.p) it.next()).onStart();
        }
    }
}
