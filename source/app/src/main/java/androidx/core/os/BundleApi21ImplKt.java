package androidx.core.os;

import Lf.o;
import android.os.Bundle;
import android.util.Size;
import android.util.SizeF;
import kotlin.jvm.internal.M;

public final class BundleApi21ImplKt {
    public static final BundleApi21ImplKt INSTANCE = new BundleApi21ImplKt();

    private BundleApi21ImplKt() {
    }

    @o
    public static final void putSize(Bundle bundle, String key, Size size) {
        M.p(bundle, "bundle");
        M.p(key, "key");
        bundle.putSize(key, size);
    }

    @o
    public static final void putSizeF(Bundle bundle, String key, SizeF sizeF) {
        M.p(bundle, "bundle");
        M.p(key, "key");
        bundle.putSizeF(key, sizeF);
    }
}
