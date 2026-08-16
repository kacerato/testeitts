package cn.pedant.SweetAlert;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Camera;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class Rotate3dAnimation extends Animation {
    public static final int ROLL_BY_X = 0;
    public static final int ROLL_BY_Y = 1;
    public static final int ROLL_BY_Z = 2;
    private Camera mCamera;
    private float mFromDegrees;
    private float mPivotX;
    private int mPivotXType;
    private float mPivotXValue;
    private float mPivotY;
    private int mPivotYType;
    private float mPivotYValue;
    private int mRollType;
    private float mToDegrees;

    public static class Description {
        public int type;
        public float value;
    }

    public Rotate3dAnimation(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPivotXType = 0;
        this.mPivotYType = 0;
        this.mPivotXValue = 0.0f;
        this.mPivotYValue = 0.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Rotate3dAnimation);
        this.mFromDegrees = obtainStyledAttributes.getFloat(R.styleable.Rotate3dAnimation_fromDeg, 0.0f);
        this.mToDegrees = obtainStyledAttributes.getFloat(R.styleable.Rotate3dAnimation_toDeg, 0.0f);
        this.mRollType = obtainStyledAttributes.getInt(R.styleable.Rotate3dAnimation_rollType, 0);
        Description parseValue = parseValue(obtainStyledAttributes.peekValue(R.styleable.Rotate3dAnimation_customPivotX));
        this.mPivotXType = parseValue.type;
        this.mPivotXValue = parseValue.value;
        Description parseValue2 = parseValue(obtainStyledAttributes.peekValue(R.styleable.Rotate3dAnimation_customPivotY));
        this.mPivotYType = parseValue2.type;
        this.mPivotYValue = parseValue2.value;
        obtainStyledAttributes.recycle();
        initializePivotPoint();
    }

    private void initializePivotPoint() {
        if (this.mPivotXType == 0) {
            this.mPivotX = this.mPivotXValue;
        }
        if (this.mPivotYType == 0) {
            this.mPivotY = this.mPivotYValue;
        }
    }

    @Override
    public void applyTransformation(float f10, Transformation transformation) {
        float f11 = this.mFromDegrees;
        float f12 = f11 + ((this.mToDegrees - f11) * f10);
        Matrix matrix = transformation.getMatrix();
        this.mCamera.save();
        int i10 = this.mRollType;
        if (i10 == 0) {
            this.mCamera.rotateX(f12);
        } else if (i10 == 1) {
            this.mCamera.rotateY(f12);
        } else if (i10 == 2) {
            this.mCamera.rotateZ(f12);
        }
        this.mCamera.getMatrix(matrix);
        this.mCamera.restore();
        matrix.preTranslate(-this.mPivotX, -this.mPivotY);
        matrix.postTranslate(this.mPivotX, this.mPivotY);
    }

    @Override
    public void initialize(int i10, int i11, int i12, int i13) {
        super.initialize(i10, i11, i12, i13);
        this.mCamera = new Camera();
        this.mPivotX = resolveSize(this.mPivotXType, this.mPivotXValue, i10, i12);
        this.mPivotY = resolveSize(this.mPivotYType, this.mPivotYValue, i11, i13);
    }

    public Description parseValue(TypedValue typedValue) {
        Description description = new Description();
        if (typedValue == null) {
            description.type = 0;
            description.value = 0.0f;
        } else {
            int i10 = typedValue.type;
            if (i10 == 6) {
                int i11 = typedValue.data;
                description.type = (i11 & 15) == 1 ? 2 : 1;
                description.value = TypedValue.complexToFloat(i11);
                return description;
            }
            if (i10 == 4) {
                description.type = 0;
                description.value = typedValue.getFloat();
                return description;
            }
            if (i10 >= 16 && i10 <= 31) {
                description.type = 0;
                description.value = typedValue.data;
                return description;
            }
        }
        description.type = 0;
        description.value = 0.0f;
        return description;
    }

    public Rotate3dAnimation(int i10, float f10, float f11) {
        this.mPivotXType = 0;
        this.mPivotYType = 0;
        this.mPivotXValue = 0.0f;
        this.mPivotYValue = 0.0f;
        this.mRollType = i10;
        this.mFromDegrees = f10;
        this.mToDegrees = f11;
        this.mPivotX = 0.0f;
        this.mPivotY = 0.0f;
    }

    public Rotate3dAnimation(int i10, float f10, float f11, float f12, float f13) {
        this.mRollType = i10;
        this.mFromDegrees = f10;
        this.mToDegrees = f11;
        this.mPivotXType = 0;
        this.mPivotYType = 0;
        this.mPivotXValue = f12;
        this.mPivotYValue = f13;
        initializePivotPoint();
    }

    public Rotate3dAnimation(int i10, float f10, float f11, int i11, float f12, int i12, float f13) {
        this.mRollType = i10;
        this.mFromDegrees = f10;
        this.mToDegrees = f11;
        this.mPivotXValue = f12;
        this.mPivotXType = i11;
        this.mPivotYValue = f13;
        this.mPivotYType = i12;
        initializePivotPoint();
    }
}
