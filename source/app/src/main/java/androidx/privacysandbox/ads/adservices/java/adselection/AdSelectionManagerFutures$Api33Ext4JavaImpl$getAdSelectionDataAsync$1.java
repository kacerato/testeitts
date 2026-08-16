package androidx.privacysandbox.ads.adservices.java.adselection;

import Af.d;
import Bf.f;
import Bf.q;
import Li.w0;
import Mf.p;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager;
import androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataOutcome;
import androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataRequest;
import androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures;
import eg.S;
import kotlin.jvm.internal.M;
import nf.C14418j0;
import nf.P0;

@f(c = "androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures$Api33Ext4JavaImpl$getAdSelectionDataAsync$1", f = "AdSelectionManagerFutures.kt", i = {}, l = {w0.f14283E}, m = "invokeSuspend", n = {}, s = {})
public final class AdSelectionManagerFutures$Api33Ext4JavaImpl$getAdSelectionDataAsync$1 extends q implements p<S, yf.f<? super GetAdSelectionDataOutcome>, Object> {
    final GetAdSelectionDataRequest $getAdSelectionDataRequest;
    int label;
    final AdSelectionManagerFutures.Api33Ext4JavaImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdSelectionManagerFutures$Api33Ext4JavaImpl$getAdSelectionDataAsync$1(AdSelectionManagerFutures.Api33Ext4JavaImpl api33Ext4JavaImpl, GetAdSelectionDataRequest getAdSelectionDataRequest, yf.f<? super AdSelectionManagerFutures$Api33Ext4JavaImpl$getAdSelectionDataAsync$1> fVar) {
        super(2, fVar);
        this.this$0 = api33Ext4JavaImpl;
        this.$getAdSelectionDataRequest = getAdSelectionDataRequest;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        return new AdSelectionManagerFutures$Api33Ext4JavaImpl$getAdSelectionDataAsync$1(this.this$0, this.$getAdSelectionDataRequest, fVar);
    }

    @Override
    public final Object invoke(S s10, yf.f<? super GetAdSelectionDataOutcome> fVar) {
        return ((AdSelectionManagerFutures$Api33Ext4JavaImpl$getAdSelectionDataAsync$1) create(s10, fVar)).invokeSuspend(P0.f98194a);
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
            GetAdSelectionDataRequest getAdSelectionDataRequest = this.$getAdSelectionDataRequest;
            this.label = 1;
            obj = adSelectionManager.getAdSelectionData(getAdSelectionDataRequest, this);
            if (obj == l10) {
                return l10;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C14418j0.n(obj);
        }
        return obj;
    }
}
