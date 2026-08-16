package D0;

import B0.C2320e;
import G0.C2601y;
import androidx.annotation.Nullable;

public final class C2441e0 {

    public final C2436c f4637a;

    public final C2320e f4638b;

    public C2441e0(C2436c c2436c, C2320e c2320e, C2439d0 c2439d0) {
        this.f4637a = c2436c;
        this.f4638b = c2320e;
    }

    public static C2436c b(C2441e0 c2441e0) {
        return c2441e0.f4637a;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj != null && (obj instanceof C2441e0)) {
            C2441e0 c2441e0 = (C2441e0) obj;
            if (C2601y.b(this.f4637a, c2441e0.f4637a) && C2601y.b(this.f4638b, c2441e0.f4638b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return C2601y.c(this.f4637a, this.f4638b);
    }

    public final String toString() {
        return C2601y.d(this).a("key", this.f4637a).a("feature", this.f4638b).toString();
    }
}
