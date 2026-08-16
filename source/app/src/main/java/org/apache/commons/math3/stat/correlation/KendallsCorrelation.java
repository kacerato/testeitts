package org.apache.commons.math3.stat.correlation;

import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.linear.BlockRealMatrix;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Pair;

public class KendallsCorrelation {
    private final RealMatrix correlationMatrix;

    public KendallsCorrelation() {
        this.correlationMatrix = null;
    }

    private static long sum(long j10) {
        return (j10 * (1 + j10)) / 2;
    }

    public RealMatrix computeCorrelationMatrix(RealMatrix realMatrix) {
        int columnDimension = realMatrix.getColumnDimension();
        BlockRealMatrix blockRealMatrix = new BlockRealMatrix(columnDimension, columnDimension);
        for (int i10 = 0; i10 < columnDimension; i10++) {
            for (int i11 = 0; i11 < i10; i11++) {
                double correlation = correlation(realMatrix.getColumn(i10), realMatrix.getColumn(i11));
                blockRealMatrix.setEntry(i10, i11, correlation);
                blockRealMatrix.setEntry(i11, i10, correlation);
            }
            blockRealMatrix.setEntry(i10, i10, 1.0d);
        }
        return blockRealMatrix;
    }

    public double correlation(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        int i10;
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        int length = dArr.length;
        long sum = sum(length - 1);
        Pair[] pairArr = new Pair[length];
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            pairArr[i12] = new Pair(Double.valueOf(dArr[i12]), Double.valueOf(dArr2[i12]));
        }
        Arrays.sort(pairArr, new Comparator<Pair<Double, Double>>() {
            @Override
            public int compare(Pair<Double, Double> pair, Pair<Double, Double> pair2) {
                int compareTo = pair.getFirst().compareTo(pair2.getFirst());
                return compareTo != 0 ? compareTo : pair.getSecond().compareTo(pair2.getSecond());
            }
        });
        Pair pair = pairArr[0];
        long j10 = 1;
        long j11 = 1;
        int i13 = 1;
        long j12 = 0;
        long j13 = 0;
        while (i13 < length) {
            Pair pair2 = pairArr[i13];
            if (((Double) pair2.getFirst()).equals(pair.getFirst())) {
                j10++;
                if (((Double) pair2.getSecond()).equals(pair.getSecond())) {
                    j11++;
                } else {
                    j13 += sum(j11 - 1);
                    j11 = 1;
                }
            } else {
                j12 += sum(j10 - 1);
                j13 += sum(j11 - 1);
                j10 = 1;
                j11 = 1;
            }
            i13++;
            pair = pair2;
        }
        long sum2 = j12 + sum(j10 - 1);
        long sum3 = j13 + sum(j11 - 1);
        Pair[] pairArr2 = new Pair[length];
        int i14 = 1;
        long j14 = 0;
        while (i14 < length) {
            for (int i15 = i11; i15 < length; i15 += i14 * 2) {
                int min = FastMath.min(i15 + i14, length);
                int min2 = FastMath.min(min + i14, length);
                int i16 = i15;
                int i17 = i16;
                int i18 = min;
                while (true) {
                    if (i16 < min || i18 < min2) {
                        if (i16 < min) {
                            if (i18 < min2) {
                                i10 = min2;
                                if (((Double) pairArr[i16].getSecond()).compareTo((Double) pairArr[i18].getSecond()) <= 0) {
                                    pairArr2[i17] = pairArr[i16];
                                } else {
                                    pairArr2[i17] = pairArr[i18];
                                    j14 += min - i16;
                                    i18++;
                                }
                            } else {
                                i10 = min2;
                                pairArr2[i17] = pairArr[i16];
                            }
                            i16++;
                        } else {
                            i10 = min2;
                            pairArr2[i17] = pairArr[i18];
                            i18++;
                        }
                        i17++;
                        min2 = i10;
                    }
                }
            }
            i14 <<= 1;
            i11 = 0;
            Pair[] pairArr3 = pairArr;
            pairArr = pairArr2;
            pairArr2 = pairArr3;
        }
        Pair pair3 = pairArr[i11];
        int i19 = 1;
        long j15 = 1;
        long j16 = 0;
        while (i19 < length) {
            Pair pair4 = pairArr[i19];
            if (((Double) pair4.getSecond()).equals(pair3.getSecond())) {
                j15++;
            } else {
                j16 += sum(j15 - 1);
                j15 = 1;
            }
            i19++;
            pair3 = pair4;
        }
        long sum4 = j16 + sum(j15 - 1);
        return (((r0 - sum4) + sum3) - (j14 * 2)) / FastMath.sqrt((sum - sum2) * (sum - sum4));
    }

    public RealMatrix getCorrelationMatrix() {
        return this.correlationMatrix;
    }

    public KendallsCorrelation(double[][] dArr) {
        this(MatrixUtils.createRealMatrix(dArr));
    }

    public KendallsCorrelation(RealMatrix realMatrix) {
        this.correlationMatrix = computeCorrelationMatrix(realMatrix);
    }

    public RealMatrix computeCorrelationMatrix(double[][] dArr) {
        return computeCorrelationMatrix(new BlockRealMatrix(dArr));
    }
}
