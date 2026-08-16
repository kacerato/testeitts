package org.apache.commons.math3.optim.linear;

import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
import org.apache.commons.math3.util.Precision;
import org.eclipse.jdt.core.Signature;

class SimplexTableau implements Serializable {
    private static final String NEGATIVE_VAR_COLUMN_LABEL = "x-";
    private static final long serialVersionUID = -1369660067587938365L;
    private int[] basicRows;
    private int[] basicVariables;
    private final List<String> columnLabels;
    private final List<LinearConstraint> constraints;
    private final double epsilon;

    private final LinearObjectiveFunction f100285f;
    private final int maxUlps;
    private int numArtificialVariables;
    private final int numDecisionVariables;
    private final int numSlackVariables;
    private final boolean restrictToNonNegative;
    private transient Array2DRowRealMatrix tableau;

    public SimplexTableau(LinearObjectiveFunction linearObjectiveFunction, Collection<LinearConstraint> collection, GoalType goalType, boolean z10, double d10) {
        this(linearObjectiveFunction, collection, goalType, z10, d10, 10);
    }

    private void copyArray(double[] dArr, double[] dArr2) {
        System.arraycopy(dArr, 0, dArr2, getNumObjectiveFunctions(), dArr.length);
    }

    private Integer findBasicRow(int i10) {
        Integer num = null;
        for (int i11 = 0; i11 < getHeight(); i11++) {
            double entry = getEntry(i11, i10);
            if (Precision.equals(entry, 1.0d, this.maxUlps) && num == null) {
                num = Integer.valueOf(i11);
            } else if (!Precision.equals(entry, 0.0d, this.maxUlps)) {
                return null;
            }
        }
        return num;
    }

    private int getConstraintTypeCounts(Relationship relationship) {
        Iterator<LinearConstraint> it = this.constraints.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (it.next().getRelationship() == relationship) {
                i10++;
            }
        }
        return i10;
    }

    public static double getInvertedCoefficientSum(RealVector realVector) {
        double d10 = 0.0d;
        for (double d11 : realVector.toArray()) {
            d10 -= d11;
        }
        return d10;
    }

    private void initializeBasicVariables(int i10) {
        this.basicVariables = new int[getWidth() - 1];
        this.basicRows = new int[getHeight()];
        Arrays.fill(this.basicVariables, -1);
        while (i10 < getWidth() - 1) {
            Integer findBasicRow = findBasicRow(i10);
            if (findBasicRow != null) {
                this.basicVariables[i10] = findBasicRow.intValue();
                this.basicRows[findBasicRow.intValue()] = i10;
            }
            i10++;
        }
    }

    private LinearConstraint normalize(LinearConstraint linearConstraint) {
        return linearConstraint.getValue() < 0.0d ? new LinearConstraint(linearConstraint.getCoefficients().mapMultiply(-1.0d), linearConstraint.getRelationship().oppositeRelationship(), linearConstraint.getValue() * (-1.0d)) : new LinearConstraint(linearConstraint.getCoefficients(), linearConstraint.getRelationship(), linearConstraint.getValue());
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        MatrixUtils.deserializeRealMatrix(this, "tableau", objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        MatrixUtils.serializeRealMatrix(this.tableau, objectOutputStream);
    }

    public Array2DRowRealMatrix createTableau(boolean z10) {
        long j10;
        int numObjectiveFunctions = this.numDecisionVariables + this.numSlackVariables + this.numArtificialVariables + getNumObjectiveFunctions();
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(this.constraints.size() + getNumObjectiveFunctions(), numObjectiveFunctions + 1);
        if (getNumObjectiveFunctions() == 2) {
            array2DRowRealMatrix.setEntry(0, 0, -1.0d);
        }
        int i10 = getNumObjectiveFunctions() == 1 ? 0 : 1;
        array2DRowRealMatrix.setEntry(i10, i10, z10 ? 1.0d : -1.0d);
        RealVector coefficients = this.f100285f.getCoefficients();
        if (z10) {
            coefficients = coefficients.mapMultiply(-1.0d);
        }
        copyArray(coefficients.toArray(), array2DRowRealMatrix.getDataRef()[i10]);
        double constantTerm = this.f100285f.getConstantTerm();
        if (!z10) {
            constantTerm *= -1.0d;
        }
        array2DRowRealMatrix.setEntry(i10, numObjectiveFunctions, constantTerm);
        if (!this.restrictToNonNegative) {
            array2DRowRealMatrix.setEntry(i10, getSlackVariableOffset() - 1, getInvertedCoefficientSum(coefficients));
        }
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < this.constraints.size(); i13++) {
            LinearConstraint linearConstraint = this.constraints.get(i13);
            int numObjectiveFunctions2 = getNumObjectiveFunctions() + i13;
            copyArray(linearConstraint.getCoefficients().toArray(), array2DRowRealMatrix.getDataRef()[numObjectiveFunctions2]);
            if (!this.restrictToNonNegative) {
                array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getSlackVariableOffset() - 1, getInvertedCoefficientSum(linearConstraint.getCoefficients()));
            }
            array2DRowRealMatrix.setEntry(numObjectiveFunctions2, numObjectiveFunctions, linearConstraint.getValue());
            if (linearConstraint.getRelationship() == Relationship.LEQ) {
                array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getSlackVariableOffset() + i11, 1.0d);
                i11++;
            } else if (linearConstraint.getRelationship() == Relationship.GEQ) {
                j10 = -4616189618054758400L;
                array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getSlackVariableOffset() + i11, -1.0d);
                i11++;
                if (linearConstraint.getRelationship() != Relationship.EQ || linearConstraint.getRelationship() == Relationship.GEQ) {
                    array2DRowRealMatrix.setEntry(0, getArtificialVariableOffset() + i12, 1.0d);
                    array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getArtificialVariableOffset() + i12, 1.0d);
                    array2DRowRealMatrix.setRowVector(0, array2DRowRealMatrix.getRowVector(0).subtract(array2DRowRealMatrix.getRowVector(numObjectiveFunctions2)));
                    i12++;
                }
            }
            j10 = -4616189618054758400L;
            if (linearConstraint.getRelationship() != Relationship.EQ) {
            }
            array2DRowRealMatrix.setEntry(0, getArtificialVariableOffset() + i12, 1.0d);
            array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getArtificialVariableOffset() + i12, 1.0d);
            array2DRowRealMatrix.setRowVector(0, array2DRowRealMatrix.getRowVector(0).subtract(array2DRowRealMatrix.getRowVector(numObjectiveFunctions2)));
            i12++;
        }
        return array2DRowRealMatrix;
    }

    public void divideRow(int i10, double d10) {
        double[] row = getRow(i10);
        for (int i11 = 0; i11 < getWidth(); i11++) {
            row[i11] = row[i11] / d10;
        }
    }

    public void dropPhase1Objective() {
        if (getNumObjectiveFunctions() == 1) {
            return;
        }
        TreeSet treeSet = new TreeSet();
        treeSet.add(0);
        for (int numObjectiveFunctions = getNumObjectiveFunctions(); numObjectiveFunctions < getArtificialVariableOffset(); numObjectiveFunctions++) {
            if (Precision.compareTo(getEntry(0, numObjectiveFunctions), 0.0d, this.epsilon) > 0) {
                treeSet.add(Integer.valueOf(numObjectiveFunctions));
            }
        }
        for (int i10 = 0; i10 < getNumArtificialVariables(); i10++) {
            int artificialVariableOffset = getArtificialVariableOffset() + i10;
            if (getBasicRow(artificialVariableOffset) == null) {
                treeSet.add(Integer.valueOf(artificialVariableOffset));
            }
        }
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, getHeight() - 1, getWidth() - treeSet.size());
        for (int i11 = 1; i11 < getHeight(); i11++) {
            int i12 = 0;
            for (int i13 = 0; i13 < getWidth(); i13++) {
                if (!treeSet.contains(Integer.valueOf(i13))) {
                    dArr[i11 - 1][i12] = getEntry(i11, i13);
                    i12++;
                }
            }
        }
        Integer[] numArr = (Integer[]) treeSet.toArray(new Integer[treeSet.size()]);
        for (int length = numArr.length - 1; length >= 0; length--) {
            this.columnLabels.remove(numArr[length].intValue());
        }
        this.tableau = new Array2DRowRealMatrix(dArr);
        this.numArtificialVariables = 0;
        initializeBasicVariables(getNumObjectiveFunctions());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SimplexTableau)) {
            return false;
        }
        SimplexTableau simplexTableau = (SimplexTableau) obj;
        return this.restrictToNonNegative == simplexTableau.restrictToNonNegative && this.numDecisionVariables == simplexTableau.numDecisionVariables && this.numSlackVariables == simplexTableau.numSlackVariables && this.numArtificialVariables == simplexTableau.numArtificialVariables && this.epsilon == simplexTableau.epsilon && this.maxUlps == simplexTableau.maxUlps && this.f100285f.equals(simplexTableau.f100285f) && this.constraints.equals(simplexTableau.constraints) && this.tableau.equals(simplexTableau.tableau);
    }

    public final int getArtificialVariableOffset() {
        return getNumObjectiveFunctions() + this.numDecisionVariables + this.numSlackVariables;
    }

    public Integer getBasicRow(int i10) {
        int i11 = this.basicVariables[i10];
        if (i11 == -1) {
            return null;
        }
        return Integer.valueOf(i11);
    }

    public int getBasicVariable(int i10) {
        return this.basicRows[i10];
    }

    public final double[][] getData() {
        return this.tableau.getData();
    }

    public final double getEntry(int i10, int i11) {
        return this.tableau.getEntry(i10, i11);
    }

    public final int getHeight() {
        return this.tableau.getRowDimension();
    }

    public final int getNumArtificialVariables() {
        return this.numArtificialVariables;
    }

    public final int getNumDecisionVariables() {
        return this.numDecisionVariables;
    }

    public final int getNumObjectiveFunctions() {
        return this.numArtificialVariables > 0 ? 2 : 1;
    }

    public final int getNumSlackVariables() {
        return this.numSlackVariables;
    }

    public final int getOriginalNumDecisionVariables() {
        return this.f100285f.getCoefficients().getDimension();
    }

    public final int getRhsOffset() {
        return getWidth() - 1;
    }

    public final double[] getRow(int i10) {
        return this.tableau.getDataRef()[i10];
    }

    public final int getSlackVariableOffset() {
        return getNumObjectiveFunctions() + this.numDecisionVariables;
    }

    public PointValuePair getSolution() {
        int indexOf = this.columnLabels.indexOf(NEGATIVE_VAR_COLUMN_LABEL);
        Integer basicRow = indexOf > 0 ? getBasicRow(indexOf) : null;
        double entry = basicRow == null ? 0.0d : getEntry(basicRow.intValue(), getRhsOffset());
        HashSet hashSet = new HashSet();
        int originalNumDecisionVariables = getOriginalNumDecisionVariables();
        double[] dArr = new double[originalNumDecisionVariables];
        for (int i10 = 0; i10 < originalNumDecisionVariables; i10++) {
            int indexOf2 = this.columnLabels.indexOf("x" + i10);
            if (indexOf2 < 0) {
                dArr[i10] = 0.0d;
            } else {
                Integer basicRow2 = getBasicRow(indexOf2);
                if (basicRow2 != null && basicRow2.intValue() == 0) {
                    dArr[i10] = 0.0d;
                } else if (hashSet.contains(basicRow2)) {
                    dArr[i10] = 0.0d - (this.restrictToNonNegative ? 0.0d : entry);
                } else {
                    hashSet.add(basicRow2);
                    dArr[i10] = (basicRow2 == null ? 0.0d : getEntry(basicRow2.intValue(), getRhsOffset())) - (this.restrictToNonNegative ? 0.0d : entry);
                }
            }
        }
        return new PointValuePair(dArr, this.f100285f.value(dArr));
    }

    public final int getWidth() {
        return this.tableau.getColumnDimension();
    }

    public int hashCode() {
        return (((((((Boolean.valueOf(this.restrictToNonNegative).hashCode() ^ this.numDecisionVariables) ^ this.numSlackVariables) ^ this.numArtificialVariables) ^ Double.valueOf(this.epsilon).hashCode()) ^ this.maxUlps) ^ this.f100285f.hashCode()) ^ this.constraints.hashCode()) ^ this.tableau.hashCode();
    }

    public void initializeColumnLabels() {
        if (getNumObjectiveFunctions() == 2) {
            this.columnLabels.add(ExifInterface.LONGITUDE_WEST);
        }
        this.columnLabels.add(Signature.SIG_BOOLEAN);
        for (int i10 = 0; i10 < getOriginalNumDecisionVariables(); i10++) {
            this.columnLabels.add("x" + i10);
        }
        if (!this.restrictToNonNegative) {
            this.columnLabels.add(NEGATIVE_VAR_COLUMN_LABEL);
        }
        for (int i11 = 0; i11 < getNumSlackVariables(); i11++) {
            this.columnLabels.add("s" + i11);
        }
        for (int i12 = 0; i12 < getNumArtificialVariables(); i12++) {
            this.columnLabels.add("a" + i12);
        }
        this.columnLabels.add("RHS");
    }

    public boolean isOptimal() {
        double[] row = getRow(0);
        int rhsOffset = getRhsOffset();
        for (int numObjectiveFunctions = getNumObjectiveFunctions(); numObjectiveFunctions < rhsOffset; numObjectiveFunctions++) {
            if (Precision.compareTo(row[numObjectiveFunctions], 0.0d, this.epsilon) < 0) {
                return false;
            }
        }
        return true;
    }

    public List<LinearConstraint> normalizeConstraints(Collection<LinearConstraint> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<LinearConstraint> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(normalize(it.next()));
        }
        return arrayList;
    }

    public void performRowOperations(int i10, int i11) {
        divideRow(i11, getEntry(i11, i10));
        for (int i12 = 0; i12 < getHeight(); i12++) {
            if (i12 != i11) {
                double entry = getEntry(i12, i10);
                if (entry != 0.0d) {
                    subtractRow(i12, i11, entry);
                }
            }
        }
        int basicVariable = getBasicVariable(i11);
        int[] iArr = this.basicVariables;
        iArr[basicVariable] = -1;
        iArr[i10] = i11;
        this.basicRows[i11] = i10;
    }

    public final void setEntry(int i10, int i11, double d10) {
        this.tableau.setEntry(i10, i11, d10);
    }

    public void subtractRow(int i10, int i11, double d10) {
        double[] row = getRow(i10);
        double[] row2 = getRow(i11);
        for (int i12 = 0; i12 < getWidth(); i12++) {
            row[i12] = row[i12] - (row2[i12] * d10);
        }
    }

    public SimplexTableau(LinearObjectiveFunction linearObjectiveFunction, Collection<LinearConstraint> collection, GoalType goalType, boolean z10, double d10, int i10) {
        this.columnLabels = new ArrayList();
        this.f100285f = linearObjectiveFunction;
        this.constraints = normalizeConstraints(collection);
        this.restrictToNonNegative = z10;
        this.epsilon = d10;
        this.maxUlps = i10;
        this.numDecisionVariables = linearObjectiveFunction.getCoefficients().getDimension() + (!z10 ? 1 : 0);
        int constraintTypeCounts = getConstraintTypeCounts(Relationship.LEQ);
        Relationship relationship = Relationship.GEQ;
        this.numSlackVariables = constraintTypeCounts + getConstraintTypeCounts(relationship);
        this.numArtificialVariables = getConstraintTypeCounts(Relationship.EQ) + getConstraintTypeCounts(relationship);
        this.tableau = createTableau(goalType == GoalType.MAXIMIZE);
        initializeBasicVariables(getSlackVariableOffset());
        initializeColumnLabels();
    }
}
