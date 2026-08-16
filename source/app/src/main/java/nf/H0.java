package nf;

public final class H0 {
    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long[] a(int i10, Mf.l<? super Integer, F0> init) {
        kotlin.jvm.internal.M.p(init, "init");
        long[] jArr = new long[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            jArr[i11] = init.invoke(Integer.valueOf(i11)).l0();
        }
        return G0.k(jArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long[] b(long... jArr) {
        kotlin.jvm.internal.M.p(jArr, "$v$c$kotlin-ULongArray$-elements$0");
        return jArr;
    }
}
