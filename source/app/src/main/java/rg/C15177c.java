package rg;

import kotlin.jvm.internal.J;
import kotlin.jvm.internal.t0;
import mg.T;
import nf.C14418j0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C15177c {

    @NotNull
    public static final T f108972a = new T("NO_OWNER");

    @NotNull
    public static final T f108973b = new T("ALREADY_LOCKED_BY_OWNER");

    public static final int f108974c = 0;

    public static final int f108975d = 1;

    public static final int f108976e = 2;

    public static final int f108977f = 0;

    public static final int f108978g = 1;

    public static final int f108979h = 2;

    @t0({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexKt$withLock$1\n*L\n1#1,310:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.sync.MutexKt", f = "Mutex.kt", i = {0, 0, 0}, l = {125}, m = "withLock", n = {"$this$withLock", "owner", "action"}, s = {"L$0", "L$1", "L$2"})
    public static final class a<T> extends Bf.d {

        public Object f108980b;

        public Object f108981c;

        public Object f108982d;

        public Object f108983e;

        public int f108984f;

        public a(yf.f<? super a> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f108983e = obj;
            this.f108984f |= Integer.MIN_VALUE;
            return C15177c.e(null, null, null, this);
        }
    }

    @NotNull
    public static final InterfaceC15175a a(boolean z10) {
        return new C15176b(z10);
    }

    public static InterfaceC15175a b(boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return a(z10);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object e(@NotNull InterfaceC15175a interfaceC15175a, @Nullable Object obj, @NotNull Mf.a<? extends T> aVar, @NotNull yf.f<? super T> fVar) {
        a aVar2;
        int i10;
        try {
            if (fVar instanceof a) {
                aVar2 = (a) fVar;
                int i11 = aVar2.f108984f;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    aVar2.f108984f = i11 - Integer.MIN_VALUE;
                    Object obj2 = aVar2.f108983e;
                    Object l10 = Af.d.l();
                    i10 = aVar2.f108984f;
                    if (i10 != 0) {
                        C14418j0.n(obj2);
                        aVar2.f108980b = interfaceC15175a;
                        aVar2.f108981c = obj;
                        aVar2.f108982d = aVar;
                        aVar2.f108984f = 1;
                        if (interfaceC15175a.h(obj, aVar2) == l10) {
                            return l10;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        aVar = (Mf.a) aVar2.f108982d;
                        obj = aVar2.f108981c;
                        interfaceC15175a = (InterfaceC15175a) aVar2.f108980b;
                        C14418j0.n(obj2);
                    }
                    return aVar.invoke();
                }
            }
            return aVar.invoke();
        } finally {
            J.d(1);
            interfaceC15175a.i(obj);
            J.c(1);
        }
        aVar2 = new a(fVar);
        Object obj22 = aVar2.f108983e;
        Object l102 = Af.d.l();
        i10 = aVar2.f108984f;
        if (i10 != 0) {
        }
    }

    public static final <T> Object f(InterfaceC15175a interfaceC15175a, Object obj, Mf.a<? extends T> aVar, yf.f<? super T> fVar) {
        J.e(0);
        interfaceC15175a.h(obj, fVar);
        J.e(1);
        try {
            return aVar.invoke();
        } finally {
            J.d(1);
            interfaceC15175a.i(obj);
            J.c(1);
        }
    }

    public static Object g(InterfaceC15175a interfaceC15175a, Object obj, Mf.a aVar, yf.f fVar, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = null;
        }
        J.e(0);
        interfaceC15175a.h(obj, fVar);
        J.e(1);
        try {
            return aVar.invoke();
        } finally {
            J.d(1);
            interfaceC15175a.i(obj);
            J.c(1);
        }
    }
}
