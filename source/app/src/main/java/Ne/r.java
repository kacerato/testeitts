package Ne;

import Be.I;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import Be.Q;
import Be.y;
import Me.o0;
import Qe.W;
import java.util.concurrent.Callable;

public final class r {
    public r() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> boolean a(Object obj, Fe.o<? super T, ? extends InterfaceC2359i> oVar, InterfaceC2356f interfaceC2356f) {
        if (!(obj instanceof Callable)) {
            return false;
        }
        try {
            A.c cVar = (Object) ((Callable) obj).call();
            InterfaceC2359i interfaceC2359i = cVar != null ? (InterfaceC2359i) He.b.g(oVar.apply(cVar), "The mapper returned a null CompletableSource") : null;
            if (interfaceC2359i == null) {
                Ge.e.a(interfaceC2356f);
            } else {
                interfaceC2359i.b(interfaceC2356f);
            }
            return true;
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.e(th2, interfaceC2356f);
            return true;
        }
    }

    public static <T, R> boolean b(Object obj, Fe.o<? super T, ? extends y<? extends R>> oVar, I<? super R> i10) {
        if (!(obj instanceof Callable)) {
            return false;
        }
        try {
            A.c cVar = (Object) ((Callable) obj).call();
            y yVar = cVar != null ? (y) He.b.g(oVar.apply(cVar), "The mapper returned a null MaybeSource") : null;
            if (yVar == null) {
                Ge.e.c(i10);
            } else {
                yVar.d(o0.j8(i10));
            }
            return true;
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.h(th2, i10);
            return true;
        }
    }

    public static <T, R> boolean c(Object obj, Fe.o<? super T, ? extends Q<? extends R>> oVar, I<? super R> i10) {
        if (!(obj instanceof Callable)) {
            return false;
        }
        try {
            A.c cVar = (Object) ((Callable) obj).call();
            Q q10 = cVar != null ? (Q) He.b.g(oVar.apply(cVar), "The mapper returned a null SingleSource") : null;
            if (q10 == null) {
                Ge.e.c(i10);
            } else {
                q10.a(W.j8(i10));
            }
            return true;
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.h(th2, i10);
            return true;
        }
    }
}
