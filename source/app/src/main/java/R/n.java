package R;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import org.apache.commons.math3.geometry.VectorFormat;

public class n {

    public static final String f22531d = "RequestTracker";

    public final Set<U.d> f22532a = Collections.newSetFromMap(new WeakHashMap());

    public final List<U.d> f22533b = new ArrayList();

    public boolean f22534c;

    @VisibleForTesting
    public void a(U.d dVar) {
        this.f22532a.add(dVar);
    }

    public boolean b(@Nullable U.d dVar) {
        boolean z10 = true;
        if (dVar == null) {
            return true;
        }
        boolean remove = this.f22532a.remove(dVar);
        if (!this.f22533b.remove(dVar) && !remove) {
            z10 = false;
        }
        if (z10) {
            dVar.clear();
        }
        return z10;
    }

    public void c() {
        Iterator it = Y.m.k(this.f22532a).iterator();
        while (it.hasNext()) {
            b((U.d) it.next());
        }
        this.f22533b.clear();
    }

    public boolean d() {
        return this.f22534c;
    }

    public void e() {
        this.f22534c = true;
        for (U.d dVar : Y.m.k(this.f22532a)) {
            if (dVar.isRunning() || dVar.f()) {
                dVar.clear();
                this.f22533b.add(dVar);
            }
        }
    }

    public void f() {
        this.f22534c = true;
        for (U.d dVar : Y.m.k(this.f22532a)) {
            if (dVar.isRunning()) {
                dVar.pause();
                this.f22533b.add(dVar);
            }
        }
    }

    public void g() {
        for (U.d dVar : Y.m.k(this.f22532a)) {
            if (!dVar.f() && !dVar.e()) {
                dVar.clear();
                if (this.f22534c) {
                    this.f22533b.add(dVar);
                } else {
                    dVar.j();
                }
            }
        }
    }

    public void h() {
        this.f22534c = false;
        for (U.d dVar : Y.m.k(this.f22532a)) {
            if (!dVar.f() && !dVar.isRunning()) {
                dVar.j();
            }
        }
        this.f22533b.clear();
    }

    public void i(@NonNull U.d dVar) {
        this.f22532a.add(dVar);
        if (!this.f22534c) {
            dVar.j();
            return;
        }
        dVar.clear();
        if (Log.isLoggable(f22531d, 2)) {
            Log.v(f22531d, "Paused, delaying request");
        }
        this.f22533b.add(dVar);
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f22532a.size() + ", isPaused=" + this.f22534c + VectorFormat.DEFAULT_SUFFIX;
    }
}
