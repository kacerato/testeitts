package androidx.cardview.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.cardview.widget.RoundRectDrawableWithShadow;

class CardViewApi17Impl extends CardViewBaseImpl {
    @Override
    public void initStatic() {
        RoundRectDrawableWithShadow.sRoundRectHelper = new RoundRectDrawableWithShadow.RoundRectHelper() {
            @Override
            public void drawRoundRect(Canvas canvas, RectF rectF, float f10, Paint paint) {
                canvas.drawRoundRect(rectF, f10, f10, paint);
            }
        };
    }
}
