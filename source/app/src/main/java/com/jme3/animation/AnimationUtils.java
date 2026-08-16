package com.jme3.animation;

public class AnimationUtils {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$animation$LoopMode;

        static {
            int[] iArr = new int[LoopMode.values().length];
            $SwitchMap$com$jme3$animation$LoopMode = iArr;
            try {
                iArr[LoopMode.Cycle.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$animation$LoopMode[LoopMode.DontLoop.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$animation$LoopMode[LoopMode.Loop.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private AnimationUtils() {
    }

    public static float clampWrapTime(float f10, float f11, LoopMode loopMode) {
        if (f10 == 0.0f || f11 == 0.0f) {
            return 0.0f;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$animation$LoopMode[loopMode.ordinal()];
        if (i10 == 1) {
            return ((int) (f10 / f11)) % 2 != 0 ? -(f11 - (f10 % f11)) : f10 % f11;
        }
        if (i10 != 2) {
            return i10 != 3 ? f10 : f10 % f11;
        }
        if (f10 > f11) {
            return f11;
        }
        if (f10 < 0.0f) {
            return 0.0f;
        }
        return f10;
    }
}
