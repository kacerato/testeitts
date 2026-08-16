package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class PacmanIndicator extends Indicator {
    private int alpha;
    private float degrees1;
    private float degrees2;
    private float translateX;

    private void drawCircle(Canvas canvas, Paint paint) {
        float width = getWidth() / 11;
        paint.setAlpha(this.alpha);
        canvas.drawCircle(this.translateX, getHeight() / 2, width, paint);
    }

    private void drawPacman(Canvas canvas, Paint paint) {
        float width = getWidth() / 2;
        float height = getHeight() / 2;
        canvas.save();
        canvas.translate(width, height);
        canvas.rotate(this.degrees1);
        paint.setAlpha(255);
        float f10 = (-width) / 1.7f;
        float f11 = (-height) / 1.7f;
        float f12 = width / 1.7f;
        float f13 = height / 1.7f;
        canvas.drawArc(new RectF(f10, f11, f12, f13), 0.0f, 270.0f, true, paint);
        canvas.restore();
        canvas.save();
        canvas.translate(width, height);
        canvas.rotate(this.degrees2);
        paint.setAlpha(255);
        canvas.drawArc(new RectF(f10, f11, f12, f13), 90.0f, 270.0f, true, paint);
        canvas.restore();
    }

    @Override
    public void draw(Canvas canvas, Paint paint) {
        drawPacman(canvas, paint);
        drawCircle(canvas, paint);
    }

    @Override
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(getWidth() - (getWidth() / 11), getWidth() / 2);
        ofFloat.setDuration(650L);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setRepeatCount(-1);
        addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PacmanIndicator.this.translateX = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                PacmanIndicator.this.postInvalidate();
            }
        });
        ValueAnimator ofInt = ValueAnimator.ofInt(255, 122);
        ofInt.setDuration(650L);
        ofInt.setRepeatCount(-1);
        addUpdateListener(ofInt, new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PacmanIndicator.this.alpha = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                PacmanIndicator.this.postInvalidate();
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 45.0f, 0.0f);
        ofFloat2.setDuration(650L);
        ofFloat2.setRepeatCount(-1);
        addUpdateListener(ofFloat2, new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PacmanIndicator.this.degrees1 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                PacmanIndicator.this.postInvalidate();
            }
        });
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.0f, -45.0f, 0.0f);
        ofFloat3.setDuration(650L);
        ofFloat3.setRepeatCount(-1);
        addUpdateListener(ofFloat3, new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PacmanIndicator.this.degrees2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                PacmanIndicator.this.postInvalidate();
            }
        });
        arrayList.add(ofFloat);
        arrayList.add(ofInt);
        arrayList.add(ofFloat2);
        arrayList.add(ofFloat3);
        return arrayList;
    }
}
