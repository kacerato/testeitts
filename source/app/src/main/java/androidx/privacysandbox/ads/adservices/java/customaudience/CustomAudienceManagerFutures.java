package androidx.privacysandbox.ads.adservices.java.customaudience;

import Lf.o;
import android.content.Context;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager;
import androidx.privacysandbox.ads.adservices.customaudience.FetchAndJoinCustomAudienceRequest;
import androidx.privacysandbox.ads.adservices.customaudience.JoinCustomAudienceRequest;
import androidx.privacysandbox.ads.adservices.customaudience.LeaveCustomAudienceRequest;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.Z;
import eg.C13122j0;
import eg.C13123k;
import eg.T;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;

public abstract class CustomAudienceManagerFutures {
    public static final Companion Companion = new Companion(null);

    public static final class Api33Ext4JavaImpl extends CustomAudienceManagerFutures {
        private final CustomAudienceManager mCustomAudienceManager;

        public Api33Ext4JavaImpl(CustomAudienceManager customAudienceManager) {
            this.mCustomAudienceManager = customAudienceManager;
        }

        @Override
        public Z<P0> fetchAndJoinCustomAudienceAsync(FetchAndJoinCustomAudienceRequest request) {
            eg.Z b10;
            M.p(request, "request");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new CustomAudienceManagerFutures$Api33Ext4JavaImpl$fetchAndJoinCustomAudienceAsync$1(this, request, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override
        public Z<P0> joinCustomAudienceAsync(JoinCustomAudienceRequest request) {
            eg.Z b10;
            M.p(request, "request");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new CustomAudienceManagerFutures$Api33Ext4JavaImpl$joinCustomAudienceAsync$1(this, request, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override
        public Z<P0> leaveCustomAudienceAsync(LeaveCustomAudienceRequest request) {
            eg.Z b10;
            M.p(request, "request");
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new CustomAudienceManagerFutures$Api33Ext4JavaImpl$leaveCustomAudienceAsync$1(this, request, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }
    }

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        public final CustomAudienceManagerFutures from(Context context) {
            M.p(context, "context");
            CustomAudienceManager obtain = CustomAudienceManager.Companion.obtain(context);
            if (obtain != null) {
                return new Api33Ext4JavaImpl(obtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    @o
    public static final CustomAudienceManagerFutures from(Context context) {
        return Companion.from(context);
    }

    @ExperimentalFeatures.Ext10OptIn
    public abstract Z<P0> fetchAndJoinCustomAudienceAsync(FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest);

    public abstract Z<P0> joinCustomAudienceAsync(JoinCustomAudienceRequest joinCustomAudienceRequest);

    public abstract Z<P0> leaveCustomAudienceAsync(LeaveCustomAudienceRequest leaveCustomAudienceRequest);
}
