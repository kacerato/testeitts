package N2;

import android.os.Bundle;
import java.util.Objects;
import n1.C14345a;

public final class f implements C14345a.c {

    public final g f15482a;

    public f(g gVar) {
        Objects.requireNonNull(gVar);
        this.f15482a = gVar;
    }

    @Override
    public final void a(String str, String str2, Bundle bundle, long j10) {
        if (str == null || !c.c(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str2);
        bundle2.putLong("timestampInMillis", j10);
        bundle2.putBundle("params", bundle);
        this.f15482a.b().a(3, bundle2);
    }
}
