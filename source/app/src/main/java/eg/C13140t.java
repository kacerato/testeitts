package eg;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13140t extends C13091D {

    @NotNull
    public static final AtomicIntegerFieldUpdater f85781c = AtomicIntegerFieldUpdater.newUpdater(C13140t.class, "_resumed");

    @Lf.x
    private volatile int _resumed;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C13140t(@NotNull yf.f<?> fVar, @Nullable Throwable th2, boolean z10) {
        super(th2, z10);
        if (th2 == null) {
            th2 = new CancellationException("Continuation " + ((Object) fVar) + " was cancelled normally");
        }
        this._resumed = 0;
    }

    public final boolean c() {
        return f85781c.compareAndSet(this, 0, 1);
    }
}
