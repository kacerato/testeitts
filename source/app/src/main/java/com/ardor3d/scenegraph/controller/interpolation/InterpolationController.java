package com.ardor3d.scenegraph.controller.interpolation;

import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.scenegraph.controller.ComplexSpatialController;
import java.util.Arrays;
import java.util.List;

public abstract class InterpolationController<C, T extends Spatial> extends ComplexSpatialController<T> {
    static final boolean $assertionsDisabled = false;
    public static final double DELTA_MAX = 1.0d;
    public static final double DELTA_MIN = 0.0d;
    private static final long serialVersionUID = 1;
    private List<C> _controls = null;
    private int _index = getMinimumIndex();
    private double _delta = 0.0d;
    private boolean _cycleForward = true;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$scenegraph$controller$ComplexSpatialController$RepeatType;

        static {
            int[] iArr = new int[ComplexSpatialController.RepeatType.values().length];
            $SwitchMap$com$ardor3d$scenegraph$controller$ComplexSpatialController$RepeatType = iArr;
            try {
                iArr[ComplexSpatialController.RepeatType.CLAMP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$controller$ComplexSpatialController$RepeatType[ComplexSpatialController.RepeatType.CYCLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$scenegraph$controller$ComplexSpatialController$RepeatType[ComplexSpatialController.RepeatType.WRAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private boolean shouldUpdate(double d10, T t10) {
        return isActive() && t10 != null && d10 > 0.0d && getSpeed() > 0.0d && !isClamped();
    }

    public void clampIndex() {
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$scenegraph$controller$ComplexSpatialController$RepeatType[getRepeatType().ordinal()];
        if (i10 == 1) {
            if (getIndex() >= getMaximumIndex()) {
                setIndex(getMaximumIndex());
                setDelta(1.0d);
                return;
            }
            return;
        }
        if (i10 != 2) {
            if (i10 == 3 && getIndex() >= getMaximumIndex()) {
                setIndex(getMinimumIndex());
                return;
            }
            return;
        }
        if (isCycleForward()) {
            if (getIndex() == getMaximumIndex()) {
                setCycleForward(false);
            }
        } else if (getIndex() == getMinimumIndex()) {
            setCycleForward(true);
        }
    }

    public double decrementDelta(double d10) {
        double d11 = this._delta - d10;
        this._delta = d11;
        return d11;
    }

    public int decrementIndex() {
        int i10 = this._index - 1;
        this._index = i10;
        return i10;
    }

    public C getControlFrom() {
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$scenegraph$controller$ComplexSpatialController$RepeatType[getRepeatType().ordinal()];
        if (i10 == 1) {
            return getIndex() > getMaximumIndex() ? getControls().get(getMaximumIndex()) : getControls().get(getIndex());
        }
        if (i10 == 2 || i10 == 3) {
            return getControls().get(getIndex());
        }
        return null;
    }

    public C getControlTo() {
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$scenegraph$controller$ComplexSpatialController$RepeatType[getRepeatType().ordinal()];
        if (i10 == 1) {
            return getIndex() >= getMaximumIndex() ? getControls().get(getMaximumIndex()) : getControls().get(getIndex() + 1);
        }
        if (i10 == 2) {
            return isCycleForward() ? getControls().get(getIndex() + 1) : getControls().get(getIndex() - 1);
        }
        if (i10 != 3) {
            return null;
        }
        return getControls().get(getIndex() + 1);
    }

    public List<C> getControls() {
        return this._controls;
    }

    public double getDelta() {
        return this._delta;
    }

    public int getIndex() {
        return this._index;
    }

    public int getMaximumIndex() {
        return getControls().size() - 1;
    }

    public int getMinimumIndex() {
        return 0;
    }

    public double incrementDelta(double d10) {
        double d11 = this._delta + d10;
        this._delta = d11;
        return d11;
    }

    public int incrementIndex() {
        int i10 = this._index + 1;
        this._index = i10;
        return i10;
    }

    public abstract void interpolate(C c10, C c11, double d10, T t10);

    public boolean isClamped() {
        return isRepeatTypeClamp() && getIndex() == getMaximumIndex();
    }

    public boolean isCycleForward() {
        return this._cycleForward;
    }

    public void reset() {
        setCycleForward(true);
        setDelta(0.0d);
        setIndex(getMinimumIndex());
    }

    public void setControls(List<C> list) {
        if (list != null) {
            if (!list.isEmpty()) {
                this._controls = list;
                return;
            }
            throw new IllegalArgumentException("controls can not be empty!");
        }
        throw new IllegalArgumentException("controls can not be null!");
    }

    public void setCycleForward(boolean z10) {
        this._cycleForward = z10;
    }

    public void setDelta(double d10) {
        this._delta = d10;
    }

    public void setIndex(int i10) {
        this._index = i10;
    }

    @Override
    public void setRepeatType(ComplexSpatialController.RepeatType repeatType) {
        if (getRepeatType() != repeatType) {
            reset();
        }
        super.setRepeatType(repeatType);
    }

    @Override
    public void update(double d10, T t10) {
        if (shouldUpdate(d10, t10)) {
            updateDeltaAndIndex(d10);
            clampIndex();
            interpolate(getControlFrom(), getControlTo(), getDelta(), t10);
        }
    }

    public void updateDeltaAndIndex(double d10) {
        incrementDelta(getSpeed() * d10);
        while (getDelta() >= 1.0d) {
            decrementDelta(1.0d);
            if (isCycleForward()) {
                incrementIndex();
            } else {
                decrementIndex();
            }
        }
    }

    public void setControls(C[] cArr) {
        if (cArr != null) {
            setControls(Arrays.asList(cArr));
            return;
        }
        throw new IllegalArgumentException("controlArray can not be null!");
    }
}
