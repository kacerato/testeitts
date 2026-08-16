package pg;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14410f0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pg.l;

@t0({"SMAP\nSelectUnbiased.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectUnbiased.kt\nkotlinx/coroutines/selects/UnbiasedSelectImplementation\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1855#2,2:69\n*S KotlinDebug\n*F\n+ 1 SelectUnbiased.kt\nkotlinx/coroutines/selects/UnbiasedSelectImplementation\n*L\n63#1:69,2\n*E\n"})
@InterfaceC14410f0
public class t<R> extends l<R> {

    @NotNull
    public final List<l<R>.a> f103964h;

    public t(@NotNull yf.j jVar) {
        super(jVar);
        this.f103964h = new ArrayList();
    }

    @InterfaceC14410f0
    public static <R> Object n0(t<R> tVar, yf.f<? super R> fVar) {
        tVar.o0();
        return super.X(fVar);
    }

    @Override
    @InterfaceC14410f0
    @Nullable
    public Object X(@NotNull yf.f<? super R> fVar) {
        return n0(this, fVar);
    }

    @Override
    public <Q> void d(@NotNull g<? extends Q> gVar, @NotNull Mf.p<? super Q, ? super yf.f<? super R>, ? extends Object> pVar) {
        this.f103964h.add(new l.a(gVar.d(), gVar.c(), gVar.b(), null, pVar, gVar.a()));
    }

    @Override
    public void h(@NotNull InterfaceC14998e interfaceC14998e, @NotNull Mf.l<? super yf.f<? super R>, ? extends Object> lVar) {
        this.f103964h.add(new l.a(interfaceC14998e.d(), interfaceC14998e.c(), interfaceC14998e.b(), o.l(), lVar, interfaceC14998e.a()));
    }

    @Override
    public <P, Q> void k(@NotNull i<? super P, ? extends Q> iVar, P p10, @NotNull Mf.p<? super Q, ? super yf.f<? super R>, ? extends Object> pVar) {
        this.f103964h.add(new l.a(iVar.d(), iVar.c(), iVar.b(), p10, pVar, iVar.a()));
    }

    public final void o0() {
        try {
            Collections.shuffle(this.f103964h);
            Iterator<l<R>.a> it = this.f103964h.iterator();
            while (it.hasNext()) {
                l.h0(this, it.next(), false, 1, null);
            }
        } finally {
            this.f103964h.clear();
        }
    }
}
