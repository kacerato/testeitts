package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import android.view.InputEvent;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import eg.C13135q;
import eg.T;
import kotlin.jvm.internal.M;
import nf.P0;

public class MeasurementManagerImplCommon extends MeasurementManager {
    private final android.adservices.measurement.MeasurementManager mMeasurementManager;

    public MeasurementManagerImplCommon(android.adservices.measurement.MeasurementManager mMeasurementManager) {
        M.p(mMeasurementManager, "mMeasurementManager");
        this.mMeasurementManager = mMeasurementManager;
    }

    public static Object deleteRegistrations$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, DeletionRequest deletionRequest, yf.f<? super P0> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        measurementManagerImplCommon.getMMeasurementManager().deleteRegistrations(deletionRequest.convertToAdServices$ads_adservices_release(), new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10 == Af.d.l() ? D10 : P0.f98194a;
    }

    public static Object getMeasurementApiStatus$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, yf.f<? super Integer> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        measurementManagerImplCommon.getMMeasurementManager().getMeasurementApiStatus(new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10;
    }

    @ExperimentalFeatures.RegisterSourceOptIn
    public static Object registerSource$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, SourceRegistrationRequest sourceRegistrationRequest, yf.f<? super P0> fVar) {
        Object g10 = T.g(new MeasurementManagerImplCommon$registerSource$4(sourceRegistrationRequest, measurementManagerImplCommon, null), fVar);
        return g10 == Af.d.l() ? g10 : P0.f98194a;
    }

    public static Object registerTrigger$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, Uri uri, yf.f<? super P0> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        measurementManagerImplCommon.getMMeasurementManager().registerTrigger(uri, new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10 == Af.d.l() ? D10 : P0.f98194a;
    }

    public static Object registerWebSource$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, WebSourceRegistrationRequest webSourceRegistrationRequest, yf.f<? super P0> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        measurementManagerImplCommon.getMMeasurementManager().registerWebSource(webSourceRegistrationRequest.convertToAdServices$ads_adservices_release(), new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10 == Af.d.l() ? D10 : P0.f98194a;
    }

    public static Object registerWebTrigger$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, WebTriggerRegistrationRequest webTriggerRegistrationRequest, yf.f<? super P0> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        measurementManagerImplCommon.getMMeasurementManager().registerWebTrigger(webTriggerRegistrationRequest.convertToAdServices$ads_adservices_release(), new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10 == Af.d.l() ? D10 : P0.f98194a;
    }

    @Override
    public Object deleteRegistrations(DeletionRequest deletionRequest, yf.f<? super P0> fVar) {
        return deleteRegistrations$suspendImpl(this, deletionRequest, fVar);
    }

    public final android.adservices.measurement.MeasurementManager getMMeasurementManager() {
        return this.mMeasurementManager;
    }

    @Override
    public Object getMeasurementApiStatus(yf.f<? super Integer> fVar) {
        return getMeasurementApiStatus$suspendImpl(this, fVar);
    }

    @Override
    public Object registerSource(Uri uri, InputEvent inputEvent, yf.f<? super P0> fVar) {
        return registerSource$suspendImpl(this, uri, inputEvent, fVar);
    }

    @Override
    public Object registerTrigger(Uri uri, yf.f<? super P0> fVar) {
        return registerTrigger$suspendImpl(this, uri, fVar);
    }

    @Override
    public Object registerWebSource(WebSourceRegistrationRequest webSourceRegistrationRequest, yf.f<? super P0> fVar) {
        return registerWebSource$suspendImpl(this, webSourceRegistrationRequest, fVar);
    }

    @Override
    public Object registerWebTrigger(WebTriggerRegistrationRequest webTriggerRegistrationRequest, yf.f<? super P0> fVar) {
        return registerWebTrigger$suspendImpl(this, webTriggerRegistrationRequest, fVar);
    }

    public static Object registerSource$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, Uri uri, InputEvent inputEvent, yf.f<? super P0> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        measurementManagerImplCommon.getMMeasurementManager().registerSource(uri, inputEvent, new androidx.privacysandbox.ads.adservices.adid.h(), OutcomeReceiverKt.asOutcomeReceiver(c13135q));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return D10 == Af.d.l() ? D10 : P0.f98194a;
    }

    @Override
    @ExperimentalFeatures.RegisterSourceOptIn
    public Object registerSource(SourceRegistrationRequest sourceRegistrationRequest, yf.f<? super P0> fVar) {
        return registerSource$suspendImpl(this, sourceRegistrationRequest, fVar);
    }
}
