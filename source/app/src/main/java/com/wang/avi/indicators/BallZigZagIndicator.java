package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class BallZigZagIndicator extends Indicator {
    float[] translateX = new float[2];
    float[] translateY = new float[2];

    @Override
    public void draw(Canvas canvas, Paint paint) {
        for (int i10 = 0; i10 < 2; i10++) {
            canvas.save();
            canvas.translate(this.translateX[i10], this.translateY[i10]);
            canvas.drawCircle(0.0f, 0.0f, getWidth() / 10, paint);
            canvas.restore();
        }
    }

    @Override
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        float width = getWidth() / 6;
        float width2 = getWidth() / 6;
        for (final int i10 = 0; i10 < 2; i10++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(width, getWidth() - width, getWidth() / 2, width);
            if (i10 == 1) {
                ofFloat = ValueAnimator.ofFloat(getWidth() - width, width, getWidth() / 2, getWidth() - width);
            }
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(width2, width2, getHeight() / 2, width2);
            if (i10 == 1) {
                ofFloat2 = ValueAnimator.ofFloat(getHeight() - width2, getHeight() - width2, getHeight() / 2, getHeight() - width2);
            }
            ofFloat.setDuration(1000L);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofFloat.setRepeatCount(-1);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallZigZagIndicator.this.translateX[i10] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallZigZagIndicator.this.postInvalidate();
                }
            });
            ofFloat2.setDuration(1000L);
            ofFloat2.setInterpolator(new LinearInterpolator());
            ofFloat2.setRepeatCount(-1);
            addUpdateListener(ofFloat2, new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallZigZagIndicator.this.translateY[i10] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallZigZagIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofFloat2);
        }
        return arrayList;
    }
}
