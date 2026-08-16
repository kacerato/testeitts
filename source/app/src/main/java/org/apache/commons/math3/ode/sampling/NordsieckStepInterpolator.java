package org.apache.commons.math3.ode.sampling;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.util.FastMath;

public class NordsieckStepInterpolator extends AbstractStepInterpolator {
    private static final long serialVersionUID = -7179861704951334960L;
    private Array2DRowRealMatrix nordsieck;
    private double referenceTime;
    private double[] scaled;
    private double scalingH;
    protected double[] stateVariation;

    public NordsieckStepInterpolator() {
    }

    @Override
    public void computeInterpolatedStateAndDerivatives(double d10, double d11) {
        int i10;
        double d12 = this.interpolatedTime - this.referenceTime;
        double d13 = d12 / this.scalingH;
        Arrays.fill(this.stateVariation, 0.0d);
        Arrays.fill(this.interpolatedDerivatives, 0.0d);
        double[][] dataRef = this.nordsieck.getDataRef();
        int length = dataRef.length;
        while (true) {
            length--;
            i10 = 0;
            if (length < 0) {
                break;
            }
            int i11 = length + 2;
            double[] dArr = dataRef[length];
            double pow = FastMath.pow(d13, i11);
            while (i10 < dArr.length) {
                double d14 = dArr[i10] * pow;
                double[] dArr2 = this.stateVariation;
                dArr2[i10] = dArr2[i10] + d14;
                double[] dArr3 = this.interpolatedDerivatives;
                dArr3[i10] = dArr3[i10] + (i11 * d14);
                i10++;
                dArr = dArr;
                pow = pow;
            }
        }
        while (true) {
            double[] dArr4 = this.currentState;
            if (i10 >= dArr4.length) {
                return;
            }
            double[] dArr5 = this.stateVariation;
            double d15 = dArr5[i10];
            double[] dArr6 = this.scaled;
            double d16 = d15 + (dArr6[i10] * d13);
            dArr5[i10] = d16;
            this.interpolatedState[i10] = dArr4[i10] + d16;
            double[] dArr7 = this.interpolatedDerivatives;
            dArr7[i10] = (dArr7[i10] + (dArr6[i10] * d13)) / d12;
            i10++;
        }
    }

    @Override
    public StepInterpolator doCopy() {
        return new NordsieckStepInterpolator(this);
    }

    public double[] getInterpolatedStateVariation() throws MaxCountExceededException {
        getInterpolatedState();
        return this.stateVariation;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        double readBaseExternal = readBaseExternal(objectInput);
        this.scalingH = objectInput.readDouble();
        this.referenceTime = objectInput.readDouble();
        double[] dArr = this.currentState;
        int length = dArr == null ? -1 : dArr.length;
        boolean readBoolean = objectInput.readBoolean();
        if (readBoolean) {
            this.scaled = new double[length];
            for (int i10 = 0; i10 < length; i10++) {
                this.scaled[i10] = objectInput.readDouble();
            }
        } else {
            this.scaled = null;
        }
        boolean readBoolean2 = objectInput.readBoolean();
        if (readBoolean2) {
            this.nordsieck = (Array2DRowRealMatrix) objectInput.readObject();
        } else {
            this.nordsieck = null;
        }
        if (readBoolean && readBoolean2) {
            this.stateVariation = new double[length];
            setInterpolatedTime(readBaseExternal);
        } else {
            this.stateVariation = null;
        }
    }

    @Override
    public void reinitialize(double[] dArr, boolean z10, EquationsMapper equationsMapper, EquationsMapper[] equationsMapperArr) {
        super.reinitialize(dArr, z10, equationsMapper, equationsMapperArr);
        this.stateVariation = new double[dArr.length];
    }

    public void rescale(double d10) {
        double d11 = d10 / this.scalingH;
        int i10 = 0;
        while (true) {
            double[] dArr = this.scaled;
            if (i10 >= dArr.length) {
                break;
            }
            dArr[i10] = dArr[i10] * d11;
            i10++;
        }
        double d12 = d11;
        for (double[] dArr2 : this.nordsieck.getDataRef()) {
            d12 *= d11;
            for (int i11 = 0; i11 < dArr2.length; i11++) {
                dArr2[i11] = dArr2[i11] * d12;
            }
        }
        this.scalingH = d10;
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        writeBaseExternal(objectOutput);
        objectOutput.writeDouble(this.scalingH);
        objectOutput.writeDouble(this.referenceTime);
        double[] dArr = this.currentState;
        int length = dArr == null ? -1 : dArr.length;
        if (this.scaled == null) {
            objectOutput.writeBoolean(false);
        } else {
            objectOutput.writeBoolean(true);
            for (int i10 = 0; i10 < length; i10++) {
                objectOutput.writeDouble(this.scaled[i10]);
            }
        }
        if (this.nordsieck == null) {
            objectOutput.writeBoolean(false);
        } else {
            objectOutput.writeBoolean(true);
            objectOutput.writeObject(this.nordsieck);
        }
    }

    public NordsieckStepInterpolator(NordsieckStepInterpolator nordsieckStepInterpolator) {
        super(nordsieckStepInterpolator);
        this.scalingH = nordsieckStepInterpolator.scalingH;
        this.referenceTime = nordsieckStepInterpolator.referenceTime;
        double[] dArr = nordsieckStepInterpolator.scaled;
        if (dArr != null) {
            this.scaled = (double[]) dArr.clone();
        }
        if (nordsieckStepInterpolator.nordsieck != null) {
            this.nordsieck = new Array2DRowRealMatrix(nordsieckStepInterpolator.nordsieck.getDataRef(), true);
        }
        double[] dArr2 = nordsieckStepInterpolator.stateVariation;
        if (dArr2 != null) {
            this.stateVariation = (double[]) dArr2.clone();
        }
    }

    public void reinitialize(double d10, double d11, double[] dArr, Array2DRowRealMatrix array2DRowRealMatrix) {
        this.referenceTime = d10;
        this.scalingH = d11;
        this.scaled = dArr;
        this.nordsieck = array2DRowRealMatrix;
        setInterpolatedTime(getInterpolatedTime());
    }
}
