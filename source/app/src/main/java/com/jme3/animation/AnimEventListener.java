package com.jme3.animation;

@Deprecated
public interface AnimEventListener {
    void onAnimChange(AnimControl animControl, AnimChannel animChannel, String str);

    void onAnimCycleDone(AnimControl animControl, AnimChannel animChannel, String str);
}
