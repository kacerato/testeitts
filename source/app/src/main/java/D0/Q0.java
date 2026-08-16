package D0;

import B0.C2318c;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.InterfaceC11909m;
import java.util.Iterator;
import java.util.Set;
import v1.AbstractC15790k;
import v1.C15791l;

public final class Q0 {

    public int f4598d;

    public final ArrayMap f4596b = new ArrayMap();

    public final C15791l f4597c = new C15791l();

    public boolean f4599e = false;

    public final ArrayMap f4595a = new ArrayMap();

    public Q0(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.f4595a.put(((InterfaceC11909m) it.next()).G(), null);
        }
        this.f4598d = this.f4595a.o().size();
    }

    public final AbstractC15790k a() {
        return this.f4597c.a();
    }

    public final Set b() {
        return this.f4595a.o();
    }

    public final void c(C2436c c2436c, C2318c c2318c, @Nullable String str) {
        this.f4595a.put(c2436c, c2318c);
        this.f4596b.put(c2436c, str);
        this.f4598d--;
        if (!c2318c.u0()) {
            this.f4599e = true;
        }
        if (this.f4598d == 0) {
            if (!this.f4599e) {
                this.f4597c.c(this.f4596b);
            } else {
                this.f4597c.b(new AvailabilityException(this.f4595a));
            }
        }
    }
}
