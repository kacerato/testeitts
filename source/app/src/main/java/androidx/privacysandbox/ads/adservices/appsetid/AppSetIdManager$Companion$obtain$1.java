package androidx.privacysandbox.ads.adservices.appsetid;

import Mf.l;
import android.content.Context;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;

public final class AppSetIdManager$Companion$obtain$1 extends O implements l<Context, AppSetIdManagerApi31Ext9Impl> {
    final Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppSetIdManager$Companion$obtain$1(Context context) {
        super(1);
        this.$context = context;
    }

    @Override
    public final AppSetIdManagerApi31Ext9Impl invoke(Context it) {
        M.p(it, "it");
        return new AppSetIdManagerApi31Ext9Impl(this.$context);
    }
}
