package org.apache.commons.math3.optim.linear;

import java.util.ArrayList;
import org.apache.commons.math3.exception.TooManyIterationsException;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

public class SimplexSolver extends LinearOptimizer {
    static final double DEFAULT_CUT_OFF = 1.0E-10d;
    private static final double DEFAULT_EPSILON = 1.0E-6d;
    static final int DEFAULT_ULPS = 10;
    private final double cutOff;
    private final double epsilon;
    private final int maxUlps;
    private PivotSelectionRule pivotSelection;
    private SolutionCallback solutionCallback;

    public SimplexSolver() {
        this(1.0E-6d, 10, 1.0E-10d);
    }

    private Integer getPivotColumn(SimplexTableau simplexTableau) {
        double d10 = 0.0d;
        Integer num = null;
        for (int numObjectiveFunctions = simplexTableau.getNumObjectiveFunctions(); numObjectiveFunctions < simplexTableau.getWidth() - 1; numObjectiveFunctions++) {
            double entry = simplexTableau.getEntry(0, numObjectiveFunctions);
            if (entry < d10) {
                num = Integer.valueOf(numObjectiveFunctions);
                if (this.pivotSelection == PivotSelectionRule.BLAND && isValidPivotColumn(simplexTableau, numObjectiveFunctions)) {
                    break;
                }
                d10 = entry;
            }
        }
        return num;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Integer getPivotRow(SimplexTableau simplexTableau, int i10) {
        ArrayList<Integer> arrayList = new ArrayList();
        double d10 = Double.MAX_VALUE;
        for (int numObjectiveFunctions = simplexTableau.getNumObjectiveFunctions(); numObjectiveFunctions < simplexTableau.getHeight(); numObjectiveFunctions++) {
            double entry = simplexTableau.getEntry(numObjectiveFunctions, simplexTableau.getWidth() - 1);
            double entry2 = simplexTableau.getEntry(numObjectiveFunctions, i10);
            if (Precision.compareTo(entry2, 0.0d, this.cutOff) > 0) {
                double abs = FastMath.abs(entry / entry2);
                int compare = Double.compare(abs, d10);
                if (compare == 0) {
                    arrayList.add(Integer.valueOf(numObjectiveFunctions));
                } else if (compare < 0) {
                    arrayList.clear();
                    arrayList.add(Integer.valueOf(numObjectiveFunctions));
                    d10 = abs;
                }
            }
        }
        Integer num = null;
        if (arrayList.size() == 0) {
            return null;
        }
        if (arrayList.size() <= 1) {
            return (Integer) arrayList.get(0);
        }
        if (simplexTableau.getNumArtificialVariables() > 0) {
            for (Integer num2 : arrayList) {
                for (int i11 = 0; i11 < simplexTableau.getNumArtificialVariables(); i11++) {
                    int artificialVariableOffset = simplexTableau.getArtificialVariableOffset() + i11;
                    if (Precision.equals(simplexTableau.getEntry(num2.intValue(), artificialVariableOffset), 1.0d, this.maxUlps) && num2.equals(simplexTableau.getBasicRow(artificialVariableOffset))) {
                        return num2;
                    }
                }
            }
        }
        int width = simplexTableau.getWidth();
        for (Integer num3 : arrayList) {
            int basicVariable = simplexTableau.getBasicVariable(num3.intValue());
            if (basicVariable < width) {
                num = num3;
                width = basicVariable;
            }
        }
        return num;
    }

    private boolean isValidPivotColumn(SimplexTableau simplexTableau, int i10) {
        for (int numObjectiveFunctions = simplexTableau.getNumObjectiveFunctions(); numObjectiveFunctions < simplexTableau.getHeight(); numObjectiveFunctions++) {
            if (Precision.compareTo(simplexTableau.getEntry(numObjectiveFunctions, i10), 0.0d, this.cutOff) > 0) {
                return true;
            }
        }
        return false;
    }

    public void doIteration(SimplexTableau simplexTableau) throws TooManyIterationsException, UnboundedSolutionException {
        incrementIterationCount();
        Integer pivotColumn = getPivotColumn(simplexTableau);
        Integer pivotRow = getPivotRow(simplexTableau, pivotColumn.intValue());
        if (pivotRow == null) {
            throw new UnboundedSolutionException();
        }
        simplexTableau.performRowOperations(pivotColumn.intValue(), pivotRow.intValue());
    }

    @Override
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        this.solutionCallback = null;
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof SolutionCallback) {
                this.solutionCallback = (SolutionCallback) optimizationData;
            } else if (optimizationData instanceof PivotSelectionRule) {
                this.pivotSelection = (PivotSelectionRule) optimizationData;
            }
        }
    }

    public void solvePhase1(SimplexTableau simplexTableau) throws TooManyIterationsException, UnboundedSolutionException, NoFeasibleSolutionException {
        if (simplexTableau.getNumArtificialVariables() == 0) {
            return;
        }
        while (!simplexTableau.isOptimal()) {
            doIteration(simplexTableau);
        }
        if (!Precision.equals(simplexTableau.getEntry(0, simplexTableau.getRhsOffset()), 0.0d, this.epsilon)) {
            throw new NoFeasibleSolutionException();
        }
    }

    public SimplexSolver(double d10) {
        this(d10, 10, 1.0E-10d);
    }

    @Override
    public PointValuePair doOptimize() throws TooManyIterationsException, UnboundedSolutionException, NoFeasibleSolutionException {
        SolutionCallback solutionCallback = this.solutionCallback;
        if (solutionCallback != null) {
            solutionCallback.setTableau(null);
        }
        SimplexTableau simplexTableau = new SimplexTableau(getFunction(), getConstraints(), getGoalType(), isRestrictedToNonNegative(), this.epsilon, this.maxUlps);
        solvePhase1(simplexTableau);
        simplexTableau.dropPhase1Objective();
        SolutionCallback solutionCallback2 = this.solutionCallback;
        if (solutionCallback2 != null) {
            solutionCallback2.setTableau(simplexTableau);
        }
        while (!simplexTableau.isOptimal()) {
            doIteration(simplexTableau);
        }
        PointValuePair solution = simplexTableau.getSolution();
        if (isRestrictedToNonNegative()) {
            for (double d10 : solution.getPoint()) {
                if (Precision.compareTo(d10, 0.0d, this.epsilon) < 0) {
                    throw new NoFeasibleSolutionException();
                }
            }
        }
        return solution;
    }

    @Override
    public PointValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyIterationsException {
        return super.optimize(optimizationDataArr);
    }

    public SimplexSolver(double d10, int i10) {
        this(d10, i10, 1.0E-10d);
    }

    public SimplexSolver(double d10, int i10, double d11) {
        this.epsilon = d10;
        this.maxUlps = i10;
        this.cutOff = d11;
        this.pivotSelection = PivotSelectionRule.DANTZIG;
    }
}
