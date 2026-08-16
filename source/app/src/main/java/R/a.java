package R;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

public class a implements h {

    public final Set<i> f22497a = Collections.newSetFromMap(new WeakHashMap());

    public boolean f22498b;

    public boolean f22499c;

    @Override
    public void a(@NonNull i iVar) {
        this.f22497a.add(iVar);
        if (this.f22499c) {
            iVar.b();
        } else if (this.f22498b) {
            iVar.onStart();
        } else {
            iVar.c();
        }
    }

    @Override
    public void b(@NonNull i iVar) {
        this.f22497a.remove(iVar);
    }

    public void c() {
        this.f22499c = true;
        Iterator it = Y.m.k(this.f22497a).iterator();
        while (it.hasNext()) {
            ((i) it.next()).b();
        }
    }

    public void d() {
        this.f22498b = true;
        Iterator it = Y.m.k(this.f22497a).iterator();
        while (it.hasNext()) {
            ((i) it.next()).onStart();
        }
    }

    public void e() {
        this.f22498b = false;
        Iterator it = Y.m.k(this.f22497a).iterator();
        while (it.hasNext()) {
            ((i) it.next()).c();
        }
    }
}
