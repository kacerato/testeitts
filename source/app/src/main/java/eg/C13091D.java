package eg;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.C14026x;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;

public class C13091D {

    @NotNull
    public static final AtomicIntegerFieldUpdater f85603b = AtomicIntegerFieldUpdater.newUpdater(C13091D.class, "_handled");

    @Lf.x
    private volatile int _handled;

    @Lf.g
    @NotNull
    public final Throwable f85604a;

    public C13091D(@NotNull Throwable th2, boolean z10) {
        this.f85604a = th2;
        this._handled = z10 ? 1 : 0;
    }

    public final boolean a() {
        return f85603b.get(this) != 0;
    }

    public final boolean b() {
        return f85603b.compareAndSet(this, 0, 1);
    }

    @NotNull
    public String toString() {
        return W.a(this) + '[' + ((Object) this.f85604a) + JavaElement.JEM_TYPE_PARAMETER;
    }

    public C13091D(Throwable th2, boolean z10, int i10, C14026x c14026x) {
        this(th2, (i10 & 2) != 0 ? false : z10);
    }
}
