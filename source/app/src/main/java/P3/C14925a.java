package p3;

import Tf.f;
import Vf.l;
import Vf.u;
import ag.X;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import pf.AbstractC14974g0;
import pf.I;
import pf.S;

@t0({"SMAP\nRandomUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RandomUtil.kt\ncom/google/firebase/util/RandomUtilKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1#2:43\n1549#3:44\n1620#3,3:45\n*S KotlinDebug\n*F\n+ 1 RandomUtil.kt\ncom/google/firebase/util/RandomUtilKt\n*L\n34#1:44\n34#1:45,3\n*E\n"})
public final class C14925a {

    @NotNull
    public static final String f103450a = "23456789abcdefghjkmnpqrstvwxyz";

    public static void a() {
    }

    @NotNull
    public static final String b(@NotNull f fVar, int i10) {
        M.p(fVar, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("invalid length: " + i10).toString());
        }
        l Y12 = u.Y1(0, i10);
        ArrayList arrayList = new ArrayList(I.d0(Y12, 10));
        Iterator<Integer> it = Y12.iterator();
        while (it.hasNext()) {
            ((AbstractC14974g0) it).nextInt();
            arrayList.add(Character.valueOf(X.U8(f103450a, fVar)));
        }
        return S.r3(arrayList, "", null, null, 0, null, null, 62, null);
    }
}
