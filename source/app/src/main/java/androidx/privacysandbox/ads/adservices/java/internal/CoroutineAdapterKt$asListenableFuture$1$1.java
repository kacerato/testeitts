package androidx.privacysandbox.ads.adservices.java.internal;

import Mf.l;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import eg.Z;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.O;
import nf.P0;

public final class CoroutineAdapterKt$asListenableFuture$1$1 extends O implements l<Throwable, P0> {
    final CallbackToFutureAdapter.Completer<T> $completer;
    final Z<T> $this_asListenableFuture;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CoroutineAdapterKt$asListenableFuture$1$1(CallbackToFutureAdapter.Completer<T> completer, Z<? extends T> z10) {
        super(1);
        this.$completer = completer;
        this.$this_asListenableFuture = z10;
    }

    @Override
    public P0 invoke(Throwable th2) {
        invoke2(th2);
        return P0.f98194a;
    }

    public final void invoke2(Throwable th2) {
        if (th2 != null) {
            if (th2 instanceof CancellationException) {
                this.$completer.setCancelled();
                return;
            } else {
                this.$completer.setException(th2);
                return;
            }
        }
        this.$completer.set(this.$this_asListenableFuture.e());
    }
}
