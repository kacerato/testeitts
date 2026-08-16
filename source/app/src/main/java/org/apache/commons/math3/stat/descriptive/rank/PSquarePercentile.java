package org.apache.commons.math3.stat.descriptive.rank;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.apache.commons.math3.analysis.interpolation.LinearInterpolator;
import org.apache.commons.math3.analysis.interpolation.NevilleInterpolator;
import org.apache.commons.math3.analysis.interpolation.UnivariateInterpolator;
import org.apache.commons.math3.exception.InsufficientDataException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

public class PSquarePercentile extends AbstractStorelessUnivariateStatistic implements StorelessUnivariateStatistic, Serializable {
    private static final DecimalFormat DECIMAL_FORMAT = new DecimalFormat("00.00");
    private static final double DEFAULT_QUANTILE_DESIRED = 50.0d;
    private static final int PSQUARE_CONSTANT = 5;
    private static final long serialVersionUID = 2283912083175715479L;
    private long countOfObservations;
    private final List<Double> initialFive;
    private transient double lastObservation;
    private PSquareMarkers markers;
    private double pValue;
    private final double quantile;

    public static class FixedCapacityList<E> extends ArrayList<E> implements Serializable {
        private static final long serialVersionUID = 2283952083075725479L;
        private final int capacity;

        public FixedCapacityList(int i10) {
            super(i10);
            this.capacity = i10;
        }

        @Override
        public boolean add(E e10) {
            if (size() < this.capacity) {
                return super.add(e10);
            }
            return false;
        }

        @Override
        public boolean addAll(Collection<? extends E> collection) {
            if (collection == null || collection.size() + size() > this.capacity) {
                return false;
            }
            return super.addAll(collection);
        }
    }

    public static class Markers implements PSquareMarkers, Serializable {
        private static final int HIGH = 4;
        private static final int LOW = 2;
        private static final long serialVersionUID = 1;

        private transient int f100349k;
        private final Marker[] markerArray;

        private void adjustHeightsOfMarkers() {
            for (int i10 = 2; i10 <= 4; i10++) {
                estimate(i10);
            }
        }

        private static Marker[] createMarkerArray(List<Double> list, double d10) {
            int size = list == null ? -1 : list.size();
            if (size < 5) {
                throw new InsufficientDataException(LocalizedFormats.INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE, Integer.valueOf(size), 5);
            }
            Collections.sort(list);
            double d11 = d10 * 2.0d;
            return new Marker[]{new Marker(), new Marker(list.get(0).doubleValue(), 1.0d, 0.0d, 1.0d), new Marker(list.get(1).doubleValue(), d11 + 1.0d, d10 / 2.0d, 2.0d), new Marker(list.get(2).doubleValue(), (4.0d * d10) + 1.0d, d10, 3.0d), new Marker(list.get(3).doubleValue(), d11 + 3.0d, (d10 + 1.0d) / 2.0d, 4.0d), new Marker(list.get(4).doubleValue(), 5.0d, 1.0d, 5.0d)};
        }

        private int findCellAndUpdateMinMax(double d10) {
            this.f100349k = -1;
            if (d10 < height(1)) {
                this.markerArray[1].markerHeight = d10;
                this.f100349k = 1;
            } else if (d10 < height(2)) {
                this.f100349k = 1;
            } else if (d10 < height(3)) {
                this.f100349k = 2;
            } else if (d10 < height(4)) {
                this.f100349k = 3;
            } else if (d10 <= height(5)) {
                this.f100349k = 4;
            } else {
                this.markerArray[5].markerHeight = d10;
                this.f100349k = 4;
            }
            return this.f100349k;
        }

        private void incrementPositions(int i10, int i11, int i12) {
            while (i11 <= i12) {
                this.markerArray[i11].incrementPosition(i10);
                i11++;
            }
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            int i10 = 1;
            while (i10 < 5) {
                Marker[] markerArr = this.markerArray;
                int i11 = i10 + 1;
                markerArr[i10].previous(markerArr[i10 - 1]).next(this.markerArray[i11]).index(i10);
                i10 = i11;
            }
            Marker marker = this.markerArray[0];
            marker.previous(marker).next(this.markerArray[1]).index(0);
            Marker[] markerArr2 = this.markerArray;
            markerArr2[5].previous(markerArr2[4]).next(this.markerArray[5]).index(5);
        }

        private void updateDesiredPositions() {
            int i10 = 1;
            while (true) {
                Marker[] markerArr = this.markerArray;
                if (i10 >= markerArr.length) {
                    return;
                }
                markerArr[i10].updateDesiredPosition();
                i10++;
            }
        }

        @Override
        public Object clone() {
            return new Markers(new Marker[]{new Marker(), (Marker) this.markerArray[1].clone(), (Marker) this.markerArray[2].clone(), (Marker) this.markerArray[3].clone(), (Marker) this.markerArray[4].clone(), (Marker) this.markerArray[5].clone()});
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof Markers)) {
                return false;
            }
            return Arrays.deepEquals(this.markerArray, ((Markers) obj).markerArray);
        }

        @Override
        public double estimate(int i10) {
            if (i10 < 2 || i10 > 4) {
                throw new OutOfRangeException(Integer.valueOf(i10), 2, 4);
            }
            return this.markerArray[i10].estimate();
        }

        @Override
        public double getPercentileValue() {
            return height(3);
        }

        public int hashCode() {
            return Arrays.deepHashCode(this.markerArray);
        }

        @Override
        public double height(int i10) {
            Marker[] markerArr = this.markerArray;
            if (i10 >= markerArr.length || i10 <= 0) {
                throw new OutOfRangeException(Integer.valueOf(i10), 1, Integer.valueOf(this.markerArray.length));
            }
            return markerArr[i10].markerHeight;
        }

        @Override
        public double processDataPoint(double d10) {
            incrementPositions(1, findCellAndUpdateMinMax(d10) + 1, 5);
            updateDesiredPositions();
            adjustHeightsOfMarkers();
            return getPercentileValue();
        }

        public String toString() {
            return String.format("m1=[%s],m2=[%s],m3=[%s],m4=[%s],m5=[%s]", this.markerArray[1].toString(), this.markerArray[2].toString(), this.markerArray[3].toString(), this.markerArray[4].toString(), this.markerArray[5].toString());
        }

        private Markers(Marker[] markerArr) {
            this.f100349k = -1;
            MathUtils.checkNotNull(markerArr);
            this.markerArray = markerArr;
            int i10 = 1;
            while (i10 < 5) {
                Marker[] markerArr2 = this.markerArray;
                int i11 = i10 + 1;
                markerArr2[i10].previous(markerArr2[i10 - 1]).next(this.markerArray[i11]).index(i10);
                i10 = i11;
            }
            Marker marker = this.markerArray[0];
            marker.previous(marker).next(this.markerArray[1]).index(0);
            Marker[] markerArr3 = this.markerArray;
            markerArr3[5].previous(markerArr3[4]).next(this.markerArray[5]).index(5);
        }

        private Markers(List<Double> list, double d10) {
            this(createMarkerArray(list, d10));
        }
    }

    public interface PSquareMarkers extends Cloneable {
        Object clone();

        double estimate(int i10);

        double getPercentileValue();

        double height(int i10);

        double processDataPoint(double d10);
    }

    public PSquarePercentile(double d10) {
        this.initialFive = new FixedCapacityList(5);
        this.markers = null;
        this.pValue = Double.NaN;
        if (d10 <= 100.0d && d10 >= 0.0d) {
            this.quantile = d10 / 100.0d;
            return;
        }
        throw new OutOfRangeException(LocalizedFormats.OUT_OF_RANGE, Double.valueOf(d10), 0, 100);
    }

    private double maximum() {
        PSquareMarkers pSquareMarkers = this.markers;
        if (pSquareMarkers != null) {
            return pSquareMarkers.height(5);
        }
        if (this.initialFive.isEmpty()) {
            return Double.NaN;
        }
        return this.initialFive.get(r0.size() - 1).doubleValue();
    }

    private double minimum() {
        PSquareMarkers pSquareMarkers = this.markers;
        if (pSquareMarkers != null) {
            return pSquareMarkers.height(1);
        }
        if (this.initialFive.isEmpty()) {
            return Double.NaN;
        }
        return this.initialFive.get(0).doubleValue();
    }

    public static PSquareMarkers newMarkers(List<Double> list, double d10) {
        return new Markers(list, d10);
    }

    @Override
    public void clear() {
        this.markers = null;
        this.initialFive.clear();
        this.countOfObservations = 0L;
        this.pValue = Double.NaN;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof PSquarePercentile)) {
            PSquarePercentile pSquarePercentile = (PSquarePercentile) obj;
            PSquareMarkers pSquareMarkers = this.markers;
            boolean z10 = (pSquareMarkers == null || pSquarePercentile.markers == null) ? false : true;
            boolean z11 = pSquareMarkers == null && pSquarePercentile.markers == null;
            if (z10) {
                z11 = pSquareMarkers.equals(pSquarePercentile.markers);
            }
            if (z11 && getN() == pSquarePercentile.getN()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public long getN() {
        return this.countOfObservations;
    }

    @Override
    public double getResult() {
        if (Double.compare(this.quantile, 1.0d) == 0) {
            this.pValue = maximum();
        } else if (Double.compare(this.quantile, 0.0d) == 0) {
            this.pValue = minimum();
        }
        return this.pValue;
    }

    @Override
    public int hashCode() {
        double result = getResult();
        if (Double.isNaN(result)) {
            result = 37.0d;
        }
        return Arrays.hashCode(new double[]{result, this.quantile, this.markers == null ? 0.0d : r2.hashCode(), this.countOfObservations});
    }

    @Override
    public void increment(double d10) {
        this.countOfObservations++;
        this.lastObservation = d10;
        if (this.markers == null) {
            if (this.initialFive.add(Double.valueOf(d10))) {
                Collections.sort(this.initialFive);
                this.pValue = this.initialFive.get((int) (this.quantile * (r5.size() - 1))).doubleValue();
                return;
            }
            this.markers = newMarkers(this.initialFive, this.quantile);
        }
        this.pValue = this.markers.processDataPoint(d10);
    }

    public double quantile() {
        return this.quantile;
    }

    public String toString() {
        if (this.markers != null) {
            return String.format("obs=%s markers=%s", DECIMAL_FORMAT.format(this.lastObservation), this.markers.toString());
        }
        DecimalFormat decimalFormat = DECIMAL_FORMAT;
        return String.format("obs=%s pValue=%s", decimalFormat.format(this.lastObservation), decimalFormat.format(this.pValue));
    }

    public static class Marker implements Serializable, Cloneable {
        private static final long serialVersionUID = -3575879478288538431L;
        private double desiredMarkerIncrement;
        private double desiredMarkerPosition;
        private int index;
        private double intMarkerPosition;
        private transient UnivariateInterpolator linear;
        private double markerHeight;
        private transient Marker next;
        private final UnivariateInterpolator nonLinear;
        private transient Marker previous;

        private double difference() {
            return this.desiredMarkerPosition - this.intMarkerPosition;
        }

        public double estimate() {
            double difference = difference();
            Marker marker = this.next;
            double d10 = marker.intMarkerPosition;
            double d11 = this.intMarkerPosition;
            boolean z10 = d10 - d11 > 1.0d;
            Marker marker2 = this.previous;
            double d12 = marker2.intMarkerPosition;
            boolean z11 = d12 - d11 < -1.0d;
            if ((difference >= 1.0d && z10) || (difference <= -1.0d && z11)) {
                int i10 = difference >= 0.0d ? 1 : -1;
                double[] dArr = {d12, d11, d10};
                double[] dArr2 = {marker2.markerHeight, this.markerHeight, marker.markerHeight};
                double d13 = d11 + i10;
                double value = this.nonLinear.interpolate(dArr, dArr2).value(d13);
                this.markerHeight = value;
                if (isEstimateBad(dArr2, value)) {
                    double d14 = dArr[1];
                    int i11 = (d13 - d14 > 0.0d ? 1 : -1) + 1;
                    double[] dArr3 = {d14, dArr[i11]};
                    double[] dArr4 = {dArr2[1], dArr2[i11]};
                    MathArrays.sortInPlace(dArr3, dArr4);
                    this.markerHeight = this.linear.interpolate(dArr3, dArr4).value(d13);
                }
                incrementPosition(i10);
            }
            return this.markerHeight;
        }

        public void incrementPosition(int i10) {
            this.intMarkerPosition += i10;
        }

        public Marker index(int i10) {
            this.index = i10;
            return this;
        }

        private boolean isEstimateBad(double[] dArr, double d10) {
            return d10 <= dArr[0] || d10 >= dArr[2];
        }

        public Marker next(Marker marker) {
            MathUtils.checkNotNull(marker);
            this.next = marker;
            return this;
        }

        public Marker previous(Marker marker) {
            MathUtils.checkNotNull(marker);
            this.previous = marker;
            return this;
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.next = this;
            this.previous = this;
            this.linear = new LinearInterpolator();
        }

        public void updateDesiredPosition() {
            this.desiredMarkerPosition += this.desiredMarkerIncrement;
        }

        public Object clone() {
            return new Marker(this.markerHeight, this.desiredMarkerPosition, this.desiredMarkerIncrement, this.intMarkerPosition);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && (obj instanceof Marker)) {
                Marker marker = (Marker) obj;
                if (Double.compare(this.markerHeight, marker.markerHeight) == 0 && Double.compare(this.intMarkerPosition, marker.intMarkerPosition) == 0 && Double.compare(this.desiredMarkerPosition, marker.desiredMarkerPosition) == 0 && Double.compare(this.desiredMarkerIncrement, marker.desiredMarkerIncrement) == 0 && this.next.index == marker.next.index && this.previous.index == marker.previous.index) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(new double[]{this.markerHeight, this.intMarkerPosition, this.desiredMarkerIncrement, this.desiredMarkerPosition, this.previous.index, this.next.index});
        }

        public String toString() {
            return String.format("index=%.0f,n=%.0f,np=%.2f,q=%.2f,dn=%.2f,prev=%d,next=%d", Double.valueOf(this.index), Double.valueOf(Precision.round(this.intMarkerPosition, 0)), Double.valueOf(Precision.round(this.desiredMarkerPosition, 2)), Double.valueOf(Precision.round(this.markerHeight, 2)), Double.valueOf(Precision.round(this.desiredMarkerIncrement, 2)), Integer.valueOf(this.previous.index), Integer.valueOf(this.next.index));
        }

        private Marker() {
            this.nonLinear = new NevilleInterpolator();
            this.linear = new LinearInterpolator();
            this.previous = this;
            this.next = this;
        }

        private Marker(double d10, double d11, double d12, double d13) {
            this();
            this.markerHeight = d10;
            this.desiredMarkerPosition = d11;
            this.desiredMarkerIncrement = d12;
            this.intMarkerPosition = d13;
        }
    }

    @Override
    public StorelessUnivariateStatistic copy() {
        PSquarePercentile pSquarePercentile = new PSquarePercentile(this.quantile * 100.0d);
        PSquareMarkers pSquareMarkers = this.markers;
        if (pSquareMarkers != null) {
            pSquarePercentile.markers = (PSquareMarkers) pSquareMarkers.clone();
        }
        pSquarePercentile.countOfObservations = this.countOfObservations;
        pSquarePercentile.pValue = this.pValue;
        pSquarePercentile.initialFive.clear();
        pSquarePercentile.initialFive.addAll(this.initialFive);
        return pSquarePercentile;
    }

    public PSquarePercentile() {
        this(DEFAULT_QUANTILE_DESIRED);
    }
}
