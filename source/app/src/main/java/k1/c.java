package K1;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.material.internal.s;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class c {
    @NonNull
    public static Rect a(@NonNull Context context, @AttrRes int i10, int i11) {
        TypedArray j10 = s.j(context, null, C15879a.o.f125933rk, i10, i11, new int[0]);
        int dimensionPixelSize = j10.getDimensionPixelSize(C15879a.o.f126008uk, context.getResources().getDimensionPixelSize(C15879a.f.f123049L2));
        int dimensionPixelSize2 = j10.getDimensionPixelSize(C15879a.o.f126033vk, context.getResources().getDimensionPixelSize(C15879a.f.f123057M2));
        int dimensionPixelSize3 = j10.getDimensionPixelSize(C15879a.o.f125983tk, context.getResources().getDimensionPixelSize(C15879a.f.f123041K2));
        int dimensionPixelSize4 = j10.getDimensionPixelSize(C15879a.o.f125958sk, context.getResources().getDimensionPixelSize(C15879a.f.f123033J2));
        j10.recycle();
        if (context.getResources().getConfiguration().getLayoutDirection() == 1) {
            dimensionPixelSize3 = dimensionPixelSize;
            dimensionPixelSize = dimensionPixelSize3;
        }
        return new Rect(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize3, dimensionPixelSize4);
    }

    @NonNull
    public static InsetDrawable b(@Nullable Drawable drawable, @NonNull Rect rect) {
        return new InsetDrawable(drawable, rect.left, rect.top, rect.right, rect.bottom);
    }
}
