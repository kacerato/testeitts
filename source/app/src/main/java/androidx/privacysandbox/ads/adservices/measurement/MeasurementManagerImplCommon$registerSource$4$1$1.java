package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import androidx.core.os.OutcomeReceiverKt;
import eg.C13135q;
import eg.S;
import nf.C14418j0;
import nf.P0;

@Bf.f(c = "androidx.privacysandbox.ads.adservices.measurement.MeasurementManagerImplCommon$registerSource$4$1$1", f = "MeasurementManagerImplCommon.kt", i = {}, l = {131}, m = "invokeSuspend", n = {}, s = {})
public final class MeasurementManagerImplCommon$registerSource$4$1$1 extends Bf.q implements Mf.p<S, yf.f<? super P0>, Object> {
    final SourceRegistrationRequest $request;
    final Uri $uri;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final MeasurementManagerImplCommon this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MeasurementManagerImplCommon$registerSource$4$1$1(MeasurementManagerImplCommon measurementManagerImplCommon, Uri uri, SourceRegistrationRequest sourceRegistrationRequest, yf.f<? super MeasurementManagerImplCommon$registerSource$4$1$1> fVar) {
        super(2, fVar);
        this.this$0 = measurementManagerImplCommon;
        this.$uri = uri;
        this.$request = sourceRegistrationRequest;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        return new MeasurementManagerImplCommon$registerSource$4$1$1(this.this$0, this.$uri, this.$request, fVar);
    }

    @Override
    public final Object invoke(S s10, yf.f<? super P0> fVar) {
        return ((MeasurementManagerImplCommon$registerSource$4$1$1) create(s10, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object l10 = Af.d.l();
        int i10 = this.label;
        if (i10 == 0) {
            C14418j0.n(obj);
            MeasurementManagerImplCommon measurementManagerImplCommon = this.this$0;
            Uri uri = this.$uri;
            SourceRegistrationRequest sourceRegistrationRequest = this.$request;
            this.L$0 = measurementManagerImplCommon;
            this.L$1 = uri;
            this.L$2 = sourceRegistrationRequest;
            this.label = 1;
            C13135q c13135q = new C13135q(Af.c.e(this), 1);
            c13135q.O();
            measurementManagerImplCommon.getMMeasurementManager().registerSource(uri, sourceRegistrationRequest.getInputEvent(), new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
            Object D10 = c13135q.D();
            if (D10 == Af.d.l()) {
                Bf.h.c(this);
            }
            if (D10 == l10) {
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
