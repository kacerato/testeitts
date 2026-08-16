package org.apache.commons.math3.ode;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeIntegrator;
import org.apache.commons.math3.ode.nonstiff.DormandPrince853Integrator;
import org.apache.commons.math3.ode.sampling.StepHandler;
import org.apache.commons.math3.ode.sampling.StepInterpolator;
import org.apache.commons.math3.util.FastMath;

public abstract class MultistepIntegrator extends AdaptiveStepsizeIntegrator {
    private double exp;
    private double maxGrowth;
    private double minReduction;
    private final int nSteps;
    protected Array2DRowRealMatrix nordsieck;
    private double safety;
    protected double[] scaled;
    private FirstOrderIntegrator starter;

    public static class InitializationCompletedMarkerException extends RuntimeException {
        private static final long serialVersionUID = -1914085471038046418L;

        public InitializationCompletedMarkerException() {
            super((Throwable) null);
        }
    }

    public class NordsieckInitializer implements StepHandler {
        private int count = 0;

        private final double[] f100227t;

        private final double[][] f100228y;
        private final double[][] yDot;

        public NordsieckInitializer(int i10, int i11) {
            this.f100227t = new double[i10];
            Class<Double> cls = Double.TYPE;
            this.f100228y = (double[][]) Array.newInstance(cls, i10, i11);
            this.yDot = (double[][]) Array.newInstance(cls, i10, i11);
        }

        @Override
        public void handleStep(StepInterpolator stepInterpolator, boolean z10) throws MaxCountExceededException {
            MultistepIntegrator multistepIntegrator;
            double previousTime = stepInterpolator.getPreviousTime();
            double currentTime = stepInterpolator.getCurrentTime();
            int i10 = 0;
            if (this.count == 0) {
                stepInterpolator.setInterpolatedTime(previousTime);
                this.f100227t[0] = previousTime;
                ExpandableStatefulODE expandable = MultistepIntegrator.this.getExpandable();
                EquationsMapper primaryMapper = expandable.getPrimaryMapper();
                primaryMapper.insertEquationData(stepInterpolator.getInterpolatedState(), this.f100228y[this.count]);
                primaryMapper.insertEquationData(stepInterpolator.getInterpolatedDerivatives(), this.yDot[this.count]);
                int i11 = 0;
                for (EquationsMapper equationsMapper : expandable.getSecondaryMappers()) {
                    equationsMapper.insertEquationData(stepInterpolator.getInterpolatedSecondaryState(i11), this.f100228y[this.count]);
                    equationsMapper.insertEquationData(stepInterpolator.getInterpolatedSecondaryDerivatives(i11), this.yDot[this.count]);
                    i11++;
                }
            }
            this.count++;
            stepInterpolator.setInterpolatedTime(currentTime);
            this.f100227t[this.count] = currentTime;
            ExpandableStatefulODE expandable2 = MultistepIntegrator.this.getExpandable();
            EquationsMapper primaryMapper2 = expandable2.getPrimaryMapper();
            primaryMapper2.insertEquationData(stepInterpolator.getInterpolatedState(), this.f100228y[this.count]);
            primaryMapper2.insertEquationData(stepInterpolator.getInterpolatedDerivatives(), this.yDot[this.count]);
            int i12 = 0;
            for (EquationsMapper equationsMapper2 : expandable2.getSecondaryMappers()) {
                equationsMapper2.insertEquationData(stepInterpolator.getInterpolatedSecondaryState(i12), this.f100228y[this.count]);
                equationsMapper2.insertEquationData(stepInterpolator.getInterpolatedSecondaryDerivatives(i12), this.yDot[this.count]);
                i12++;
            }
            int i13 = this.count;
            double[] dArr = this.f100227t;
            if (i13 == dArr.length - 1) {
                MultistepIntegrator multistepIntegrator2 = MultistepIntegrator.this;
                double d10 = dArr[0];
                multistepIntegrator2.stepStart = d10;
                multistepIntegrator2.stepSize = (dArr[dArr.length - 1] - d10) / (dArr.length - 1);
                multistepIntegrator2.scaled = (double[]) this.yDot[0].clone();
                while (true) {
                    multistepIntegrator = MultistepIntegrator.this;
                    double[] dArr2 = multistepIntegrator.scaled;
                    if (i10 >= dArr2.length) {
                        break;
                    }
                    dArr2[i10] = dArr2[i10] * multistepIntegrator.stepSize;
                    i10++;
                }
                multistepIntegrator.nordsieck = multistepIntegrator.initializeHighOrderDerivatives(multistepIntegrator.stepSize, this.f100227t, this.f100228y, this.yDot);
                throw new InitializationCompletedMarkerException();
            }
        }

        @Override
        public void init(double d10, double[] dArr, double d11) {
        }
    }

    @Deprecated
    public interface NordsieckTransformer {
        Array2DRowRealMatrix initializeHighOrderDerivatives(double d10, double[] dArr, double[][] dArr2, double[][] dArr3);
    }

    public MultistepIntegrator(String str, int i10, int i11, double d10, double d11, double d12, double d13) throws NumberIsTooSmallException {
        super(str, d10, d11, d12, d13);
        if (i10 >= 2) {
            this.starter = new DormandPrince853Integrator(d10, d11, d12, d13);
            this.nSteps = i10;
            this.exp = (-1.0d) / i11;
            setSafety(0.9d);
            setMinReduction(0.2d);
            setMaxGrowth(FastMath.pow(2.0d, -this.exp));
            return;
        }
        throw new NumberIsTooSmallException(LocalizedFormats.INTEGRATION_METHOD_NEEDS_AT_LEAST_TWO_PREVIOUS_POINTS, Integer.valueOf(i10), 2, true);
    }

    public double computeStepGrowShrinkFactor(double d10) {
        return FastMath.min(this.maxGrowth, FastMath.max(this.minReduction, this.safety * FastMath.pow(d10, this.exp)));
    }

    public double getMaxGrowth() {
        return this.maxGrowth;
    }

    public double getMinReduction() {
        return this.minReduction;
    }

    public int getNSteps() {
        return this.nSteps;
    }

    public double getSafety() {
        return this.safety;
    }

    public ODEIntegrator getStarterIntegrator() {
        return this.starter;
    }

    public abstract Array2DRowRealMatrix initializeHighOrderDerivatives(double d10, double[] dArr, double[][] dArr2, double[][] dArr3);

    public void setMaxGrowth(double d10) {
        this.maxGrowth = d10;
    }

    public void setMinReduction(double d10) {
        this.minReduction = d10;
    }

    public void setSafety(double d10) {
        this.safety = d10;
    }

    public void setStarterIntegrator(FirstOrderIntegrator firstOrderIntegrator) {
        this.starter = firstOrderIntegrator;
    }

    public void start(double d10, double[] dArr, double d11) throws DimensionMismatchException, NumberIsTooSmallException, MaxCountExceededException, NoBracketingException {
        this.starter.clearEventHandlers();
        this.starter.clearStepHandlers();
        this.starter.addStepHandler(new NordsieckInitializer((this.nSteps + 3) / 2, dArr.length));
        try {
            FirstOrderIntegrator firstOrderIntegrator = this.starter;
            if (firstOrderIntegrator instanceof AbstractIntegrator) {
                ((AbstractIntegrator) firstOrderIntegrator).integrate(getExpandable(), d11);
            } else {
                firstOrderIntegrator.integrate(new FirstOrderDifferentialEquations() {
                    @Override
                    public void computeDerivatives(double d12, double[] dArr2, double[] dArr3) {
                        MultistepIntegrator.this.getExpandable().computeDerivatives(d12, dArr2, dArr3);
                    }

                    @Override
                    public int getDimension() {
                        return MultistepIntegrator.this.getExpandable().getTotalDimension();
                    }
                }, d10, dArr, d11, new double[dArr.length]);
            }
            throw new MathIllegalStateException(LocalizedFormats.MULTISTEP_STARTER_STOPPED_EARLY, new Object[0]);
        } catch (InitializationCompletedMarkerException unused) {
            getCounter().increment(this.starter.getEvaluations());
            this.starter.clearStepHandlers();
        }
    }

    public MultistepIntegrator(String str, int i10, int i11, double d10, double d11, double[] dArr, double[] dArr2) {
        super(str, d10, d11, dArr, dArr2);
        this.starter = new DormandPrince853Integrator(d10, d11, dArr, dArr2);
        this.nSteps = i10;
        this.exp = (-1.0d) / i11;
        setSafety(0.9d);
        setMinReduction(0.2d);
        setMaxGrowth(FastMath.pow(2.0d, -this.exp));
    }
}
