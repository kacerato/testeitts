package androidx.privacysandbox.ads.adservices.customaudience;

import android.content.Context;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;

public final class CustomAudienceManager$Companion$obtain$1 extends O implements Mf.l<Context, CustomAudienceManagerApi31Ext9Impl> {
    final Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomAudienceManager$Companion$obtain$1(Context context) {
        super(1);
        this.$context = context;
    }

    @Override
    public final CustomAudienceManagerApi31Ext9Impl invoke(Context it) {
        M.p(it, "it");
        return new CustomAudienceManagerApi31Ext9Impl(this.$context);
    }
}
