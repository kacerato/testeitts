package androidx.dynamicanimation.animation;

interface Force {
    float getAcceleration(float f10, float f11);

    boolean isAtEquilibrium(float f10, float f11);
}
