package androidx.privacysandbox.ads.adservices.adid;

import android.content.Context;
import kotlin.jvm.internal.M;

public final class AdIdManagerApi31Ext9Impl extends AdIdManagerImplCommon {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AdIdManagerApi31Ext9Impl(Context context) {
        super(r2);
        android.adservices.adid.AdIdManager adIdManager;
        M.p(context, "context");
        adIdManager = android.adservices.adid.AdIdManager.get(context);
        M.o(adIdManager, "get(context)");
    }
}
