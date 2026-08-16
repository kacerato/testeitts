package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import java.util.ArrayList;

public class LineScalePulseOutIndicator extends LineScaleIndicator {
    @Override
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        long[] jArr = {500, 250, 0, 250, 500};
        for (final int i10 = 0; i10 < 5; i10++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.3f, 1.0f);
            ofFloat.setDuration(900L);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(jArr[i10]);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    LineScalePulseOutIndicator.this.scaleYFloats[i10] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    LineScalePulseOutIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
        }
        return arrayList;
    }
}
