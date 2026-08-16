package androidx.privacysandbox.ads.adservices.appsetid;

import android.content.Context;
import kotlin.jvm.internal.M;

public final class AppSetIdManagerApi31Ext9Impl extends AppSetIdManagerImplCommon {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AppSetIdManagerApi31Ext9Impl(Context context) {
        super(r2);
        android.adservices.appsetid.AppSetIdManager appSetIdManager;
        M.p(context, "context");
        appSetIdManager = android.adservices.appsetid.AppSetIdManager.get(context);
        M.o(appSetIdManager, "get(context)");
    }
}
