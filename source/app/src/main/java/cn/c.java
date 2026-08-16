package cn;

import android.content.Context;
import android.util.TypedValue;

public final class c {
    public static int a(Context c10, float dipValue) {
        float applyDimension = TypedValue.applyDimension(1, dipValue, c10.getResources().getDisplayMetrics());
        int i10 = (int) (applyDimension + 0.5d);
        if (i10 != 0 || applyDimension <= 0.0f) {
            return i10;
        }
        return 1;
    }
}
