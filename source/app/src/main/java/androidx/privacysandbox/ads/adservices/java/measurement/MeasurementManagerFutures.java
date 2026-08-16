package androidx.privacysandbox.ads.adservices.java.measurement;

import Lf.o;
import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.privacysandbox.ads.adservices.measurement.DeletionRequest;
import androidx.privacysandbox.ads.adservices.measurement.MeasurementManager;
import androidx.privacysandbox.ads.adservices.measurement.SourceRegistrationRequest;
import androidx.privacysandbox.ads.adservices.measurement.WebSourceRegistrationRequest;
import androidx.privacysandbox.ads.adservices.measurement.WebTriggerRegistrationRequest;
import com.google.common.util.concurrent.Z;
import eg.C13122j0;
import eg.C13123k;
import eg.T;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;

public abstract class MeasurementManagerFutures {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        public final MeasurementManagerFutures from(Context context) {
            M.p(context, "context");
            MeasurementManager obtain = MeasurementManager.Companion.obtain(context);
            if (obtain != null) {
                return new Api33Ext5JavaImpl(obtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    @o
    public static final MeasurementManagerFutures from(Context context) {
        return Companion.from(context);
    }

    public abstract Z<P0> deleteRegistrationsAsync(DeletionRequest deletionRequest);

    public abstract Z<Integer> getMeasurementApiStatusAsync();

    public abstract Z<P0> registerSourceAsync(Uri uri, InputEvent inputEvent);

    @ExperimentalFeatures.RegisterSourceOptIn
    public abstract Z<P0> registerSourceAsync(SourceRegistrationRequest sourceRegistrationRequest);

    public abstract Z<P0> registerTriggerAsync(Uri uri);

    public abstract Z<P0> registerWebSourceAsync(WebSourceRegistrationRequest webSourceRegistrationRequest);

    public abstract Z<P0> registerWebTriggerAsync(WebTriggerRegistrationRequest webTriggerRegistrationRequest);

    public static final class Api33Ext5JavaImpl extends MeasurementManagerFutures {
        private final MeasurementManager mMeasurementManager;

        public Api33Ext5JavaImpl(MeasurementManager mMeasurementManager) {
            M.p(mMeasurementManager, "mMeasurementManager");
            this.mMeasurementManager = mMeasurementManager;
        }

        @Override
        public Z<P0> deleteRegistrationsAsync(DeletionRequest deletionRequest) {
            eg.Z b10;
            M.p(deletionRequest, "deletionRequest");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1(this, deletionRequest, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override
        public Z<Integer> getMeasurementApiStatusAsync() {
            eg.Z b10;
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1(this, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override
        public Z<P0> registerSourceAsync(Uri attributionSource, InputEvent inputEvent) {
            eg.Z b10;
            M.p(attributionSource, "attributionSource");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1(this, attributionSource, inputEvent, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override
        public Z<P0> registerTriggerAsync(Uri trigger) {
            eg.Z b10;
            M.p(trigger, "trigger");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1(this, trigger, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override
        public Z<P0> registerWebSourceAsync(WebSourceRegistrationRequest request) {
            eg.Z b10;
            M.p(request, "request");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1(this, request, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override
        public Z<P0> registerWebTriggerAsync(WebTriggerRegistrationRequest request) {
            eg.Z b10;
            M.p(request, "request");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebTriggerAsync$1(this, request, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override
        @ExperimentalFeatures.RegisterSourceOptIn
        public Z<P0> registerSourceAsync(SourceRegistrationRequest request) {
            eg.Z b10;
            M.p(request, "request");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$2(this, request, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }
    }
}
