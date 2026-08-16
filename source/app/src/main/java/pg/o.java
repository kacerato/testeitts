package pg;

import eg.F0;
import eg.InterfaceC13133p;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.O;
import mg.T;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class o {

    public static final int f103951b = 0;

    public static final int f103952c = 1;

    public static final int f103953d = 2;

    public static final int f103954e = 3;

    @NotNull
    public static final Mf.q<Object, Object, Object, Object> f103950a = a.f103960b;

    @NotNull
    public static final T f103955f = new T("STATE_REG");

    @NotNull
    public static final T f103956g = new T("STATE_COMPLETED");

    @NotNull
    public static final T f103957h = new T("STATE_CANCELLED");

    @NotNull
    public static final T f103958i = new T("NO_RESULT");

    @NotNull
    public static final T f103959j = new T("PARAM_CLAUSE_0");

    public static final class a extends O implements Mf.q {

        public static final a f103960b = new a();

        public a() {
            super(3);
        }

        @Override
        @Nullable
        public final Void n(@NotNull Object obj, @Nullable Object obj2, @Nullable Object obj3) {
            return null;
        }
    }

    @F0
    public static void a() {
    }

    @F0
    public static void b() {
    }

    @F0
    public static void c() {
    }

    public static final r d(int i10) {
        if (i10 == 0) {
            return r.SUCCESSFUL;
        }
        if (i10 == 1) {
            return r.REREGISTER;
        }
        if (i10 == 2) {
            return r.CANCELLED;
        }
        if (i10 == 3) {
            return r.ALREADY_SELECTED;
        }
        throw new IllegalStateException(("Unexpected internal result: " + i10).toString());
    }

    public static final r e(int i10) {
        return d(i10);
    }

    public static final T g() {
        return f103958i;
    }

    public static final T h() {
        return f103957h;
    }

    public static final T i() {
        return f103956g;
    }

    public static final T j() {
        return f103955f;
    }

    public static final boolean k(InterfaceC13133p interfaceC13133p, Mf.l lVar) {
        return o(interfaceC13133p, lVar);
    }

    @NotNull
    public static final T l() {
        return f103959j;
    }

    @Nullable
    public static final <R> Object m(@NotNull Mf.l<? super InterfaceC14996c<? super R>, P0> lVar, @NotNull yf.f<? super R> fVar) {
        l lVar2 = new l(fVar.getContext());
        lVar.invoke(lVar2);
        return lVar2.X(fVar);
    }

    public static final <R> Object n(Mf.l<? super InterfaceC14996c<? super R>, P0> lVar, yf.f<? super R> fVar) {
        J.e(3);
        throw null;
    }

    public static final boolean o(InterfaceC13133p<? super P0> interfaceC13133p, Mf.l<? super Throwable, P0> lVar) {
        Object k10 = interfaceC13133p.k(P0.f98194a, null, lVar);
        if (k10 == null) {
            return false;
        }
        interfaceC13133p.B(k10);
        return true;
    }
}
