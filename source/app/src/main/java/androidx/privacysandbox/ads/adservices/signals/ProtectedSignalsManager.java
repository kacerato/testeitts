package androidx.privacysandbox.ads.adservices.signals;

import Lf.o;
import android.content.Context;
import android.util.Log;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;
import yf.f;

public abstract class ProtectedSignalsManager {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "ProtectedSignalsManager";

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        @ExperimentalFeatures.Ext12OptIn
        public final ProtectedSignalsManager obtain(Context context) {
            android.adservices.signals.ProtectedSignalsManager protectedSignalsManager;
            M.p(context, "context");
            if (AdServicesInfo.INSTANCE.adServicesVersion() < 12) {
                Log.d(ProtectedSignalsManager.TAG, "Adservices less than 12, returning null for ProtectedSignalsManager.obtain.");
                return null;
            }
            Log.d(ProtectedSignalsManager.TAG, "Adservices version 12 detected, obtaining ProtectedSignalsManagerImpl.");
            protectedSignalsManager = android.adservices.signals.ProtectedSignalsManager.get(context);
            M.o(protectedSignalsManager, "get(context)");
            return new ProtectedSignalsManagerImpl(protectedSignalsManager);
        }

        private Companion() {
        }
    }

    @o
    @ExperimentalFeatures.Ext12OptIn
    public static final ProtectedSignalsManager obtain(Context context) {
        return Companion.obtain(context);
    }

    @ExperimentalFeatures.Ext12OptIn
    public abstract Object updateSignals(UpdateSignalsRequest updateSignalsRequest, f<? super P0> fVar);
}
