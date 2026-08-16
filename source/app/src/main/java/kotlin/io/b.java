package kotlin.io;

import java.io.Closeable;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import nf.C14436t;
import nf.InterfaceC14394D;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.Nullable;

@Lf.j(name = "CloseableKt")
public final class b {
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.1")
    public static final void a(@Nullable Closeable closeable, @Nullable Throwable th2) {
        if (closeable != null) {
            if (th2 == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th3) {
                C14436t.a(th2, th3);
            }
        }
    }

    @Ef.f
    @InterfaceC14394D
    public static final <T extends Closeable, R> R b(T t10, Mf.l<? super T, ? extends R> block) {
        M.p(block, "block");
        try {
            R invoke = block.invoke(t10);
            J.d(1);
            a(t10, null);
            J.c(1);
            return invoke;
        } finally {
        }
    }
}
