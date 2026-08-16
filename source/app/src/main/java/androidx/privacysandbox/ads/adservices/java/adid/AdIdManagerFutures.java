package androidx.privacysandbox.ads.adservices.java.adid;

import Lf.o;
import android.content.Context;
import androidx.privacysandbox.ads.adservices.adid.AdId;
import androidx.privacysandbox.ads.adservices.adid.AdIdManager;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.Z;
import eg.C13122j0;
import eg.C13123k;
import eg.T;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public abstract class AdIdManagerFutures {
    public static final Companion Companion = new Companion(null);

    public static final class Api33Ext4JavaImpl extends AdIdManagerFutures {
        private final AdIdManager mAdIdManager;

        public Api33Ext4JavaImpl(AdIdManager mAdIdManager) {
            M.p(mAdIdManager, "mAdIdManager");
            this.mAdIdManager = mAdIdManager;
        }

        @Override
        public Z<AdId> getAdIdAsync() {
            eg.Z b10;
            b10 = C13123k.b(T.a(C13122j0.a()), null, null, new AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1(this, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }
    }

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        public final AdIdManagerFutures from(Context context) {
            M.p(context, "context");
            AdIdManager obtain = AdIdManager.Companion.obtain(context);
            if (obtain != null) {
                return new Api33Ext4JavaImpl(obtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    @o
    public static final AdIdManagerFutures from(Context context) {
        return Companion.from(context);
    }

    public abstract Z<AdId> getAdIdAsync();
}
