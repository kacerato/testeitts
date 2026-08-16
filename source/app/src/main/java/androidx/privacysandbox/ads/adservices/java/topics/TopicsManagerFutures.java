package androidx.privacysandbox.ads.adservices.java.topics;

import Lf.o;
import android.content.Context;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsRequest;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse;
import androidx.privacysandbox.ads.adservices.topics.TopicsManager;
import com.google.common.util.concurrent.Z;
import eg.C13122j0;
import eg.C13123k;
import eg.T;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public abstract class TopicsManagerFutures {
    public static final Companion Companion = new Companion(null);

    public static final class CommonApiJavaImpl extends TopicsManagerFutures {
        private final TopicsManager mTopicsManager;

        public CommonApiJavaImpl(TopicsManager mTopicsManager) {
            M.p(mTopicsManager, "mTopicsManager");
            this.mTopicsManager = mTopicsManager;
        }

        @Override
        public Z<GetTopicsResponse> getTopicsAsync(GetTopicsRequest request) {
            eg.Z b10;
            M.p(request, "request");
            b10 = C13123k.b(T.a(C13122j0.e()), null, null, new TopicsManagerFutures$CommonApiJavaImpl$getTopicsAsync$1(this, request, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }
    }

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        public final TopicsManagerFutures from(Context context) {
            M.p(context, "context");
            TopicsManager obtain = TopicsManager.Companion.obtain(context);
            if (obtain != null) {
                return new CommonApiJavaImpl(obtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    @o
    public static final TopicsManagerFutures from(Context context) {
        return Companion.from(context);
    }

    public abstract Z<GetTopicsResponse> getTopicsAsync(GetTopicsRequest getTopicsRequest);
}
