package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.bluetooth.BluetoothClass;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.DisplayMetrics;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class BallGridPulseIndicator extends Indicator {
    public static final int ALPHA = 255;
    public static final float SCALE = 1.0f;
    int[] alphas = {255, 255, 255, 255, 255, 255, 255, 255, 255};
    float[] scaleFloats = {1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f};

    @Override
    public void draw(Canvas canvas, Paint paint) {
        float width = (getWidth() - 16.0f) / 6.0f;
        float f10 = 2.0f * width;
        float f11 = f10 + 4.0f;
        float width2 = (getWidth() / 2) - f11;
        float width3 = (getWidth() / 2) - f11;
        for (int i10 = 0; i10 < 3; i10++) {
            for (int i11 = 0; i11 < 3; i11++) {
                canvas.save();
                float f12 = i11;
                float f13 = (f10 * f12) + width2 + (f12 * 4.0f);
                float f14 = i10;
                canvas.translate(f13, (f10 * f14) + width3 + (f14 * 4.0f));
                int i12 = (i10 * 3) + i11;
                float f15 = this.scaleFloats[i12];
                canvas.scale(f15, f15);
                paint.setAlpha(this.alphas[i12]);
                canvas.drawCircle(0.0f, 0.0f, width, paint);
                canvas.restore();
            }
        }
    }

    @Override
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        int[] iArr = {720, 1020, 1280, 1420, 1450, 1180, 870, 1450, BluetoothClass.Device.AUDIO_VIDEO_SET_TOP_BOX};
        int[] iArr2 = {-60, 250, -170, DisplayMetrics.DENSITY_XXHIGH, 310, 30, 460, 780, 450};
        for (final int i10 = 0; i10 < 9; i10++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.5f, 1.0f);
            ofFloat.setDuration(iArr[i10]);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(iArr2[i10]);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallGridPulseIndicator.this.scaleFloats[i10] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallGridPulseIndicator.this.postInvalidate();
                }
            });
            ValueAnimator ofInt = ValueAnimator.ofInt(255, 210, 122, 255);
            ofInt.setDuration(iArr[i10]);
            ofInt.setRepeatCount(-1);
            ofInt.setStartDelay(iArr2[i10]);
            addUpdateListener(ofInt, new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallGridPulseIndicator.this.alphas[i10] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallGridPulseIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofInt);
        }
        return arrayList;
    }
}
