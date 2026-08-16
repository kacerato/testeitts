package androidx.privacysandbox.ads.adservices.java.internal;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.Z;
import kotlin.jvm.internal.M;

public final class CoroutineAdapterKt {
    public static final <T> Z<T> asListenableFuture(final eg.Z<? extends T> z10, final Object obj) {
        M.p(z10, "<this>");
        Z<T> future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() {
            @Override
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object asListenableFuture$lambda$0;
                asListenableFuture$lambda$0 = CoroutineAdapterKt.asListenableFuture$lambda$0(eg.Z.this, obj, completer);
                return asListenableFuture$lambda$0;
            }
        });
        M.o(future, "getFuture { completer ->\u2026      }\n        tag\n    }");
        return future;
    }

    public static Z asListenableFuture$default(eg.Z z10, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = "Deferred.asListenableFuture";
        }
        return asListenableFuture(z10, obj);
    }

    public static final Object asListenableFuture$lambda$0(eg.Z this_asListenableFuture, Object obj, CallbackToFutureAdapter.Completer completer) {
        M.p(this_asListenableFuture, "$this_asListenableFuture");
        M.p(completer, "completer");
        this_asListenableFuture.w(new CoroutineAdapterKt$asListenableFuture$1$1(completer, this_asListenableFuture));
        return obj;
    }
}
