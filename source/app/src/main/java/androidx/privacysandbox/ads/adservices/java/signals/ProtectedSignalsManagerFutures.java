package androidx.privacysandbox.ads.adservices.java.signals;

import Lf.o;
import android.content.Context;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.privacysandbox.ads.adservices.signals.ProtectedSignalsManager;
import androidx.privacysandbox.ads.adservices.signals.UpdateSignalsRequest;
import com.google.common.util.concurrent.Z;
import eg.C13122j0;
import eg.C13123k;
import eg.T;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;

public abstract class ProtectedSignalsManagerFutures {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        public final ProtectedSignalsManagerFutures from(Context context) {
            M.p(context, "context");
            ProtectedSignalsManager obtain = ProtectedSignalsManager.Companion.obtain(context);
            if (obtain != null) {
                return new JavaImpl(obtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    public static final class JavaImpl extends ProtectedSignalsManagerFutures {
        private final ProtectedSignalsManager mProtectedSignalsManager;

        public JavaImpl(ProtectedSignalsManager protectedSignalsManager) {
            this.mProtectedSignalsManager = protectedSignalsManager;
        }

        @Override
        public Z<P0> updateSignalsAsync(UpdateSignalsRequest request) {
            eg.Z b10;
            M.p(request, "request");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new ProtectedSignalsManagerFutures$JavaImpl$updateSignalsAsync$1(this, request, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }
    }

    @o
    public static final ProtectedSignalsManagerFutures from(Context context) {
        return Companion.from(context);
    }

    public abstract Z<P0> updateSignalsAsync(UpdateSignalsRequest updateSignalsRequest);
}
