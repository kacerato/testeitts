package com.itsmagic.engine.Activities.Editor.Panels.Animation.AnimationTimeLine;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.annotation.Nullable;
import b3.s;
import com.google.android.material.timepicker.ChipTextInputComboView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.HashMap;
import java.util.List;
import org.openjdk.tools.doclint.DocLint;
import v4.C15803b;

public class ATLTimelineCanvasView extends View {

    public float f71262A;

    public float f71263B;

    public boolean f71264C;

    public boolean f71265D;

    public final List<C15803b> f71266b;

    public final HashMap<Integer, C15803b> f71267c;

    public final Paint f71268d;

    public final Paint f71269e;

    public final Paint f71270f;

    public final Paint f71271g;

    public final Paint f71272h;

    public final Rect f71273i;

    public int f71274j;

    public int f71275k;

    public int f71276l;

    public final int f71277m;

    public final int f71278n;

    public final float f71279o;

    public final float f71280p;

    public final GestureDetector f71281q;

    public final ScaleGestureDetector f71282r;

    public final int f71283s;

    public final OverScroller f71284t;

    public final int f71285u;

    public final int f71286v;

    public c f71287w;

    public int f71288x;

    public float f71289y;

    public VelocityTracker f71290z;

    public class a extends GestureDetector.SimpleOnGestureListener {
        public a() {
        }

        @Override
        public boolean onDown(MotionEvent e10) {
            return true;
        }

        @Override
        public void onLongPress(MotionEvent e10) {
            C15803b w10;
            if (ATLTimelineCanvasView.this.f71264C || ATLTimelineCanvasView.this.f71265D || (w10 = ATLTimelineCanvasView.this.w(e10.getX())) == null || ATLTimelineCanvasView.this.f71287w == null) {
                return;
            }
            ATLTimelineCanvasView.this.f71287w.b(w10);
        }

        @Override
        public boolean onSingleTapUp(MotionEvent e10) {
            if (!ATLTimelineCanvasView.this.f71264C && !ATLTimelineCanvasView.this.f71265D) {
                ATLTimelineCanvasView.this.B(e10.getX());
            }
            return true;
        }
    }

    public class b extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        public b() {
        }

        @Override
        public boolean onScale(ScaleGestureDetector detector) {
            ATLTimelineCanvasView.p(ATLTimelineCanvasView.this, detector.getScaleFactor());
            ATLTimelineCanvasView aTLTimelineCanvasView = ATLTimelineCanvasView.this;
            aTLTimelineCanvasView.f71289y = Math.max(0.1f, Math.min(aTLTimelineCanvasView.f71289y, 10.0f));
            int round = Math.round(ATLTimelineCanvasView.this.f71288x * ATLTimelineCanvasView.this.f71289y);
            if (round < ATLTimelineCanvasView.this.f71277m) {
                round = ATLTimelineCanvasView.this.f71277m;
                ATLTimelineCanvasView.this.f71289y = r1.f71277m / Math.max(1, ATLTimelineCanvasView.this.f71288x);
            } else if (round > ATLTimelineCanvasView.this.f71278n) {
                round = ATLTimelineCanvasView.this.f71278n;
                ATLTimelineCanvasView.this.f71289y = r1.f71278n / Math.max(1, ATLTimelineCanvasView.this.f71288x);
            }
            if (round != ATLTimelineCanvasView.this.f71274j) {
                ATLTimelineCanvasView.this.r(detector.getFocusX(), ATLTimelineCanvasView.this.f71274j, round);
                ATLTimelineCanvasView.this.f71274j = round;
                ATLTimelineCanvasView.this.invalidate();
            }
            return true;
        }

        @Override
        public boolean onScaleBegin(ScaleGestureDetector detector) {
            ATLTimelineCanvasView.this.f71265D = true;
            if (!ATLTimelineCanvasView.this.f71284t.isFinished()) {
                ATLTimelineCanvasView.this.f71284t.abortAnimation();
            }
            ATLTimelineCanvasView aTLTimelineCanvasView = ATLTimelineCanvasView.this;
            aTLTimelineCanvasView.f71288x = aTLTimelineCanvasView.f71274j;
            ATLTimelineCanvasView.this.f71289y = 1.0f;
            return true;
        }

        @Override
        public void onScaleEnd(ScaleGestureDetector detector) {
            ATLTimelineCanvasView.this.f71265D = false;
        }
    }

    public interface c {
        void a(int frame);

        void b(C15803b keyFrame);
    }

    public ATLTimelineCanvasView(Context context) {
        this(context, null);
    }

    public static float p(ATLTimelineCanvasView aTLTimelineCanvasView, float f10) {
        float f11 = aTLTimelineCanvasView.f71289y * f10;
        aTLTimelineCanvasView.f71289y = f11;
        return f11;
    }

    public final void A() {
        VelocityTracker velocityTracker = this.f71290z;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f71290z = null;
        }
    }

    public final void B(float x10) {
        int u10 = u(x10);
        if (u10 < 0) {
            return;
        }
        setSelected(u10);
        c cVar = this.f71287w;
        if (cVar != null) {
            cVar.a(u10);
        }
    }

    public final void C(float velocityX) {
        this.f71284t.fling(Math.max(0, Math.round(this.f71262A)), 0, Math.round(-velocityX), 0, 0, Integer.MAX_VALUE, 0, 0);
        postInvalidateOnAnimation();
    }

    @Override
    public void computeScroll() {
        super.computeScroll();
        if (this.f71284t.computeScrollOffset()) {
            this.f71262A = Math.max(0.0f, this.f71284t.getCurrX());
            postInvalidateOnAnimation();
        }
    }

    public int getPinSize() {
        return this.f71274j;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.getClipBounds(this.f71273i);
        int width = this.f71273i.width();
        int max = Math.max(0, ((int) Math.floor(this.f71262A / Math.max(1.0f, this.f71274j))) - 2);
        int ceil = ((int) Math.ceil((this.f71262A + width) / Math.max(1.0f, this.f71274j))) + 2;
        int height = getHeight();
        for (int i10 = max; i10 <= ceil; i10++) {
            float v10 = v(i10);
            float f10 = this.f71280p * 0.5f;
            if (i10 == this.f71276l) {
                canvas.drawRect(v10 - f10, 0.0f, v10 + f10, height, this.f71268d);
            } else {
                canvas.drawRect(v10 - f10, 0.0f, v10 + f10, height, this.f71269e);
            }
        }
        float E10 = Nc.b.E(Nc.b.l0(4.0f, getContext()), this.f71274j * 0.4f, Nc.b.l0(24.0f, getContext()));
        for (int i11 = max; i11 <= ceil; i11++) {
            float v11 = v(i11);
            C15803b c15803b = this.f71267c.get(Integer.valueOf(i11));
            if (c15803b != null && c15803b.f121231b != null) {
                Path path = new Path();
                float f11 = height * 0.5f;
                path.moveTo(v11, f11 - E10);
                path.lineTo(v11 + E10, f11);
                path.lineTo(v11, f11 + E10);
                path.lineTo(v11 - E10, f11);
                path.close();
                canvas.drawPath(path, this.f71270f);
            }
        }
        while (max <= ceil) {
            float v12 = v(max);
            String x10 = x(max);
            if (x10 != null) {
                float l02 = Nc.b.l0(2.0f, getContext());
                float l03 = Nc.b.l0(16.0f, getContext());
                float max2 = Math.max(this.f71274j, this.f71272h.measureText(x10) + (l02 * 2.0f)) * 0.5f;
                float f12 = height;
                float f13 = f12 - l03;
                canvas.drawRect(v12 - max2, f13, v12 + max2, f12, this.f71271g);
                Paint.FontMetrics fontMetrics = this.f71272h.getFontMetrics();
                float f14 = fontMetrics.bottom;
                float f15 = fontMetrics.top;
                canvas.drawText(x10, v12, (f13 + ((l03 - (f14 - f15)) * 0.5f)) - f15, this.f71272h);
            }
            max++;
        }
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(View.resolveSize(getSuggestedMinimumWidth(), widthMeasureSpec), View.resolveSize(Math.max(getSuggestedMinimumHeight(), Nc.b.l0(44.0f, getContext())), heightMeasureSpec));
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        y();
        this.f71290z.addMovement(event);
        this.f71282r.onTouchEvent(event);
        this.f71281q.onTouchEvent(event);
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            if (!this.f71284t.isFinished()) {
                this.f71284t.abortAnimation();
            }
            this.f71263B = event.getX();
            this.f71264C = false;
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
        } else if (actionMasked == 1) {
            if (!this.f71265D && this.f71264C) {
                this.f71290z.computeCurrentVelocity(1000, this.f71286v);
                float xVelocity = this.f71290z.getXVelocity();
                if (Math.abs(xVelocity) >= this.f71285u) {
                    C(xVelocity);
                }
            }
            this.f71264C = false;
            this.f71265D = false;
            performClick();
            A();
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                this.f71264C = false;
                this.f71265D = false;
                A();
                if (getParent() != null) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
            }
        } else if (!this.f71265D && event.getPointerCount() == 1) {
            float x10 = event.getX() - this.f71263B;
            if (!this.f71264C && Math.abs(x10) > this.f71283s) {
                this.f71264C = true;
            }
            if (this.f71264C) {
                this.f71262A = Math.max(0.0f, this.f71262A - x10);
                invalidate();
            }
            this.f71263B = event.getX();
        }
        return true;
    }

    @Override
    public boolean performClick() {
        return super.performClick();
    }

    public final void r(float focusX, int oldPinSize, int newPinSize) {
        if (oldPinSize <= 0) {
            return;
        }
        this.f71262A = Math.max(0.0f, (((this.f71262A + focusX) / oldPinSize) * newPinSize) - focusX);
    }

    public final void s() {
        this.f71268d.setColor(Theme.i(Theme.T.ATL_SELECTED_KEYFRAME));
        this.f71269e.setColor(Theme.i(Theme.T.ATL_UNSELECTED_KEYFRAME));
        this.f71270f.setColor(Theme.i(Theme.T.ATL_KEY));
        this.f71271g.setColor(Theme.i(Theme.T.PRIMARY_DARK));
        this.f71272h.setColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
    }

    public void setFramesPerSecond(int framesPerSecond) {
        this.f71275k = Math.max(1, framesPerSecond);
        invalidate();
    }

    public void setInteractionListener(c interactionListener) {
        this.f71287w = interactionListener;
    }

    public void setObjects(List<C15803b> frames) {
        this.f71266b.clear();
        this.f71267c.clear();
        if (frames != null) {
            this.f71266b.addAll(frames);
            for (int i10 = 0; i10 < frames.size(); i10++) {
                C15803b c15803b = frames.get(i10);
                if (c15803b != null && c15803b.f121231b != null) {
                    this.f71267c.put(Integer.valueOf(c15803b.f121230a), c15803b);
                }
            }
        }
        invalidate();
    }

    public void setPinSize(int pinSize) {
        int max = Math.max(this.f71277m, Math.min(this.f71278n, pinSize));
        if (this.f71274j != max) {
            this.f71274j = max;
            invalidate();
        }
    }

    public void setSelected(int frame) {
        this.f71276l = Math.max(0, frame);
        invalidate();
    }

    public void t(int frame, boolean smooth) {
        float max = Math.max(0, frame);
        int i10 = this.f71274j;
        float f10 = max * i10;
        float f11 = i10 + f10;
        float f12 = this.f71262A;
        float width = getWidth() + f12;
        float f13 = this.f71262A;
        if (f10 < f12) {
            f13 = Math.max(0.0f, f10 - (this.f71274j * 2.0f));
        } else if (f11 > width) {
            f13 = Math.max(0.0f, (f11 - getWidth()) + (this.f71274j * 2.0f));
        }
        this.f71262A = f13;
        invalidate();
    }

    public final int u(float x10) {
        int i10 = this.f71274j;
        if (i10 <= 0) {
            return -1;
        }
        return Math.max(0, (int) ((this.f71262A + x10) / i10));
    }

    public final float v(int frameIndex) {
        int i10 = this.f71274j;
        return ((frameIndex * i10) - this.f71262A) + (i10 * 0.5f);
    }

    public final C15803b w(float x10) {
        C15803b c15803b;
        int u10 = u(x10);
        if (u10 < 0 || (c15803b = this.f71267c.get(Integer.valueOf(u10))) == null || c15803b.f121231b == null) {
            return null;
        }
        return c15803b;
    }

    public final String x(int frameIndex) {
        String v02 = Nc.b.v0(frameIndex / Math.max(1, this.f71275k), 2);
        if (v02.contains(".")) {
            v02 = v02.replace(".", s.f32937c);
        } else if (v02.contains(DocLint.SEPARATOR)) {
            v02 = v02.replace(DocLint.SEPARATOR, s.f32937c);
        }
        if (v02.endsWith(ChipTextInputComboView.b.f65192c) || v02.endsWith("50")) {
            return v02;
        }
        return null;
    }

    public final void y() {
        if (this.f71290z == null) {
            this.f71290z = VelocityTracker.obtain();
        }
    }

    public void z() {
        s();
        invalidate();
    }

    public ATLTimelineCanvasView(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ATLTimelineCanvasView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f71266b = new SteppedArrayList();
        this.f71267c = new HashMap<>();
        Paint paint = new Paint(1);
        this.f71268d = paint;
        Paint paint2 = new Paint(1);
        this.f71269e = paint2;
        Paint paint3 = new Paint(1);
        this.f71270f = paint3;
        Paint paint4 = new Paint(1);
        this.f71271g = paint4;
        Paint paint5 = new Paint(1);
        this.f71272h = paint5;
        this.f71273i = new Rect();
        this.f71275k = 30;
        this.f71276l = 0;
        this.f71289y = 1.0f;
        setClickable(true);
        setLongClickable(true);
        this.f71277m = Nc.b.l0(4.0f, context);
        this.f71278n = Nc.b.l0(64.0f, context);
        this.f71274j = Nc.b.l0(8.0f, context);
        float l02 = Nc.b.l0(10.0f, context);
        this.f71279o = l02;
        this.f71280p = Nc.b.l0(3.0f, context);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f71283s = viewConfiguration.getScaledTouchSlop();
        this.f71285u = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f71286v = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f71284t = new OverScroller(context);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint2.setStyle(style);
        paint3.setStyle(style);
        paint4.setStyle(style);
        paint5.setStyle(style);
        paint5.setTextAlign(Paint.Align.CENTER);
        paint5.setTextSize(l02);
        s();
        this.f71281q = new GestureDetector(context, new a());
        this.f71282r = new ScaleGestureDetector(context, new b());
    }
}
