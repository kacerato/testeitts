package com.simsilica.mathd.filter;

public class SimpleMovingMean implements Filterd {
    private int count;
    private int current;
    private int filterSize;
    private double total;
    private double[] values;

    public SimpleMovingMean(int i10) {
        this.filterSize = i10;
        this.values = new double[i10];
    }

    @Override
    public void addValue(double d10) {
        double d11 = this.total;
        double[] dArr = this.values;
        int i10 = this.current;
        double d12 = d11 - dArr[i10];
        this.total = d12;
        dArr[i10] = d10;
        this.total = d12 + d10;
        int i11 = this.count;
        int i12 = this.filterSize;
        if (i11 < i12) {
            this.count = i11 + 1;
        }
        int i13 = i10 + 1;
        this.current = i13;
        if (i13 >= i12) {
            this.current = i13 - i12;
        }
    }

    @Override
    public double getFilteredValue() {
        int i10 = this.count;
        if (i10 == 0) {
            return 0.0d;
        }
        return this.total / i10;
    }
}
