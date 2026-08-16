package org.apache.commons.math3.optimization.linear;

import java.util.ArrayList;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.util.Precision;

@Deprecated
public class SimplexSolver extends AbstractLinearOptimizer {
    private static final double DEFAULT_EPSILON = 1.0E-6d;
    private static final int DEFAULT_ULPS = 10;
    private final double epsilon;
    private final int maxUlps;

    public SimplexSolver() {
        this(1.0E-6d, 10);
    }

    private Integer getPivotColumn(SimplexTableau simplexTableau) {
        double d10 = 0.0d;
        Integer num = null;
        for (int numObjectiveFunctions = simplexTableau.getNumObjectiveFunctions(); numObjectiveFunctions < simplexTableau.getWidth() - 1; numObjectiveFunctions++) {
            double entry = simplexTableau.getEntry(0, numObjectiveFunctions);
            if (entry < d10) {
                num = Integer.valueOf(numObjectiveFunctions);
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
            if (Precision.compareTo(entry2, 0.0d, this.maxUlps) > 0) {
                double d11 = entry / entry2;
                int compare = Double.compare(d11, d10);
                if (compare == 0) {
                    arrayList.add(Integer.valueOf(numObjectiveFunctions));
                } else if (compare < 0) {
                    arrayList = new ArrayList();
                    arrayList.add(Integer.valueOf(numObjectiveFunctions));
                    d10 = d11;
                }
            }
        }
        Integer num = null;
        if (arrayList.size() == 0) {
            return null;
        }
        if (arrayList.size() > 1) {
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
            if (getIterations() < getMaxIterations() / 2) {
                int width = simplexTableau.getWidth();
                int numObjectiveFunctions2 = simplexTableau.getNumObjectiveFunctions();
                int width2 = simplexTableau.getWidth() - 1;
                for (Integer num3 : arrayList) {
                    for (int i12 = numObjectiveFunctions2; i12 < width2 && !num3.equals(num); i12++) {
                        Integer basicRow = simplexTableau.getBasicRow(i12);
                        if (basicRow != null && basicRow.equals(num3) && i12 < width) {
                            num = num3;
                            width = i12;
                        }
                    }
                }
                return num;
            }
        }
        return (Integer) arrayList.get(0);
    }

    public void doIteration(SimplexTableau simplexTableau) throws MaxCountExceededException, UnboundedSolutionException {
        incrementIterationsCounter();
        Integer pivotColumn = getPivotColumn(simplexTableau);
        Integer pivotRow = getPivotRow(simplexTableau, pivotColumn.intValue());
        if (pivotRow == null) {
            throw new UnboundedSolutionException();
        }
        simplexTableau.divideRow(pivotRow.intValue(), simplexTableau.getEntry(pivotRow.intValue(), pivotColumn.intValue()));
        for (int i10 = 0; i10 < simplexTableau.getHeight(); i10++) {
            if (i10 != pivotRow.intValue()) {
                simplexTableau.subtractRow(i10, pivotRow.intValue(), simplexTableau.getEntry(i10, pivotColumn.intValue()));
            }
        }
    }

    @Override
    public PointValuePair doOptimize() throws MaxCountExceededException, UnboundedSolutionException, NoFeasibleSolutionException {
        SimplexTableau simplexTableau = new SimplexTableau(getFunction(), getConstraints(), getGoalType(), restrictToNonNegative(), this.epsilon, this.maxUlps);
        solvePhase1(simplexTableau);
        simplexTableau.dropPhase1Objective();
        while (!simplexTableau.isOptimal()) {
            doIteration(simplexTableau);
        }
        return simplexTableau.getSolution();
    }

    public void solvePhase1(SimplexTableau simplexTableau) throws MaxCountExceededException, UnboundedSolutionException, NoFeasibleSolutionException {
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

    public SimplexSolver(double d10, int i10) {
        this.epsilon = d10;
        this.maxUlps = i10;
    }
}
