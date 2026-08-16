package Y1;

import android.R;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.ColorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class b {

    public static final boolean f29721a = true;

    public static final int[] f29722b = {R.attr.state_pressed};

    public static final int[] f29723c = {R.attr.state_hovered, R.attr.state_focused};

    public static final int[] f29724d = {R.attr.state_focused};

    public static final int[] f29725e = {R.attr.state_hovered};

    public static final int[] f29726f = {R.attr.state_selected, R.attr.state_pressed};

    public static final int[] f29727g = {R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};

    public static final int[] f29728h = {R.attr.state_selected, R.attr.state_focused};

    public static final int[] f29729i = {R.attr.state_selected, R.attr.state_hovered};

    public static final int[] f29730j = {R.attr.state_selected};

    public static final int[] f29731k = {R.attr.state_enabled, R.attr.state_pressed};

    @VisibleForTesting
    public static final String f29732l = b.class.getSimpleName();

    @VisibleForTesting
    public static final String f29733m = "Use a non-transparent color for the default color as it will be used to finish ripple animations.";

    @NonNull
    public static ColorStateList a(@Nullable ColorStateList colorStateList) {
        if (f29721a) {
            return new ColorStateList(new int[][]{f29730j, StateSet.NOTHING}, new int[]{c(colorStateList, f29726f), c(colorStateList, f29722b)});
        }
        int[] iArr = f29726f;
        int[] iArr2 = f29727g;
        int[] iArr3 = f29728h;
        int[] iArr4 = f29729i;
        int[] iArr5 = f29722b;
        int[] iArr6 = f29723c;
        int[] iArr7 = f29724d;
        int[] iArr8 = f29725e;
        return new ColorStateList(new int[][]{iArr, iArr2, iArr3, iArr4, f29730j, iArr5, iArr6, iArr7, iArr8, StateSet.NOTHING}, new int[]{c(colorStateList, iArr), c(colorStateList, iArr2), c(colorStateList, iArr3), c(colorStateList, iArr4), 0, c(colorStateList, iArr5), c(colorStateList, iArr6), c(colorStateList, iArr7), c(colorStateList, iArr8), 0});
    }

    @ColorInt
    @TargetApi(21)
    public static int b(@ColorInt int i10) {
        return ColorUtils.setAlphaComponent(i10, Math.min(Color.alpha(i10) * 2, 255));
    }

    @ColorInt
    public static int c(@Nullable ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return f29721a ? b(colorForState) : colorForState;
    }

    @NonNull
    public static ColorStateList d(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        if (Build.VERSION.SDK_INT <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(f29731k, 0)) != 0) {
            Log.w(f29732l, f29733m);
        }
        return colorStateList;
    }

    public static boolean e(@NonNull int[] iArr) {
        boolean z10 = false;
        boolean z11 = false;
        for (int i10 : iArr) {
            if (i10 == 16842910) {
                z10 = true;
            } else if (i10 == 16842908 || i10 == 16842919 || i10 == 16843623) {
                z11 = true;
            }
        }
        return z10 && z11;
    }
}
