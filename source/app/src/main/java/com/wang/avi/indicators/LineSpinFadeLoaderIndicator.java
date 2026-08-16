package com.wang.avi.indicators;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.wang.avi.indicators.BallSpinFadeLoaderIndicator;

public class LineSpinFadeLoaderIndicator extends BallSpinFadeLoaderIndicator {
    @Override
    public void draw(Canvas canvas, Paint paint) {
        float width = getWidth() / 10;
        for (int i10 = 0; i10 < 8; i10++) {
            canvas.save();
            BallSpinFadeLoaderIndicator.Point circleAt = circleAt(getWidth(), getHeight(), (getWidth() / 2.5f) - width, 0.7853981633974483d * i10);
            canvas.translate(circleAt.f83852x, circleAt.f83853y);
            float f10 = this.scaleFloats[i10];
            canvas.scale(f10, f10);
            canvas.rotate(i10 * 45);
            paint.setAlpha(this.alphas[i10]);
            float f11 = -width;
            canvas.drawRoundRect(new RectF(f11, f11 / 1.5f, width * 1.5f, width / 1.5f), 5.0f, 5.0f, paint);
            canvas.restore();
        }
    }
}
