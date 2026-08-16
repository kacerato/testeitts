package nf;

public final class D0 {
    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int[] a(int i10, Mf.l<? super Integer, B0> init) {
        kotlin.jvm.internal.M.p(init, "init");
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr[i11] = init.invoke(Integer.valueOf(i11)).q0();
        }
        return C0.m(iArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int[] b(int... iArr) {
        kotlin.jvm.internal.M.p(iArr, "$v$c$kotlin-UIntArray$-elements$0");
        return iArr;
    }
}
