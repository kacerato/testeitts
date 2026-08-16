package androidx.privacysandbox.ads.adservices.java.customaudience;

import Af.d;
import Bf.f;
import Bf.q;
import Mf.p;
import androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager;
import androidx.privacysandbox.ads.adservices.customaudience.FetchAndJoinCustomAudienceRequest;
import androidx.privacysandbox.ads.adservices.java.customaudience.CustomAudienceManagerFutures;
import eg.S;
import kotlin.jvm.internal.M;
import nf.C14418j0;
import nf.P0;

@f(c = "androidx.privacysandbox.ads.adservices.java.customaudience.CustomAudienceManagerFutures$Api33Ext4JavaImpl$fetchAndJoinCustomAudienceAsync$1", f = "CustomAudienceManagerFutures.kt", i = {}, l = {156}, m = "invokeSuspend", n = {}, s = {})
public final class CustomAudienceManagerFutures$Api33Ext4JavaImpl$fetchAndJoinCustomAudienceAsync$1 extends q implements p<S, yf.f<? super P0>, Object> {
    final FetchAndJoinCustomAudienceRequest $request;
    int label;
    final CustomAudienceManagerFutures.Api33Ext4JavaImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomAudienceManagerFutures$Api33Ext4JavaImpl$fetchAndJoinCustomAudienceAsync$1(CustomAudienceManagerFutures.Api33Ext4JavaImpl api33Ext4JavaImpl, FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest, yf.f<? super CustomAudienceManagerFutures$Api33Ext4JavaImpl$fetchAndJoinCustomAudienceAsync$1> fVar) {
        super(2, fVar);
        this.this$0 = api33Ext4JavaImpl;
        this.$request = fetchAndJoinCustomAudienceRequest;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        return new CustomAudienceManagerFutures$Api33Ext4JavaImpl$fetchAndJoinCustomAudienceAsync$1(this.this$0, this.$request, fVar);
    }

    @Override
    public final Object invoke(S s10, yf.f<? super P0> fVar) {
        return ((CustomAudienceManagerFutures$Api33Ext4JavaImpl$fetchAndJoinCustomAudienceAsync$1) create(s10, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        CustomAudienceManager customAudienceManager;
        Object l10 = d.l();
        int i10 = this.label;
        if (i10 == 0) {
            C14418j0.n(obj);
            customAudienceManager = this.this$0.mCustomAudienceManager;
            M.m(customAudienceManager);
            FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest = this.$request;
            this.label = 1;
            if (customAudienceManager.fetchAndJoinCustomAudience(fetchAndJoinCustomAudienceRequest, this) == l10) {
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
