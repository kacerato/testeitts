package androidx.privacysandbox.ads.adservices.java.adselection;

import Af.d;
import Bf.f;
import Bf.q;
import Mf.p;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager;
import androidx.privacysandbox.ads.adservices.adselection.UpdateAdCounterHistogramRequest;
import androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures;
import eg.S;
import kotlin.jvm.internal.M;
import nf.C14418j0;
import nf.P0;

@f(c = "androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures$Api33Ext4JavaImpl$updateAdCounterHistogramAsync$1", f = "AdSelectionManagerFutures.kt", i = {}, l = {338}, m = "invokeSuspend", n = {}, s = {})
public final class AdSelectionManagerFutures$Api33Ext4JavaImpl$updateAdCounterHistogramAsync$1 extends q implements p<S, yf.f<? super P0>, Object> {
    final UpdateAdCounterHistogramRequest $updateAdCounterHistogramRequest;
    int label;
    final AdSelectionManagerFutures.Api33Ext4JavaImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdSelectionManagerFutures$Api33Ext4JavaImpl$updateAdCounterHistogramAsync$1(AdSelectionManagerFutures.Api33Ext4JavaImpl api33Ext4JavaImpl, UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest, yf.f<? super AdSelectionManagerFutures$Api33Ext4JavaImpl$updateAdCounterHistogramAsync$1> fVar) {
        super(2, fVar);
        this.this$0 = api33Ext4JavaImpl;
        this.$updateAdCounterHistogramRequest = updateAdCounterHistogramRequest;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        return new AdSelectionManagerFutures$Api33Ext4JavaImpl$updateAdCounterHistogramAsync$1(this.this$0, this.$updateAdCounterHistogramRequest, fVar);
    }

    @Override
    public final Object invoke(S s10, yf.f<? super P0> fVar) {
        return ((AdSelectionManagerFutures$Api33Ext4JavaImpl$updateAdCounterHistogramAsync$1) create(s10, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        AdSelectionManager adSelectionManager;
        Object l10 = d.l();
        int i10 = this.label;
        if (i10 == 0) {
            C14418j0.n(obj);
            adSelectionManager = this.this$0.mAdSelectionManager;
            M.m(adSelectionManager);
            UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest = this.$updateAdCounterHistogramRequest;
            this.label = 1;
            if (adSelectionManager.updateAdCounterHistogram(updateAdCounterHistogramRequest, this) == l10) {
                return l10;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C14418j0.n(obj);
        }
        return P0.f98194a;
    }
}
