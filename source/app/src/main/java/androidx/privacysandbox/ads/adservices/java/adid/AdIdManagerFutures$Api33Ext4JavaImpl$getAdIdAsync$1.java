package androidx.privacysandbox.ads.adservices.java.adid;

import Af.d;
import Bf.f;
import Bf.q;
import Mf.p;
import androidx.privacysandbox.ads.adservices.adid.AdId;
import androidx.privacysandbox.ads.adservices.adid.AdIdManager;
import androidx.privacysandbox.ads.adservices.java.adid.AdIdManagerFutures;
import eg.S;
import nf.C14418j0;
import nf.P0;

@f(c = "androidx.privacysandbox.ads.adservices.java.adid.AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1", f = "AdIdManagerFutures.kt", i = {}, l = {54}, m = "invokeSuspend", n = {}, s = {})
public final class AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1 extends q implements p<S, yf.f<? super AdId>, Object> {
    int label;
    final AdIdManagerFutures.Api33Ext4JavaImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1(AdIdManagerFutures.Api33Ext4JavaImpl api33Ext4JavaImpl, yf.f<? super AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1> fVar) {
        super(2, fVar);
        this.this$0 = api33Ext4JavaImpl;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        return new AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1(this.this$0, fVar);
    }

    @Override
    public final Object invoke(S s10, yf.f<? super AdId> fVar) {
        return ((AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1) create(s10, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        AdIdManager adIdManager;
        Object l10 = d.l();
        int i10 = this.label;
        if (i10 == 0) {
            C14418j0.n(obj);
            adIdManager = this.this$0.mAdIdManager;
            this.label = 1;
            obj = adIdManager.getAdId(this);
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
