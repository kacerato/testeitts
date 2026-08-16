package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import com.tonyodev.fetch2core.FetchCoreDefaults;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class BallTrianglePathIndicator extends Indicator {
    float[] translateX = new float[3];
    float[] translateY = new float[3];

    @Override
    public void draw(Canvas canvas, Paint paint) {
        paint.setStrokeWidth(3.0f);
        paint.setStyle(Paint.Style.STROKE);
        for (int i10 = 0; i10 < 3; i10++) {
            canvas.save();
            canvas.translate(this.translateX[i10], this.translateY[i10]);
            canvas.drawCircle(0.0f, 0.0f, getWidth() / 10, paint);
            canvas.restore();
        }
    }

    @Override
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        float width = getWidth() / 5;
        float width2 = getWidth() / 5;
        for (final int i10 = 0; i10 < 3; i10++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(getWidth() / 2, getWidth() - width, width, getWidth() / 2);
            if (i10 == 1) {
                ofFloat = ValueAnimator.ofFloat(getWidth() - width, width, getWidth() / 2, getWidth() - width);
            } else if (i10 == 2) {
                ofFloat = ValueAnimator.ofFloat(width, getWidth() / 2, getWidth() - width, width);
            }
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(width2, getHeight() - width2, getHeight() - width2, width2);
            if (i10 == 1) {
                ofFloat2 = ValueAnimator.ofFloat(getHeight() - width2, getHeight() - width2, width2, getHeight() - width2);
            } else if (i10 == 2) {
                ofFloat2 = ValueAnimator.ofFloat(getHeight() - width2, width2, getHeight() - width2, getHeight() - width2);
            }
            ofFloat.setDuration(FetchCoreDefaults.DEFAULT_PROGRESS_REPORTING_INTERVAL_IN_MILLISECONDS);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofFloat.setRepeatCount(-1);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallTrianglePathIndicator.this.translateX[i10] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallTrianglePathIndicator.this.postInvalidate();
                }
            });
            ofFloat2.setDuration(FetchCoreDefaults.DEFAULT_PROGRESS_REPORTING_INTERVAL_IN_MILLISECONDS);
            ofFloat2.setInterpolator(new LinearInterpolator());
            ofFloat2.setRepeatCount(-1);
            addUpdateListener(ofFloat2, new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallTrianglePathIndicator.this.translateY[i10] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallTrianglePathIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofFloat2);
        }
        return arrayList;
    }
}
