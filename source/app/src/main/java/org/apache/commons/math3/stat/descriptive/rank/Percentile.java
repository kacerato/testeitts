package org.apache.commons.math3.stat.descriptive.rank;

import java.io.Serializable;
import java.util.Arrays;
import java.util.BitSet;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic;
import org.apache.commons.math3.stat.ranking.NaNStrategy;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.KthSelector;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.MedianOf3PivotingStrategy;
import org.apache.commons.math3.util.PivotingStrategyInterface;
import org.apache.commons.math3.util.Precision;

public class Percentile extends AbstractUnivariateStatistic implements Serializable {
    private static final int MAX_CACHED_LEVELS = 10;
    private static final int PIVOTS_HEAP_LENGTH = 512;
    private static final long serialVersionUID = -8091216485095130416L;
    private int[] cachedPivots;
    private final EstimationType estimationType;
    private final KthSelector kthSelector;
    private final NaNStrategy nanStrategy;
    private double quantile;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy;

        static {
            int[] iArr = new int[NaNStrategy.values().length];
            $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy = iArr;
            try {
                iArr[NaNStrategy.MAXIMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy[NaNStrategy.MINIMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy[NaNStrategy.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy[NaNStrategy.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum EstimationType {
        LEGACY("Legacy Apache Commons Math") {
            @Override
            public double index(double d10, int i10) {
                if (Double.compare(d10, 0.0d) == 0) {
                    return 0.0d;
                }
                return Double.compare(d10, 1.0d) == 0 ? i10 : (i10 + 1) * d10;
            }
        },
        R_1("R-1") {
            @Override
            public double estimate(double[] dArr, int[] iArr, double d10, int i10, KthSelector kthSelector) {
                return super.estimate(dArr, iArr, FastMath.ceil(d10 - 0.5d), i10, kthSelector);
            }

            @Override
            public double index(double d10, int i10) {
                if (Double.compare(d10, 0.0d) == 0) {
                    return 0.0d;
                }
                return (i10 * d10) + 0.5d;
            }
        },
        R_2("R-2") {
            @Override
            public double estimate(double[] dArr, int[] iArr, double d10, int i10, KthSelector kthSelector) {
                return (super.estimate(dArr, iArr, FastMath.ceil(d10 - 0.5d), i10, kthSelector) + super.estimate(dArr, iArr, FastMath.floor(0.5d + d10), i10, kthSelector)) / 2.0d;
            }

            @Override
            public double index(double d10, int i10) {
                if (Double.compare(d10, 1.0d) == 0) {
                    return i10;
                }
                if (Double.compare(d10, 0.0d) == 0) {
                    return 0.0d;
                }
                return 0.5d + (i10 * d10);
            }
        },
        R_3("R-3") {
            @Override
            public double index(double d10, int i10) {
                double d11 = i10;
                if (Double.compare(d10, 0.5d / d11) <= 0) {
                    return 0.0d;
                }
                return FastMath.rint(d11 * d10);
            }
        },
        R_4("R-4") {
            @Override
            public double index(double d10, int i10) {
                double d11 = i10;
                if (Double.compare(d10, 1.0d / d11) < 0) {
                    return 0.0d;
                }
                return Double.compare(d10, 1.0d) == 0 ? d11 : d11 * d10;
            }
        },
        R_5("R-5") {
            @Override
            public double index(double d10, int i10) {
                double d11 = i10;
                double d12 = (d11 - 0.5d) / d11;
                if (Double.compare(d10, 0.5d / d11) < 0) {
                    return 0.0d;
                }
                return Double.compare(d10, d12) >= 0 ? d11 : (d11 * d10) + 0.5d;
            }
        },
        R_6("R-6") {
            @Override
            public double index(double d10, int i10) {
                double d11 = i10 + 1;
                double d12 = i10;
                double d13 = (1.0d * d12) / d11;
                if (Double.compare(d10, 1.0d / d11) < 0) {
                    return 0.0d;
                }
                return Double.compare(d10, d13) >= 0 ? d12 : d11 * d10;
            }
        },
        R_7("R-7") {
            @Override
            public double index(double d10, int i10) {
                if (Double.compare(d10, 0.0d) == 0) {
                    return 0.0d;
                }
                return Double.compare(d10, 1.0d) == 0 ? i10 : 1.0d + ((i10 - 1) * d10);
            }
        },
        R_8("R-8") {
            @Override
            public double index(double d10, int i10) {
                double d11 = i10;
                double d12 = d11 + 0.3333333333333333d;
                double d13 = (d11 - 0.3333333333333333d) / d12;
                if (Double.compare(d10, 0.6666666666666666d / d12) < 0) {
                    return 0.0d;
                }
                return Double.compare(d10, d13) >= 0 ? d11 : (d12 * d10) + 0.3333333333333333d;
            }
        },
        R_9("R-9") {
            @Override
            public double index(double d10, int i10) {
                double d11 = i10;
                double d12 = 0.25d + d11;
                double d13 = (d11 - 0.375d) / d12;
                if (Double.compare(d10, 0.625d / d12) < 0) {
                    return 0.0d;
                }
                return Double.compare(d10, d13) >= 0 ? d11 : (d12 * d10) + 0.375d;
            }
        };

        private final String name;

        EstimationType(String str, AnonymousClass1 anonymousClass1) {
            this(str);
        }

        public double estimate(double[] dArr, int[] iArr, double d10, int i10, KthSelector kthSelector) {
            double floor = FastMath.floor(d10);
            int i11 = (int) floor;
            double d11 = d10 - floor;
            if (d10 < 1.0d) {
                return kthSelector.select(dArr, iArr, 0);
            }
            if (d10 >= i10) {
                return kthSelector.select(dArr, iArr, i10 - 1);
            }
            double select = kthSelector.select(dArr, iArr, i11 - 1);
            return select + (d11 * (kthSelector.select(dArr, iArr, i11) - select));
        }

        public double evaluate(double[] dArr, int[] iArr, double d10, KthSelector kthSelector) {
            MathUtils.checkNotNull(dArr);
            if (d10 <= 100.0d && d10 > 0.0d) {
                return estimate(dArr, iArr, index(d10 / 100.0d, dArr.length), dArr.length, kthSelector);
            }
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUNDS_QUANTILE_VALUE, Double.valueOf(d10), 0, 100);
        }

        public String getName() {
            return this.name;
        }

        public abstract double index(double d10, int i10);

        EstimationType(String str) {
            this.name = str;
        }

        public double evaluate(double[] dArr, double d10, KthSelector kthSelector) {
            return evaluate(dArr, null, d10, kthSelector);
        }
    }

    public Percentile() {
        this(50.0d);
    }

    private static double[] copyOf(double[] dArr, int i10, int i11) {
        MathArrays.verifyValues(dArr, i10, i11);
        return MathArrays.copyOfRange(dArr, i10, i11 + i10);
    }

    private int[] getPivots(double[] dArr) {
        if (dArr == getDataRef()) {
            return this.cachedPivots;
        }
        int[] iArr = new int[512];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    private static double[] removeAndSlice(double[] dArr, int i10, int i11, double d10) {
        int i12;
        MathArrays.verifyValues(dArr, i10, i11);
        BitSet bitSet = new BitSet(i11);
        int i13 = i10;
        while (true) {
            i12 = i10 + i11;
            if (i13 >= i12) {
                break;
            }
            if (Precision.equalsIncludingNaN(d10, dArr[i13])) {
                bitSet.set(i13 - i10);
            }
            i13++;
        }
        if (bitSet.isEmpty()) {
            return copyOf(dArr, i10, i11);
        }
        int i14 = 0;
        if (bitSet.cardinality() == i11) {
            return new double[0];
        }
        double[] dArr2 = new double[i11 - bitSet.cardinality()];
        int i15 = i10;
        int i16 = 0;
        while (true) {
            int nextSetBit = bitSet.nextSetBit(i14);
            if (nextSetBit == -1) {
                break;
            }
            int i17 = nextSetBit - i14;
            System.arraycopy(dArr, i15, dArr2, i16, i17);
            i16 += i17;
            i14 = bitSet.nextClearBit(nextSetBit);
            i15 = i10 + i14;
        }
        if (i15 < i12) {
            System.arraycopy(dArr, i15, dArr2, i16, i12 - i15);
        }
        return dArr2;
    }

    private static double[] replaceAndSlice(double[] dArr, int i10, int i11, double d10, double d11) {
        double[] copyOf = copyOf(dArr, i10, i11);
        for (int i12 = 0; i12 < i11; i12++) {
            copyOf[i12] = Precision.equalsIncludingNaN(d10, copyOf[i12]) ? d11 : copyOf[i12];
        }
        return copyOf;
    }

    public double evaluate(double d10) throws MathIllegalArgumentException {
        return evaluate(getDataRef(), d10);
    }

    public EstimationType getEstimationType() {
        return this.estimationType;
    }

    public KthSelector getKthSelector() {
        return this.kthSelector;
    }

    public NaNStrategy getNaNStrategy() {
        return this.nanStrategy;
    }

    public PivotingStrategyInterface getPivotingStrategy() {
        return this.kthSelector.getPivotingStrategy();
    }

    public double getQuantile() {
        return this.quantile;
    }

    public double[] getWorkArray(double[] dArr, int i10, int i11) {
        if (dArr == getDataRef()) {
            return getDataRef();
        }
        int i12 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy[this.nanStrategy.ordinal()];
        if (i12 == 1) {
            return replaceAndSlice(dArr, i10, i11, Double.NaN, Double.POSITIVE_INFINITY);
        }
        if (i12 == 2) {
            return replaceAndSlice(dArr, i10, i11, Double.NaN, Double.NEGATIVE_INFINITY);
        }
        if (i12 == 3) {
            return removeAndSlice(dArr, i10, i11, Double.NaN);
        }
        if (i12 != 4) {
            return copyOf(dArr, i10, i11);
        }
        double[] copyOf = copyOf(dArr, i10, i11);
        MathArrays.checkNotNaN(copyOf);
        return copyOf;
    }

    @Deprecated
    public int medianOf3(double[] dArr, int i10, int i11) {
        return new MedianOf3PivotingStrategy().pivotIndex(dArr, i10, i11);
    }

    @Override
    public void setData(double[] dArr) {
        if (dArr == null) {
            this.cachedPivots = null;
        } else {
            int[] iArr = new int[512];
            this.cachedPivots = iArr;
            Arrays.fill(iArr, -1);
        }
        super.setData(dArr);
    }

    public void setQuantile(double d10) throws MathIllegalArgumentException {
        if (d10 <= 0.0d || d10 > 100.0d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUNDS_QUANTILE_VALUE, Double.valueOf(d10), 0, 100);
        }
        this.quantile = d10;
    }

    public Percentile withEstimationType(EstimationType estimationType) {
        return new Percentile(this.quantile, estimationType, this.nanStrategy, this.kthSelector);
    }

    public Percentile withKthSelector(KthSelector kthSelector) {
        return new Percentile(this.quantile, this.estimationType, this.nanStrategy, kthSelector);
    }

    public Percentile withNaNStrategy(NaNStrategy naNStrategy) {
        return new Percentile(this.quantile, this.estimationType, naNStrategy, this.kthSelector);
    }

    public Percentile(double d10) throws MathIllegalArgumentException {
        this(d10, EstimationType.LEGACY, NaNStrategy.REMOVED, new KthSelector(new MedianOf3PivotingStrategy()));
    }

    @Override
    public Percentile copy() {
        return new Percentile(this);
    }

    public double evaluate(double[] dArr, double d10) throws MathIllegalArgumentException {
        test(dArr, 0, 0);
        return evaluate(dArr, 0, dArr.length, d10);
    }

    public Percentile(Percentile percentile) throws NullArgumentException {
        MathUtils.checkNotNull(percentile);
        this.estimationType = percentile.getEstimationType();
        this.nanStrategy = percentile.getNaNStrategy();
        this.kthSelector = percentile.getKthSelector();
        setData(percentile.getDataRef());
        int[] iArr = percentile.cachedPivots;
        if (iArr != null) {
            System.arraycopy(iArr, 0, this.cachedPivots, 0, iArr.length);
        }
        setQuantile(percentile.quantile);
    }

    @Deprecated
    public static void copy(Percentile percentile, Percentile percentile2) throws MathUnsupportedOperationException {
        throw new MathUnsupportedOperationException();
    }

    @Override
    public double evaluate(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        return evaluate(dArr, i10, i11, this.quantile);
    }

    public double evaluate(double[] dArr, int i10, int i11, double d10) throws MathIllegalArgumentException {
        test(dArr, i10, i11);
        if (d10 > 100.0d || d10 <= 0.0d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUNDS_QUANTILE_VALUE, Double.valueOf(d10), 0, 100);
        }
        if (i11 == 0) {
            return Double.NaN;
        }
        if (i11 == 1) {
            return dArr[i10];
        }
        double[] workArray = getWorkArray(dArr, i10, i11);
        int[] pivots = getPivots(dArr);
        if (workArray.length == 0) {
            return Double.NaN;
        }
        return this.estimationType.evaluate(workArray, pivots, d10, this.kthSelector);
    }

    @Override
    public void setData(double[] dArr, int i10, int i11) throws MathIllegalArgumentException {
        if (dArr == null) {
            this.cachedPivots = null;
        } else {
            int[] iArr = new int[512];
            this.cachedPivots = iArr;
            Arrays.fill(iArr, -1);
        }
        super.setData(dArr, i10, i11);
    }

    public Percentile(double d10, EstimationType estimationType, NaNStrategy naNStrategy, KthSelector kthSelector) throws MathIllegalArgumentException {
        setQuantile(d10);
        this.cachedPivots = null;
        MathUtils.checkNotNull(estimationType);
        MathUtils.checkNotNull(naNStrategy);
        MathUtils.checkNotNull(kthSelector);
        this.estimationType = estimationType;
        this.nanStrategy = naNStrategy;
        this.kthSelector = kthSelector;
    }
}
