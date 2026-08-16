package Bf;

import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

@t0({"SMAP\nContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContinuationImpl.kt\nkotlin/coroutines/jvm/internal/ContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,169:1\n1#2:170\n*E\n"})
@InterfaceC14422l0(version = "1.3")
public abstract class d extends a {

    @Nullable
    private final yf.j _context;

    @Nullable
    private transient yf.f<Object> intercepted;

    public d(@Nullable yf.f<Object> fVar, @Nullable yf.j jVar) {
        super(fVar);
        this._context = jVar;
    }

    @Override
    @NotNull
    public yf.j getContext() {
        yf.j jVar = this._context;
        M.m(jVar);
        return jVar;
    }

    @NotNull
    public final yf.f<Object> intercepted() {
        yf.f<Object> fVar = this.intercepted;
        if (fVar == null) {
            yf.g gVar = (yf.g) getContext().get(yf.g.f130247J8);
            if (gVar == null || (fVar = gVar.interceptContinuation(this)) == null) {
                fVar = this;
            }
            this.intercepted = fVar;
        }
        return fVar;
    }

    @Override
    public void releaseIntercepted() {
        yf.f<?> fVar = this.intercepted;
        if (fVar != null && fVar != this) {
            j.b bVar = getContext().get(yf.g.f130247J8);
            M.m(bVar);
            ((yf.g) bVar).releaseInterceptedContinuation(fVar);
        }
        this.intercepted = c.f1718b;
    }

    public d(@Nullable yf.f<Object> fVar) {
        this(fVar, fVar != null ? fVar.getContext() : null);
    }
}
