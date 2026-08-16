package androidx.privacysandbox.ads.adservices.java.signals;

import Af.d;
import Bf.f;
import Bf.q;
import Mf.p;
import androidx.privacysandbox.ads.adservices.java.signals.ProtectedSignalsManagerFutures;
import androidx.privacysandbox.ads.adservices.signals.ProtectedSignalsManager;
import androidx.privacysandbox.ads.adservices.signals.UpdateSignalsRequest;
import eg.S;
import kotlin.jvm.internal.M;
import nf.C14418j0;
import nf.P0;

@f(c = "androidx.privacysandbox.ads.adservices.java.signals.ProtectedSignalsManagerFutures$JavaImpl$updateSignalsAsync$1", f = "ProtectedSignalsManagerFutures.kt", i = {}, l = {111}, m = "invokeSuspend", n = {}, s = {})
public final class ProtectedSignalsManagerFutures$JavaImpl$updateSignalsAsync$1 extends q implements p<S, yf.f<? super P0>, Object> {
    final UpdateSignalsRequest $request;
    int label;
    final ProtectedSignalsManagerFutures.JavaImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProtectedSignalsManagerFutures$JavaImpl$updateSignalsAsync$1(ProtectedSignalsManagerFutures.JavaImpl javaImpl, UpdateSignalsRequest updateSignalsRequest, yf.f<? super ProtectedSignalsManagerFutures$JavaImpl$updateSignalsAsync$1> fVar) {
        super(2, fVar);
        this.this$0 = javaImpl;
        this.$request = updateSignalsRequest;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        return new ProtectedSignalsManagerFutures$JavaImpl$updateSignalsAsync$1(this.this$0, this.$request, fVar);
    }

    @Override
    public final Object invoke(S s10, yf.f<? super P0> fVar) {
        return ((ProtectedSignalsManagerFutures$JavaImpl$updateSignalsAsync$1) create(s10, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        ProtectedSignalsManager protectedSignalsManager;
        Object l10 = d.l();
        int i10 = this.label;
        if (i10 == 0) {
            C14418j0.n(obj);
            protectedSignalsManager = this.this$0.mProtectedSignalsManager;
            M.m(protectedSignalsManager);
            UpdateSignalsRequest updateSignalsRequest = this.$request;
            this.label = 1;
            if (protectedSignalsManager.updateSignals(updateSignalsRequest, this) == l10) {
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
