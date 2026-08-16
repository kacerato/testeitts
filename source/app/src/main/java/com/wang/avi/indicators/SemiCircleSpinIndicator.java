package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class SemiCircleSpinIndicator extends Indicator {
    private float degress;

    @Override
    public void draw(Canvas canvas, Paint paint) {
        canvas.rotate(this.degress, centerX(), centerY());
        canvas.drawArc(new RectF(0.0f, 0.0f, getWidth(), getHeight()), -60.0f, 120.0f, false, paint);
    }

    @Override
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 180.0f, 360.0f);
        addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SemiCircleSpinIndicator.this.degress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                SemiCircleSpinIndicator.this.postInvalidate();
            }
        });
        ofFloat.setDuration(600L);
        ofFloat.setRepeatCount(-1);
        arrayList.add(ofFloat);
        return arrayList;
    }
}
