package androidx.privacysandbox.ads.adservices.customaudience;

import android.content.Context;
import kotlin.jvm.internal.M;

public final class CustomAudienceManagerApi31Ext9Impl extends CustomAudienceManagerImplCommon {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CustomAudienceManagerApi31Ext9Impl(Context context) {
        super(r2);
        android.adservices.customaudience.CustomAudienceManager customAudienceManager;
        M.p(context, "context");
        customAudienceManager = android.adservices.customaudience.CustomAudienceManager.get(context);
        M.o(customAudienceManager, "get(context)");
    }
}
