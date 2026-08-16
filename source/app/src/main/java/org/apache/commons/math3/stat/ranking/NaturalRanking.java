package org.apache.commons.math3.stat.ranking;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotANumberException;
import org.apache.commons.math3.random.RandomDataGenerator;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;

public class NaturalRanking implements RankingAlgorithm {
    public static final NaNStrategy DEFAULT_NAN_STRATEGY = NaNStrategy.FAILED;
    public static final TiesStrategy DEFAULT_TIES_STRATEGY = TiesStrategy.AVERAGE;
    private final NaNStrategy nanStrategy;
    private final RandomDataGenerator randomData;
    private final TiesStrategy tiesStrategy;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy;
        static final int[] $SwitchMap$org$apache$commons$math3$stat$ranking$TiesStrategy;

        static {
            int[] iArr = new int[TiesStrategy.values().length];
            $SwitchMap$org$apache$commons$math3$stat$ranking$TiesStrategy = iArr;
            try {
                iArr[TiesStrategy.AVERAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$ranking$TiesStrategy[TiesStrategy.MAXIMUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$ranking$TiesStrategy[TiesStrategy.MINIMUM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$ranking$TiesStrategy[TiesStrategy.RANDOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$ranking$TiesStrategy[TiesStrategy.SEQUENTIAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[NaNStrategy.values().length];
            $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy = iArr2;
            try {
                iArr2[NaNStrategy.MAXIMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy[NaNStrategy.MINIMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy[NaNStrategy.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy[NaNStrategy.FIXED.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy[NaNStrategy.FAILED.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public static class IntDoublePair implements Comparable<IntDoublePair> {
        private final int position;
        private final double value;

        public IntDoublePair(double d10, int i10) {
            this.value = d10;
            this.position = i10;
        }

        public int getPosition() {
            return this.position;
        }

        public double getValue() {
            return this.value;
        }

        @Override
        public int compareTo(IntDoublePair intDoublePair) {
            return Double.compare(this.value, intDoublePair.value);
        }
    }

    public NaturalRanking() {
        this.tiesStrategy = DEFAULT_TIES_STRATEGY;
        this.nanStrategy = DEFAULT_NAN_STRATEGY;
        this.randomData = null;
    }

    private boolean containsNaNs(IntDoublePair[] intDoublePairArr) {
        for (IntDoublePair intDoublePair : intDoublePairArr) {
            if (Double.isNaN(intDoublePair.getValue())) {
                return true;
            }
        }
        return false;
    }

    private void fill(double[] dArr, List<Integer> list, double d10) {
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            dArr[it.next().intValue()] = d10;
        }
    }

    private List<Integer> getNanPositions(IntDoublePair[] intDoublePairArr) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < intDoublePairArr.length; i10++) {
            if (Double.isNaN(intDoublePairArr[i10].getValue())) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        return arrayList;
    }

    private void recodeNaNs(IntDoublePair[] intDoublePairArr, double d10) {
        for (int i10 = 0; i10 < intDoublePairArr.length; i10++) {
            if (Double.isNaN(intDoublePairArr[i10].getValue())) {
                intDoublePairArr[i10] = new IntDoublePair(d10, intDoublePairArr[i10].getPosition());
            }
        }
    }

    private IntDoublePair[] removeNaNs(IntDoublePair[] intDoublePairArr) {
        if (!containsNaNs(intDoublePairArr)) {
            return intDoublePairArr;
        }
        IntDoublePair[] intDoublePairArr2 = new IntDoublePair[intDoublePairArr.length];
        int i10 = 0;
        for (int i11 = 0; i11 < intDoublePairArr.length; i11++) {
            if (Double.isNaN(intDoublePairArr[i11].getValue())) {
                for (int i12 = i11 + 1; i12 < intDoublePairArr.length; i12++) {
                    intDoublePairArr[i12] = new IntDoublePair(intDoublePairArr[i12].getValue(), intDoublePairArr[i12].getPosition() - 1);
                }
            } else {
                intDoublePairArr2[i10] = new IntDoublePair(intDoublePairArr[i11].getValue(), intDoublePairArr[i11].getPosition());
                i10++;
            }
        }
        IntDoublePair[] intDoublePairArr3 = new IntDoublePair[i10];
        System.arraycopy(intDoublePairArr2, 0, intDoublePairArr3, 0, i10);
        return intDoublePairArr3;
    }

    private void resolveTie(double[] dArr, List<Integer> list) {
        int i10 = 0;
        double d10 = dArr[list.get(0).intValue()];
        int size = list.size();
        int i11 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$stat$ranking$TiesStrategy[this.tiesStrategy.ordinal()];
        if (i11 == 1) {
            fill(dArr, list, (((d10 * 2.0d) + size) - 1.0d) / 2.0d);
            return;
        }
        if (i11 == 2) {
            fill(dArr, list, (d10 + size) - 1.0d);
            return;
        }
        if (i11 == 3) {
            fill(dArr, list, d10);
            return;
        }
        if (i11 == 4) {
            Iterator<Integer> it = list.iterator();
            long round = FastMath.round(d10);
            while (it.hasNext()) {
                dArr[it.next().intValue()] = this.randomData.nextLong(round, (size + round) - 1);
            }
            return;
        }
        if (i11 != 5) {
            throw new MathInternalError();
        }
        Iterator<Integer> it2 = list.iterator();
        long round2 = FastMath.round(d10);
        while (it2.hasNext()) {
            dArr[it2.next().intValue()] = i10 + round2;
            i10++;
        }
    }

    private void restoreNaNs(double[] dArr, List<Integer> list) {
        if (list.size() == 0) {
            return;
        }
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            dArr[it.next().intValue()] = Double.NaN;
        }
    }

    public NaNStrategy getNanStrategy() {
        return this.nanStrategy;
    }

    public TiesStrategy getTiesStrategy() {
        return this.tiesStrategy;
    }

    @Override
    public double[] rank(double[] dArr) {
        IntDoublePair[] intDoublePairArr = new IntDoublePair[dArr.length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            intDoublePairArr[i10] = new IntDoublePair(dArr[i10], i10);
        }
        int i11 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy[this.nanStrategy.ordinal()];
        List<Integer> list = null;
        if (i11 == 1) {
            recodeNaNs(intDoublePairArr, Double.POSITIVE_INFINITY);
        } else if (i11 == 2) {
            recodeNaNs(intDoublePairArr, Double.NEGATIVE_INFINITY);
        } else if (i11 == 3) {
            intDoublePairArr = removeNaNs(intDoublePairArr);
        } else if (i11 == 4) {
            list = getNanPositions(intDoublePairArr);
        } else {
            if (i11 != 5) {
                throw new MathInternalError();
            }
            list = getNanPositions(intDoublePairArr);
            if (list.size() > 0) {
                throw new NotANumberException();
            }
        }
        Arrays.sort(intDoublePairArr);
        double[] dArr2 = new double[intDoublePairArr.length];
        dArr2[intDoublePairArr[0].getPosition()] = 1;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(intDoublePairArr[0].getPosition()));
        int i12 = 1;
        for (int i13 = 1; i13 < intDoublePairArr.length; i13++) {
            if (Double.compare(intDoublePairArr[i13].getValue(), intDoublePairArr[i13 - 1].getValue()) > 0) {
                i12 = i13 + 1;
                if (arrayList.size() > 1) {
                    resolveTie(dArr2, arrayList);
                }
                arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(intDoublePairArr[i13].getPosition()));
            } else {
                arrayList.add(Integer.valueOf(intDoublePairArr[i13].getPosition()));
            }
            dArr2[intDoublePairArr[i13].getPosition()] = i12;
        }
        if (arrayList.size() > 1) {
            resolveTie(dArr2, arrayList);
        }
        if (this.nanStrategy == NaNStrategy.FIXED) {
            restoreNaNs(dArr2, list);
        }
        return dArr2;
    }

    public NaturalRanking(TiesStrategy tiesStrategy) {
        this.tiesStrategy = tiesStrategy;
        this.nanStrategy = DEFAULT_NAN_STRATEGY;
        this.randomData = new RandomDataGenerator();
    }

    public NaturalRanking(NaNStrategy naNStrategy) {
        this.nanStrategy = naNStrategy;
        this.tiesStrategy = DEFAULT_TIES_STRATEGY;
        this.randomData = null;
    }

    public NaturalRanking(NaNStrategy naNStrategy, TiesStrategy tiesStrategy) {
        this.nanStrategy = naNStrategy;
        this.tiesStrategy = tiesStrategy;
        this.randomData = new RandomDataGenerator();
    }

    public NaturalRanking(RandomGenerator randomGenerator) {
        this.tiesStrategy = TiesStrategy.RANDOM;
        this.nanStrategy = DEFAULT_NAN_STRATEGY;
        this.randomData = new RandomDataGenerator(randomGenerator);
    }

    public NaturalRanking(NaNStrategy naNStrategy, RandomGenerator randomGenerator) {
        this.nanStrategy = naNStrategy;
        this.tiesStrategy = TiesStrategy.RANDOM;
        this.randomData = new RandomDataGenerator(randomGenerator);
    }
}
