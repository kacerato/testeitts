package h2;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.ContextThemeWrapper;
import w1.C15879a;

public class C13421a {

    public static final int[] f90215a = {R.attr.theme, C15879a.c.f122386ff};

    public static final int[] f90216b = {C15879a.c.f122435ia};

    @StyleRes
    public static int a(@NonNull Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f90215a);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        return resourceId != 0 ? resourceId : resourceId2;
    }

    @StyleRes
    public static int b(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f90216b, i10, i11);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    @NonNull
    public static Context c(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        int b10 = b(context, attributeSet, i10, i11);
        boolean z10 = (context instanceof ContextThemeWrapper) && ((ContextThemeWrapper) context).getThemeResId() == b10;
        if (b10 == 0 || z10) {
            return context;
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, b10);
        int a10 = a(context, attributeSet);
        if (a10 != 0) {
            contextThemeWrapper.getTheme().applyStyle(a10, true);
        }
        return contextThemeWrapper;
    }
}
