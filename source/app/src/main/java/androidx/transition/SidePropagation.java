package androidx.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

public class SidePropagation extends VisibilityPropagation {
    private float mPropagationSpeed = 3.0f;
    private int mSide = 80;

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0012, code lost:
    
        r0 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x001d, code lost:
    
        if (androidx.core.view.ViewCompat.getLayoutDirection(r6) == 1) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (androidx.core.view.ViewCompat.getLayoutDirection(r6) == 1) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
    
        r0 = 5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int distance(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        int i18 = this.mSide;
        if (i18 != 8388611) {
            if (i18 == 8388613) {
            }
        }
        if (i18 == 3) {
            return Math.abs(i13 - i11) + (i16 - i10);
        }
        if (i18 == 5) {
            return Math.abs(i13 - i11) + (i10 - i14);
        }
        if (i18 == 48) {
            return Math.abs(i12 - i10) + (i17 - i11);
        }
        if (i18 != 80) {
            return 0;
        }
        return Math.abs(i12 - i10) + (i11 - i15);
    }

    private int getMaxDistance(ViewGroup viewGroup) {
        int i10 = this.mSide;
        return (i10 == 3 || i10 == 5 || i10 == 8388611 || i10 == 8388613) ? viewGroup.getWidth() : viewGroup.getHeight();
    }

    @Override
    public long getStartDelay(ViewGroup viewGroup, Transition transition, TransitionValues transitionValues, TransitionValues transitionValues2) {
        int i10;
        int i11;
        int i12;
        TransitionValues transitionValues3 = transitionValues;
        if (transitionValues3 == null && transitionValues2 == null) {
            return 0L;
        }
        Rect epicenter = transition.getEpicenter();
        if (transitionValues2 == null || getViewVisibility(transitionValues3) == 0) {
            i10 = -1;
        } else {
            transitionValues3 = transitionValues2;
            i10 = 1;
        }
        int viewX = getViewX(transitionValues3);
        int viewY = getViewY(transitionValues3);
        int[] iArr = new int[2];
        viewGroup.getLocationOnScreen(iArr);
        int round = iArr[0] + Math.round(viewGroup.getTranslationX());
        int round2 = iArr[1] + Math.round(viewGroup.getTranslationY());
        int width = round + viewGroup.getWidth();
        int height = round2 + viewGroup.getHeight();
        if (epicenter != null) {
            i11 = epicenter.centerX();
            i12 = epicenter.centerY();
        } else {
            i11 = (round + width) / 2;
            i12 = (round2 + height) / 2;
        }
        float distance = distance(viewGroup, viewX, viewY, i11, i12, round, round2, width, height) / getMaxDistance(viewGroup);
        long duration = transition.getDuration();
        if (duration < 0) {
            duration = 300;
        }
        return Math.round((((float) (duration * i10)) / this.mPropagationSpeed) * distance);
    }

    public void setPropagationSpeed(float f10) {
        if (f10 == 0.0f) {
            throw new IllegalArgumentException("propagationSpeed may not be 0");
        }
        this.mPropagationSpeed = f10;
    }

    public void setSide(int i10) {
        this.mSide = i10;
    }
}
