package com.threed.jpct;

import android.util.FloatMath;
import java.io.Serializable;

public class Plane implements Serializable {
    private static final long serialVersionUID = 1;
    private float equation3 = 0.0f;
    SimpleVector normal = new SimpleVector();

    public Plane() {
    }

    public float distanceTo(SimpleVector simpleVector) {
        SimpleVector simpleVector2 = this.normal;
        return (simpleVector2.f83625x * simpleVector.f83625x) + (simpleVector2.f83626y * simpleVector.f83626y) + (simpleVector2.f83627z * simpleVector.f83627z) + this.equation3;
    }

    public boolean isFrontFacingTo(SimpleVector simpleVector) {
        SimpleVector simpleVector2 = this.normal;
        return ((simpleVector2.f83625x * simpleVector.f83625x) + (simpleVector2.f83626y * simpleVector.f83626y)) + (simpleVector2.f83627z * simpleVector.f83627z) <= 0.0f;
    }

    public void setTo(SimpleVector simpleVector, SimpleVector simpleVector2) {
        this.normal.set(simpleVector2);
        this.equation3 = -((simpleVector2.f83625x * simpleVector.f83625x) + (simpleVector2.f83626y * simpleVector.f83626y) + (simpleVector2.f83627z * simpleVector.f83627z));
    }

    public boolean isFrontFacingTo(float f10, float f11, float f12) {
        SimpleVector simpleVector = this.normal;
        return ((simpleVector.f83625x * f10) + (simpleVector.f83626y * f11)) + (simpleVector.f83627z * f12) <= 0.0f;
    }

    public void setTo(SimpleVector simpleVector, SimpleVector simpleVector2, SimpleVector simpleVector3) {
        setTo(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z, simpleVector2.f83625x, simpleVector2.f83626y, simpleVector2.f83627z, simpleVector3.f83625x, simpleVector3.f83626y, simpleVector3.f83627z);
    }

    public Plane(SimpleVector simpleVector, SimpleVector simpleVector2) {
        setTo(simpleVector, simpleVector2);
    }

    public void setTo(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        float f19 = f13 - f10;
        float f20 = f14 - f11;
        float f21 = f15 - f12;
        float f22 = f16 - f10;
        float f23 = f17 - f11;
        float f24 = f18 - f12;
        float f25 = (f20 * f24) - (f21 * f23);
        float f26 = (f21 * f22) - (f24 * f19);
        float f27 = (f19 * f23) - (f20 * f22);
        float sqrt = FloatMath.sqrt((f25 * f25) + (f26 * f26) + (f27 * f27));
        if (sqrt != 0.0f) {
            float f28 = 1.0f / sqrt;
            this.normal.set(f25 * f28, f26 * f28, f27 * f28);
        } else {
            this.normal.set(0.0f, 0.0f, 0.0f);
        }
        SimpleVector simpleVector = this.normal;
        this.equation3 = -((simpleVector.f83625x * f10) + (simpleVector.f83626y * f11) + (simpleVector.f83627z * f12));
    }

    public Plane(SimpleVector simpleVector, SimpleVector simpleVector2, SimpleVector simpleVector3) {
        setTo(simpleVector, simpleVector2, simpleVector3);
    }
}
