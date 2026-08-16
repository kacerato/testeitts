package com.wang.avi.indicators;

import T6.a;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class BallBeatIndicator extends Indicator {
    public static final int ALPHA = 255;
    public static final float SCALE = 1.0f;
    private float[] scaleFloats = {1.0f, 1.0f, 1.0f};
    int[] alphas = {255, 255, 255};

    @Override
    public void draw(Canvas canvas, Paint paint) {
        float width = (getWidth() - 8.0f) / 6.0f;
        float f10 = 2.0f * width;
        float width2 = (getWidth() / 2) - (f10 + 4.0f);
        float height = getHeight() / 2;
        for (int i10 = 0; i10 < 3; i10++) {
            canvas.save();
            float f11 = i10;
            canvas.translate((f10 * f11) + width2 + (f11 * 4.0f), height);
            float f12 = this.scaleFloats[i10];
            canvas.scale(f12, f12);
            paint.setAlpha(this.alphas[i10]);
            canvas.drawCircle(0.0f, 0.0f, width, paint);
            canvas.restore();
        }
    }

    @Override
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        int[] iArr = {a.f24083g0, 0, a.f24083g0};
        for (final int i10 = 0; i10 < 3; i10++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.75f, 1.0f);
            ofFloat.setDuration(700L);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(iArr[i10]);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallBeatIndicator.this.scaleFloats[i10] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallBeatIndicator.this.postInvalidate();
                }
            });
            ValueAnimator ofInt = ValueAnimator.ofInt(255, 51, 255);
            ofInt.setDuration(700L);
            ofInt.setRepeatCount(-1);
            ofInt.setStartDelay(iArr[i10]);
            addUpdateListener(ofInt, new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallBeatIndicator.this.alphas[i10] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallBeatIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofInt);
        }
        return arrayList;
    }
}
