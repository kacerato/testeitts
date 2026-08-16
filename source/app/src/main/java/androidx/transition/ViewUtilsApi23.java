package androidx.transition;

import android.os.Build;
import android.view.View;

class ViewUtilsApi23 extends ViewUtilsApi22 {
    private static boolean sTryHiddenSetTransitionVisibility = true;

    @Override
    public void setTransitionVisibility(View view, int i10) {
        if (Build.VERSION.SDK_INT == 28) {
            super.setTransitionVisibility(view, i10);
        } else if (sTryHiddenSetTransitionVisibility) {
            try {
                view.setTransitionVisibility(i10);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSetTransitionVisibility = false;
            }
        }
    }
}
