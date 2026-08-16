package eg;

import Xf.InterfaceC3312m;
import eg.K0;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.JobCancellationException;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

@kotlin.jvm.internal.t0({"SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n+ 2 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,685:1\n13#2:686\n1295#3,2:687\n1295#3,2:689\n1295#3,2:691\n1295#3,2:693\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n*L\n494#1:686\n521#1:687,2\n535#1:689,2\n629#1:691,2\n653#1:693,2\n*E\n"})
public final class P0 {
    public static final boolean A(@NotNull yf.j jVar) {
        K0 k02 = (K0) jVar.get(K0.f85619y4);
        if (k02 != null) {
            return k02.isActive();
        }
        return true;
    }

    public static final Throwable B(Throwable th2, K0 k02) {
        return th2 == null ? new JobCancellationException("Job was cancelled", null, k02) : th2;
    }

    @NotNull
    public static final InterfaceC13089B a(@Nullable K0 k02) {
        return new M0(k02);
    }

    @Lf.j(name = "Job")
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final K0 b(K0 k02) {
        return N0.a(k02);
    }

    public static InterfaceC13089B c(K0 k02, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            k02 = null;
        }
        return N0.a(k02);
    }

    public static K0 d(K0 k02, int i10, Object obj) {
        K0 b10;
        if ((i10 & 1) != 0) {
            k02 = null;
        }
        b10 = b(k02);
        return b10;
    }

    public static final void e(@NotNull K0 k02, @NotNull String str, @Nullable Throwable th2) {
        k02.a(C13145v0.a(str, th2));
    }

    public static final void g(@NotNull yf.j jVar, @Nullable CancellationException cancellationException) {
        K0 k02 = (K0) jVar.get(K0.f85619y4);
        if (k02 != null) {
            k02.a(cancellationException);
        }
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final boolean h(yf.j jVar, Throwable th2) {
        j.b bVar = jVar.get(K0.f85619y4);
        R0 r02 = bVar instanceof R0 ? (R0) bVar : null;
        if (r02 == null) {
            return false;
        }
        r02.l0(B(th2, r02));
        return true;
    }

    public static void i(K0 k02, String str, Throwable th2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            th2 = null;
        }
        N0.e(k02, str, th2);
    }

    public static void j(yf.j jVar, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        N0.g(jVar, cancellationException);
    }

    public static boolean k(yf.j jVar, Throwable th2, int i10, Object obj) {
        boolean h10;
        if ((i10 & 1) != 0) {
            th2 = null;
        }
        h10 = h(jVar, th2);
        return h10;
    }

    @Nullable
    public static final Object l(@NotNull K0 k02, @NotNull yf.f<? super nf.P0> fVar) {
        K0.a.b(k02, null, 1, null);
        Object c02 = k02.c0(fVar);
        return c02 == Af.d.l() ? c02 : nf.P0.f98194a;
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final void n(K0 k02, Throwable th2) {
        for (K0 k03 : k02.getChildren()) {
            R0 r02 = k03 instanceof R0 ? (R0) k03 : null;
            if (r02 != null) {
                r02.l0(B(th2, k02));
            }
        }
    }

    public static final void o(@NotNull K0 k02, @Nullable CancellationException cancellationException) {
        Iterator<K0> it = k02.getChildren().iterator();
        while (it.hasNext()) {
            it.next().a(cancellationException);
        }
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final void q(yf.j jVar, Throwable th2) {
        K0 k02 = (K0) jVar.get(K0.f85619y4);
        if (k02 == null) {
            return;
        }
        for (K0 k03 : k02.getChildren()) {
            R0 r02 = k03 instanceof R0 ? (R0) k03 : null;
            if (r02 != null) {
                r02.l0(B(th2, k02));
            }
        }
    }

    public static final void r(@NotNull yf.j jVar, @Nullable CancellationException cancellationException) {
        InterfaceC3312m<K0> children;
        K0 k02 = (K0) jVar.get(K0.f85619y4);
        if (k02 == null || (children = k02.getChildren()) == null) {
            return;
        }
        Iterator<K0> it = children.iterator();
        while (it.hasNext()) {
            it.next().a(cancellationException);
        }
    }

    public static void s(K0 k02, Throwable th2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            th2 = null;
        }
        n(k02, th2);
    }

    public static void t(K0 k02, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        N0.o(k02, cancellationException);
    }

    public static void u(yf.j jVar, Throwable th2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            th2 = null;
        }
        q(jVar, th2);
    }

    public static void v(yf.j jVar, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        N0.r(jVar, cancellationException);
    }

    @NotNull
    public static final InterfaceC13128m0 w(@NotNull K0 k02, @NotNull InterfaceC13128m0 interfaceC13128m0) {
        return k02.w(new C13132o0(interfaceC13128m0));
    }

    public static final void x(@NotNull K0 k02) {
        if (!k02.isActive()) {
            throw k02.Q();
        }
    }

    public static final void y(@NotNull yf.j jVar) {
        K0 k02 = (K0) jVar.get(K0.f85619y4);
        if (k02 != null) {
            N0.z(k02);
        }
    }

    @NotNull
    public static final K0 z(@NotNull yf.j jVar) {
        K0 k02 = (K0) jVar.get(K0.f85619y4);
        if (k02 != null) {
            return k02;
        }
        throw new IllegalStateException(("Current context doesn't contain Job in it: " + ((Object) jVar)).toString());
    }
}
