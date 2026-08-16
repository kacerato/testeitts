package com.ardor3d.scenegraph.controller.interpolation;

import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.scenegraph.controller.ComplexSpatialController;
import com.ardor3d.spline.ArcLengthTable;
import com.ardor3d.spline.Curve;
import java.util.logging.Logger;

public class CurveInterpolationController extends Vector3InterpolationController {
    static final boolean $assertionsDisabled = false;
    private static final Logger LOGGER = Logger.getLogger(CurveInterpolationController.class.getName());
    private static final long serialVersionUID = 1;
    private ArcLengthTable _arcLengths;
    private ArcLengthTable _arcLengthsReverse;
    private Curve _curve;
    private double _distance = 0.0d;

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

    @Override
    public int decrementIndex() {
        this._distance -= this._arcLengthsReverse.getLength(getIndex());
        return super.decrementIndex();
    }

    public void generateArcLengths(int i10) {
        generateArcLengths(i10, ComplexSpatialController.RepeatType.CYCLE.equals(getRepeatType()));
    }

    public ReadOnlyVector3 getControlPointStart() {
        int index = getIndex();
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$scenegraph$controller$ComplexSpatialController$RepeatType[getRepeatType().ordinal()];
        if (i10 == 1) {
            return getControls().get(index - 1);
        }
        if (i10 == 2) {
            return isCycleForward() ? getControls().get(index - 1) : getControls().get(index + 1);
        }
        if (i10 != 3) {
            return null;
        }
        return getControls().get(index - 1);
    }

    public ReadOnlyVector3 getCotnrolPointEnd() {
        int index = getIndex();
        int i10 = AnonymousClass1.$SwitchMap$com$ardor3d$scenegraph$controller$ComplexSpatialController$RepeatType[getRepeatType().ordinal()];
        if (i10 == 1) {
            return getControls().get(index + 2);
        }
        if (i10 == 2) {
            return isCycleForward() ? getControls().get(index + 2) : getControls().get(index - 2);
        }
        if (i10 != 3) {
            return null;
        }
        return getControls().get(index + 2);
    }

    public Curve getCurve() {
        return this._curve;
    }

    @Override
    public int getMaximumIndex() {
        return super.getMaximumIndex() - 1;
    }

    @Override
    public int getMinimumIndex() {
        return super.getMinimumIndex() + 1;
    }

    @Override
    public double incrementDelta(double d10) {
        if (!isConstantSpeed()) {
            return super.incrementDelta(d10);
        }
        this._distance += d10;
        double delta = isCycleForward() ? this._arcLengths.getDelta(getIndex(), this._distance) : this._arcLengthsReverse.getDelta(getIndex(), this._distance);
        setDelta(delta);
        return delta;
    }

    @Override
    public int incrementIndex() {
        this._distance -= this._arcLengths.getLength(getIndex());
        return super.incrementIndex();
    }

    @Override
    public Vector3 interpolateVectors(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, double d10, Vector3 vector3) {
        return getCurve().getSpline().interpolate(getControlPointStart(), readOnlyVector3, readOnlyVector32, getCotnrolPointEnd(), d10, vector3);
    }

    @Override
    public void reset() {
        super.reset();
        this._distance = 0.0d;
    }

    @Override
    public void setConstantSpeed(boolean z10) {
        super.setConstantSpeed(z10);
        if (isConstantSpeed() && this._arcLengths == null) {
            LOGGER.warning("Constant speed was set to true, you will need to call generateArcLengths() to avoid errors during update.");
        }
    }

    public void setCurve(Curve curve) {
        if (curve == null) {
            throw new IllegalArgumentException("curve can not be null!");
        }
        this._curve = curve;
        setControls(curve.getControlPoints());
        if (isConstantSpeed()) {
            LOGGER.warning("Constant speed is set to true, you will need to call generateArcLengths() to avoid errors during update.");
        }
    }

    public void generateArcLengths(int i10, boolean z10) {
        ArcLengthTable arcLengthTable = new ArcLengthTable(getCurve());
        this._arcLengths = arcLengthTable;
        arcLengthTable.generate(i10, false);
        if (z10) {
            ArcLengthTable arcLengthTable2 = new ArcLengthTable(getCurve());
            this._arcLengthsReverse = arcLengthTable2;
            arcLengthTable2.generate(i10, true);
        }
    }
}
