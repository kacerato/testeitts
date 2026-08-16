package org.apache.commons.math3.ml.neuralnet.twod.util;

import java.lang.reflect.Array;
import java.util.Iterator;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.neuralnet.MapUtils;
import org.apache.commons.math3.ml.neuralnet.Neuron;
import org.apache.commons.math3.ml.neuralnet.twod.NeuronSquareMesh2D;
import org.apache.commons.math3.ml.neuralnet.twod.util.LocationFinder;

public class SmoothedDataHistogram implements MapDataVisualization {
    private final DistanceMeasure distance;
    private final double membershipNormalization;
    private final int smoothingBins;

    public SmoothedDataHistogram(int i10, DistanceMeasure distanceMeasure) {
        this.smoothingBins = i10;
        this.distance = distanceMeasure;
        double d10 = 0.0d;
        for (int i11 = 0; i11 < i10; i11++) {
            d10 += i10 - i11;
        }
        this.membershipNormalization = 1.0d / d10;
    }

    @Override
    public double[][] computeImage(NeuronSquareMesh2D neuronSquareMesh2D, Iterable<double[]> iterable) {
        int numberOfRows = neuronSquareMesh2D.getNumberOfRows();
        int numberOfColumns = neuronSquareMesh2D.getNumberOfColumns();
        int i10 = numberOfRows * numberOfColumns;
        if (i10 < this.smoothingBins) {
            throw new NumberIsTooSmallException(Integer.valueOf(i10), Integer.valueOf(this.smoothingBins), true);
        }
        LocationFinder locationFinder = new LocationFinder(neuronSquareMesh2D);
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, numberOfRows, numberOfColumns);
        Iterator<double[]> it = iterable.iterator();
        while (it.hasNext()) {
            Neuron[] sort = MapUtils.sort(it.next(), neuronSquareMesh2D.getNetwork(), this.distance);
            for (int i11 = 0; i11 < this.smoothingBins; i11++) {
                LocationFinder.Location location = locationFinder.getLocation(sort[i11]);
                int row = location.getRow();
                int column = location.getColumn();
                double[] dArr2 = dArr[row];
                dArr2[column] = dArr2[column] + ((this.smoothingBins - i11) * this.membershipNormalization);
            }
        }
        return dArr;
    }
}
