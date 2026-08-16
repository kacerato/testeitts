package cn.pedant.SweetAlert;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class SuccessTickView extends View {
    private final float CONST_LEFT_RECT_W;
    private final float CONST_RADIUS;
    private final float CONST_RECT_WEIGHT;
    private final float CONST_RIGHT_RECT_W;
    private final float MAX_RIGHT_RECT_W;
    private final float MIN_LEFT_RECT_W;
    private float mDensity;
    private boolean mLeftRectGrowMode;
    private float mLeftRectWidth;
    private float mMaxLeftRectWidth;
    private Paint mPaint;
    private float mRightRectWidth;

    public SuccessTickView(Context context) {
        super(context);
        this.mDensity = -1.0f;
        this.CONST_RADIUS = dip2px(1.2f);
        this.CONST_RECT_WEIGHT = dip2px(3.0f);
        this.CONST_LEFT_RECT_W = dip2px(15.0f);
        float dip2px = dip2px(25.0f);
        this.CONST_RIGHT_RECT_W = dip2px;
        this.MIN_LEFT_RECT_W = dip2px(3.3f);
        this.MAX_RIGHT_RECT_W = dip2px + dip2px(6.7f);
        init();
    }

    private void init() {
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setColor(getResources().getColor(R.color.success_stroke_color));
        this.mLeftRectWidth = this.CONST_LEFT_RECT_W;
        this.mRightRectWidth = this.CONST_RIGHT_RECT_W;
        this.mLeftRectGrowMode = false;
    }

    public float dip2px(float f10) {
        if (this.mDensity == -1.0f) {
            this.mDensity = getResources().getDisplayMetrics().density;
        }
        return (f10 * this.mDensity) + 0.5f;
    }

    @Override
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        canvas.rotate(45.0f, width / 2, height / 2);
        int i10 = (int) (height / 1.4d);
        float f10 = (int) (width / 1.2d);
        this.mMaxLeftRectWidth = (((this.CONST_LEFT_RECT_W + f10) / 2.0f) + this.CONST_RECT_WEIGHT) - 1.0f;
        RectF rectF = new RectF();
        if (this.mLeftRectGrowMode) {
            rectF.left = 0.0f;
            rectF.right = 0.0f + this.mLeftRectWidth;
            float f11 = (i10 + this.CONST_RIGHT_RECT_W) / 2.0f;
            rectF.top = f11;
            rectF.bottom = f11 + this.CONST_RECT_WEIGHT;
        } else {
            float f12 = (this.CONST_LEFT_RECT_W + f10) / 2.0f;
            float f13 = this.CONST_RECT_WEIGHT;
            float f14 = (f12 + f13) - 1.0f;
            rectF.right = f14;
            rectF.left = f14 - this.mLeftRectWidth;
            float f15 = (i10 + this.CONST_RIGHT_RECT_W) / 2.0f;
            rectF.top = f15;
            rectF.bottom = f15 + f13;
        }
        float f16 = this.CONST_RADIUS;
        canvas.drawRoundRect(rectF, f16, f16, this.mPaint);
        RectF rectF2 = new RectF();
        float f17 = (i10 + this.CONST_RIGHT_RECT_W) / 2.0f;
        float f18 = this.CONST_RECT_WEIGHT;
        float f19 = (f17 + f18) - 1.0f;
        rectF2.bottom = f19;
        float f20 = (f10 + this.CONST_LEFT_RECT_W) / 2.0f;
        rectF2.left = f20;
        rectF2.right = f20 + f18;
        rectF2.top = f19 - this.mRightRectWidth;
        float f21 = this.CONST_RADIUS;
        canvas.drawRoundRect(rectF2, f21, f21, this.mPaint);
    }

    public void startTickAnim() {
        this.mLeftRectWidth = 0.0f;
        this.mRightRectWidth = 0.0f;
        invalidate();
        Animation animation = new Animation() {
            @Override
            public void applyTransformation(float f10, Transformation transformation) {
                super.applyTransformation(f10, transformation);
                double d10 = f10;
                if (0.54d < d10 && 0.7d >= d10) {
                    SuccessTickView.this.mLeftRectGrowMode = true;
                    SuccessTickView successTickView = SuccessTickView.this;
                    successTickView.mLeftRectWidth = successTickView.mMaxLeftRectWidth * ((f10 - 0.54f) / 0.16f);
                    if (0.65d < d10) {
                        SuccessTickView successTickView2 = SuccessTickView.this;
                        successTickView2.mRightRectWidth = successTickView2.MAX_RIGHT_RECT_W * ((f10 - 0.65f) / 0.19f);
                    }
                    SuccessTickView.this.invalidate();
                    return;
                }
                if (0.7d < d10 && 0.84d >= d10) {
                    SuccessTickView.this.mLeftRectGrowMode = false;
                    SuccessTickView successTickView3 = SuccessTickView.this;
                    successTickView3.mLeftRectWidth = successTickView3.mMaxLeftRectWidth * (1.0f - ((f10 - 0.7f) / 0.14f));
                    SuccessTickView successTickView4 = SuccessTickView.this;
                    successTickView4.mLeftRectWidth = successTickView4.mLeftRectWidth < SuccessTickView.this.MIN_LEFT_RECT_W ? SuccessTickView.this.MIN_LEFT_RECT_W : SuccessTickView.this.mLeftRectWidth;
                    SuccessTickView successTickView5 = SuccessTickView.this;
                    successTickView5.mRightRectWidth = successTickView5.MAX_RIGHT_RECT_W * ((f10 - 0.65f) / 0.19f);
                    SuccessTickView.this.invalidate();
                    return;
                }
                if (0.84d >= d10 || 1.0f < f10) {
                    return;
                }
                SuccessTickView.this.mLeftRectGrowMode = false;
                SuccessTickView successTickView6 = SuccessTickView.this;
                float f11 = (f10 - 0.84f) / 0.16f;
                successTickView6.mLeftRectWidth = successTickView6.MIN_LEFT_RECT_W + ((SuccessTickView.this.CONST_LEFT_RECT_W - SuccessTickView.this.MIN_LEFT_RECT_W) * f11);
                SuccessTickView successTickView7 = SuccessTickView.this;
                successTickView7.mRightRectWidth = successTickView7.CONST_RIGHT_RECT_W + ((SuccessTickView.this.MAX_RIGHT_RECT_W - SuccessTickView.this.CONST_RIGHT_RECT_W) * (1.0f - f11));
                SuccessTickView.this.invalidate();
            }
        };
        animation.setDuration(750L);
        animation.setStartOffset(100L);
        startAnimation(animation);
    }

    public SuccessTickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDensity = -1.0f;
        this.CONST_RADIUS = dip2px(1.2f);
        this.CONST_RECT_WEIGHT = dip2px(3.0f);
        this.CONST_LEFT_RECT_W = dip2px(15.0f);
        float dip2px = dip2px(25.0f);
        this.CONST_RIGHT_RECT_W = dip2px;
        this.MIN_LEFT_RECT_W = dip2px(3.3f);
        this.MAX_RIGHT_RECT_W = dip2px + dip2px(6.7f);
        init();
    }
}
