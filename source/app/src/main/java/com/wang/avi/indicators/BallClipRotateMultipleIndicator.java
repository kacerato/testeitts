package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class BallClipRotateMultipleIndicator extends Indicator {
    float degrees;
    float scaleFloat = 1.0f;

    @Override
    public void draw(Canvas canvas, Paint paint) {
        paint.setStrokeWidth(3.0f);
        paint.setStyle(Paint.Style.STROKE);
        float width = getWidth() / 2;
        float height = getHeight() / 2;
        canvas.save();
        canvas.translate(width, height);
        float f10 = this.scaleFloat;
        canvas.scale(f10, f10);
        canvas.rotate(this.degrees);
        float[] fArr = {135.0f, -45.0f};
        for (int i10 = 0; i10 < 2; i10++) {
            canvas.drawArc(new RectF((-width) + 12.0f, (-height) + 12.0f, width - 12.0f, height - 12.0f), fArr[i10], 90.0f, false, paint);
        }
        canvas.restore();
        canvas.translate(width, height);
        float f11 = this.scaleFloat;
        canvas.scale(f11, f11);
        canvas.rotate(-this.degrees);
        float[] fArr2 = {225.0f, 45.0f};
        for (int i11 = 0; i11 < 2; i11++) {
            canvas.drawArc(new RectF(((-width) / 1.8f) + 12.0f, ((-height) / 1.8f) + 12.0f, (width / 1.8f) - 12.0f, (height / 1.8f) - 12.0f), fArr2[i11], 90.0f, false, paint);
        }
    }

    @Override
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.6f, 1.0f);
        ofFloat.setDuration(1000L);
        ofFloat.setRepeatCount(-1);
        addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallClipRotateMultipleIndicator.this.scaleFloat = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallClipRotateMultipleIndicator.this.postInvalidate();
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 180.0f, 360.0f);
        ofFloat2.setDuration(1000L);
        ofFloat2.setRepeatCount(-1);
        addUpdateListener(ofFloat2, new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallClipRotateMultipleIndicator.this.degrees = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallClipRotateMultipleIndicator.this.postInvalidate();
            }
        });
        arrayList.add(ofFloat);
        arrayList.add(ofFloat2);
        return arrayList;
    }
}
