package nf;

public final class N0 {
    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short[] a(int i10, Mf.l<? super Integer, L0> init) {
        kotlin.jvm.internal.M.p(init, "init");
        short[] sArr = new short[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            sArr[i11] = init.invoke(Integer.valueOf(i11)).j0();
        }
        return M0.k(sArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short[] b(short... sArr) {
        kotlin.jvm.internal.M.p(sArr, "$v$c$kotlin-UShortArray$-elements$0");
        return sArr;
    }
}
