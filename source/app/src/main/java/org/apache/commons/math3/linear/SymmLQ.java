package org.apache.commons.math3.linear;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.ExceptionContext;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.IterationManager;
import org.apache.commons.math3.util.MathUtils;

public class SymmLQ extends PreconditionedIterativeLinearSolver {
    private static final String OPERATOR = "operator";
    private static final String THRESHOLD = "threshold";
    private static final String VECTOR = "vector";
    private static final String VECTOR1 = "vector1";
    private static final String VECTOR2 = "vector2";
    private final boolean check;
    private final double delta;

    public static class State {
        static final double CBRT_MACH_PREC;
        static final double MACH_PREC;

        private final RealLinearOperator f100213a;

        private final RealVector f100214b;
        private boolean bIsNull;
        private double beta;
        private double beta1;
        private double bstep;
        private double cgnorm;
        private final boolean check;
        private double dbar;
        private final double delta;
        private double gammaZeta;
        private double gbar;
        private double gmax;
        private double gmin;
        private final boolean goodb;
        private boolean hasConverged;
        private double lqnorm;

        private final RealLinearOperator f100215m;

        private final RealVector f100216mb;
        private double minusEpsZeta;
        private double oldb;

        private RealVector f100217r1;

        private RealVector f100218r2;
        private double rnorm;
        private final double shift;
        private double snprod;
        private double tnorm;
        private RealVector wbar;
        private final RealVector xL;

        private RealVector f100219y;
        private double ynorm2;

        static {
            double ulp = FastMath.ulp(1.0d);
            MACH_PREC = ulp;
            CBRT_MACH_PREC = FastMath.cbrt(ulp);
        }

        public State(RealLinearOperator realLinearOperator, RealLinearOperator realLinearOperator2, RealVector realVector, boolean z10, double d10, double d11, boolean z11) {
            this.f100213a = realLinearOperator;
            this.f100215m = realLinearOperator2;
            this.f100214b = realVector;
            this.xL = new ArrayRealVector(realVector.getDimension());
            this.goodb = z10;
            this.shift = d10;
            this.f100216mb = realLinearOperator2 != null ? realLinearOperator2.operate(realVector) : realVector;
            this.hasConverged = false;
            this.check = z11;
            this.delta = d11;
        }

        private static void checkSymmetry(RealLinearOperator realLinearOperator, RealVector realVector, RealVector realVector2, RealVector realVector3) throws NonSelfAdjointOperatorException {
            double dotProduct = realVector2.dotProduct(realVector2);
            double dotProduct2 = realVector.dotProduct(realVector3);
            double d10 = (MACH_PREC + dotProduct) * CBRT_MACH_PREC;
            if (FastMath.abs(dotProduct - dotProduct2) <= d10) {
                return;
            }
            NonSelfAdjointOperatorException nonSelfAdjointOperatorException = new NonSelfAdjointOperatorException();
            ExceptionContext context = nonSelfAdjointOperatorException.getContext();
            context.setValue("operator", realLinearOperator);
            context.setValue(SymmLQ.VECTOR1, realVector);
            context.setValue(SymmLQ.VECTOR2, realVector2);
            context.setValue(SymmLQ.THRESHOLD, Double.valueOf(d10));
            throw nonSelfAdjointOperatorException;
        }

        private static void daxpbypz(double d10, RealVector realVector, double d11, RealVector realVector2, RealVector realVector3) {
            int dimension = realVector3.getDimension();
            for (int i10 = 0; i10 < dimension; i10++) {
                realVector3.setEntry(i10, (realVector.getEntry(i10) * d10) + (realVector2.getEntry(i10) * d11) + realVector3.getEntry(i10));
            }
        }

        private static void daxpy(double d10, RealVector realVector, RealVector realVector2) {
            int dimension = realVector.getDimension();
            for (int i10 = 0; i10 < dimension; i10++) {
                realVector2.setEntry(i10, (realVector.getEntry(i10) * d10) + realVector2.getEntry(i10));
            }
        }

        private static void throwNPDLOException(RealLinearOperator realLinearOperator, RealVector realVector) throws NonPositiveDefiniteOperatorException {
            NonPositiveDefiniteOperatorException nonPositiveDefiniteOperatorException = new NonPositiveDefiniteOperatorException();
            ExceptionContext context = nonPositiveDefiniteOperatorException.getContext();
            context.setValue("operator", realLinearOperator);
            context.setValue("vector", realVector);
            throw nonPositiveDefiniteOperatorException;
        }

        private void updateNorms() {
            double sqrt = FastMath.sqrt(this.tnorm);
            double sqrt2 = FastMath.sqrt(this.ynorm2);
            double d10 = MACH_PREC;
            double d11 = sqrt * d10;
            double d12 = sqrt * sqrt2;
            double d13 = d12 * d10;
            double d14 = d12 * this.delta;
            double d15 = this.gbar;
            if (d15 != 0.0d) {
                d11 = d15;
            }
            double d16 = this.gammaZeta;
            double d17 = this.minusEpsZeta;
            this.lqnorm = FastMath.sqrt((d16 * d16) + (d17 * d17));
            double abs = ((this.snprod * this.beta1) * this.beta) / FastMath.abs(d11);
            this.cgnorm = abs;
            double min = this.lqnorm <= abs ? this.gmax / this.gmin : this.gmax / FastMath.min(this.gmin, FastMath.abs(d11));
            if (d10 * min >= 0.1d) {
                throw new IllConditionedOperatorException(min);
            }
            if (this.beta1 <= d13) {
                throw new SingularOperatorException();
            }
            this.rnorm = FastMath.min(this.cgnorm, this.lqnorm);
            double d18 = this.cgnorm;
            this.hasConverged = d18 <= d13 || d18 <= d14;
        }

        public boolean bEqualsNullVector() {
            return this.bIsNull;
        }

        public boolean betaEqualsZero() {
            return this.beta < MACH_PREC;
        }

        public double getNormOfResidual() {
            return this.rnorm;
        }

        public boolean hasConverged() {
            return this.hasConverged;
        }

        public void init() {
            this.xL.set(0.0d);
            RealVector copy = this.f100214b.copy();
            this.f100217r1 = copy;
            RealLinearOperator realLinearOperator = this.f100215m;
            RealVector copy2 = realLinearOperator == null ? this.f100214b.copy() : realLinearOperator.operate(copy);
            this.f100219y = copy2;
            RealLinearOperator realLinearOperator2 = this.f100215m;
            if (realLinearOperator2 != null && this.check) {
                checkSymmetry(realLinearOperator2, this.f100217r1, copy2, realLinearOperator2.operate(copy2));
            }
            double dotProduct = this.f100217r1.dotProduct(this.f100219y);
            this.beta1 = dotProduct;
            if (dotProduct < 0.0d) {
                throwNPDLOException(this.f100215m, this.f100219y);
            }
            double d10 = this.beta1;
            if (d10 == 0.0d) {
                this.bIsNull = true;
                return;
            }
            this.bIsNull = false;
            double sqrt = FastMath.sqrt(d10);
            this.beta1 = sqrt;
            RealVector mapMultiply = this.f100219y.mapMultiply(1.0d / sqrt);
            RealVector operate = this.f100213a.operate(mapMultiply);
            this.f100219y = operate;
            if (this.check) {
                RealLinearOperator realLinearOperator3 = this.f100213a;
                checkSymmetry(realLinearOperator3, mapMultiply, operate, realLinearOperator3.operate(operate));
            }
            daxpy(-this.shift, mapMultiply, this.f100219y);
            double dotProduct2 = mapMultiply.dotProduct(this.f100219y);
            daxpy((-dotProduct2) / this.beta1, this.f100217r1, this.f100219y);
            daxpy((-mapMultiply.dotProduct(this.f100219y)) / mapMultiply.dotProduct(mapMultiply), mapMultiply, this.f100219y);
            RealVector copy3 = this.f100219y.copy();
            this.f100218r2 = copy3;
            RealLinearOperator realLinearOperator4 = this.f100215m;
            if (realLinearOperator4 != null) {
                this.f100219y = realLinearOperator4.operate(copy3);
            }
            this.oldb = this.beta1;
            double dotProduct3 = this.f100218r2.dotProduct(this.f100219y);
            this.beta = dotProduct3;
            if (dotProduct3 < 0.0d) {
                throwNPDLOException(this.f100215m, this.f100219y);
            }
            double sqrt2 = FastMath.sqrt(this.beta);
            this.beta = sqrt2;
            double d11 = this.beta1;
            this.cgnorm = d11;
            this.gbar = dotProduct2;
            this.dbar = sqrt2;
            this.gammaZeta = d11;
            this.minusEpsZeta = 0.0d;
            this.bstep = 0.0d;
            this.snprod = 1.0d;
            this.tnorm = (dotProduct2 * dotProduct2) + (sqrt2 * sqrt2);
            this.ynorm2 = 0.0d;
            double abs = FastMath.abs(dotProduct2) + MACH_PREC;
            this.gmax = abs;
            this.gmin = abs;
            if (this.goodb) {
                ArrayRealVector arrayRealVector = new ArrayRealVector(this.f100213a.getRowDimension());
                this.wbar = arrayRealVector;
                arrayRealVector.set(0.0d);
            } else {
                this.wbar = mapMultiply;
            }
            updateNorms();
        }

        public void refineSolution(RealVector realVector) {
            int dimension = this.xL.getDimension();
            int i10 = 0;
            if (this.lqnorm < this.cgnorm) {
                if (!this.goodb) {
                    realVector.setSubVector(0, this.xL);
                    return;
                }
                double d10 = this.bstep / this.beta1;
                while (i10 < dimension) {
                    realVector.setEntry(i10, this.xL.getEntry(i10) + (this.f100216mb.getEntry(i10) * d10));
                    i10++;
                }
                return;
            }
            double sqrt = FastMath.sqrt(this.tnorm);
            double d11 = this.gbar;
            if (d11 == 0.0d) {
                d11 = MACH_PREC * sqrt;
            }
            double d12 = this.gammaZeta / d11;
            double d13 = (this.bstep + (this.snprod * d12)) / this.beta1;
            if (!this.goodb) {
                while (i10 < dimension) {
                    realVector.setEntry(i10, this.xL.getEntry(i10) + (this.wbar.getEntry(i10) * d12));
                    i10++;
                }
            } else {
                while (i10 < dimension) {
                    realVector.setEntry(i10, this.xL.getEntry(i10) + (this.wbar.getEntry(i10) * d12) + (this.f100216mb.getEntry(i10) * d13));
                    i10++;
                }
            }
        }

        public void update() {
            RealVector mapMultiply = this.f100219y.mapMultiply(1.0d / this.beta);
            RealVector operate = this.f100213a.operate(mapMultiply);
            this.f100219y = operate;
            daxpbypz(-this.shift, mapMultiply, (-this.beta) / this.oldb, this.f100217r1, operate);
            double dotProduct = mapMultiply.dotProduct(this.f100219y);
            daxpy((-dotProduct) / this.beta, this.f100218r2, this.f100219y);
            this.f100217r1 = this.f100218r2;
            RealVector realVector = this.f100219y;
            this.f100218r2 = realVector;
            RealLinearOperator realLinearOperator = this.f100215m;
            if (realLinearOperator != null) {
                this.f100219y = realLinearOperator.operate(realVector);
            }
            this.oldb = this.beta;
            double dotProduct2 = this.f100218r2.dotProduct(this.f100219y);
            this.beta = dotProduct2;
            if (dotProduct2 < 0.0d) {
                throwNPDLOException(this.f100215m, this.f100219y);
            }
            double sqrt = FastMath.sqrt(this.beta);
            this.beta = sqrt;
            double d10 = this.tnorm;
            double d11 = this.oldb;
            this.tnorm = d10 + (dotProduct * dotProduct) + (d11 * d11) + (sqrt * sqrt);
            double d12 = this.gbar;
            double sqrt2 = FastMath.sqrt((d12 * d12) + (d11 * d11));
            double d13 = this.gbar / sqrt2;
            double d14 = this.oldb / sqrt2;
            double d15 = this.dbar;
            double d16 = (d13 * d15) + (d14 * dotProduct);
            this.gbar = (d15 * d14) - (dotProduct * d13);
            double d17 = this.beta;
            double d18 = d14 * d17;
            this.dbar = (-d13) * d17;
            double d19 = this.gammaZeta / sqrt2;
            double d20 = d19 * d13;
            double d21 = d19 * d14;
            int dimension = this.xL.getDimension();
            int i10 = 0;
            while (i10 < dimension) {
                double entry = this.xL.getEntry(i10);
                double entry2 = mapMultiply.getEntry(i10);
                double entry3 = this.wbar.getEntry(i10);
                this.xL.setEntry(i10, entry + (entry3 * d20) + (entry2 * d21));
                this.wbar.setEntry(i10, (entry3 * d14) - (entry2 * d13));
                i10++;
                dimension = dimension;
                d20 = d20;
            }
            double d22 = this.bstep;
            double d23 = this.snprod;
            this.bstep = d22 + (d13 * d23 * d19);
            this.snprod = d23 * d14;
            this.gmax = FastMath.max(this.gmax, sqrt2);
            this.gmin = FastMath.min(this.gmin, sqrt2);
            this.ynorm2 += d19 * d19;
            this.gammaZeta = this.minusEpsZeta - (d16 * d19);
            this.minusEpsZeta = (-d18) * d19;
            updateNorms();
        }
    }

    public SymmLQ(int i10, double d10, boolean z10) {
        super(i10);
        this.delta = d10;
        this.check = z10;
    }

    public final boolean getCheck() {
        return this.check;
    }

    @Override
    public RealVector solve(RealLinearOperator realLinearOperator, RealLinearOperator realLinearOperator2, RealVector realVector) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, MaxCountExceededException, NonSelfAdjointOperatorException, NonPositiveDefiniteOperatorException, IllConditionedOperatorException {
        MathUtils.checkNotNull(realLinearOperator);
        return solveInPlace(realLinearOperator, realLinearOperator2, realVector, new ArrayRealVector(realLinearOperator.getColumnDimension()), false, 0.0d);
    }

    @Override
    public RealVector solveInPlace(RealLinearOperator realLinearOperator, RealLinearOperator realLinearOperator2, RealVector realVector, RealVector realVector2) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, NonSelfAdjointOperatorException, NonPositiveDefiniteOperatorException, IllConditionedOperatorException, MaxCountExceededException {
        return solveInPlace(realLinearOperator, realLinearOperator2, realVector, realVector2, false, 0.0d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0062, code lost:
    
        if (r0 == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0064, code lost:
    
        r9.incrementIterationCount();
        r9.fireIterationStartedEvent(new org.apache.commons.math3.linear.DefaultIterativeLinearSolverEvent(r20, r9.getIterations(), r24, r23, r5.getNormOfResidual()));
        r5.update();
        r5.refineSolution(r24);
        r9.fireIterationPerformedEvent(new org.apache.commons.math3.linear.DefaultIterativeLinearSolverEvent(r20, r9.getIterations(), r24, r23, r5.getNormOfResidual()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0099, code lost:
    
        if (r5.hasConverged() == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x009b, code lost:
    
        r9.fireTerminationEvent(new org.apache.commons.math3.linear.DefaultIterativeLinearSolverEvent(r20, r9.getIterations(), r24, r23, r5.getNormOfResidual()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b2, code lost:
    
        return r24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RealVector solveInPlace(RealLinearOperator realLinearOperator, RealLinearOperator realLinearOperator2, RealVector realVector, RealVector realVector2, boolean z10, double d10) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, NonSelfAdjointOperatorException, NonPositiveDefiniteOperatorException, IllConditionedOperatorException, MaxCountExceededException {
        PreconditionedIterativeLinearSolver.checkParameters(realLinearOperator, realLinearOperator2, realVector, realVector2);
        IterationManager iterationManager = getIterationManager();
        iterationManager.resetIterationCount();
        iterationManager.incrementIterationCount();
        State state = new State(realLinearOperator, realLinearOperator2, realVector, z10, d10, this.delta, this.check);
        state.init();
        state.refineSolution(realVector2);
        DefaultIterativeLinearSolverEvent defaultIterativeLinearSolverEvent = new DefaultIterativeLinearSolverEvent(this, iterationManager.getIterations(), realVector2, realVector, state.getNormOfResidual());
        if (state.bEqualsNullVector()) {
            iterationManager.fireTerminationEvent(defaultIterativeLinearSolverEvent);
            return realVector2;
        }
        boolean z11 = state.betaEqualsZero() || state.hasConverged();
        iterationManager.fireInitializationEvent(defaultIterativeLinearSolverEvent);
    }

    public SymmLQ(IterationManager iterationManager, double d10, boolean z10) {
        super(iterationManager);
        this.delta = d10;
        this.check = z10;
    }

    public RealVector solve(RealLinearOperator realLinearOperator, RealLinearOperator realLinearOperator2, RealVector realVector, boolean z10, double d10) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, MaxCountExceededException, NonSelfAdjointOperatorException, NonPositiveDefiniteOperatorException, IllConditionedOperatorException {
        MathUtils.checkNotNull(realLinearOperator);
        return solveInPlace(realLinearOperator, realLinearOperator2, realVector, new ArrayRealVector(realLinearOperator.getColumnDimension()), z10, d10);
    }

    @Override
    public RealVector solve(RealLinearOperator realLinearOperator, RealLinearOperator realLinearOperator2, RealVector realVector, RealVector realVector2) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, NonSelfAdjointOperatorException, NonPositiveDefiniteOperatorException, IllConditionedOperatorException, MaxCountExceededException {
        MathUtils.checkNotNull(realVector2);
        return solveInPlace(realLinearOperator, realLinearOperator2, realVector, realVector2.copy(), false, 0.0d);
    }

    @Override
    public RealVector solve(RealLinearOperator realLinearOperator, RealVector realVector) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, NonSelfAdjointOperatorException, IllConditionedOperatorException, MaxCountExceededException {
        MathUtils.checkNotNull(realLinearOperator);
        ArrayRealVector arrayRealVector = new ArrayRealVector(realLinearOperator.getColumnDimension());
        arrayRealVector.set(0.0d);
        return solveInPlace(realLinearOperator, null, realVector, arrayRealVector, false, 0.0d);
    }

    public RealVector solve(RealLinearOperator realLinearOperator, RealVector realVector, boolean z10, double d10) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, NonSelfAdjointOperatorException, IllConditionedOperatorException, MaxCountExceededException {
        MathUtils.checkNotNull(realLinearOperator);
        return solveInPlace(realLinearOperator, null, realVector, new ArrayRealVector(realLinearOperator.getColumnDimension()), z10, d10);
    }

    @Override
    public RealVector solve(RealLinearOperator realLinearOperator, RealVector realVector, RealVector realVector2) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, NonSelfAdjointOperatorException, IllConditionedOperatorException, MaxCountExceededException {
        MathUtils.checkNotNull(realVector2);
        return solveInPlace(realLinearOperator, null, realVector, realVector2.copy(), false, 0.0d);
    }

    @Override
    public RealVector solveInPlace(RealLinearOperator realLinearOperator, RealVector realVector, RealVector realVector2) throws NullArgumentException, NonSquareOperatorException, DimensionMismatchException, NonSelfAdjointOperatorException, IllConditionedOperatorException, MaxCountExceededException {
        return solveInPlace(realLinearOperator, null, realVector, realVector2, false, 0.0d);
    }
}
