package kotlin.time;

import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/FractionalParser\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,1613:1\n1351#1,14:1614\n1351#1,14:1628\n1656#2,3:1642\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/FractionalParser\n*L\n1343#1:1614,14\n1344#1:1628,14\n1345#1:1642,3\n*E\n"})
public final class p {

    @NotNull
    public static final p f95888a = new p();

    public final long a(@NotNull String value, int i10, @NotNull Mf.l<? super Integer, P0> callback) {
        char charAt;
        char charAt2;
        M.p(value, "value");
        M.p(callback, "callback");
        int min = Math.min(i10 + 6, value.length());
        int i11 = i10;
        int i12 = 0;
        while (i11 < min && '0' <= (charAt2 = value.charAt(i11)) && charAt2 < ':') {
            i12 = (i12 << 3) + (i12 << 1) + (charAt2 - '0');
            i11++;
        }
        for (int i13 = 0; i13 < 6 - (i11 - i10); i13++) {
            i12 = (i12 << 1) + (i12 << 3);
        }
        int min2 = Math.min(i11 + 9, value.length());
        int i14 = 0;
        int i15 = i11;
        while (i15 < min2) {
            char charAt3 = value.charAt(i15);
            if ('0' > charAt3 || charAt3 >= ':') {
                break;
            }
            i14 = (i14 << 3) + (i14 << 1) + (charAt3 - '0');
            i15++;
        }
        for (int i16 = 0; i16 < 9 - (i15 - i11); i16++) {
            i14 = (i14 << 1) + (i14 << 3);
        }
        while (i15 < value.length() && '0' <= (charAt = value.charAt(i15)) && charAt < ':') {
            i15++;
        }
        callback.invoke(Integer.valueOf(i15));
        return (i12 * 1000000000) + i14;
    }

    public final int b(String str, int i10, int i11, Mf.l<? super Integer, P0> lVar) {
        int min = Math.min(i10 + i11, str.length());
        int i12 = i10;
        int i13 = 0;
        while (i12 < min) {
            char charAt = str.charAt(i12);
            if ('0' > charAt || charAt >= ':') {
                break;
            }
            i13 = (i13 << 3) + (i13 << 1) + (charAt - '0');
            i12++;
        }
        for (int i14 = 0; i14 < i11 - (i12 - i10); i14++) {
            i13 = (i13 << 3) + (i13 << 1);
        }
        lVar.invoke(Integer.valueOf(i12));
        return i13;
    }
}
