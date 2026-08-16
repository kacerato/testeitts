package com.google.firebase.ktx;

import T2.C3049g;
import T2.F;
import T2.InterfaceC3050h;
import T2.k;
import T2.v;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import eg.AbstractC13100M;
import eg.C13151y0;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import pf.H;

@t0({"SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseCommonKtxRegistrar\n+ 2 Firebase.kt\ncom/google/firebase/ktx/FirebaseKt\n*L\n1#1,158:1\n152#2,6:159\n152#2,6:165\n152#2,6:171\n152#2,6:177\n*S KotlinDebug\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseCommonKtxRegistrar\n*L\n143#1:159,6\n144#1:165,6\n145#1:171,6\n146#1:177,6\n*E\n"})
@Keep
@InterfaceC14427o(message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration.", replaceWith = @InterfaceC14412g0(expression = "", imports = {}))
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {

    @t0({"SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseKt$coroutineDispatcher$1\n*L\n1#1,158:1\n*E\n"})
    public static final class a<T> implements k {

        public static final a<T> f67768a = new a<>();

        @Override
        public final AbstractC13100M a(InterfaceC3050h interfaceC3050h) {
            Object j10 = interfaceC3050h.j(F.a(S2.a.class, Executor.class));
            M.o(j10, "c.get(Qualified.qualifie\u2026a, Executor::class.java))");
            return C13151y0.c((Executor) j10);
        }
    }

    @t0({"SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseKt$coroutineDispatcher$1\n*L\n1#1,158:1\n*E\n"})
    public static final class b<T> implements k {

        public static final b<T> f67769a = new b<>();

        @Override
        public final AbstractC13100M a(InterfaceC3050h interfaceC3050h) {
            Object j10 = interfaceC3050h.j(F.a(S2.c.class, Executor.class));
            M.o(j10, "c.get(Qualified.qualifie\u2026a, Executor::class.java))");
            return C13151y0.c((Executor) j10);
        }
    }

    @t0({"SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseKt$coroutineDispatcher$1\n*L\n1#1,158:1\n*E\n"})
    public static final class c<T> implements k {

        public static final c<T> f67770a = new c<>();

        @Override
        public final AbstractC13100M a(InterfaceC3050h interfaceC3050h) {
            Object j10 = interfaceC3050h.j(F.a(S2.b.class, Executor.class));
            M.o(j10, "c.get(Qualified.qualifie\u2026a, Executor::class.java))");
            return C13151y0.c((Executor) j10);
        }
    }

    @t0({"SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseKt$coroutineDispatcher$1\n*L\n1#1,158:1\n*E\n"})
    public static final class d<T> implements k {

        public static final d<T> f67771a = new d<>();

        @Override
        public final AbstractC13100M a(InterfaceC3050h interfaceC3050h) {
            Object j10 = interfaceC3050h.j(F.a(S2.d.class, Executor.class));
            M.o(j10, "c.get(Qualified.qualifie\u2026a, Executor::class.java))");
            return C13151y0.c((Executor) j10);
        }
    }

    @Override
    @NotNull
    public List<C3049g<?>> getComponents() {
        C3049g d10 = C3049g.f(F.a(S2.a.class, AbstractC13100M.class)).b(v.l(F.a(S2.a.class, Executor.class))).f(a.f67768a).d();
        M.o(d10, "builder(Qualified.qualif\u2026cher()\n    }\n    .build()");
        C3049g d11 = C3049g.f(F.a(S2.c.class, AbstractC13100M.class)).b(v.l(F.a(S2.c.class, Executor.class))).f(b.f67769a).d();
        M.o(d11, "builder(Qualified.qualif\u2026cher()\n    }\n    .build()");
        C3049g d12 = C3049g.f(F.a(S2.b.class, AbstractC13100M.class)).b(v.l(F.a(S2.b.class, Executor.class))).f(c.f67770a).d();
        M.o(d12, "builder(Qualified.qualif\u2026cher()\n    }\n    .build()");
        C3049g d13 = C3049g.f(F.a(S2.d.class, AbstractC13100M.class)).b(v.l(F.a(S2.d.class, Executor.class))).f(d.f67771a).d();
        M.o(d13, "builder(Qualified.qualif\u2026cher()\n    }\n    .build()");
        return H.Q(d10, d11, d12, d13);
    }
}
