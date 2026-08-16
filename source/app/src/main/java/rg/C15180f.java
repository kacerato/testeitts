package rg;

import kotlin.jvm.internal.J;
import kotlin.jvm.internal.t0;
import mg.T;
import mg.Y;
import nf.C14418j0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C15180f {

    public static final int f108995a;

    @NotNull
    public static final T f108996b;

    @NotNull
    public static final T f108997c;

    @NotNull
    public static final T f108998d;

    @NotNull
    public static final T f108999e;

    public static final int f109000f;

    @t0({"SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreKt$withPermit$1\n*L\n1#1,397:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.sync.SemaphoreKt", f = "Semaphore.kt", i = {0, 0}, l = {86}, m = "withPermit", n = {"$this$withPermit", "action"}, s = {"L$0", "L$1"})
    public static final class a<T> extends Bf.d {

        public Object f109001b;

        public Object f109002c;

        public Object f109003d;

        public int f109004e;

        public a(yf.f<? super a> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f109003d = obj;
            this.f109004e |= Integer.MIN_VALUE;
            return C15180f.k(null, null, this);
        }
    }

    static {
        int e10;
        int e11;
        e10 = Y.e("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12, null);
        f108995a = e10;
        f108996b = new T("PERMIT");
        f108997c = new T("TAKEN");
        f108998d = new T("BROKEN");
        f108999e = new T("CANCELLED");
        e11 = Y.e("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, null);
        f109000f = e11;
    }

    @NotNull
    public static final InterfaceC15178d a(int i10, int i11) {
        return new C15179e(i10, i11);
    }

    public static InterfaceC15178d b(int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return a(i10, i11);
    }

    public static final g j(long j10, g gVar) {
        return new g(j10, gVar, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object k(@NotNull InterfaceC15178d interfaceC15178d, @NotNull Mf.a<? extends T> aVar, @NotNull yf.f<? super T> fVar) {
        a aVar2;
        int i10;
        try {
            if (fVar instanceof a) {
                aVar2 = (a) fVar;
                int i11 = aVar2.f109004e;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar2.f109004e = i11 - Integer.MIN_VALUE;
                    Object obj = aVar2.f109003d;
                    Object l10 = Af.d.l();
                    i10 = aVar2.f109004e;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        aVar2.f109001b = interfaceC15178d;
                        aVar2.f109002c = aVar;
                        aVar2.f109004e = 1;
                        if (interfaceC15178d.g(aVar2) == l10) {
                            return l10;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        aVar = (Mf.a) aVar2.f109002c;
                        interfaceC15178d = (InterfaceC15178d) aVar2.f109001b;
                        C14418j0.n(obj);
                    }
                    return aVar.invoke();
                }
            }
            return aVar.invoke();
        } finally {
            J.d(1);
            interfaceC15178d.release();
            J.c(1);
        }
        aVar2 = new a(fVar);
        Object obj2 = aVar2.f109003d;
        Object l102 = Af.d.l();
        i10 = aVar2.f109004e;
        if (i10 != 0) {
        }
    }

    public static final <T> Object l(InterfaceC15178d interfaceC15178d, Mf.a<? extends T> aVar, yf.f<? super T> fVar) {
        J.e(0);
        interfaceC15178d.g(fVar);
        J.e(1);
        try {
            return aVar.invoke();
        } finally {
            J.d(1);
            interfaceC15178d.release();
            J.c(1);
        }
    }
}
