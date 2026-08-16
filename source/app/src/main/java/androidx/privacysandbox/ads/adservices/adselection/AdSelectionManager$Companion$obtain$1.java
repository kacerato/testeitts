package androidx.privacysandbox.ads.adservices.adselection;

import android.content.Context;

public final class AdSelectionManager$Companion$obtain$1 extends kotlin.jvm.internal.O implements Mf.l<Context, AdSelectionManagerApi31Ext9Impl> {
    final Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdSelectionManager$Companion$obtain$1(Context context) {
        super(1);
        this.$context = context;
    }

    @Override
    public final AdSelectionManagerApi31Ext9Impl invoke(Context it) {
        kotlin.jvm.internal.M.p(it, "it");
        return new AdSelectionManagerApi31Ext9Impl(this.$context);
    }
}
