package androidx.privacysandbox.ads.adservices.internal;

import Mf.l;
import android.content.Context;
import android.util.Log;
import kotlin.jvm.internal.M;

public final class BackCompatManager {
    public static final BackCompatManager INSTANCE = new BackCompatManager();

    private BackCompatManager() {
    }

    public final <T> T getManager(Context context, String tag, l<? super Context, ? extends T> manager) {
        M.p(context, "context");
        M.p(tag, "tag");
        M.p(manager, "manager");
        try {
            return manager.invoke(context);
        } catch (NoClassDefFoundError unused) {
            Log.d(tag, "Unable to find adservices code, check manifest for uses-library tag, versionS=" + AdServicesInfo.INSTANCE.extServicesVersionS());
            return null;
        }
    }
}
