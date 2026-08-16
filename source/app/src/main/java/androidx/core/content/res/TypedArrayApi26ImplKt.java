package androidx.core.content.res;

import Lf.o;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import kotlin.jvm.internal.M;

final class TypedArrayApi26ImplKt {
    public static final TypedArrayApi26ImplKt INSTANCE = new TypedArrayApi26ImplKt();

    private TypedArrayApi26ImplKt() {
    }

    @o
    public static final Typeface getFont(TypedArray typedArray, int i10) {
        M.p(typedArray, "typedArray");
        Typeface font = typedArray.getFont(i10);
        M.m(font);
        return font;
    }
}
