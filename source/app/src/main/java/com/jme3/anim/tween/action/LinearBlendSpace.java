package com.jme3.anim.tween.action;

public class LinearBlendSpace implements BlendSpace {
    private BlendAction action;
    private final float maxValue;
    private final float minValue;
    private float step;
    private float value;

    public LinearBlendSpace(float f10, float f11) {
        this.maxValue = f11;
        this.minValue = f10;
    }

    @Override
    public float getWeight() {
        Action[] actions = this.action.getActions();
        float f10 = this.minValue;
        int i10 = 0;
        float f11 = f10;
        for (int i11 = 0; i11 < actions.length && f10 < this.value; i11++) {
            f11 = f10;
            f10 = this.step + f10;
            i10 = i11;
        }
        this.action.setFirstActiveIndex(i10);
        this.action.setSecondActiveIndex(i10 + 1);
        if (f10 == f11) {
            return 0.0f;
        }
        return (this.value - f11) / (f10 - f11);
    }

    @Override
    public void setBlendAction(BlendAction blendAction) {
        this.action = blendAction;
        this.step = (this.maxValue - this.minValue) / (blendAction.getActions().length - 1);
    }

    @Override
    public void setValue(float f10) {
        this.value = f10;
    }
}
