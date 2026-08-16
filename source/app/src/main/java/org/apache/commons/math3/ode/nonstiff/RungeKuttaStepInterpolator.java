package org.apache.commons.math3.ode.nonstiff;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.apache.commons.math3.ode.AbstractIntegrator;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.sampling.AbstractStepInterpolator;

abstract class RungeKuttaStepInterpolator extends AbstractStepInterpolator {
    protected AbstractIntegrator integrator;
    protected double[] previousState;
    protected double[][] yDotK;

    public RungeKuttaStepInterpolator() {
        this.previousState = null;
        this.yDotK = null;
        this.integrator = null;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        double readBaseExternal = readBaseExternal(objectInput);
        double[] dArr = this.currentState;
        int length = dArr == null ? -1 : dArr.length;
        if (length < 0) {
            this.previousState = null;
        } else {
            this.previousState = new double[length];
            for (int i10 = 0; i10 < length; i10++) {
                this.previousState[i10] = objectInput.readDouble();
            }
        }
        int readInt = objectInput.readInt();
        this.yDotK = readInt < 0 ? null : new double[readInt];
        for (int i11 = 0; i11 < readInt; i11++) {
            this.yDotK[i11] = length < 0 ? null : new double[length];
            for (int i12 = 0; i12 < length; i12++) {
                this.yDotK[i11][i12] = objectInput.readDouble();
            }
        }
        this.integrator = null;
        if (this.currentState != null) {
            setInterpolatedTime(readBaseExternal);
        } else {
            this.interpolatedTime = readBaseExternal;
        }
    }

    public void reinitialize(AbstractIntegrator abstractIntegrator, double[] dArr, double[][] dArr2, boolean z10, EquationsMapper equationsMapper, EquationsMapper[] equationsMapperArr) {
        reinitialize(dArr, z10, equationsMapper, equationsMapperArr);
        this.previousState = null;
        this.yDotK = dArr2;
        this.integrator = abstractIntegrator;
    }

    @Override
    public void shift() {
        this.previousState = (double[]) this.currentState.clone();
        super.shift();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        writeBaseExternal(objectOutput);
        double[] dArr = this.currentState;
        int length = dArr == null ? -1 : dArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            objectOutput.writeDouble(this.previousState[i10]);
        }
        double[][] dArr2 = this.yDotK;
        int length2 = dArr2 != null ? dArr2.length : -1;
        objectOutput.writeInt(length2);
        for (int i11 = 0; i11 < length2; i11++) {
            for (int i12 = 0; i12 < length; i12++) {
                objectOutput.writeDouble(this.yDotK[i11][i12]);
            }
        }
    }

    public RungeKuttaStepInterpolator(RungeKuttaStepInterpolator rungeKuttaStepInterpolator) {
        super(rungeKuttaStepInterpolator);
        if (rungeKuttaStepInterpolator.currentState != null) {
            this.previousState = (double[]) rungeKuttaStepInterpolator.previousState.clone();
            this.yDotK = new double[rungeKuttaStepInterpolator.yDotK.length];
            int i10 = 0;
            while (true) {
                double[][] dArr = rungeKuttaStepInterpolator.yDotK;
                if (i10 >= dArr.length) {
                    break;
                }
                this.yDotK[i10] = (double[]) dArr[i10].clone();
                i10++;
            }
        } else {
            this.previousState = null;
            this.yDotK = null;
        }
        this.integrator = null;
    }
}
