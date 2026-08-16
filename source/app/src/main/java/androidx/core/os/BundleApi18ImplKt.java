package androidx.core.os;

import Lf.o;
import android.os.Bundle;
import android.os.IBinder;
import kotlin.jvm.internal.M;

public final class BundleApi18ImplKt {
    public static final BundleApi18ImplKt INSTANCE = new BundleApi18ImplKt();

    private BundleApi18ImplKt() {
    }

    @o
    public static final void putBinder(Bundle bundle, String key, IBinder iBinder) {
        M.p(bundle, "bundle");
        M.p(key, "key");
        bundle.putBinder(key, iBinder);
    }
}
