package Jf;

import Ef.f;
import Lf.j;
import Mf.l;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.C14436t;
import nf.InterfaceC14394D;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.Nullable;

@j(name = "AutoCloseableKt")
public final class a {

    @t0({"SMAP\nAutoCloseableJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoCloseableJVM.kt\nkotlin/jdk7/AutoCloseableKt$AutoCloseable$1\n*L\n1#1,51:1\n*E\n"})
    public static final class C0346a implements AutoCloseable {

        public final Mf.a<P0> f10553b;

        public C0346a(Mf.a<P0> aVar) {
            this.f10553b = aVar;
        }

        @Override
        public final void close() {
            this.f10553b.invoke();
        }
    }

    @f
    @InterfaceC14422l0(version = "2.0")
    public static final AutoCloseable a(Mf.a<P0> closeAction) {
        M.p(closeAction, "closeAction");
        return new C0346a(closeAction);
    }

    @InterfaceC14422l0(version = "2.0")
    public static void b() {
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.2")
    public static final void c(@Nullable AutoCloseable autoCloseable, @Nullable Throwable th2) {
        if (autoCloseable != null) {
            if (th2 == null) {
                autoCloseable.close();
                return;
            }
            try {
                autoCloseable.close();
            } catch (Throwable th3) {
                C14436t.a(th2, th3);
            }
        }
    }

    @f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.2")
    public static final <T extends AutoCloseable, R> R d(T t10, l<? super T, ? extends R> block) {
        M.p(block, "block");
        try {
            R invoke = block.invoke(t10);
            J.d(1);
            c(t10, null);
            J.c(1);
            return invoke;
        } finally {
        }
    }
}
