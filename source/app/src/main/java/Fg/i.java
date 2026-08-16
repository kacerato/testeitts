package Fg;

import Bg.s;
import yg.EnumC16190f;
import yg.EnumC16191g;

public class i {
    public static int a(s sVar, f fVar) {
        byte[] bArr = {EnumC16190f.SPECIFICATION_VERSION.a(), EnumC16190f.UNIX.a()};
        if (c.z() && !sVar.t()) {
            bArr[1] = EnumC16190f.WINDOWS.a();
        }
        return fVar.m(bArr, 0);
    }

    public static EnumC16191g b(s sVar) {
        EnumC16191g enumC16191g = EnumC16191g.DEFAULT;
        if (sVar.d() == Cg.d.DEFLATE) {
            enumC16191g = EnumC16191g.DEFLATE_COMPRESSED;
        }
        if (sVar.h() > 4294967295L) {
            enumC16191g = EnumC16191g.ZIP_64_FORMAT;
        }
        return (sVar.o() && sVar.f().equals(Cg.e.AES)) ? EnumC16191g.AES_ENCRYPTED : enumC16191g;
    }
}
