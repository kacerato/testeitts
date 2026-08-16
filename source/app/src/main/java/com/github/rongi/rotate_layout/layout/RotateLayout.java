package com.github.rongi.rotate_layout.layout;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.github.rongi.rotate_layout.R;

public class RotateLayout extends ViewGroup {
    private int angle;
    private boolean angleChanged;
    private final float[] childTouchPoint;
    private final Matrix rotateMatrix;
    private final RectF tempRectF1;
    private final RectF tempRectF2;
    private final Rect viewRectRotated;
    private final float[] viewTouchPoint;

    public RotateLayout(Context context) {
        this(context, null);
    }

    private Double angle_c() {
        return Double.valueOf((this.angle * 6.283185307179586d) / 360.0d);
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        canvas.save();
        canvas.rotate(-this.angle, getWidth() / 2.0f, getHeight() / 2.0f);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.viewTouchPoint[0] = motionEvent.getX();
        this.viewTouchPoint[1] = motionEvent.getY();
        this.rotateMatrix.mapPoints(this.childTouchPoint, this.viewTouchPoint);
        float[] fArr = this.childTouchPoint;
        motionEvent.setLocation(fArr[0], fArr[1]);
        boolean dispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        float[] fArr2 = this.viewTouchPoint;
        motionEvent.setLocation(fArr2[0], fArr2[1]);
        return dispatchTouchEvent;
    }

    public int getAngle() {
        return this.angle;
    }

    public View getView() {
        if (getChildCount() > 0) {
            return getChildAt(0);
        }
        return null;
    }

    @Override
    public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        invalidate();
        return super.invalidateChildInParent(iArr, rect);
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        if (this.angleChanged || z10) {
            RectF rectF = this.tempRectF1;
            rectF.set(0.0f, 0.0f, i14, i15);
            RectF rectF2 = this.tempRectF2;
            this.rotateMatrix.setRotate(this.angle, rectF.centerX(), rectF.centerY());
            this.rotateMatrix.mapRect(rectF2, rectF);
            rectF2.round(this.viewRectRotated);
            this.angleChanged = false;
        }
        View view = getView();
        if (view != null) {
            int measuredWidth = (i14 - view.getMeasuredWidth()) / 2;
            int measuredHeight = (i15 - view.getMeasuredHeight()) / 2;
            view.layout(measuredWidth, measuredHeight, view.getMeasuredWidth() + measuredWidth, view.getMeasuredHeight() + measuredHeight);
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        View view = getView();
        if (view == null) {
            super.onMeasure(i10, i11);
            return;
        }
        if (Math.abs(this.angle % 180) == 90) {
            measureChild(view, i11, i10);
            setMeasuredDimension(View.resolveSize(view.getMeasuredHeight(), i10), View.resolveSize(view.getMeasuredWidth(), i11));
        } else if (Math.abs(this.angle % 180) == 0) {
            measureChild(view, i10, i11);
            setMeasuredDimension(View.resolveSize(view.getMeasuredWidth(), i10), View.resolveSize(view.getMeasuredHeight(), i11));
        } else {
            measureChild(view, View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            setMeasuredDimension(View.resolveSize((int) Math.ceil((view.getMeasuredWidth() * Math.abs(Math.cos(angle_c().doubleValue()))) + (view.getMeasuredHeight() * Math.abs(Math.sin(angle_c().doubleValue())))), i10), View.resolveSize((int) Math.ceil((view.getMeasuredWidth() * Math.abs(Math.sin(angle_c().doubleValue()))) + (view.getMeasuredHeight() * Math.abs(Math.cos(angle_c().doubleValue())))), i11));
        }
    }

    public void setAngle(int i10) {
        if (this.angle != i10) {
            this.angle = i10;
            this.angleChanged = true;
            requestLayout();
            invalidate();
        }
    }

    public RotateLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RotateLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet);
        this.rotateMatrix = new Matrix();
        this.viewRectRotated = new Rect();
        this.tempRectF1 = new RectF();
        this.tempRectF2 = new RectF();
        this.viewTouchPoint = new float[2];
        this.childTouchPoint = new float[2];
        this.angleChanged = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RotateLayout);
        this.angle = obtainStyledAttributes.getInt(R.styleable.RotateLayout_angle, 0);
        obtainStyledAttributes.recycle();
        setWillNotDraw(false);
    }
}
