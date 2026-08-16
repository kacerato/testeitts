package androidx.privacysandbox.ads.adservices.java.appsetid;

import Af.d;
import Bf.f;
import Bf.q;
import Mf.p;
import androidx.privacysandbox.ads.adservices.appsetid.AppSetId;
import androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManager;
import androidx.privacysandbox.ads.adservices.java.appsetid.AppSetIdManagerFutures;
import eg.S;
import nf.C14418j0;
import nf.P0;

@f(c = "androidx.privacysandbox.ads.adservices.java.appsetid.AppSetIdManagerFutures$Api33Ext4JavaImpl$getAppSetIdAsync$1", f = "AppSetIdManagerFutures.kt", i = {}, l = {49}, m = "invokeSuspend", n = {}, s = {})
public final class AppSetIdManagerFutures$Api33Ext4JavaImpl$getAppSetIdAsync$1 extends q implements p<S, yf.f<? super AppSetId>, Object> {
    int label;
    final AppSetIdManagerFutures.Api33Ext4JavaImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppSetIdManagerFutures$Api33Ext4JavaImpl$getAppSetIdAsync$1(AppSetIdManagerFutures.Api33Ext4JavaImpl api33Ext4JavaImpl, yf.f<? super AppSetIdManagerFutures$Api33Ext4JavaImpl$getAppSetIdAsync$1> fVar) {
        super(2, fVar);
        this.this$0 = api33Ext4JavaImpl;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        return new AppSetIdManagerFutures$Api33Ext4JavaImpl$getAppSetIdAsync$1(this.this$0, fVar);
    }

    @Override
    public final Object invoke(S s10, yf.f<? super AppSetId> fVar) {
        return ((AppSetIdManagerFutures$Api33Ext4JavaImpl$getAppSetIdAsync$1) create(s10, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        AppSetIdManager appSetIdManager;
        Object l10 = d.l();
        int i10 = this.label;
        if (i10 == 0) {
            C14418j0.n(obj);
            appSetIdManager = this.this$0.mAppSetIdManager;
            this.label = 1;
            obj = appSetIdManager.getAppSetId(this);
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
