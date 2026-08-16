package org.apache.commons.math3.ode;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ode.sampling.FieldStepHandler;
import org.apache.commons.math3.ode.sampling.FieldStepInterpolator;
import org.apache.commons.math3.util.FastMath;

public class ContinuousOutputFieldModel<T extends RealFieldElement<T>> implements FieldStepHandler<T> {
    private List<FieldStepInterpolator<T>> steps = new ArrayList();
    private T initialTime = null;
    private T finalTime = null;
    private boolean forward = true;
    private int index = 0;

    private void checkDimensionsEquality(int i10, int i11) throws DimensionMismatchException {
        if (i10 != i11) {
            throw new DimensionMismatchException(i11, i10);
        }
    }

    private int locatePoint(T t10, FieldStepInterpolator<T> fieldStepInterpolator) {
        if (this.forward) {
            if (((RealFieldElement) t10.subtract(fieldStepInterpolator.getPreviousState().getTime())).getReal() < 0.0d) {
                return -1;
            }
            return ((RealFieldElement) t10.subtract(fieldStepInterpolator.getCurrentState().getTime())).getReal() > 0.0d ? 1 : 0;
        }
        if (((RealFieldElement) t10.subtract(fieldStepInterpolator.getPreviousState().getTime())).getReal() > 0.0d) {
            return -1;
        }
        return ((RealFieldElement) t10.subtract(fieldStepInterpolator.getCurrentState().getTime())).getReal() < 0.0d ? 1 : 0;
    }

    public void append(ContinuousOutputFieldModel<T> continuousOutputFieldModel) throws MathIllegalArgumentException, MaxCountExceededException {
        if (continuousOutputFieldModel.steps.size() == 0) {
            return;
        }
        if (this.steps.size() == 0) {
            this.initialTime = continuousOutputFieldModel.initialTime;
            this.forward = continuousOutputFieldModel.forward;
        } else {
            FieldODEStateAndDerivative<T> previousState = this.steps.get(0).getPreviousState();
            FieldODEStateAndDerivative<T> previousState2 = continuousOutputFieldModel.steps.get(0).getPreviousState();
            checkDimensionsEquality(previousState.getStateDimension(), previousState2.getStateDimension());
            checkDimensionsEquality(previousState.getNumberOfSecondaryStates(), previousState2.getNumberOfSecondaryStates());
            for (int i10 = 0; i10 < previousState.getNumberOfSecondaryStates(); i10++) {
                checkDimensionsEquality(previousState.getSecondaryStateDimension(i10), previousState2.getSecondaryStateDimension(i10));
            }
            if (this.forward ^ continuousOutputFieldModel.forward) {
                throw new MathIllegalArgumentException(LocalizedFormats.PROPAGATION_DIRECTION_MISMATCH, new Object[0]);
            }
            FieldStepInterpolator<T> fieldStepInterpolator = this.steps.get(this.index);
            T time = fieldStepInterpolator.getCurrentState().getTime();
            RealFieldElement realFieldElement = (RealFieldElement) time.subtract(fieldStepInterpolator.getPreviousState().getTime());
            RealFieldElement realFieldElement2 = (RealFieldElement) continuousOutputFieldModel.getInitialTime().subtract(time);
            if (((RealFieldElement) ((RealFieldElement) realFieldElement2.abs()).subtract((RealFieldElement) ((RealFieldElement) realFieldElement.abs()).multiply(0.001d))).getReal() > 0.0d) {
                throw new MathIllegalArgumentException(LocalizedFormats.HOLE_BETWEEN_MODELS_TIME_RANGES, Double.valueOf(((RealFieldElement) realFieldElement2.abs()).getReal()));
            }
        }
        Iterator<FieldStepInterpolator<T>> it = continuousOutputFieldModel.steps.iterator();
        while (it.hasNext()) {
            this.steps.add(it.next());
        }
        int size = this.steps.size() - 1;
        this.index = size;
        this.finalTime = this.steps.get(size).getCurrentState().getTime();
    }

    public T getFinalTime() {
        return this.finalTime;
    }

    public T getInitialTime() {
        return this.initialTime;
    }

    public FieldODEStateAndDerivative<T> getInterpolatedState(T t10) {
        int i10 = 0;
        FieldStepInterpolator<T> fieldStepInterpolator = this.steps.get(0);
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) fieldStepInterpolator.getPreviousState().getTime().add(fieldStepInterpolator.getCurrentState().getTime())).multiply(0.5d);
        int size = this.steps.size() - 1;
        FieldStepInterpolator<T> fieldStepInterpolator2 = this.steps.get(size);
        RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) fieldStepInterpolator2.getPreviousState().getTime().add(fieldStepInterpolator2.getCurrentState().getTime())).multiply(0.5d);
        if (locatePoint(t10, fieldStepInterpolator) <= 0) {
            this.index = 0;
            return fieldStepInterpolator.getInterpolatedState(t10);
        }
        if (locatePoint(t10, fieldStepInterpolator2) >= 0) {
            this.index = size;
            return fieldStepInterpolator2.getInterpolatedState(t10);
        }
        while (size - i10 > 5) {
            FieldStepInterpolator<T> fieldStepInterpolator3 = this.steps.get(this.index);
            int locatePoint = locatePoint(t10, fieldStepInterpolator3);
            if (locatePoint < 0) {
                size = this.index;
                realFieldElement2 = (RealFieldElement) ((RealFieldElement) fieldStepInterpolator3.getPreviousState().getTime().add(fieldStepInterpolator3.getCurrentState().getTime())).multiply(0.5d);
            } else {
                if (locatePoint <= 0) {
                    return fieldStepInterpolator3.getInterpolatedState(t10);
                }
                i10 = this.index;
                realFieldElement = (RealFieldElement) ((RealFieldElement) fieldStepInterpolator3.getPreviousState().getTime().add(fieldStepInterpolator3.getCurrentState().getTime())).multiply(0.5d);
            }
            int i11 = (i10 + size) / 2;
            FieldStepInterpolator<T> fieldStepInterpolator4 = this.steps.get(i11);
            RealFieldElement realFieldElement3 = (RealFieldElement) ((RealFieldElement) fieldStepInterpolator4.getPreviousState().getTime().add(fieldStepInterpolator4.getCurrentState().getTime())).multiply(0.5d);
            if (((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement3.subtract(realFieldElement)).abs()).subtract(1.0E-6d)).getReal() < 0.0d || ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.subtract(realFieldElement3)).abs()).subtract(1.0E-6d)).getReal() < 0.0d) {
                this.index = i11;
            } else {
                RealFieldElement realFieldElement4 = (RealFieldElement) realFieldElement2.subtract(realFieldElement3);
                RealFieldElement realFieldElement5 = (RealFieldElement) realFieldElement3.subtract(realFieldElement);
                RealFieldElement realFieldElement6 = (RealFieldElement) realFieldElement2.subtract(realFieldElement);
                RealFieldElement realFieldElement7 = (RealFieldElement) t10.subtract(realFieldElement2);
                RealFieldElement realFieldElement8 = (RealFieldElement) t10.subtract(realFieldElement3);
                RealFieldElement realFieldElement9 = (RealFieldElement) t10.subtract(realFieldElement);
                this.index = (int) FastMath.rint(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement8.multiply(realFieldElement9)).multiply(realFieldElement5)).multiply(size)).subtract((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply(realFieldElement9)).multiply(realFieldElement6)).multiply(i11))).add((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply(realFieldElement8)).multiply(realFieldElement4)).multiply(i10))).divide((RealFieldElement) ((RealFieldElement) realFieldElement4.multiply(realFieldElement5)).multiply(realFieldElement6))).getReal());
            }
            int max = FastMath.max(i10 + 1, ((i10 * 9) + size) / 10);
            int min = FastMath.min(size - 1, ((size * 9) + i10) / 10);
            int i12 = this.index;
            if (i12 < max) {
                this.index = max;
            } else if (i12 > min) {
                this.index = min;
            }
        }
        this.index = i10;
        while (true) {
            int i13 = this.index;
            if (i13 > size || locatePoint(t10, this.steps.get(i13)) <= 0) {
                break;
            }
            this.index++;
        }
        return this.steps.get(this.index).getInterpolatedState(t10);
    }

    @Override
    public void handleStep(FieldStepInterpolator<T> fieldStepInterpolator, boolean z10) throws MaxCountExceededException {
        if (this.steps.size() == 0) {
            this.initialTime = fieldStepInterpolator.getPreviousState().getTime();
            this.forward = fieldStepInterpolator.isForward();
        }
        this.steps.add(fieldStepInterpolator);
        if (z10) {
            this.finalTime = fieldStepInterpolator.getCurrentState().getTime();
            this.index = this.steps.size() - 1;
        }
    }

    @Override
    public void init(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, T t10) {
        this.initialTime = fieldODEStateAndDerivative.getTime();
        this.finalTime = t10;
        this.forward = true;
        this.index = 0;
        this.steps.clear();
    }
}
