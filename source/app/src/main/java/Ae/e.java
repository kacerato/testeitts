package Ae;

import android.text.Layout;
import androidx.annotation.NonNull;

public abstract class e {

    public static final float f525a = 0.0f;

    public static final float f526b = 1.0f;

    public static int a(@NonNull Layout layout, int i10) {
        int lineBottom = layout.getLineBottom(i10);
        boolean z10 = i10 == layout.getLineCount() - 1;
        float spacingAdd = layout.getSpacingAdd();
        float spacingMultiplier = layout.getSpacingMultiplier();
        if ((spacingAdd != 0.0f || spacingMultiplier != 1.0f) && !z10) {
            if (Float.compare(1.0f, spacingMultiplier) != 0) {
                float b10 = b(layout, i10);
                spacingAdd = b10 - ((b10 - spacingAdd) / spacingMultiplier);
            }
            lineBottom = (int) ((lineBottom - spacingAdd) + 0.5f);
        }
        return (z10 && i10 == layout.getLineCount() - 1) ? lineBottom - layout.getBottomPadding() : lineBottom;
    }

    public static int b(@NonNull Layout layout, int i10) {
        return layout.getLineTop(i10 + 1) - layout.getLineTop(i10);
    }

    public static int c(@NonNull Layout layout, int i10) {
        int lineTop = layout.getLineTop(i10);
        return i10 == 0 ? lineTop - layout.getTopPadding() : lineTop;
    }
}
