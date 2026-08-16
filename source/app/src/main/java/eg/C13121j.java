package eg;

import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/BuildersKt__BuildersKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"})
public final class C13121j {
    public static final <T> T a(@NotNull yf.j jVar, @NotNull Mf.p<? super S, ? super yf.f<? super T>, ? extends Object> pVar) throws InterruptedException {
        AbstractC13136q0 a10;
        yf.j d10;
        Thread currentThread = Thread.currentThread();
        yf.g gVar = (yf.g) jVar.get(yf.g.f130247J8);
        if (gVar == null) {
            a10 = n1.f85746a.b();
            d10 = C13099L.d(B0.f85596b, jVar.plus(a10));
        } else {
            AbstractC13136q0 abstractC13136q0 = gVar instanceof AbstractC13136q0 ? (AbstractC13136q0) gVar : null;
            if (abstractC13136q0 != null) {
                AbstractC13136q0 abstractC13136q02 = abstractC13136q0.j0() ? abstractC13136q0 : null;
                if (abstractC13136q02 != null) {
                    a10 = abstractC13136q02;
                    d10 = C13099L.d(B0.f85596b, jVar);
                }
            }
            a10 = n1.f85746a.a();
            d10 = C13099L.d(B0.f85596b, jVar);
        }
        C13115g c13115g = new C13115g(d10, currentThread, a10);
        c13115g.B1(U.DEFAULT, c13115g, pVar);
        return (T) c13115g.C1();
    }

    public static Object b(yf.j jVar, Mf.p pVar, int i10, Object obj) throws InterruptedException {
        if ((i10 & 1) != 0) {
            jVar = yf.l.f130251b;
        }
        return C13119i.f(jVar, pVar);
    }
}
