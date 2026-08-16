package com.jme3.anim.tween.action;

import com.jme3.anim.util.HasLocalTransform;
import com.jme3.math.FastMath;
import com.jme3.math.Transform;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.function.ToDoubleFunction;

public class BlendAction extends BlendableAction {
    private final BlendSpace blendSpace;
    private float blendWeight;
    private int firstActiveIndex;
    private int secondActiveIndex;
    private double[] speedFactors;
    private final Map<HasLocalTransform, Transform> targetMap;
    private final double[] timeFactor;

    public BlendAction(BlendSpace blendSpace, BlendableAction... blendableActionArr) {
        super(blendableActionArr);
        this.targetMap = new HashMap();
        this.timeFactor = new double[blendableActionArr.length];
        this.blendSpace = blendSpace;
        blendSpace.setBlendAction(this);
        int i10 = 0;
        for (BlendableAction blendableAction : blendableActionArr) {
            if (blendableAction.getLength() > getLength()) {
                setLength(blendableAction.getLength());
            }
            for (HasLocalTransform hasLocalTransform : blendableAction.getTargets()) {
                if (this.targetMap.get(hasLocalTransform) == null) {
                    this.targetMap.put(hasLocalTransform, new Transform());
                }
            }
        }
        while (true) {
            Action[] actionArr = this.actions;
            if (i10 >= actionArr.length) {
                applyDefaultSpeedFactors();
                return;
            }
            this.timeFactor[i10] = 1.0d;
            if (actionArr[i10].getLength() != getLength() && this.actions[i10].getLength() > 0.0d && getLength() > 0.0d) {
                this.timeFactor[i10] = this.actions[i10].getLength() / getLength();
            }
            i10++;
        }
    }

    private void collect(HasLocalTransform hasLocalTransform, Transform transform) {
        BlendableAction blendableAction = this.collectTransformDelegate;
        if (blendableAction != null) {
            blendableAction.collectTransform(hasLocalTransform, transform, getWeight(), this);
        } else {
            if (getTransitionWeight() == 1.0f) {
                hasLocalTransform.setLocalTransform(transform);
                return;
            }
            Transform localTransform = hasLocalTransform.getLocalTransform();
            localTransform.interpolateTransforms(localTransform, transform, getTransitionWeight());
            hasLocalTransform.setLocalTransform(localTransform);
        }
    }

    public double lambda$applyDefaultSpeedFactors$0(Action action) {
        return getLength() / action.getLength();
    }

    public void applyDefaultSpeedFactors() {
        setSpeedFactors(Arrays.stream(getActions()).mapToDouble(new ToDoubleFunction() {
            @Override
            public final double applyAsDouble(Object obj) {
                double lambda$applyDefaultSpeedFactors$0;
                lambda$applyDefaultSpeedFactors$0 = BlendAction.this.lambda$applyDefaultSpeedFactors$0((Action) obj);
                return lambda$applyDefaultSpeedFactors$0;
            }
        }).toArray());
    }

    public void clearSpeedFactors() {
        this.speedFactors = null;
    }

    @Override
    public void collectTransform(HasLocalTransform hasLocalTransform, Transform transform, float f10, BlendableAction blendableAction) {
        Transform transform2 = this.targetMap.get(hasLocalTransform);
        if (f10 == 1.0f) {
            transform2.set(transform);
        } else if (f10 > 0.0f) {
            transform2.interpolateTransforms(transform2, transform, f10);
        }
        if (blendableAction == this.actions[this.secondActiveIndex]) {
            collect(hasLocalTransform, transform2);
        }
    }

    @Override
    public void doInterpolate(double d10) {
        this.blendWeight = this.blendSpace.getWeight();
        Action[] actionArr = this.actions;
        BlendableAction blendableAction = (BlendableAction) actionArr[this.firstActiveIndex];
        BlendableAction blendableAction2 = (BlendableAction) actionArr[this.secondActiveIndex];
        blendableAction.setCollectTransformDelegate(this);
        blendableAction2.setCollectTransformDelegate(this);
        if (this.blendWeight < 1.0f) {
            blendableAction.setWeight(1.0f);
            blendableAction.interpolate(this.timeFactor[this.firstActiveIndex] * d10);
            if (this.blendWeight == 0.0f) {
                for (HasLocalTransform hasLocalTransform : this.targetMap.o()) {
                    collect(hasLocalTransform, this.targetMap.get(hasLocalTransform));
                }
            }
        }
        blendableAction2.setWeight(this.blendWeight);
        blendableAction2.interpolate(d10 * this.timeFactor[this.secondActiveIndex]);
        blendableAction.setCollectTransformDelegate(null);
        blendableAction2.setCollectTransformDelegate(null);
    }

    public Action[] getActions() {
        return this.actions;
    }

    public BlendSpace getBlendSpace() {
        return this.blendSpace;
    }

    @Override
    public double getSpeed() {
        if (this.speedFactors == null) {
            return super.getSpeed();
        }
        double speed = super.getSpeed();
        float f10 = this.blendWeight;
        double[] dArr = this.speedFactors;
        return speed * FastMath.interpolateLinear(f10, (float) dArr[this.firstActiveIndex], (float) dArr[this.secondActiveIndex]);
    }

    public double[] getSpeedFactors() {
        return this.speedFactors;
    }

    @Override
    public Collection<HasLocalTransform> getTargets() {
        return this.targetMap.o();
    }

    public void setFirstActiveIndex(int i10) {
        this.firstActiveIndex = i10;
    }

    public void setSecondActiveIndex(int i10) {
        this.secondActiveIndex = i10;
    }

    public void setSpeedFactors(double... dArr) {
        if (dArr.length == this.actions.length) {
            this.speedFactors = dArr;
            return;
        }
        throw new IllegalArgumentException("Array length must be " + this.actions.length);
    }
}
