package com.jsibbold.zoomage;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.ScaleGestureDetectorCompat;
import com.jsibbold.zoomage.a;
import com.jsibbold.zoomage.b;

public class ZoomageView extends AppCompatImageView implements ScaleGestureDetector.OnScaleGestureListener {

    public static final float f81662G = 0.6f;

    public static final float f81663H = 8.0f;

    public ScaleGestureDetector f81664A;

    public ValueAnimator f81665B;

    public GestureDetector f81666C;

    public boolean f81667D;

    public boolean f81668E;

    public final GestureDetector.OnGestureListener f81669F;

    public final int f81670b;

    public ImageView.ScaleType f81671c;

    public Matrix f81672d;

    public Matrix f81673e;

    public float[] f81674f;

    public float[] f81675g;

    public float f81676h;

    public float f81677i;

    public float f81678j;

    public float f81679k;

    public final RectF f81680l;

    public boolean f81681m;

    public boolean f81682n;

    public boolean f81683o;

    public boolean f81684p;

    public boolean f81685q;

    public boolean f81686r;

    public float f81687s;

    public int f81688t;

    public PointF f81689u;

    public float f81690v;

    public float f81691w;

    public float f81692x;

    public int f81693y;

    public int f81694z;

    public class a implements ValueAnimator.AnimatorUpdateListener {

        public final Matrix f81695a;

        public final float[] f81696b = new float[9];

        public final Matrix f81697c;

        public final float f81698d;

        public final float f81699e;

        public final float f81700f;

        public final float f81701g;

        public a(Matrix matrix, float f10, float f11, float f12, float f13) {
            this.f81697c = matrix;
            this.f81698d = f10;
            this.f81699e = f11;
            this.f81700f = f12;
            this.f81701g = f13;
            this.f81695a = new Matrix(ZoomageView.this.getImageMatrix());
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.f81695a.set(this.f81697c);
            this.f81695a.getValues(this.f81696b);
            float[] fArr = this.f81696b;
            fArr[2] = fArr[2] + (this.f81698d * floatValue);
            fArr[5] = fArr[5] + (this.f81699e * floatValue);
            fArr[0] = fArr[0] + (this.f81700f * floatValue);
            fArr[4] = fArr[4] + (this.f81701g * floatValue);
            this.f81695a.setValues(fArr);
            ZoomageView.this.setImageMatrix(this.f81695a);
        }
    }

    public class b extends e {

        public final Matrix f81703b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Matrix matrix) {
            super(ZoomageView.this, null);
            this.f81703b = matrix;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            ZoomageView.this.setImageMatrix(this.f81703b);
        }
    }

    public class c implements ValueAnimator.AnimatorUpdateListener {

        public final float[] f81705a = new float[9];

        public Matrix f81706b = new Matrix();

        public final int f81707c;

        public c(int i10) {
            this.f81707c = i10;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f81706b.set(ZoomageView.this.getImageMatrix());
            this.f81706b.getValues(this.f81705a);
            this.f81705a[this.f81707c] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.f81706b.setValues(this.f81705a);
            ZoomageView.this.setImageMatrix(this.f81706b);
        }
    }

    public class d extends GestureDetector.SimpleOnGestureListener {
        public d() {
        }

        @Override
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                ZoomageView.this.f81667D = true;
            }
            ZoomageView.this.f81668E = false;
            return false;
        }

        @Override
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            ZoomageView.this.f81668E = false;
            return false;
        }

        @Override
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            ZoomageView.this.f81668E = true;
            return false;
        }
    }

    public class e implements Animator.AnimatorListener {
        public e() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }

        public e(ZoomageView zoomageView, a aVar) {
            this();
        }
    }

    public ZoomageView(Context context) {
        super(context);
        this.f81670b = 200;
        this.f81672d = new Matrix();
        this.f81673e = new Matrix();
        this.f81674f = new float[9];
        this.f81675g = null;
        this.f81676h = 0.6f;
        this.f81677i = 8.0f;
        this.f81678j = 0.6f;
        this.f81679k = 8.0f;
        this.f81680l = new RectF();
        this.f81689u = new PointF(0.0f, 0.0f);
        this.f81690v = 1.0f;
        this.f81691w = 1.0f;
        this.f81692x = 1.0f;
        this.f81693y = 1;
        this.f81694z = 0;
        this.f81667D = false;
        this.f81668E = false;
        this.f81669F = new d();
        init(context, null);
    }

    private float getCurrentDisplayedHeight() {
        if (getDrawable() != null) {
            return getDrawable().getIntrinsicHeight() * this.f81674f[4];
        }
        return 0.0f;
    }

    private float getCurrentDisplayedWidth() {
        if (getDrawable() != null) {
            return getDrawable().getIntrinsicWidth() * this.f81674f[0];
        }
        return 0.0f;
    }

    private boolean p() {
        ValueAnimator valueAnimator = this.f81665B;
        return valueAnimator != null && valueAnimator.isRunning();
    }

    public boolean c(MotionEvent motionEvent) {
        return this.f81681m && this.f81692x > 1.0f;
    }

    public boolean d(MotionEvent motionEvent) {
        return this.f81682n;
    }

    public final void e(int i10, float f10) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f81674f[i10], f10);
        ofFloat.addUpdateListener(new c(i10));
        ofFloat.setDuration(200L);
        ofFloat.start();
    }

    public final void f(Matrix matrix, int i10) {
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        Matrix matrix2 = new Matrix(getImageMatrix());
        matrix2.getValues(this.f81674f);
        float f10 = fArr[0];
        float[] fArr2 = this.f81674f;
        float f11 = f10 - fArr2[0];
        float f12 = fArr[4] - fArr2[4];
        float f13 = fArr[2] - fArr2[2];
        float f14 = fArr[5] - fArr2[5];
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f81665B = ofFloat;
        ofFloat.addUpdateListener(new a(matrix2, f13, f14, f11, f12));
        this.f81665B.addListener(new b(matrix));
        this.f81665B.setDuration(i10);
        this.f81665B.start();
    }

    public final void g() {
        f(this.f81673e, 200);
    }

    public boolean getAnimateOnReset() {
        return this.f81685q;
    }

    public boolean getAutoCenter() {
        return this.f81686r;
    }

    public int getAutoResetMode() {
        return this.f81688t;
    }

    public float getCurrentScaleFactor() {
        return this.f81692x;
    }

    public boolean getDoubleTapToZoom() {
        return this.f81683o;
    }

    public float getDoubleTapToZoomScaleFactor() {
        return this.f81687s;
    }

    public boolean getRestrictBounds() {
        return this.f81684p;
    }

    public final void h() {
        if (getCurrentDisplayedWidth() > getWidth()) {
            RectF rectF = this.f81680l;
            if (rectF.left > 0.0f) {
                e(2, 0.0f);
                return;
            } else {
                if (rectF.right < getWidth()) {
                    e(2, (this.f81680l.left + getWidth()) - this.f81680l.right);
                    return;
                }
                return;
            }
        }
        RectF rectF2 = this.f81680l;
        if (rectF2.left < 0.0f) {
            e(2, 0.0f);
        } else if (rectF2.right > getWidth()) {
            e(2, (this.f81680l.left + getWidth()) - this.f81680l.right);
        }
    }

    public final void i() {
        if (getCurrentDisplayedHeight() > getHeight()) {
            RectF rectF = this.f81680l;
            if (rectF.top > 0.0f) {
                e(5, 0.0f);
                return;
            } else {
                if (rectF.bottom < getHeight()) {
                    e(5, (this.f81680l.top + getHeight()) - this.f81680l.bottom);
                    return;
                }
                return;
            }
        }
        RectF rectF2 = this.f81680l;
        if (rectF2.top < 0.0f) {
            e(5, 0.0f);
        } else if (rectF2.bottom > getHeight()) {
            e(5, (this.f81680l.top + getHeight()) - this.f81680l.bottom);
        }
    }

    public final void init(Context context, AttributeSet attributeSet) {
        this.f81664A = new ScaleGestureDetector(context, this);
        this.f81666C = new GestureDetector(context, this.f81669F);
        ScaleGestureDetectorCompat.setQuickScaleEnabled(this.f81664A, false);
        this.f81671c = getScaleType();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.m.f83193f8);
        this.f81682n = obtainStyledAttributes.getBoolean(b.m.f83293p8, true);
        this.f81681m = obtainStyledAttributes.getBoolean(b.m.f83283o8, true);
        this.f81685q = obtainStyledAttributes.getBoolean(b.m.f83203g8, true);
        this.f81686r = obtainStyledAttributes.getBoolean(b.m.f83213h8, true);
        this.f81684p = obtainStyledAttributes.getBoolean(b.m.f83273n8, false);
        this.f81683o = obtainStyledAttributes.getBoolean(b.m.f83233j8, true);
        this.f81676h = obtainStyledAttributes.getFloat(b.m.f83263m8, 0.6f);
        this.f81677i = obtainStyledAttributes.getFloat(b.m.f83253l8, 8.0f);
        this.f81687s = obtainStyledAttributes.getFloat(b.m.f83243k8, 3.0f);
        this.f81688t = a.C1496a.a(obtainStyledAttributes.getInt(b.m.f83223i8, 0));
        y();
        obtainStyledAttributes.recycle();
    }

    public final void j() {
        if (this.f81686r) {
            h();
            i();
        }
    }

    public boolean k(MotionEvent motionEvent) {
        return this.f81694z > 1 || this.f81692x > 1.0f || p();
    }

    public final float l(float f10) {
        float width;
        float f11;
        if (getCurrentDisplayedWidth() >= getWidth()) {
            float f12 = this.f81680l.left;
            if (f12 <= 0.0f && f12 + f10 > 0.0f && !this.f81664A.isInProgress()) {
                return -this.f81680l.left;
            }
            if (this.f81680l.right < getWidth() || this.f81680l.right + f10 >= getWidth() || this.f81664A.isInProgress()) {
                return f10;
            }
            width = getWidth();
            f11 = this.f81680l.right;
        } else {
            if (this.f81664A.isInProgress()) {
                return f10;
            }
            RectF rectF = this.f81680l;
            float f13 = rectF.left;
            if (f13 >= 0.0f && f13 + f10 < 0.0f) {
                return -f13;
            }
            if (rectF.right > getWidth() || this.f81680l.right + f10 <= getWidth()) {
                return f10;
            }
            width = getWidth();
            f11 = this.f81680l.right;
        }
        return width - f11;
    }

    public final float m(float f10) {
        float height;
        float f11;
        if (getCurrentDisplayedHeight() >= getHeight()) {
            float f12 = this.f81680l.top;
            if (f12 <= 0.0f && f12 + f10 > 0.0f && !this.f81664A.isInProgress()) {
                return -this.f81680l.top;
            }
            if (this.f81680l.bottom < getHeight() || this.f81680l.bottom + f10 >= getHeight() || this.f81664A.isInProgress()) {
                return f10;
            }
            height = getHeight();
            f11 = this.f81680l.bottom;
        } else {
            if (this.f81664A.isInProgress()) {
                return f10;
            }
            RectF rectF = this.f81680l;
            float f13 = rectF.top;
            if (f13 >= 0.0f && f13 + f10 < 0.0f) {
                return -f13;
            }
            if (rectF.bottom > getHeight() || this.f81680l.bottom + f10 <= getHeight()) {
                return f10;
            }
            height = getHeight();
            f11 = this.f81680l.bottom;
        }
        return height - f11;
    }

    public final float n(float f10, float f11) {
        float f12 = f10 - f11;
        if (this.f81684p) {
            f12 = l(f12);
        }
        RectF rectF = this.f81680l;
        float f13 = rectF.right;
        return f13 + f12 < 0.0f ? -f13 : rectF.left + f12 > ((float) getWidth()) ? getWidth() - this.f81680l.left : f12;
    }

    public final float o(float f10, float f11) {
        float f12 = f10 - f11;
        if (this.f81684p) {
            f12 = m(f12);
        }
        RectF rectF = this.f81680l;
        float f13 = rectF.bottom;
        return f13 + f12 < 0.0f ? -f13 : rectF.top + f12 > ((float) getHeight()) ? getHeight() - this.f81680l.top : f12;
    }

    @Override
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        float scaleFactor = this.f81690v * scaleGestureDetector.getScaleFactor();
        float f10 = this.f81674f[0];
        float f11 = scaleFactor / f10;
        this.f81691w = f11;
        float f12 = f11 * f10;
        float f13 = this.f81678j;
        if (f12 < f13) {
            this.f81691w = f13 / f10;
        } else {
            float f14 = this.f81679k;
            if (f12 > f14) {
                this.f81691w = f14 / f10;
            }
        }
        return false;
    }

    @Override
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        this.f81690v = this.f81674f[0];
        return true;
    }

    @Override
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        this.f81691w = 1.0f;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isClickable() || !isEnabled() || (!this.f81682n && !this.f81681m)) {
            return super.onTouchEvent(motionEvent);
        }
        ImageView.ScaleType scaleType = getScaleType();
        ImageView.ScaleType scaleType2 = ImageView.ScaleType.MATRIX;
        if (scaleType != scaleType2) {
            super.setScaleType(scaleType2);
        }
        if (this.f81675g == null) {
            w();
        }
        this.f81694z = motionEvent.getPointerCount();
        this.f81672d.set(getImageMatrix());
        this.f81672d.getValues(this.f81674f);
        x(this.f81674f);
        this.f81664A.onTouchEvent(motionEvent);
        this.f81666C.onTouchEvent(motionEvent);
        if (this.f81683o && this.f81667D) {
            this.f81667D = false;
            this.f81668E = false;
            if (this.f81674f[0] != this.f81675g[0]) {
                s();
            } else {
                Matrix matrix = new Matrix(this.f81672d);
                float f10 = this.f81687s;
                matrix.postScale(f10, f10, this.f81664A.getFocusX(), this.f81664A.getFocusY());
                f(matrix, 200);
            }
            return true;
        }
        if (!this.f81668E) {
            if (motionEvent.getActionMasked() == 0 || this.f81694z != this.f81693y) {
                this.f81689u.set(this.f81664A.getFocusX(), this.f81664A.getFocusY());
            } else if (motionEvent.getActionMasked() == 2) {
                float focusX = this.f81664A.getFocusX();
                float focusY = this.f81664A.getFocusY();
                if (c(motionEvent)) {
                    this.f81672d.postTranslate(n(focusX, this.f81689u.f32425x), o(focusY, this.f81689u.f32426y));
                }
                if (d(motionEvent)) {
                    Matrix matrix2 = this.f81672d;
                    float f11 = this.f81691w;
                    matrix2.postScale(f11, f11, focusX, focusY);
                    this.f81692x = this.f81674f[0] / this.f81675g[0];
                }
                setImageMatrix(this.f81672d);
                this.f81689u.set(focusX, focusY);
            }
            if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
                this.f81691w = 1.0f;
                u();
            }
        }
        getParent().requestDisallowInterceptTouchEvent(k(motionEvent));
        this.f81693y = this.f81694z;
        return true;
    }

    public boolean q() {
        return this.f81681m;
    }

    public boolean r() {
        return this.f81682n;
    }

    public void s() {
        t(this.f81685q);
    }

    public void setAnimateOnReset(boolean z10) {
        this.f81685q = z10;
    }

    public void setAutoCenter(boolean z10) {
        this.f81686r = z10;
    }

    public void setAutoResetMode(int i10) {
        this.f81688t = i10;
    }

    public void setDoubleTapToZoom(boolean z10) {
        this.f81683o = z10;
    }

    public void setDoubleTapToZoomScaleFactor(float f10) {
        this.f81687s = f10;
        y();
    }

    @Override
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        if (z10) {
            return;
        }
        setScaleType(this.f81671c);
    }

    @Override
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        setScaleType(this.f81671c);
    }

    @Override
    public void setImageDrawable(@Nullable Drawable drawable) {
        super.setImageDrawable(drawable);
        setScaleType(this.f81671c);
    }

    @Override
    public void setImageResource(int i10) {
        super.setImageResource(i10);
        setScaleType(this.f81671c);
    }

    @Override
    public void setImageURI(@Nullable Uri uri) {
        super.setImageURI(uri);
        setScaleType(this.f81671c);
    }

    public void setRestrictBounds(boolean z10) {
        this.f81684p = z10;
    }

    @Override
    public void setScaleType(@Nullable ImageView.ScaleType scaleType) {
        if (scaleType != null) {
            super.setScaleType(scaleType);
            this.f81671c = scaleType;
            this.f81675g = null;
        }
    }

    public void setTranslatable(boolean z10) {
        this.f81681m = z10;
    }

    public void setZoomable(boolean z10) {
        this.f81682n = z10;
    }

    public void t(boolean z10) {
        if (z10) {
            g();
        } else {
            setImageMatrix(this.f81673e);
        }
    }

    public final void u() {
        int i10 = this.f81688t;
        if (i10 == 0) {
            if (this.f81674f[0] <= this.f81675g[0]) {
                s();
                return;
            } else {
                j();
                return;
            }
        }
        if (i10 == 1) {
            if (this.f81674f[0] >= this.f81675g[0]) {
                s();
                return;
            } else {
                j();
                return;
            }
        }
        if (i10 == 2) {
            s();
        } else {
            if (i10 != 3) {
                return;
            }
            j();
        }
    }

    public void v(float f10, float f11) {
        this.f81676h = f10;
        this.f81677i = f11;
        this.f81675g = null;
        y();
    }

    public final void w() {
        this.f81675g = new float[9];
        Matrix matrix = new Matrix(getImageMatrix());
        this.f81673e = matrix;
        matrix.getValues(this.f81675g);
        float f10 = this.f81676h;
        float f11 = this.f81675g[0];
        this.f81678j = f10 * f11;
        this.f81679k = this.f81677i * f11;
    }

    public final void x(float[] fArr) {
        if (getDrawable() != null) {
            this.f81680l.set(fArr[2], fArr[5], (getDrawable().getIntrinsicWidth() * fArr[0]) + fArr[2], (getDrawable().getIntrinsicHeight() * fArr[4]) + fArr[5]);
        }
    }

    public final void y() {
        float f10 = this.f81676h;
        float f11 = this.f81677i;
        if (f10 >= f11) {
            throw new IllegalStateException("minScale must be less than maxScale");
        }
        if (f10 < 0.0f) {
            throw new IllegalStateException("minScale must be greater than 0");
        }
        if (f11 < 0.0f) {
            throw new IllegalStateException("maxScale must be greater than 0");
        }
        if (this.f81687s > f11) {
            this.f81687s = f11;
        }
        if (this.f81687s < f10) {
            this.f81687s = f10;
        }
    }

    public ZoomageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f81670b = 200;
        this.f81672d = new Matrix();
        this.f81673e = new Matrix();
        this.f81674f = new float[9];
        this.f81675g = null;
        this.f81676h = 0.6f;
        this.f81677i = 8.0f;
        this.f81678j = 0.6f;
        this.f81679k = 8.0f;
        this.f81680l = new RectF();
        this.f81689u = new PointF(0.0f, 0.0f);
        this.f81690v = 1.0f;
        this.f81691w = 1.0f;
        this.f81692x = 1.0f;
        this.f81693y = 1;
        this.f81694z = 0;
        this.f81667D = false;
        this.f81668E = false;
        this.f81669F = new d();
        init(context, attributeSet);
    }

    public ZoomageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f81670b = 200;
        this.f81672d = new Matrix();
        this.f81673e = new Matrix();
        this.f81674f = new float[9];
        this.f81675g = null;
        this.f81676h = 0.6f;
        this.f81677i = 8.0f;
        this.f81678j = 0.6f;
        this.f81679k = 8.0f;
        this.f81680l = new RectF();
        this.f81689u = new PointF(0.0f, 0.0f);
        this.f81690v = 1.0f;
        this.f81691w = 1.0f;
        this.f81692x = 1.0f;
        this.f81693y = 1;
        this.f81694z = 0;
        this.f81667D = false;
        this.f81668E = false;
        this.f81669F = new d();
        init(context, attributeSet);
    }
}
