package nf;

public final class z0 {
    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte[] a(int i10, Mf.l<? super Integer, x0> init) {
        kotlin.jvm.internal.M.p(init, "init");
        byte[] bArr = new byte[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            bArr[i11] = init.invoke(Integer.valueOf(i11)).j0();
        }
        return y0.k(bArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte[] b(byte... bArr) {
        kotlin.jvm.internal.M.p(bArr, "$v$c$kotlin-UByteArray$-elements$0");
        return bArr;
    }
}
