package androidx.privacysandbox.ads.adservices.adid;

import Mf.l;
import android.content.Context;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;

public final class AdIdManager$Companion$obtain$1 extends O implements l<Context, AdIdManagerApi31Ext9Impl> {
    final Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdIdManager$Companion$obtain$1(Context context) {
        super(1);
        this.$context = context;
    }

    @Override
    public final AdIdManagerApi31Ext9Impl invoke(Context it) {
        M.p(it, "it");
        return new AdIdManagerApi31Ext9Impl(this.$context);
    }
}
