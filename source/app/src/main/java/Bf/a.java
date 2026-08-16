package Bf;

import java.io.Serializable;
import kotlin.jvm.internal.M;
import nf.C14416i0;
import nf.C14418j0;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14410f0
@InterfaceC14422l0(version = "1.3")
public abstract class a implements yf.f<Object>, e, Serializable {

    @Nullable
    private final yf.f<Object> completion;

    public a(@Nullable yf.f<Object> fVar) {
        this.completion = fVar;
    }

    @NotNull
    public yf.f<P0> create(@NotNull yf.f<?> completion) {
        M.p(completion, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override
    @Nullable
    public e getCallerFrame() {
        yf.f<Object> fVar = this.completion;
        if (fVar instanceof e) {
            return (e) fVar;
        }
        return null;
    }

    @Nullable
    public final yf.f<Object> getCompletion() {
        return this.completion;
    }

    @Override
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return g.e(this);
    }

    @Nullable
    public abstract Object invokeSuspend(@NotNull Object obj);

    public void releaseIntercepted() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void resumeWith(@NotNull Object obj) {
        Object invokeSuspend;
        yf.f fVar = this;
        while (true) {
            h.b(fVar);
            a aVar = (a) fVar;
            yf.f fVar2 = aVar.completion;
            M.m(fVar2);
            try {
                invokeSuspend = aVar.invokeSuspend(obj);
            } catch (Throwable th2) {
                C14416i0.a aVar2 = C14416i0.f98201c;
                obj = C14416i0.b(C14418j0.a(th2));
            }
            if (invokeSuspend == Af.d.l()) {
                return;
            }
            C14416i0.a aVar3 = C14416i0.f98201c;
            obj = C14416i0.b(invokeSuspend);
            aVar.releaseIntercepted();
            if (!(fVar2 instanceof a)) {
                fVar2.resumeWith(obj);
                return;
            }
            fVar = fVar2;
        }
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb2.append(stackTraceElement);
        return sb2.toString();
    }

    @NotNull
    public yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> completion) {
        M.p(completion, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }
}
