package androidx.privacysandbox.ads.adservices.topics;

import android.content.Context;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;

public final class TopicsManager$Companion$obtain$2 extends O implements Mf.l<Context, TopicsManagerApi31Ext9Impl> {
    final Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicsManager$Companion$obtain$2(Context context) {
        super(1);
        this.$context = context;
    }

    @Override
    public final TopicsManagerApi31Ext9Impl invoke(Context it) {
        M.p(it, "it");
        return new TopicsManagerApi31Ext9Impl(this.$context);
    }
}
