package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.view.animation.LinearInterpolator;
import com.tonyodev.fetch2core.FetchCoreDefaults;
import java.util.ArrayList;

public class BallZigZagDeflectIndicator extends BallZigZagIndicator {
    @Override
    public ArrayList<ValueAnimator> onCreateAnimators() {
        char c10 = 4;
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        float width = getWidth() / 6;
        float width2 = getWidth() / 6;
        final int i10 = 0;
        while (i10 < 2) {
            float[] fArr = new float[5];
            fArr[0] = width;
            fArr[1] = getWidth() - width;
            fArr[2] = width;
            fArr[3] = getWidth() - width;
            fArr[c10] = width;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            if (i10 == 1) {
                float[] fArr2 = new float[5];
                fArr2[0] = getWidth() - width;
                fArr2[1] = width;
                fArr2[2] = getWidth() - width;
                fArr2[3] = width;
                fArr2[c10] = getWidth() - width;
                ofFloat = ValueAnimator.ofFloat(fArr2);
            }
            float[] fArr3 = new float[5];
            fArr3[0] = width2;
            fArr3[1] = width2;
            fArr3[2] = getHeight() - width2;
            fArr3[3] = getHeight() - width2;
            fArr3[c10] = width2;
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(fArr3);
            if (i10 == 1) {
                float[] fArr4 = new float[5];
                fArr4[0] = getHeight() - width2;
                fArr4[1] = getHeight() - width2;
                fArr4[2] = width2;
                fArr4[3] = width2;
                fArr4[c10] = getHeight() - width2;
                ofFloat2 = ValueAnimator.ofFloat(fArr4);
            }
            ofFloat.setDuration(FetchCoreDefaults.DEFAULT_PROGRESS_REPORTING_INTERVAL_IN_MILLISECONDS);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofFloat.setRepeatCount(-1);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallZigZagDeflectIndicator.this.translateX[i10] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallZigZagDeflectIndicator.this.postInvalidate();
                }
            });
            ofFloat2.setDuration(FetchCoreDefaults.DEFAULT_PROGRESS_REPORTING_INTERVAL_IN_MILLISECONDS);
            ofFloat2.setInterpolator(new LinearInterpolator());
            ofFloat2.setRepeatCount(-1);
            addUpdateListener(ofFloat2, new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallZigZagDeflectIndicator.this.translateY[i10] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallZigZagDeflectIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofFloat2);
            i10++;
            c10 = 4;
        }
        return arrayList;
    }
}
