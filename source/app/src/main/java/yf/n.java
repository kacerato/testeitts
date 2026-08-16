package yf;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.C14416i0;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14410f0
@InterfaceC14422l0(version = "1.3")
public final class n<T> implements f<T>, Bf.e {

    @NotNull
    public static final a f130253c = new a(null);

    public static final AtomicReferenceFieldUpdater<n<?>, Object> f130254d = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "result");

    @NotNull
    public final f<T> f130255b;

    @Nullable
    private volatile Object result;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public static void a() {
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public n(@NotNull f<? super T> delegate, @Nullable Object obj) {
        M.p(delegate, "delegate");
        this.f130255b = delegate;
        this.result = obj;
    }

    @InterfaceC14410f0
    @Nullable
    public final Object a() {
        Object obj = this.result;
        Af.a aVar = Af.a.UNDECIDED;
        if (obj == aVar) {
            if (androidx.concurrent.futures.a.a(f130254d, this, aVar, Af.d.l())) {
                return Af.d.l();
            }
            obj = this.result;
        }
        if (obj == Af.a.RESUMED) {
            return Af.d.l();
        }
        if (obj instanceof C14416i0.b) {
            throw ((C14416i0.b) obj).f98203b;
        }
        return obj;
    }

    @Override
    @Nullable
    public Bf.e getCallerFrame() {
        f<T> fVar = this.f130255b;
        if (fVar instanceof Bf.e) {
            return (Bf.e) fVar;
        }
        return null;
    }

    @Override
    @NotNull
    public j getContext() {
        return this.f130255b.getContext();
    }

    @Override
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override
    public void resumeWith(@NotNull Object obj) {
        while (true) {
            Object obj2 = this.result;
            Af.a aVar = Af.a.UNDECIDED;
            if (obj2 == aVar) {
                if (androidx.concurrent.futures.a.a(f130254d, this, aVar, obj)) {
                    return;
                }
            } else {
                if (obj2 != Af.d.l()) {
                    throw new IllegalStateException("Already resumed");
                }
                if (androidx.concurrent.futures.a.a(f130254d, this, Af.d.l(), Af.a.RESUMED)) {
                    this.f130255b.resumeWith(obj);
                    return;
                }
            }
        }
    }

    @NotNull
    public String toString() {
        return "SafeContinuation for " + ((Object) this.f130255b);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @InterfaceC14410f0
    public n(@NotNull f<? super T> delegate) {
        this(delegate, Af.a.UNDECIDED);
        M.p(delegate, "delegate");
    }
}
