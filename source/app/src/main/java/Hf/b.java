package Hf;

import ag.C3625g;
import java.nio.charset.Charset;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;

public final class b {
    @Ef.f
    @InterfaceC14422l0(version = "1.8")
    public static final byte[] a(a aVar, CharSequence source, int i10, int i11) {
        M.p(aVar, "<this>");
        M.p(source, "source");
        if (!(source instanceof String)) {
            return aVar.f(source, i10, i11);
        }
        String str = (String) source;
        aVar.i(str.length(), i10, i11);
        String substring = str.substring(i10, i11);
        M.o(substring, "substring(...)");
        Charset charset = C3625g.f32091g;
        M.n(substring, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = substring.getBytes(charset);
        M.o(bytes, "getBytes(...)");
        return bytes;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.8")
    public static final int b(a aVar, byte[] source, byte[] destination, int i10, int i11, int i12) {
        M.p(aVar, "<this>");
        M.p(source, "source");
        M.p(destination, "destination");
        return aVar.x(source, destination, i10, i11, i12);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.8")
    public static final byte[] c(a aVar, byte[] source, int i10, int i11) {
        M.p(aVar, "<this>");
        M.p(source, "source");
        return aVar.D(source, i10, i11);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.8")
    public static final String d(a aVar, byte[] source, int i10, int i11) {
        M.p(aVar, "<this>");
        M.p(source, "source");
        return new String(aVar.D(source, i10, i11), C3625g.f32091g);
    }
}
