package mg;

import androidx.exifinterface.media.ExifInterface;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class C14261w extends C14263y {
    @Override
    public boolean E() {
        return false;
    }

    @Override
    @Nullable
    public C14263y Q() {
        return null;
    }

    @Override
    public boolean R() {
        return ((Boolean) a0()).booleanValue();
    }

    public final <T extends C14263y> void Y(Mf.l<? super T, P0> lVar) {
        Object A10 = A();
        kotlin.jvm.internal.M.n(A10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        for (C14263y c14263y = (C14263y) A10; !kotlin.jvm.internal.M.g(c14263y, this); c14263y = c14263y.B()) {
            kotlin.jvm.internal.M.y(3, ExifInterface.GPS_DIRECTION_TRUE);
            if (c14263y != null) {
                lVar.invoke(c14263y);
            }
        }
    }

    public final boolean Z() {
        return A() == this;
    }

    @NotNull
    public final Void a0() {
        throw new IllegalStateException("head cannot be removed");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [mg.y] */
    public final void b0() {
        Object A10 = A();
        kotlin.jvm.internal.M.n(A10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        C14261w c14261w = this;
        C14261w c14261w2 = (C14263y) A10;
        while (!kotlin.jvm.internal.M.g(c14261w2, this)) {
            C14263y B10 = c14261w2.B();
            c14261w2.X(c14261w, B10);
            c14261w = c14261w2;
            c14261w2 = B10;
        }
        Object A11 = A();
        kotlin.jvm.internal.M.n(A11, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        X(c14261w, (C14263y) A11);
    }
}
