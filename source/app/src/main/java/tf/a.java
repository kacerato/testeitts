package Tf;

import java.util.Random;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14394D;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nPlatformRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlatformRandom.kt\nkotlin/random/AbstractPlatformRandom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,94:1\n1#2:95\n*E\n"})
public abstract class a extends f {
    @Override
    public int b(int i10) {
        return g.j(r().nextInt(), i10);
    }

    @Override
    public boolean c() {
        return r().nextBoolean();
    }

    @Override
    @InterfaceC14394D
    @NotNull
    public byte[] e(@NotNull byte[] array) {
        M.p(array, "array");
        r().nextBytes(array);
        return array;
    }

    @Override
    public double h() {
        return r().nextDouble();
    }

    @Override
    public float k() {
        return r().nextFloat();
    }

    @Override
    public int l() {
        return r().nextInt();
    }

    @Override
    public int m(int i10) {
        return r().nextInt(i10);
    }

    @Override
    public long o() {
        return r().nextLong();
    }

    @NotNull
    public abstract Random r();
}
