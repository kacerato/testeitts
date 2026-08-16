package androidx.constraintlayout.core.motion.utils;

public interface StopEngine {
    String debug(String str, float f10);

    float getInterpolation(float f10);

    float getVelocity();

    float getVelocity(float f10);

    boolean isStopped();
}
