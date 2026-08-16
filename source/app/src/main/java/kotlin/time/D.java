package kotlin.time;

import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlin.time.I;
import nf.InterfaceC14422l0;
import nf.P0;
import nf.T0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nmeasureTime.kt\nKotlin\n*S Kotlin\n*F\n+ 1 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n1#1,139:1\n63#1,3:140\n135#1,3:143\n*S KotlinDebug\n*F\n+ 1 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n24#1:140,3\n95#1:143,3\n*E\n"})
public final class D {
    @T0(markerClass = {o.class})
    @InterfaceC14422l0(version = "1.9")
    public static final long a(@NotNull Mf.a<P0> block) {
        M.p(block, "block");
        long b10 = I.b.f95835b.b();
        block.invoke();
        return I.b.a.i(b10);
    }

    @T0(markerClass = {o.class})
    @InterfaceC14422l0(version = "1.9")
    public static final long b(@NotNull I.b bVar, @NotNull Mf.a<P0> block) {
        M.p(bVar, "<this>");
        M.p(block, "block");
        long b10 = bVar.b();
        block.invoke();
        return I.b.a.i(b10);
    }

    @T0(markerClass = {o.class})
    @InterfaceC14422l0(version = "1.9")
    public static final long c(@NotNull I i10, @NotNull Mf.a<P0> block) {
        M.p(i10, "<this>");
        M.p(block, "block");
        H a10 = i10.a();
        block.invoke();
        return a10.a();
    }

    @T0(markerClass = {o.class})
    @InterfaceC14422l0(version = "1.9")
    @NotNull
    public static final <T> J<T> d(@NotNull Mf.a<? extends T> block) {
        M.p(block, "block");
        return new J<>(block.invoke(), I.b.a.i(I.b.f95835b.b()), null);
    }

    @T0(markerClass = {o.class})
    @InterfaceC14422l0(version = "1.9")
    @NotNull
    public static final <T> J<T> e(@NotNull I.b bVar, @NotNull Mf.a<? extends T> block) {
        M.p(bVar, "<this>");
        M.p(block, "block");
        return new J<>(block.invoke(), I.b.a.i(bVar.b()), null);
    }

    @T0(markerClass = {o.class})
    @InterfaceC14422l0(version = "1.9")
    @NotNull
    public static final <T> J<T> f(@NotNull I i10, @NotNull Mf.a<? extends T> block) {
        M.p(i10, "<this>");
        M.p(block, "block");
        return new J<>(block.invoke(), i10.a().a(), null);
    }
}
