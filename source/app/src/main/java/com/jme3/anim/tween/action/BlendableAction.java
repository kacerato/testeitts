package com.jme3.anim.tween.action;

import com.jme3.anim.tween.AbstractTween;
import com.jme3.anim.tween.Tween;
import com.jme3.anim.util.HasLocalTransform;
import com.jme3.math.Transform;
import com.jme3.util.clone.Cloner;
import java.util.Collection;

public abstract class BlendableAction extends Action {
    protected BlendableAction collectTransformDelegate;
    private double maxTransitionWeight;
    private TransitionTween transition;
    private double transitionLength;
    private float transitionWeight;
    private float weight;

    public class TransitionTween extends AbstractTween {
        public TransitionTween(double d10) {
            super(d10);
        }

        @Override
        public void doInterpolate(double d10) {
            BlendableAction blendableAction = BlendableAction.this;
            blendableAction.transitionWeight = (float) Math.min(d10, blendableAction.maxTransitionWeight);
        }
    }

    public BlendableAction(Tween... tweenArr) {
        super(tweenArr);
        this.transitionWeight = 1.0f;
        this.maxTransitionWeight = 1.0d;
        this.transitionLength = 0.4000000059604645d;
        this.weight = 1.0f;
        this.transition = new TransitionTween(0.4000000059604645d);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.collectTransformDelegate = (BlendableAction) cloner.clone(this.collectTransformDelegate);
        this.transition = (TransitionTween) cloner.clone(this.transition);
    }

    public abstract void collectTransform(HasLocalTransform hasLocalTransform, Transform transform, float f10, BlendableAction blendableAction);

    public abstract void doInterpolate(double d10);

    public double getMaxTransitionWeight() {
        return this.maxTransitionWeight;
    }

    public abstract Collection<HasLocalTransform> getTargets();

    public double getTransitionLength() {
        return this.transitionLength;
    }

    public float getTransitionWeight() {
        return this.transitionWeight;
    }

    public float getWeight() {
        return this.weight;
    }

    @Override
    public boolean interpolate(double d10) {
        if (d10 < 0.0d) {
            return true;
        }
        if (this.collectTransformDelegate == null) {
            if (this.transition.getLength() > getLength()) {
                this.transition.setLength(getLength());
            }
            if (isForward()) {
                this.transition.interpolate(d10);
            } else {
                this.transition.interpolate(Math.max((float) (getLength() - d10), 0.0f));
            }
        } else {
            this.transitionWeight = 1.0f;
        }
        if (this.weight == 0.0f) {
            return d10 < getLength();
        }
        doInterpolate(d10);
        return d10 < getLength();
    }

    public void setCollectTransformDelegate(BlendableAction blendableAction) {
        this.collectTransformDelegate = blendableAction;
    }

    public void setMaxTransitionWeight(double d10) {
        if (d10 < 0.0d || d10 > 1.0d) {
            throw new IllegalArgumentException("maxTransitionWeight must be between 0 and 1");
        }
        this.maxTransitionWeight = d10;
    }

    public void setTransitionLength(double d10) {
        if (d10 < 0.0d) {
            throw new IllegalArgumentException("transitionLength must be greater than or equal to 0");
        }
        this.transitionLength = d10;
        this.transition.setLength(d10);
    }

    public void setWeight(float f10) {
        this.weight = f10;
    }

    @Override
    public BlendableAction jmeClone() {
        try {
            return (BlendableAction) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }
}
