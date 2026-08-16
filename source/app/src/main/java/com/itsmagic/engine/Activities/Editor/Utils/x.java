package com.itsmagic.engine.Activities.Editor.Utils;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;

public class x extends RecyclerView {

    public static final int f72323o = -1;

    public int f72324b;

    public ScaleGestureDetector f72325c;

    public float f72326d;

    public float f72327e;

    public float f72328f;

    public float f72329g;

    public float f72330h;

    public float f72331i;

    public float f72332j;

    public float f72333k;

    public float f72334l;

    public float f72335m;

    public float f72336n;

    public class b extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        public b() {
        }

        @Override
        public boolean onScale(ScaleGestureDetector detector) {
            x.c(x.this, detector.getScaleFactor());
            x xVar = x.this;
            xVar.f72326d = Math.max(xVar.f72335m, Math.min(x.this.f72326d, x.this.f72336n));
            x xVar2 = x.this;
            xVar2.f72327e = xVar2.f72333k - (x.this.f72333k * x.this.f72326d);
            x xVar3 = x.this;
            xVar3.f72328f = xVar3.f72334l - (x.this.f72334l * x.this.f72326d);
            x.this.invalidate();
            return true;
        }
    }

    public x(Context context) {
        super(context);
        this.f72324b = -1;
        this.f72326d = 1.0f;
        this.f72327e = 0.0f;
        this.f72328f = 0.0f;
        this.f72335m = 0.1f;
        this.f72336n = 5.0f;
        if (isInEditMode()) {
            return;
        }
        this.f72325c = new ScaleGestureDetector(getContext(), new b());
    }

    public static float c(x xVar, float f10) {
        float f11 = xVar.f72326d * f10;
        xVar.f72326d = f11;
        return f11;
    }

    @Override
    public void dispatchDraw(@NonNull Canvas canvas) {
        canvas.save();
        if (this.f72326d <= 1.0f) {
            this.f72331i = 0.0f;
            this.f72332j = 0.0f;
        }
        canvas.translate(this.f72331i, this.f72332j);
        float f10 = this.f72326d;
        canvas.scale(f10, f10);
        super.dispatchDraw(canvas);
        canvas.restore();
        invalidate();
    }

    public float getMaxZoom() {
        return this.f72336n;
    }

    public float getMinZoom() {
        return this.f72335m;
    }

    public Vector2 getMove() {
        return new Vector2(this.f72331i, this.f72332j);
    }

    public float getZoom() {
        return this.f72326d;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        float f10 = this.f72331i;
        float f11 = this.f72332j;
        if (this.f72326d <= 1.0f) {
            f10 = 0.0f;
            f11 = 0.0f;
        }
        canvas.translate(f10, f11);
        float f12 = this.f72326d;
        canvas.scale(f12, f12);
        canvas.restore();
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        try {
            return super.onInterceptTouchEvent(ev);
        } catch (IllegalArgumentException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        this.f72333k = View.MeasureSpec.getSize(widthMeasureSpec);
        this.f72334l = View.MeasureSpec.getSize(heightMeasureSpec);
        try {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        } catch (Error | Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public boolean onTouchEvent(@NonNull MotionEvent ev) {
        super.onTouchEvent(ev);
        int action = ev.getAction();
        this.f72325c.onTouchEvent(ev);
        int i10 = action & 255;
        if (i10 == 0) {
            float x10 = ev.getX();
            float y10 = ev.getY();
            this.f72329g = x10;
            this.f72330h = y10;
            this.f72324b = ev.getPointerId(0);
        } else if (i10 == 1) {
            this.f72324b = -1;
        } else if (i10 == 2) {
            int i11 = (action & 65280) >> 8;
            float x11 = ev.getX(i11);
            float y11 = ev.getY(i11);
            float f10 = x11 - this.f72329g;
            float f11 = y11 - this.f72330h;
            float f12 = this.f72331i + f10;
            this.f72331i = f12;
            float f13 = this.f72332j + f11;
            this.f72332j = f13;
            if (f12 > 0.0f) {
                this.f72331i = 0.0f;
            } else {
                float f14 = this.f72327e;
                if (f12 < f14) {
                    this.f72331i = f14;
                }
            }
            if (f13 > 0.0f) {
                this.f72332j = 0.0f;
            } else {
                float f15 = this.f72328f;
                if (f13 < f15) {
                    this.f72332j = f15;
                }
            }
            this.f72329g = x11;
            this.f72330h = y11;
            invalidate();
        } else if (i10 == 3) {
            this.f72324b = -1;
        } else if (i10 == 6) {
            int i12 = (action & 65280) >> 8;
            if (ev.getPointerId(i12) == this.f72324b) {
                int i13 = i12 == 0 ? 1 : 0;
                this.f72329g = ev.getX(i13);
                this.f72330h = ev.getY(i13);
                this.f72324b = ev.getPointerId(i13);
            }
        }
        return true;
    }

    public void setMaxZoom(float maxZoom) {
        this.f72336n = maxZoom;
    }

    public void setMinZoom(float minZoom) {
        this.f72335m = minZoom;
    }

    public x(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f72324b = -1;
        this.f72326d = 1.0f;
        this.f72327e = 0.0f;
        this.f72328f = 0.0f;
        this.f72335m = 0.1f;
        this.f72336n = 5.0f;
        if (isInEditMode()) {
            return;
        }
        this.f72325c = new ScaleGestureDetector(getContext(), new b());
    }

    public x(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f72324b = -1;
        this.f72326d = 1.0f;
        this.f72327e = 0.0f;
        this.f72328f = 0.0f;
        this.f72335m = 0.1f;
        this.f72336n = 5.0f;
        if (isInEditMode()) {
            return;
        }
        this.f72325c = new ScaleGestureDetector(getContext(), new b());
    }
}
