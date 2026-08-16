package Kg;

import java.util.LinkedHashSet;
import java.util.Set;
import okhttp3.G;

public final class d {

    public final Set<G> f11352a = new LinkedHashSet();

    public synchronized void a(G g10) {
        this.f11352a.remove(g10);
    }

    public synchronized void b(G g10) {
        this.f11352a.add(g10);
    }

    public synchronized boolean c(G g10) {
        return this.f11352a.contains(g10);
    }
}
