package org.apache.commons.math3.ode.sampling;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.ode.EquationsMapper;

public abstract class AbstractStepInterpolator implements StepInterpolator {
    protected double[] currentState;
    private boolean dirtyState;
    private boolean finalized;
    private boolean forward;
    private double globalCurrentTime;
    private double globalPreviousTime;

    protected double f100282h;
    protected double[] interpolatedDerivatives;
    protected double[] interpolatedPrimaryDerivatives;
    protected double[] interpolatedPrimaryState;
    protected double[][] interpolatedSecondaryDerivatives;
    protected double[][] interpolatedSecondaryState;
    protected double[] interpolatedState;
    protected double interpolatedTime;
    private EquationsMapper primaryMapper;
    private EquationsMapper[] secondaryMappers;
    private double softCurrentTime;
    private double softPreviousTime;

    public AbstractStepInterpolator() {
        this.globalPreviousTime = Double.NaN;
        this.globalCurrentTime = Double.NaN;
        this.softPreviousTime = Double.NaN;
        this.softCurrentTime = Double.NaN;
        this.f100282h = Double.NaN;
        this.interpolatedTime = Double.NaN;
        this.currentState = null;
        this.finalized = false;
        this.forward = true;
        this.dirtyState = true;
        this.primaryMapper = null;
        this.secondaryMappers = null;
        allocateInterpolatedArrays(-1);
    }

    private void allocateInterpolatedArrays(int i10) {
        if (i10 < 0) {
            this.interpolatedState = null;
            this.interpolatedDerivatives = null;
            this.interpolatedPrimaryState = null;
            this.interpolatedPrimaryDerivatives = null;
            this.interpolatedSecondaryState = null;
            this.interpolatedSecondaryDerivatives = null;
            return;
        }
        this.interpolatedState = new double[i10];
        this.interpolatedDerivatives = new double[i10];
        this.interpolatedPrimaryState = new double[this.primaryMapper.getDimension()];
        this.interpolatedPrimaryDerivatives = new double[this.primaryMapper.getDimension()];
        EquationsMapper[] equationsMapperArr = this.secondaryMappers;
        if (equationsMapperArr == null) {
            this.interpolatedSecondaryState = null;
            this.interpolatedSecondaryDerivatives = null;
            return;
        }
        this.interpolatedSecondaryState = new double[equationsMapperArr.length];
        this.interpolatedSecondaryDerivatives = new double[equationsMapperArr.length];
        int i11 = 0;
        while (true) {
            EquationsMapper[] equationsMapperArr2 = this.secondaryMappers;
            if (i11 >= equationsMapperArr2.length) {
                return;
            }
            this.interpolatedSecondaryState[i11] = new double[equationsMapperArr2[i11].getDimension()];
            this.interpolatedSecondaryDerivatives[i11] = new double[this.secondaryMappers[i11].getDimension()];
            i11++;
        }
    }

    private void evaluateCompleteInterpolatedState() throws MaxCountExceededException {
        if (this.dirtyState) {
            double d10 = this.globalCurrentTime - this.interpolatedTime;
            double d11 = this.f100282h;
            computeInterpolatedStateAndDerivatives(d11 != 0.0d ? (d11 - d10) / d11 : 0.0d, d10);
            this.dirtyState = false;
        }
    }

    public abstract void computeInterpolatedStateAndDerivatives(double d10, double d11) throws MaxCountExceededException;

    @Override
    public StepInterpolator copy() throws MaxCountExceededException {
        finalizeStep();
        return doCopy();
    }

    public abstract StepInterpolator doCopy();

    public void doFinalize() throws MaxCountExceededException {
    }

    public final void finalizeStep() throws MaxCountExceededException {
        if (this.finalized) {
            return;
        }
        doFinalize();
        this.finalized = true;
    }

    @Override
    public double getCurrentTime() {
        return this.softCurrentTime;
    }

    public double getGlobalCurrentTime() {
        return this.globalCurrentTime;
    }

    public double getGlobalPreviousTime() {
        return this.globalPreviousTime;
    }

    @Override
    public double[] getInterpolatedDerivatives() throws MaxCountExceededException {
        evaluateCompleteInterpolatedState();
        this.primaryMapper.extractEquationData(this.interpolatedDerivatives, this.interpolatedPrimaryDerivatives);
        return this.interpolatedPrimaryDerivatives;
    }

    @Override
    public double[] getInterpolatedSecondaryDerivatives(int i10) throws MaxCountExceededException {
        evaluateCompleteInterpolatedState();
        this.secondaryMappers[i10].extractEquationData(this.interpolatedDerivatives, this.interpolatedSecondaryDerivatives[i10]);
        return this.interpolatedSecondaryDerivatives[i10];
    }

    @Override
    public double[] getInterpolatedSecondaryState(int i10) throws MaxCountExceededException {
        evaluateCompleteInterpolatedState();
        this.secondaryMappers[i10].extractEquationData(this.interpolatedState, this.interpolatedSecondaryState[i10]);
        return this.interpolatedSecondaryState[i10];
    }

    @Override
    public double[] getInterpolatedState() throws MaxCountExceededException {
        evaluateCompleteInterpolatedState();
        this.primaryMapper.extractEquationData(this.interpolatedState, this.interpolatedPrimaryState);
        return this.interpolatedPrimaryState;
    }

    @Override
    public double getInterpolatedTime() {
        return this.interpolatedTime;
    }

    @Override
    public double getPreviousTime() {
        return this.softPreviousTime;
    }

    @Override
    public boolean isForward() {
        return this.forward;
    }

    public double readBaseExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        int readInt = objectInput.readInt();
        this.globalPreviousTime = objectInput.readDouble();
        this.globalCurrentTime = objectInput.readDouble();
        this.softPreviousTime = objectInput.readDouble();
        this.softCurrentTime = objectInput.readDouble();
        this.f100282h = objectInput.readDouble();
        this.forward = objectInput.readBoolean();
        this.primaryMapper = (EquationsMapper) objectInput.readObject();
        this.secondaryMappers = new EquationsMapper[objectInput.read()];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            EquationsMapper[] equationsMapperArr = this.secondaryMappers;
            if (i11 >= equationsMapperArr.length) {
                break;
            }
            equationsMapperArr[i11] = (EquationsMapper) objectInput.readObject();
            i11++;
        }
        this.dirtyState = true;
        if (readInt >= 0) {
            this.currentState = new double[readInt];
            while (true) {
                double[] dArr = this.currentState;
                if (i10 >= dArr.length) {
                    break;
                }
                dArr[i10] = objectInput.readDouble();
                i10++;
            }
        } else {
            this.currentState = null;
        }
        this.interpolatedTime = Double.NaN;
        allocateInterpolatedArrays(readInt);
        this.finalized = true;
        return objectInput.readDouble();
    }

    @Override
    public abstract void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException;

    public void reinitialize(double[] dArr, boolean z10, EquationsMapper equationsMapper, EquationsMapper[] equationsMapperArr) {
        this.globalPreviousTime = Double.NaN;
        this.globalCurrentTime = Double.NaN;
        this.softPreviousTime = Double.NaN;
        this.softCurrentTime = Double.NaN;
        this.f100282h = Double.NaN;
        this.interpolatedTime = Double.NaN;
        this.currentState = dArr;
        this.finalized = false;
        this.forward = z10;
        this.dirtyState = true;
        this.primaryMapper = equationsMapper;
        this.secondaryMappers = (EquationsMapper[]) equationsMapperArr.clone();
        allocateInterpolatedArrays(dArr.length);
    }

    @Override
    public void setInterpolatedTime(double d10) {
        this.interpolatedTime = d10;
        this.dirtyState = true;
    }

    public void setSoftCurrentTime(double d10) {
        this.softCurrentTime = d10;
    }

    public void setSoftPreviousTime(double d10) {
        this.softPreviousTime = d10;
    }

    public void shift() {
        double d10 = this.globalCurrentTime;
        this.globalPreviousTime = d10;
        this.softPreviousTime = d10;
        this.softCurrentTime = d10;
    }

    public void storeTime(double d10) {
        this.globalCurrentTime = d10;
        this.softCurrentTime = d10;
        this.f100282h = d10 - this.globalPreviousTime;
        setInterpolatedTime(d10);
        this.finalized = false;
    }

    public void writeBaseExternal(ObjectOutput objectOutput) throws IOException {
        double[] dArr = this.currentState;
        if (dArr == null) {
            objectOutput.writeInt(-1);
        } else {
            objectOutput.writeInt(dArr.length);
        }
        objectOutput.writeDouble(this.globalPreviousTime);
        objectOutput.writeDouble(this.globalCurrentTime);
        objectOutput.writeDouble(this.softPreviousTime);
        objectOutput.writeDouble(this.softCurrentTime);
        objectOutput.writeDouble(this.f100282h);
        objectOutput.writeBoolean(this.forward);
        objectOutput.writeObject(this.primaryMapper);
        objectOutput.write(this.secondaryMappers.length);
        int i10 = 0;
        for (EquationsMapper equationsMapper : this.secondaryMappers) {
            objectOutput.writeObject(equationsMapper);
        }
        if (this.currentState != null) {
            while (true) {
                double[] dArr2 = this.currentState;
                if (i10 >= dArr2.length) {
                    break;
                }
                objectOutput.writeDouble(dArr2[i10]);
                i10++;
            }
        }
        objectOutput.writeDouble(this.interpolatedTime);
        try {
            finalizeStep();
        } catch (MaxCountExceededException e10) {
            IOException iOException = new IOException(e10.getLocalizedMessage());
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public abstract void writeExternal(ObjectOutput objectOutput) throws IOException;

    public AbstractStepInterpolator(double[] dArr, boolean z10, EquationsMapper equationsMapper, EquationsMapper[] equationsMapperArr) {
        this.globalPreviousTime = Double.NaN;
        this.globalCurrentTime = Double.NaN;
        this.softPreviousTime = Double.NaN;
        this.softCurrentTime = Double.NaN;
        this.f100282h = Double.NaN;
        this.interpolatedTime = Double.NaN;
        this.currentState = dArr;
        this.finalized = false;
        this.forward = z10;
        this.dirtyState = true;
        this.primaryMapper = equationsMapper;
        this.secondaryMappers = equationsMapperArr == null ? null : (EquationsMapper[]) equationsMapperArr.clone();
        allocateInterpolatedArrays(dArr.length);
    }

    public AbstractStepInterpolator(AbstractStepInterpolator abstractStepInterpolator) {
        this.globalPreviousTime = abstractStepInterpolator.globalPreviousTime;
        this.globalCurrentTime = abstractStepInterpolator.globalCurrentTime;
        this.softPreviousTime = abstractStepInterpolator.softPreviousTime;
        this.softCurrentTime = abstractStepInterpolator.softCurrentTime;
        this.f100282h = abstractStepInterpolator.f100282h;
        this.interpolatedTime = abstractStepInterpolator.interpolatedTime;
        double[] dArr = abstractStepInterpolator.currentState;
        if (dArr == null) {
            this.currentState = null;
            this.primaryMapper = null;
            this.secondaryMappers = null;
            allocateInterpolatedArrays(-1);
        } else {
            this.currentState = (double[]) dArr.clone();
            this.interpolatedState = (double[]) abstractStepInterpolator.interpolatedState.clone();
            this.interpolatedDerivatives = (double[]) abstractStepInterpolator.interpolatedDerivatives.clone();
            this.interpolatedPrimaryState = (double[]) abstractStepInterpolator.interpolatedPrimaryState.clone();
            this.interpolatedPrimaryDerivatives = (double[]) abstractStepInterpolator.interpolatedPrimaryDerivatives.clone();
            this.interpolatedSecondaryState = new double[abstractStepInterpolator.interpolatedSecondaryState.length];
            this.interpolatedSecondaryDerivatives = new double[abstractStepInterpolator.interpolatedSecondaryDerivatives.length];
            int i10 = 0;
            while (true) {
                double[][] dArr2 = this.interpolatedSecondaryState;
                if (i10 >= dArr2.length) {
                    break;
                }
                dArr2[i10] = (double[]) abstractStepInterpolator.interpolatedSecondaryState[i10].clone();
                this.interpolatedSecondaryDerivatives[i10] = (double[]) abstractStepInterpolator.interpolatedSecondaryDerivatives[i10].clone();
                i10++;
            }
        }
        this.finalized = abstractStepInterpolator.finalized;
        this.forward = abstractStepInterpolator.forward;
        this.dirtyState = abstractStepInterpolator.dirtyState;
        this.primaryMapper = abstractStepInterpolator.primaryMapper;
        EquationsMapper[] equationsMapperArr = abstractStepInterpolator.secondaryMappers;
        this.secondaryMappers = equationsMapperArr != null ? (EquationsMapper[]) equationsMapperArr.clone() : null;
    }
}
