package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;
import vd.C15833b;

public class BallPulseRiseIndicator extends Indicator {
    private float degress;
    private Camera mCamera = new Camera();
    private Matrix mMatrix = new Matrix();

    @Override
    public void draw(Canvas canvas, Paint paint) {
        this.mMatrix.reset();
        this.mCamera.save();
        this.mCamera.rotateX(this.degress);
        this.mCamera.getMatrix(this.mMatrix);
        this.mCamera.restore();
        this.mMatrix.preTranslate(-centerX(), -centerY());
        this.mMatrix.postTranslate(centerX(), centerY());
        canvas.concat(this.mMatrix);
        float width = getWidth() / 10;
        float f10 = 2.0f * width;
        canvas.drawCircle(getWidth() / 4, f10, width, paint);
        canvas.drawCircle((getWidth() * 3) / 4, f10, width, paint);
        canvas.drawCircle(width, getHeight() - f10, width, paint);
        canvas.drawCircle(getWidth() / 2, getHeight() - f10, width, paint);
        canvas.drawCircle(getWidth() - width, getHeight() - f10, width, paint);
    }

    @Override
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 360.0f);
        addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallPulseRiseIndicator.this.degress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallPulseRiseIndicator.this.postInvalidate();
            }
        });
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setRepeatCount(-1);
        ofFloat.setDuration(C15833b.f121488E);
        arrayList.add(ofFloat);
        return arrayList;
    }
}
