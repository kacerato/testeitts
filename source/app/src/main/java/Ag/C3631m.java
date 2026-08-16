package ag;

import ag.C3630l;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14441w;
import nf.P0;
import nf.T0;

@t0({"SMAP\nHexFormat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexFormat.kt\nkotlin/text/HexFormatKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,845:1\n1107#2,2:846\n*S KotlinDebug\n*F\n+ 1 HexFormat.kt\nkotlin/text/HexFormatKt\n*L\n843#1:846,2\n*E\n"})
public final class C3631m {
    @Ef.f
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "2.2")
    public static final C3630l a(Mf.l<? super C3630l.a, P0> builderAction) {
        kotlin.jvm.internal.M.p(builderAction, "builderAction");
        C3630l.a aVar = new C3630l.a();
        builderAction.invoke(aVar);
        return aVar.a();
    }

    public static final boolean c(String str) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (kotlin.jvm.internal.M.t(charAt, 128) >= 0 || Character.isLetter(charAt)) {
                return true;
            }
        }
        return false;
    }
}
