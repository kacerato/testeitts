package com.tonyodev.fetch2core;

import Lf.k;
import java.util.List;
import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;
import pf.C14960A;

public final class AverageCalculator {
    private final int defaultIndexPosition;
    private final int defaultValueListSize;
    private final int discardLimit;
    private int endIndex;
    private int startIndex;
    private double[] valueList;

    @k
    public AverageCalculator() {
        this(0, 1, null);
    }

    private final void expandValueList() {
        double[] dArr = new double[this.valueList.length * 2];
        int count = count();
        System.arraycopy(this.valueList, this.startIndex, dArr, 0, count);
        this.valueList = dArr;
        this.startIndex = 0;
        this.endIndex = count - 1;
    }

    private final double getDenominator(int i10) {
        double d10 = 0.0d;
        int i11 = 1;
        if (1 <= i10) {
            while (true) {
                d10 += i11;
                if (i11 == i10) {
                    break;
                }
                i11++;
            }
        }
        return d10;
    }

    public static double getMovingAverageWithWeightOnOlderValues$default(AverageCalculator averageCalculator, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = averageCalculator.count();
        }
        return averageCalculator.getMovingAverageWithWeightOnOlderValues(i10);
    }

    public static double getMovingAverageWithWeightOnRecentValues$default(AverageCalculator averageCalculator, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = averageCalculator.count();
        }
        return averageCalculator.getMovingAverageWithWeightOnRecentValues(i10);
    }

    public final void add(double d10) {
        if (this.discardLimit > 0 && count() == this.discardLimit) {
            this.startIndex++;
        }
        if (this.endIndex == this.valueList.length - 1) {
            expandValueList();
        }
        int i10 = this.endIndex + 1;
        this.endIndex = i10;
        if (i10 == 0) {
            this.startIndex = i10;
        }
        this.valueList[i10] = d10;
    }

    public final void clear() {
        this.valueList = new double[this.defaultValueListSize];
        int i10 = this.defaultIndexPosition;
        this.startIndex = i10;
        this.endIndex = i10;
    }

    public final int count() {
        return (this.endIndex - this.startIndex) + 1;
    }

    public final double getAverage() {
        int i10 = this.startIndex;
        int i11 = this.endIndex;
        double d10 = 0.0d;
        if (i10 <= i11) {
            while (true) {
                d10 += this.valueList[i10];
                if (i10 == i11) {
                    break;
                }
                i10++;
            }
        }
        return d10 / count();
    }

    public final int getDiscardLimit() {
        return this.discardLimit;
    }

    public final double getFirstInputValue() {
        if (count() >= 1) {
            return this.valueList[this.startIndex];
        }
        throw new ArrayIndexOutOfBoundsException("value array is empty");
    }

    public final double getLastInputValue() {
        if (count() >= 1) {
            return this.valueList[this.endIndex];
        }
        throw new ArrayIndexOutOfBoundsException("value array is empty");
    }

    @k
    public final double getMovingAverageWithWeightOnOlderValues() {
        return getMovingAverageWithWeightOnOlderValues$default(this, 0, 1, null);
    }

    @k
    public final double getMovingAverageWithWeightOnRecentValues() {
        return getMovingAverageWithWeightOnRecentValues$default(this, 0, 1, null);
    }

    @NotNull
    public final List<Double> getValues() {
        return C14960A.Yy(this.valueList);
    }

    public final boolean hasInputValue(double d10) {
        return C14960A.x8(this.valueList, d10);
    }

    @k
    public AverageCalculator(int i10) {
        this.discardLimit = i10;
        this.defaultValueListSize = 16;
        this.defaultIndexPosition = -1;
        this.valueList = new double[16];
        this.startIndex = -1;
        this.endIndex = -1;
    }

    @k
    public final double getMovingAverageWithWeightOnOlderValues(int i10) {
        if (i10 >= 1) {
            if (i10 <= count()) {
                double denominator = getDenominator(i10);
                int i11 = this.startIndex;
                int i12 = (i10 - 1) + i11;
                double d10 = 0.0d;
                if (i11 <= i12) {
                    while (true) {
                        d10 += this.valueList[i11] * (i10 / denominator);
                        i10--;
                        if (i11 == i12) {
                            break;
                        }
                        i11++;
                    }
                }
                return d10;
            }
            throw new IllegalArgumentException("inclusionCount cannot be greater than the inserted value count.");
        }
        throw new IllegalArgumentException("inclusionCount cannot be less than 1.");
    }

    @k
    public final double getMovingAverageWithWeightOnRecentValues(int i10) {
        if (i10 >= 1) {
            if (i10 <= count()) {
                double denominator = getDenominator(i10);
                int i11 = this.endIndex;
                int i12 = i11 - (i10 - 1);
                double d10 = 0.0d;
                if (i11 >= i12) {
                    while (true) {
                        d10 += this.valueList[i11] * (i10 / denominator);
                        i10--;
                        if (i11 == i12) {
                            break;
                        }
                        i11--;
                    }
                }
                return d10;
            }
            throw new IllegalArgumentException("inclusionCount cannot be greater than the inserted value count.");
        }
        throw new IllegalArgumentException("inclusionCount cannot be less than 1.");
    }

    public AverageCalculator(int i10, int i11, C14026x c14026x) {
        this((i11 & 1) != 0 ? 0 : i10);
    }
}
