package Zf;

import Lf.j;
import kotlin.jvm.internal.M;
import nf.P0;
import org.jetbrains.annotations.NotNull;

@j(name = "TimingKt")
public final class b {
    public static final long a(@NotNull Mf.a<P0> block) {
        M.p(block, "block");
        long nanoTime = System.nanoTime();
        block.invoke();
        return System.nanoTime() - nanoTime;
    }

    public static final long b(@NotNull Mf.a<P0> block) {
        M.p(block, "block");
        long currentTimeMillis = System.currentTimeMillis();
        block.invoke();
        return System.currentTimeMillis() - currentTimeMillis;
    }
}
