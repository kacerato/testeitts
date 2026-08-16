package eg;

import mg.C14261w;
import mg.C14263y;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/NodeList\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1454:1\n341#2,6:1455\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/NodeList\n*L\n1364#1:1455,6\n*E\n"})
public final class W0 extends C14261w implements D0 {
    @NotNull
    public final String c0(@NotNull String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("List{");
        sb2.append(str);
        sb2.append("}[");
        Object A10 = A();
        kotlin.jvm.internal.M.n(A10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        boolean z10 = true;
        for (C14263y c14263y = (C14263y) A10; !kotlin.jvm.internal.M.g(c14263y, this); c14263y = c14263y.B()) {
            if (c14263y instanceof Q0) {
                Q0 q02 = (Q0) c14263y;
                if (z10) {
                    z10 = false;
                } else {
                    sb2.append(", ");
                }
                sb2.append((Object) q02);
            }
        }
        sb2.append("]");
        String sb3 = sb2.toString();
        kotlin.jvm.internal.M.o(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    @Override
    @NotNull
    public W0 d() {
        return this;
    }

    @Override
    public boolean isActive() {
        return true;
    }

    @Override
    @NotNull
    public String toString() {
        return super.toString();
    }
}
