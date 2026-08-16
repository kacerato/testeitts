package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import eg.C13123k;
import eg.S;
import java.util.Iterator;
import java.util.List;
import nf.C14418j0;
import nf.P0;

@Bf.f(c = "androidx.privacysandbox.ads.adservices.measurement.MeasurementManagerImplCommon$registerSource$4", f = "MeasurementManagerImplCommon.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
public final class MeasurementManagerImplCommon$registerSource$4 extends Bf.q implements Mf.p<S, yf.f<? super P0>, Object> {
    final SourceRegistrationRequest $request;
    private Object L$0;
    int label;
    final MeasurementManagerImplCommon this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MeasurementManagerImplCommon$registerSource$4(SourceRegistrationRequest sourceRegistrationRequest, MeasurementManagerImplCommon measurementManagerImplCommon, yf.f<? super MeasurementManagerImplCommon$registerSource$4> fVar) {
        super(2, fVar);
        this.$request = sourceRegistrationRequest;
        this.this$0 = measurementManagerImplCommon;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        MeasurementManagerImplCommon$registerSource$4 measurementManagerImplCommon$registerSource$4 = new MeasurementManagerImplCommon$registerSource$4(this.$request, this.this$0, fVar);
        measurementManagerImplCommon$registerSource$4.L$0 = obj;
        return measurementManagerImplCommon$registerSource$4;
    }

    @Override
    public final Object invoke(S s10, yf.f<? super P0> fVar) {
        return ((MeasurementManagerImplCommon$registerSource$4) create(s10, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Af.d.l();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        C14418j0.n(obj);
        S s10 = (S) this.L$0;
        List<Uri> registrationUris = this.$request.getRegistrationUris();
        MeasurementManagerImplCommon measurementManagerImplCommon = this.this$0;
        SourceRegistrationRequest sourceRegistrationRequest = this.$request;
        Iterator<Uri> it = registrationUris.iterator();
        while (it.hasNext()) {
            C13123k.f(s10, null, null, new MeasurementManagerImplCommon$registerSource$4$1$1(measurementManagerImplCommon, it.next(), sourceRegistrationRequest, null), 3, null);
        }
        return P0.f98194a;
    }
}
