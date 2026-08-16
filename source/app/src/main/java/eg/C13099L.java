package eg;

import kotlin.jvm.internal.m0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

public final class C13099L {

    @NotNull
    public static final String f85621a = " @";

    public static final class a extends kotlin.jvm.internal.O implements Mf.p<yf.j, j.b, yf.j> {

        public static final a f85622b = new a();

        public a() {
            super(2);
        }

        @Override
        @NotNull
        public final yf.j invoke(@NotNull yf.j jVar, @NotNull j.b bVar) {
            return bVar instanceof InterfaceC13097J ? jVar.plus(((InterfaceC13097J) bVar).l()) : jVar.plus(bVar);
        }
    }

    public static final class b extends kotlin.jvm.internal.O implements Mf.p<yf.j, j.b, yf.j> {

        public final m0.h<yf.j> f85623b;

        public final boolean f85624c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(m0.h<yf.j> hVar, boolean z10) {
            super(2);
            this.f85623b = hVar;
            this.f85624c = z10;
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [yf.j, T] */
        @Override
        @NotNull
        public final yf.j invoke(@NotNull yf.j jVar, @NotNull j.b bVar) {
            if (!(bVar instanceof InterfaceC13097J)) {
                return jVar.plus(bVar);
            }
            j.b bVar2 = this.f85623b.f95754b.get(bVar.getKey());
            if (bVar2 != null) {
                m0.h<yf.j> hVar = this.f85623b;
                hVar.f95754b = hVar.f95754b.minusKey(bVar.getKey());
                return jVar.plus(((InterfaceC13097J) bVar).L(bVar2));
            }
            InterfaceC13097J interfaceC13097J = (InterfaceC13097J) bVar;
            if (this.f85624c) {
                interfaceC13097J = interfaceC13097J.l();
            }
            return jVar.plus(interfaceC13097J);
        }
    }

    public static final class c extends kotlin.jvm.internal.O implements Mf.p<Boolean, j.b, Boolean> {

        public static final c f85625b = new c();

        public c() {
            super(2);
        }

        @NotNull
        public final Boolean b(boolean z10, @NotNull j.b bVar) {
            return Boolean.valueOf(z10 || (bVar instanceof InterfaceC13097J));
        }

        @Override
        public Boolean invoke(Boolean bool, j.b bVar) {
            return b(bool.booleanValue(), bVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    public static final yf.j a(yf.j jVar, yf.j jVar2, boolean z10) {
        boolean c10 = c(jVar);
        boolean c11 = c(jVar2);
        if (!c10 && !c11) {
            return jVar.plus(jVar2);
        }
        m0.h hVar = new m0.h();
        hVar.f95754b = jVar2;
        yf.l lVar = yf.l.f130251b;
        yf.j jVar3 = (yf.j) jVar.fold(lVar, new b(hVar, z10));
        if (c11) {
            hVar.f95754b = ((yf.j) hVar.f95754b).fold(lVar, a.f85622b);
        }
        return jVar3.plus((yf.j) hVar.f95754b);
    }

    @Nullable
    public static final String b(@NotNull yf.j jVar) {
        return null;
    }

    public static final boolean c(yf.j jVar) {
        return ((Boolean) jVar.fold(Boolean.FALSE, c.f85625b)).booleanValue();
    }

    @InterfaceC13153z0
    @NotNull
    public static final yf.j d(@NotNull S s10, @NotNull yf.j jVar) {
        yf.j a10 = a(s10.getCoroutineContext(), jVar, true);
        return (a10 == C13122j0.a() || a10.get(yf.g.f130247J8) != null) ? a10 : a10.plus(C13122j0.a());
    }

    @F0
    @NotNull
    public static final yf.j e(@NotNull yf.j jVar, @NotNull yf.j jVar2) {
        return !c(jVar2) ? jVar.plus(jVar2) : a(jVar, jVar2, false);
    }

    @Nullable
    public static final w1<?> f(@NotNull Bf.e eVar) {
        while (!(eVar instanceof C13114f0) && (eVar = eVar.getCallerFrame()) != null) {
            if (eVar instanceof w1) {
                return (w1) eVar;
            }
        }
        return null;
    }

    @Nullable
    public static final w1<?> g(@NotNull yf.f<?> fVar, @NotNull yf.j jVar, @Nullable Object obj) {
        if (!(fVar instanceof Bf.e) || jVar.get(x1.f85803b) == null) {
            return null;
        }
        w1<?> f10 = f((Bf.e) fVar);
        if (f10 != null) {
            f10.D1(jVar, obj);
        }
        return f10;
    }

    public static final <T> T h(@NotNull yf.f<?> fVar, @Nullable Object obj, @NotNull Mf.a<? extends T> aVar) {
        yf.j context = fVar.getContext();
        Object c10 = mg.Z.c(context, obj);
        w1<?> g10 = c10 != mg.Z.f97043a ? g(fVar, context, c10) : null;
        try {
            return aVar.invoke();
        } finally {
            kotlin.jvm.internal.J.d(1);
            if (g10 == null || g10.C1()) {
                mg.Z.a(context, c10);
            }
            kotlin.jvm.internal.J.c(1);
        }
    }

    public static final <T> T i(@NotNull yf.j jVar, @Nullable Object obj, @NotNull Mf.a<? extends T> aVar) {
        Object c10 = mg.Z.c(jVar, obj);
        try {
            return aVar.invoke();
        } finally {
            kotlin.jvm.internal.J.d(1);
            mg.Z.a(jVar, c10);
            kotlin.jvm.internal.J.c(1);
        }
    }
}
