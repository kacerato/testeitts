package com.itsmagic.engine.Activities.Editor.Panels.Profiler.CPUProfiler;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.itsmagic.engine2.R;

public class CPUCoreGraphView extends View {

    public static final int f71802j = 6;

    public static final int f71803k = 4;

    public final Paint f71804b;

    public final Paint f71805c;

    public final Paint f71806d;

    public final Paint f71807e;

    public final Paint f71808f;

    public final Path f71809g;

    public final Path f71810h;

    public float[] f71811i;

    public CPUCoreGraphView(Context context) {
        super(context);
        this.f71804b = new Paint();
        this.f71805c = new Paint();
        this.f71806d = new Paint(1);
        this.f71807e = new Paint(1);
        this.f71808f = new Paint(1);
        this.f71809g = new Path();
        this.f71810h = new Path();
        this.f71811i = new float[0];
        e();
    }

    public final float a(float value) {
        if (value < 0.0f) {
            return 0.0f;
        }
        if (value > 1.0f) {
            return 1.0f;
        }
        return value;
    }

    public final float b(float value) {
        return value * getResources().getDisplayMetrics().density;
    }

    public final void c(Canvas canvas, float width, float height) {
        for (int i10 = 1; i10 < 6; i10++) {
            float f10 = (i10 * width) / 6.0f;
            canvas.drawLine(f10, 0.0f, f10, height, this.f71805c);
        }
        for (int i11 = 1; i11 < 4; i11++) {
            float f11 = (i11 * height) / 4.0f;
            canvas.drawLine(0.0f, f11, width, f11, this.f71805c);
        }
    }

    public final void d(Canvas canvas, float width, float height) {
        float[] fArr;
        float[] fArr2 = this.f71811i;
        if (fArr2 == null || fArr2.length == 0) {
            return;
        }
        this.f71809g.reset();
        this.f71810h.reset();
        float max = Math.max(1.0f, width - 1.0f);
        int i10 = 0;
        while (true) {
            fArr = this.f71811i;
            if (i10 >= fArr.length) {
                break;
            }
            float a10 = a(fArr[i10] / 100.0f);
            float[] fArr3 = this.f71811i;
            float length = fArr3.length == 1 ? width : (i10 * max) / (fArr3.length - 1);
            float f10 = (1.0f - a10) * height;
            if (i10 == 0) {
                this.f71809g.moveTo(length, f10);
                this.f71810h.moveTo(length, height);
                this.f71810h.lineTo(length, f10);
            } else {
                float length2 = fArr3.length == 1 ? width : ((i10 - 1) * max) / (fArr3.length - 1);
                float a11 = (1.0f - a(fArr3[i10 - 1] / 100.0f)) * height;
                this.f71809g.quadTo(length2, a11, length, f10);
                this.f71810h.quadTo(length2, a11, length, f10);
            }
            i10++;
        }
        if (fArr.length != 1) {
            width = max;
        }
        this.f71810h.lineTo(width, height);
        this.f71810h.close();
        canvas.drawPath(this.f71810h, this.f71807e);
        canvas.drawPath(this.f71809g, this.f71806d);
    }

    public final void e() {
        this.f71804b.setColor(getContext().getColor(R.color.theme_panel_topbar));
        this.f71805c.setColor(536870911);
        this.f71805c.setStrokeWidth(b(0.6f));
        Paint paint = this.f71805c;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.f71806d.setColor(-13187073);
        this.f71806d.setStrokeWidth(b(1.2f));
        this.f71806d.setStyle(style);
        this.f71807e.setColor(573028599);
        this.f71807e.setStyle(Paint.Style.FILL);
        this.f71808f.setColor(1882638335);
        this.f71808f.setStrokeWidth(b(0.8f));
        this.f71808f.setStyle(style);
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float width = getWidth();
        float height = getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        canvas.drawRect(0.0f, 0.0f, width, height, this.f71804b);
        c(canvas, width, height);
        d(canvas, width, height);
        canvas.drawRect(0.0f, 0.0f, width, height, this.f71808f);
    }

    public void setHistory(float[] history) {
        if (history == null) {
            this.f71811i = new float[0];
        } else {
            this.f71811i = history;
        }
        invalidate();
    }

    public CPUCoreGraphView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f71804b = new Paint();
        this.f71805c = new Paint();
        this.f71806d = new Paint(1);
        this.f71807e = new Paint(1);
        this.f71808f = new Paint(1);
        this.f71809g = new Path();
        this.f71810h = new Path();
        this.f71811i = new float[0];
        e();
    }

    public CPUCoreGraphView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f71804b = new Paint();
        this.f71805c = new Paint();
        this.f71806d = new Paint(1);
        this.f71807e = new Paint(1);
        this.f71808f = new Paint(1);
        this.f71809g = new Path();
        this.f71810h = new Path();
        this.f71811i = new float[0];
        e();
    }
}
