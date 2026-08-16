package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.DisplayMetrics;
import com.wang.avi.Indicator;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import org.eclipse.jdt.core.compiler.IProblem;

public class BallGridBeatIndicator extends Indicator {
    public static final int ALPHA = 255;
    int[] alphas = {255, 255, 255, 255, 255, 255, 255, 255, 255};

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
                paint.setAlpha(this.alphas[(i10 * 3) + i11]);
                canvas.drawCircle(0.0f, 0.0f, width, paint);
                canvas.restore();
            }
        }
    }

    @Override
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        int[] iArr = {960, 930, 1190, 1130, 1340, 940, IProblem.UnlikelyCollectionMethodArgumentType, 820, 1190};
        int[] iArr2 = {DisplayMetrics.DENSITY_360, 400, 680, HttpURLConnection.HTTP_GONE, 710, -150, -120, 10, 320};
        for (final int i10 = 0; i10 < 9; i10++) {
            ValueAnimator ofInt = ValueAnimator.ofInt(255, 168, 255);
            ofInt.setDuration(iArr[i10]);
            ofInt.setRepeatCount(-1);
            ofInt.setStartDelay(iArr2[i10]);
            addUpdateListener(ofInt, new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallGridBeatIndicator.this.alphas[i10] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallGridBeatIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofInt);
        }
        return arrayList;
    }
}
