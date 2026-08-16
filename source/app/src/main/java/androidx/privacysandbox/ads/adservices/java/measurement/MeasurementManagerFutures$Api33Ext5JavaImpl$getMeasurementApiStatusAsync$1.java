package androidx.privacysandbox.ads.adservices.java.measurement;

import Af.d;
import Bf.f;
import Bf.q;
import Mf.p;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import androidx.privacysandbox.ads.adservices.measurement.MeasurementManager;
import eg.S;
import nf.C14418j0;
import nf.P0;

@f(c = "androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1", f = "MeasurementManagerFutures.kt", i = {}, l = {190}, m = "invokeSuspend", n = {}, s = {})
public final class MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1 extends q implements p<S, yf.f<? super Integer>, Object> {
    int label;
    final MeasurementManagerFutures.Api33Ext5JavaImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1(MeasurementManagerFutures.Api33Ext5JavaImpl api33Ext5JavaImpl, yf.f<? super MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1> fVar) {
        super(2, fVar);
        this.this$0 = api33Ext5JavaImpl;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        return new MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1(this.this$0, fVar);
    }

    @Override
    public final Object invoke(S s10, yf.f<? super Integer> fVar) {
        return ((MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1) create(s10, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        MeasurementManager measurementManager;
        Object l10 = d.l();
        int i10 = this.label;
        if (i10 == 0) {
            C14418j0.n(obj);
            measurementManager = this.this$0.mMeasurementManager;
            this.label = 1;
            obj = measurementManager.getMeasurementApiStatus(this);
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
