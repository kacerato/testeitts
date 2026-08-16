package ig;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import org.jetbrains.annotations.Nullable;

public final class k<T> extends WeakReference<T> {

    @Lf.g
    public final int f92266a;

    public k(T t10, @Nullable ReferenceQueue<T> referenceQueue) {
        super(t10, referenceQueue);
        this.f92266a = t10 != null ? t10.hashCode() : 0;
    }
}
