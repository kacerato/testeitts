package ch;

import Mf.l;
import Yg.j;
import android.util.DisplayMetrics;
import java.util.ArrayList;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\norg/anastr/speedviewlib/util/UtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1915#2,2:69\n*S KotlinDebug\n*F\n+ 1 Utils.kt\norg/anastr/speedviewlib/util/UtilsKt\n*L\n55#1:69,2\n*E\n"})
public final class C4189a {
    public static final void a(@NotNull j jVar, @NotNull l<? super Zg.a, P0> action) {
        M.p(jVar, "<this>");
        M.p(action, "action");
        ArrayList<Zg.a> arrayList = new ArrayList(jVar.getSections());
        jVar.u();
        for (Zg.a aVar : arrayList) {
            M.m(aVar);
            action.invoke(aVar);
        }
        jVar.j(arrayList);
    }

    public static final float b(float f10, float f11) {
        return (float) (((f10 * 0.5f) * DisplayMetrics.DENSITY_360) / (f11 * 3.141592653589793d));
    }
}
