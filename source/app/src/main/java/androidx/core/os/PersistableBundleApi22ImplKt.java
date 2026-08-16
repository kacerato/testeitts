package androidx.core.os;

import Lf.o;
import android.os.PersistableBundle;
import kotlin.jvm.internal.M;

final class PersistableBundleApi22ImplKt {
    public static final PersistableBundleApi22ImplKt INSTANCE = new PersistableBundleApi22ImplKt();

    private PersistableBundleApi22ImplKt() {
    }

    @o
    public static final void putBoolean(PersistableBundle persistableBundle, String str, boolean z10) {
        M.p(persistableBundle, "persistableBundle");
        persistableBundle.putBoolean(str, z10);
    }

    @o
    public static final void putBooleanArray(PersistableBundle persistableBundle, String str, boolean[] value) {
        M.p(persistableBundle, "persistableBundle");
        M.p(value, "value");
        persistableBundle.putBooleanArray(str, value);
    }
}
