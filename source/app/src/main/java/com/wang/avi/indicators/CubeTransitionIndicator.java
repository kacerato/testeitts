package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class CubeTransitionIndicator extends Indicator {
    float degrees;
    float[] translateX = new float[2];
    float[] translateY = new float[2];
    float scaleFloat = 1.0f;

    @Override
    public void draw(Canvas canvas, Paint paint) {
        float width = getWidth() / 5;
        float height = getHeight() / 5;
        for (int i10 = 0; i10 < 2; i10++) {
            canvas.save();
            canvas.translate(this.translateX[i10], this.translateY[i10]);
            canvas.rotate(this.degrees);
            float f10 = this.scaleFloat;
            canvas.scale(f10, f10);
            canvas.drawRect(new RectF((-width) / 2.0f, (-height) / 2.0f, width / 2.0f, height / 2.0f), paint);
            canvas.restore();
        }
    }

    @Override
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        float width = getWidth() / 5;
        float height = getHeight() / 5;
        for (final int i10 = 0; i10 < 2; i10++) {
            this.translateX[i10] = width;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(width, getWidth() - width, getWidth() - width, width, width);
            if (i10 == 1) {
                ofFloat = ValueAnimator.ofFloat(getWidth() - width, width, width, getWidth() - width, getWidth() - width);
            }
            ofFloat.setInterpolator(new LinearInterpolator());
            ofFloat.setDuration(1600L);
            ofFloat.setRepeatCount(-1);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    CubeTransitionIndicator.this.translateX[i10] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    CubeTransitionIndicator.this.postInvalidate();
                }
            });
            this.translateY[i10] = height;
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(height, height, getHeight() - height, getHeight() - height, height);
            if (i10 == 1) {
                ofFloat2 = ValueAnimator.ofFloat(getHeight() - height, getHeight() - height, height, height, getHeight() - height);
            }
            ofFloat2.setDuration(1600L);
            ofFloat2.setInterpolator(new LinearInterpolator());
            ofFloat2.setRepeatCount(-1);
            addUpdateListener(ofFloat2, new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    CubeTransitionIndicator.this.translateY[i10] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    CubeTransitionIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofFloat2);
        }
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(1.0f, 0.5f, 1.0f, 0.5f, 1.0f);
        ofFloat3.setDuration(1600L);
        ofFloat3.setInterpolator(new LinearInterpolator());
        ofFloat3.setRepeatCount(-1);
        addUpdateListener(ofFloat3, new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CubeTransitionIndicator.this.scaleFloat = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CubeTransitionIndicator.this.postInvalidate();
            }
        });
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(0.0f, 180.0f, 360.0f, 540.0f, 720.0f);
        ofFloat4.setDuration(1600L);
        ofFloat4.setInterpolator(new LinearInterpolator());
        ofFloat4.setRepeatCount(-1);
        addUpdateListener(ofFloat4, new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CubeTransitionIndicator.this.degrees = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CubeTransitionIndicator.this.postInvalidate();
            }
        });
        arrayList.add(ofFloat3);
        arrayList.add(ofFloat4);
        return arrayList;
    }
}
