package com.google.firebase;

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
import org.jetbrains.annotations.NotNull;
import pf.H;

@t0({"SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseCommonKtxRegistrar\n+ 2 Firebase.kt\ncom/google/firebase/FirebaseKt\n*L\n1#1,82:1\n76#2,6:83\n76#2,6:89\n76#2,6:95\n76#2,6:101\n*S KotlinDebug\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseCommonKtxRegistrar\n*L\n67#1:83,6\n68#1:89,6\n69#1:95,6\n70#1:101,6\n*E\n"})
@Keep
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {

    @t0({"SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseKt$coroutineDispatcher$1\n*L\n1#1,82:1\n*E\n"})
    public static final class a<T> implements k {

        public static final a<T> f67609a = new a<>();

        @Override
        public final AbstractC13100M a(InterfaceC3050h interfaceC3050h) {
            Object j10 = interfaceC3050h.j(F.a(S2.a.class, Executor.class));
            M.o(j10, "c.get(Qualified.qualifie\u2026a, Executor::class.java))");
            return C13151y0.c((Executor) j10);
        }
    }

    @t0({"SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseKt$coroutineDispatcher$1\n*L\n1#1,82:1\n*E\n"})
    public static final class b<T> implements k {

        public static final b<T> f67610a = new b<>();

        @Override
        public final AbstractC13100M a(InterfaceC3050h interfaceC3050h) {
            Object j10 = interfaceC3050h.j(F.a(S2.c.class, Executor.class));
            M.o(j10, "c.get(Qualified.qualifie\u2026a, Executor::class.java))");
            return C13151y0.c((Executor) j10);
        }
    }

    @t0({"SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseKt$coroutineDispatcher$1\n*L\n1#1,82:1\n*E\n"})
    public static final class c<T> implements k {

        public static final c<T> f67611a = new c<>();

        @Override
        public final AbstractC13100M a(InterfaceC3050h interfaceC3050h) {
            Object j10 = interfaceC3050h.j(F.a(S2.b.class, Executor.class));
            M.o(j10, "c.get(Qualified.qualifie\u2026a, Executor::class.java))");
            return C13151y0.c((Executor) j10);
        }
    }

    @t0({"SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseKt$coroutineDispatcher$1\n*L\n1#1,82:1\n*E\n"})
    public static final class d<T> implements k {

        public static final d<T> f67612a = new d<>();

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
        C3049g d10 = C3049g.f(F.a(S2.a.class, AbstractC13100M.class)).b(v.l(F.a(S2.a.class, Executor.class))).f(a.f67609a).d();
        M.o(d10, "builder(Qualified.qualif\u2026cher()\n    }\n    .build()");
        C3049g d11 = C3049g.f(F.a(S2.c.class, AbstractC13100M.class)).b(v.l(F.a(S2.c.class, Executor.class))).f(b.f67610a).d();
        M.o(d11, "builder(Qualified.qualif\u2026cher()\n    }\n    .build()");
        C3049g d12 = C3049g.f(F.a(S2.b.class, AbstractC13100M.class)).b(v.l(F.a(S2.b.class, Executor.class))).f(c.f67611a).d();
        M.o(d12, "builder(Qualified.qualif\u2026cher()\n    }\n    .build()");
        C3049g d13 = C3049g.f(F.a(S2.d.class, AbstractC13100M.class)).b(v.l(F.a(S2.d.class, Executor.class))).f(d.f67612a).d();
        M.o(d13, "builder(Qualified.qualif\u2026cher()\n    }\n    .build()");
        return H.Q(d10, d11, d12, d13);
    }
}
