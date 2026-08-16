package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.DisplayMetrics;
import com.wang.avi.Indicator;
import java.util.ArrayList;
import javax.xml.datatype.DatatypeConstants;

public class BallSpinFadeLoaderIndicator extends Indicator {
    public static final int ALPHA = 255;
    public static final float SCALE = 1.0f;
    float[] scaleFloats = {1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f};
    int[] alphas = {255, 255, 255, 255, 255, 255, 255, 255};

    public final class Point {

        public float f83852x;

        public float f83853y;

        public Point(float f10, float f11) {
            this.f83852x = f10;
            this.f83853y = f11;
        }
    }

    public Point circleAt(int i10, int i11, float f10, double d10) {
        double d11 = f10;
        return new Point((float) ((i10 / 2) + (Math.cos(d10) * d11)), (float) ((i11 / 2) + (d11 * Math.sin(d10))));
    }

    @Override
    public void draw(Canvas canvas, Paint paint) {
        float width = getWidth() / 10;
        for (int i10 = 0; i10 < 8; i10++) {
            canvas.save();
            Point circleAt = circleAt(getWidth(), getHeight(), (getWidth() / 2) - width, 0.7853981633974483d * i10);
            canvas.translate(circleAt.f83852x, circleAt.f83853y);
            float f10 = this.scaleFloats[i10];
            canvas.scale(f10, f10);
            paint.setAlpha(this.alphas[i10]);
            canvas.drawCircle(0.0f, 0.0f, width, paint);
            canvas.restore();
        }
    }

    @Override
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        int[] iArr = {0, 120, 240, DisplayMetrics.DENSITY_360, DisplayMetrics.DENSITY_XXHIGH, 600, 720, 780, DatatypeConstants.MIN_TIMEZONE_OFFSET};
        for (final int i10 = 0; i10 < 8; i10++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.4f, 1.0f);
            ofFloat.setDuration(1000L);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(iArr[i10]);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallSpinFadeLoaderIndicator.this.scaleFloats[i10] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallSpinFadeLoaderIndicator.this.postInvalidate();
                }
            });
            ValueAnimator ofInt = ValueAnimator.ofInt(255, 77, 255);
            ofInt.setDuration(1000L);
            ofInt.setRepeatCount(-1);
            ofInt.setStartDelay(iArr[i10]);
            addUpdateListener(ofInt, new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallSpinFadeLoaderIndicator.this.alphas[i10] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallSpinFadeLoaderIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofInt);
        }
        return arrayList;
    }
}
