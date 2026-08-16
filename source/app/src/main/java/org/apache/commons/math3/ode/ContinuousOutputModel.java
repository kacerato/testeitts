package org.apache.commons.math3.ode;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ode.sampling.StepHandler;
import org.apache.commons.math3.ode.sampling.StepInterpolator;
import org.apache.commons.math3.util.FastMath;

public class ContinuousOutputModel implements StepHandler, Serializable {
    private static final long serialVersionUID = -1417964919405031606L;
    private List<StepInterpolator> steps = new ArrayList();
    private double initialTime = Double.NaN;
    private double finalTime = Double.NaN;
    private boolean forward = true;
    private int index = 0;

    private int locatePoint(double d10, StepInterpolator stepInterpolator) {
        if (this.forward) {
            if (d10 < stepInterpolator.getPreviousTime()) {
                return -1;
            }
            return d10 > stepInterpolator.getCurrentTime() ? 1 : 0;
        }
        if (d10 > stepInterpolator.getPreviousTime()) {
            return -1;
        }
        return d10 < stepInterpolator.getCurrentTime() ? 1 : 0;
    }

    public void append(ContinuousOutputModel continuousOutputModel) throws MathIllegalArgumentException, MaxCountExceededException {
        if (continuousOutputModel.steps.size() == 0) {
            return;
        }
        if (this.steps.size() == 0) {
            this.initialTime = continuousOutputModel.initialTime;
            this.forward = continuousOutputModel.forward;
        } else {
            if (getInterpolatedState().length != continuousOutputModel.getInterpolatedState().length) {
                throw new DimensionMismatchException(continuousOutputModel.getInterpolatedState().length, getInterpolatedState().length);
            }
            if (this.forward ^ continuousOutputModel.forward) {
                throw new MathIllegalArgumentException(LocalizedFormats.PROPAGATION_DIRECTION_MISMATCH, new Object[0]);
            }
            StepInterpolator stepInterpolator = this.steps.get(this.index);
            double currentTime = stepInterpolator.getCurrentTime();
            double previousTime = currentTime - stepInterpolator.getPreviousTime();
            double initialTime = continuousOutputModel.getInitialTime() - currentTime;
            if (FastMath.abs(initialTime) > FastMath.abs(previousTime) * 0.001d) {
                throw new MathIllegalArgumentException(LocalizedFormats.HOLE_BETWEEN_MODELS_TIME_RANGES, Double.valueOf(FastMath.abs(initialTime)));
            }
        }
        Iterator<StepInterpolator> it = continuousOutputModel.steps.iterator();
        while (it.hasNext()) {
            this.steps.add(it.next().copy());
        }
        int size = this.steps.size() - 1;
        this.index = size;
        this.finalTime = this.steps.get(size).getCurrentTime();
    }

    public double getFinalTime() {
        return this.finalTime;
    }

    public double getInitialTime() {
        return this.initialTime;
    }

    public double[] getInterpolatedDerivatives() throws MaxCountExceededException {
        return this.steps.get(this.index).getInterpolatedDerivatives();
    }

    public double[] getInterpolatedSecondaryDerivatives(int i10) throws MaxCountExceededException {
        return this.steps.get(this.index).getInterpolatedSecondaryDerivatives(i10);
    }

    public double[] getInterpolatedSecondaryState(int i10) throws MaxCountExceededException {
        return this.steps.get(this.index).getInterpolatedSecondaryState(i10);
    }

    public double[] getInterpolatedState() throws MaxCountExceededException {
        return this.steps.get(this.index).getInterpolatedState();
    }

    public double getInterpolatedTime() {
        return this.steps.get(this.index).getInterpolatedTime();
    }

    @Override
    public void handleStep(StepInterpolator stepInterpolator, boolean z10) throws MaxCountExceededException {
        if (this.steps.size() == 0) {
            this.initialTime = stepInterpolator.getPreviousTime();
            this.forward = stepInterpolator.isForward();
        }
        this.steps.add(stepInterpolator.copy());
        if (z10) {
            this.finalTime = stepInterpolator.getCurrentTime();
            this.index = this.steps.size() - 1;
        }
    }

    @Override
    public void init(double d10, double[] dArr, double d11) {
        this.initialTime = Double.NaN;
        this.finalTime = Double.NaN;
        this.forward = true;
        this.index = 0;
        this.steps.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setInterpolatedTime(double d10) {
        int max;
        int i10;
        int i11 = 0;
        StepInterpolator stepInterpolator = this.steps.get(0);
        double d11 = 0.5d;
        double previousTime = (stepInterpolator.getPreviousTime() + stepInterpolator.getCurrentTime()) * 0.5d;
        int size = this.steps.size() - 1;
        StepInterpolator stepInterpolator2 = this.steps.get(size);
        double previousTime2 = (stepInterpolator2.getPreviousTime() + stepInterpolator2.getCurrentTime()) * 0.5d;
        if (locatePoint(d10, stepInterpolator) <= 0) {
            this.index = 0;
            stepInterpolator.setInterpolatedTime(d10);
            return;
        }
        if (locatePoint(d10, stepInterpolator2) >= 0) {
            this.index = size;
            stepInterpolator2.setInterpolatedTime(d10);
            return;
        }
        while (size - i11 > 5) {
            StepInterpolator stepInterpolator3 = this.steps.get(this.index);
            int locatePoint = locatePoint(d10, stepInterpolator3);
            if (locatePoint < 0) {
                size = this.index;
                previousTime2 = (stepInterpolator3.getPreviousTime() + stepInterpolator3.getCurrentTime()) * d11;
            } else if (locatePoint <= 0) {
                stepInterpolator3.setInterpolatedTime(d10);
                return;
            } else {
                i11 = this.index;
                previousTime = (stepInterpolator3.getPreviousTime() + stepInterpolator3.getCurrentTime()) * d11;
            }
            int i12 = (i11 + size) / 2;
            StepInterpolator stepInterpolator4 = this.steps.get(i12);
            double previousTime3 = (stepInterpolator4.getPreviousTime() + stepInterpolator4.getCurrentTime()) * d11;
            double d12 = previousTime3 - previousTime;
            if (FastMath.abs(d12) >= 1.0E-6d) {
                double d13 = previousTime2 - previousTime3;
                if (FastMath.abs(d13) >= 1.0E-6d) {
                    double d14 = previousTime2 - previousTime;
                    double d15 = d10 - previousTime2;
                    double d16 = d10 - previousTime3;
                    double d17 = d10 - previousTime;
                    this.index = (int) FastMath.rint((((((d16 * d17) * d12) * size) - (((d17 * d15) * d14) * i12)) + (((d15 * d16) * d13) * i11)) / ((d13 * d12) * d14));
                    max = FastMath.max(i11 + 1, ((i11 * 9) + size) / 10);
                    int min = FastMath.min(size - 1, ((size * 9) + i11) / 10);
                    i10 = this.index;
                    if (i10 >= max) {
                        this.index = max;
                    } else if (i10 > min) {
                        this.index = min;
                    }
                    d11 = 0.5d;
                }
            }
            this.index = i12;
            max = FastMath.max(i11 + 1, ((i11 * 9) + size) / 10);
            int min2 = FastMath.min(size - 1, ((size * 9) + i11) / 10);
            i10 = this.index;
            if (i10 >= max) {
            }
            d11 = 0.5d;
        }
        this.index = i11;
        while (true) {
            int i13 = this.index;
            if (i13 > size || locatePoint(d10, this.steps.get(i13)) <= 0) {
                break;
            } else {
                this.index++;
            }
        }
        this.steps.get(this.index).setInterpolatedTime(d10);
    }
}
