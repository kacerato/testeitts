package org.apache.commons.math3.stat.correlation;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.BlockRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.stat.ranking.NaNStrategy;
import org.apache.commons.math3.stat.ranking.NaturalRanking;
import org.apache.commons.math3.stat.ranking.RankingAlgorithm;

public class SpearmansCorrelation {
    private final RealMatrix data;
    private final PearsonsCorrelation rankCorrelation;
    private final RankingAlgorithm rankingAlgorithm;

    public SpearmansCorrelation() {
        this(new NaturalRanking());
    }

    private List<Integer> getNaNPositions(double[] dArr) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < dArr.length; i10++) {
            if (Double.isNaN(dArr[i10])) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0065 A[LOOP:2: B:20:0x005f->B:22:0x0065, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private RealMatrix rankTransform(RealMatrix realMatrix) {
        RealMatrix realMatrix2;
        RankingAlgorithm rankingAlgorithm = this.rankingAlgorithm;
        if ((rankingAlgorithm instanceof NaturalRanking) && ((NaturalRanking) rankingAlgorithm).getNanStrategy() == NaNStrategy.REMOVED) {
            HashSet hashSet = new HashSet();
            for (int i10 = 0; i10 < realMatrix.getColumnDimension(); i10++) {
                hashSet.addAll(getNaNPositions(realMatrix.getColumn(i10)));
            }
            if (!hashSet.isEmpty()) {
                realMatrix2 = new BlockRealMatrix(realMatrix.getRowDimension() - hashSet.size(), realMatrix.getColumnDimension());
                for (int i11 = 0; i11 < realMatrix2.getColumnDimension(); i11++) {
                    realMatrix2.setColumn(i11, removeValues(realMatrix.getColumn(i11), hashSet));
                }
                if (realMatrix2 == null) {
                    realMatrix2 = realMatrix.copy();
                }
                for (int i12 = 0; i12 < realMatrix2.getColumnDimension(); i12++) {
                    realMatrix2.setColumn(i12, this.rankingAlgorithm.rank(realMatrix2.getColumn(i12)));
                }
                return realMatrix2;
            }
        }
        realMatrix2 = null;
        if (realMatrix2 == null) {
        }
        while (i12 < realMatrix2.getColumnDimension()) {
        }
        return realMatrix2;
    }

    private double[] removeValues(double[] dArr, Set<Integer> set) {
        if (set.isEmpty()) {
            return dArr;
        }
        double[] dArr2 = new double[dArr.length - set.size()];
        int i10 = 0;
        for (int i11 = 0; i11 < dArr.length; i11++) {
            if (!set.contains(Integer.valueOf(i11))) {
                dArr2[i10] = dArr[i11];
                i10++;
            }
        }
        return dArr2;
    }

    public RealMatrix computeCorrelationMatrix(RealMatrix realMatrix) {
        return new PearsonsCorrelation().computeCorrelationMatrix(rankTransform(realMatrix));
    }

    public double correlation(double[] dArr, double[] dArr2) {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr.length < 2) {
            throw new MathIllegalArgumentException(LocalizedFormats.INSUFFICIENT_DIMENSION, Integer.valueOf(dArr.length), 2);
        }
        RankingAlgorithm rankingAlgorithm = this.rankingAlgorithm;
        if ((rankingAlgorithm instanceof NaturalRanking) && NaNStrategy.REMOVED == ((NaturalRanking) rankingAlgorithm).getNanStrategy()) {
            HashSet hashSet = new HashSet();
            hashSet.addAll(getNaNPositions(dArr));
            hashSet.addAll(getNaNPositions(dArr2));
            dArr = removeValues(dArr, hashSet);
            dArr2 = removeValues(dArr2, hashSet);
        }
        return new PearsonsCorrelation().correlation(this.rankingAlgorithm.rank(dArr), this.rankingAlgorithm.rank(dArr2));
    }

    public RealMatrix getCorrelationMatrix() {
        return this.rankCorrelation.getCorrelationMatrix();
    }

    public PearsonsCorrelation getRankCorrelation() {
        return this.rankCorrelation;
    }

    public SpearmansCorrelation(RankingAlgorithm rankingAlgorithm) {
        this.data = null;
        this.rankingAlgorithm = rankingAlgorithm;
        this.rankCorrelation = null;
    }

    public RealMatrix computeCorrelationMatrix(double[][] dArr) {
        return computeCorrelationMatrix(new BlockRealMatrix(dArr));
    }

    public SpearmansCorrelation(RealMatrix realMatrix) {
        this(realMatrix, new NaturalRanking());
    }

    public SpearmansCorrelation(RealMatrix realMatrix, RankingAlgorithm rankingAlgorithm) {
        this.rankingAlgorithm = rankingAlgorithm;
        RealMatrix rankTransform = rankTransform(realMatrix);
        this.data = rankTransform;
        this.rankCorrelation = new PearsonsCorrelation(rankTransform);
    }
}
