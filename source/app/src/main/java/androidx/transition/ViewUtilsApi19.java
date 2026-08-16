package androidx.transition;

import android.view.View;

class ViewUtilsApi19 extends ViewUtilsBase {
    private static boolean sTryHiddenTransitionAlpha = true;

    @Override
    public void clearNonTransitionAlpha(View view) {
    }

    @Override
    public float getTransitionAlpha(View view) {
        float transitionAlpha;
        if (sTryHiddenTransitionAlpha) {
            try {
                transitionAlpha = view.getTransitionAlpha();
                return transitionAlpha;
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransitionAlpha = false;
            }
        }
        return view.getAlpha();
    }

    @Override
    public void saveNonTransitionAlpha(View view) {
    }

    @Override
    public void setTransitionAlpha(View view, float f10) {
        if (sTryHiddenTransitionAlpha) {
            try {
                view.setTransitionAlpha(f10);
                return;
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransitionAlpha = false;
            }
        }
        view.setAlpha(f10);
    }
}
