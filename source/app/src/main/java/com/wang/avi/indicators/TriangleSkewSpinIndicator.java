package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class TriangleSkewSpinIndicator extends Indicator {
    private Camera mCamera = new Camera();
    private Matrix mMatrix = new Matrix();
    private float rotateX;
    private float rotateY;

    @Override
    public void draw(Canvas canvas, Paint paint) {
        this.mMatrix.reset();
        this.mCamera.save();
        this.mCamera.rotateX(this.rotateX);
        this.mCamera.rotateY(this.rotateY);
        this.mCamera.getMatrix(this.mMatrix);
        this.mCamera.restore();
        this.mMatrix.preTranslate(-centerX(), -centerY());
        this.mMatrix.postTranslate(centerX(), centerY());
        canvas.concat(this.mMatrix);
        Path path = new Path();
        path.moveTo(getWidth() / 5, (getHeight() * 4) / 5);
        path.lineTo((getWidth() * 4) / 5, (getHeight() * 4) / 5);
        path.lineTo(getWidth() / 2, getHeight() / 5);
        path.close();
        canvas.drawPath(path, paint);
    }

    @Override
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 180.0f, 180.0f, 0.0f, 0.0f);
        addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                TriangleSkewSpinIndicator.this.rotateX = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                TriangleSkewSpinIndicator.this.postInvalidate();
            }
        });
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setRepeatCount(-1);
        ofFloat.setDuration(2500L);
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 0.0f, 180.0f, 180.0f, 0.0f);
        addUpdateListener(ofFloat2, new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                TriangleSkewSpinIndicator.this.rotateY = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                TriangleSkewSpinIndicator.this.postInvalidate();
            }
        });
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setDuration(2500L);
        arrayList.add(ofFloat);
        arrayList.add(ofFloat2);
        return arrayList;
    }
}
