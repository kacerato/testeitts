package com.itsmagic.engine.Activities.Editor.Utils;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;

public class StrokeTextView extends AppCompatTextView {

    public int f72090b;

    public float f72091c;

    public boolean f72092d;

    public StrokeTextView(Context context) {
        super(context);
        this.f72090b = -16777216;
        this.f72091c = 4.0f;
        this.f72092d = true;
    }

    @Override
    public void onDraw(Canvas canvas) {
        if (!this.f72092d) {
            super.onDraw(canvas);
            return;
        }
        int currentTextColor = getCurrentTextColor();
        TextPaint paint = getPaint();
        Paint.Style style = paint.getStyle();
        float strokeWidth = paint.getStrokeWidth();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.f72091c);
        setTextColor(this.f72090b);
        super.onDraw(canvas);
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeWidth(strokeWidth);
        setTextColor(currentTextColor);
        super.onDraw(canvas);
        paint.setStyle(style);
    }

    public void setStrokeColor(int color) {
        this.f72090b = color;
        invalidate();
    }

    public void setStrokeEnabled(boolean enabled) {
        this.f72092d = enabled;
        invalidate();
    }

    public void setStrokeWidth(float widthPx) {
        this.f72091c = widthPx;
        invalidate();
    }

    public StrokeTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f72090b = -16777216;
        this.f72091c = 4.0f;
        this.f72092d = true;
    }

    public StrokeTextView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f72090b = -16777216;
        this.f72091c = 4.0f;
        this.f72092d = true;
    }
}
