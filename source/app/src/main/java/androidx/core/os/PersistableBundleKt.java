package androidx.core.os;

import android.os.PersistableBundle;
import java.util.Map;
import kotlin.jvm.internal.M;
import nf.Z;

public final class PersistableBundleKt {
    public static final PersistableBundle persistableBundleOf(Z<String, ? extends Object>... pairs) {
        M.p(pairs, "pairs");
        PersistableBundle createPersistableBundle = PersistableBundleApi21ImplKt.createPersistableBundle(pairs.length);
        for (Z<String, ? extends Object> z10 : pairs) {
            PersistableBundleApi21ImplKt.putValue(createPersistableBundle, z10.a(), z10.b());
        }
        return createPersistableBundle;
    }

    public static final PersistableBundle toPersistableBundle(Map<String, ? extends Object> map) {
        M.p(map, "<this>");
        PersistableBundle createPersistableBundle = PersistableBundleApi21ImplKt.createPersistableBundle(map.size());
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            PersistableBundleApi21ImplKt.putValue(createPersistableBundle, entry.getKey(), entry.getValue());
        }
        return createPersistableBundle;
    }

    public static final PersistableBundle persistableBundleOf() {
        return PersistableBundleApi21ImplKt.createPersistableBundle(0);
    }
}
