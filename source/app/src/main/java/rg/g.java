package rg;

import com.google.common.util.concurrent.C0;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.jvm.internal.t0;
import mg.P;
import mg.T;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

@t0({"SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,397:1\n371#1,2:398\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n384#1:398,2\n*E\n"})
public final class g extends P<g> {

    @NotNull
    public final AtomicReferenceArray f109005f;

    public g(long j10, @Nullable g gVar, int i10) {
        super(j10, gVar, i10);
        int i11;
        i11 = C15180f.f109000f;
        this.f109005f = new AtomicReferenceArray(i11);
    }

    @Override
    public int p() {
        int i10;
        i10 = C15180f.f109000f;
        return i10;
    }

    @Override
    public void q(int i10, @Nullable Throwable th2, @NotNull j jVar) {
        T t10;
        t10 = C15180f.f108999e;
        v().set(i10, t10);
        r();
    }

    public final boolean t(int i10, @Nullable Object obj, @Nullable Object obj2) {
        return C0.a(v(), i10, obj, obj2);
    }

    @NotNull
    public String toString() {
        return "SemaphoreSegment[id=" + this.f97034d + ", hashCode=" + hashCode() + JavaElement.JEM_TYPE_PARAMETER;
    }

    @Nullable
    public final Object u(int i10) {
        return v().get(i10);
    }

    @NotNull
    public final AtomicReferenceArray v() {
        return this.f109005f;
    }

    @Nullable
    public final Object w(int i10, @Nullable Object obj) {
        return v().getAndSet(i10, obj);
    }

    public final void x(int i10, @Nullable Object obj) {
        v().set(i10, obj);
    }
}
