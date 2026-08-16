package Ld;

import Lf.o;
import android.annotation.SuppressLint;
import java.util.Arrays;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;

public final class c {

    public static final c f11718a = new c();

    @o
    @SuppressLint({"DefaultLocale"})
    @NotNull
    public static final String a(float f10) {
        float f11 = 60;
        int i10 = (int) (f10 / f11);
        int i11 = (int) (f10 % f11);
        v0 v0Var = v0.f95790a;
        String format = String.format("%d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i10), Integer.valueOf(i11)}, 2));
        M.h(format, "java.lang.String.format(format, *args)");
        return format;
    }
}
