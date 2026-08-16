package org.apache.commons.math3.ml.neuralnet.twod.util;

import java.lang.reflect.Array;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.neuralnet.MapUtils;
import org.apache.commons.math3.ml.neuralnet.Neuron;
import org.apache.commons.math3.ml.neuralnet.twod.NeuronSquareMesh2D;
import org.apache.commons.math3.ml.neuralnet.twod.util.LocationFinder;

public class QuantizationError implements MapDataVisualization {
    private final DistanceMeasure distance;

    public QuantizationError(DistanceMeasure distanceMeasure) {
        this.distance = distanceMeasure;
    }

    @Override
    public double[][] computeImage(NeuronSquareMesh2D neuronSquareMesh2D, Iterable<double[]> iterable) {
        int numberOfRows = neuronSquareMesh2D.getNumberOfRows();
        int numberOfColumns = neuronSquareMesh2D.getNumberOfColumns();
        LocationFinder locationFinder = new LocationFinder(neuronSquareMesh2D);
        int i10 = 1;
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, numberOfRows, numberOfColumns);
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, numberOfRows, numberOfColumns);
        for (double[] dArr2 : iterable) {
            Neuron findBest = MapUtils.findBest(dArr2, neuronSquareMesh2D, this.distance);
            LocationFinder.Location location = locationFinder.getLocation(findBest);
            int row = location.getRow();
            int column = location.getColumn();
            int[] iArr2 = iArr[row];
            iArr2[column] = iArr2[column] + i10;
            double[] dArr3 = dArr[row];
            dArr3[column] = dArr3[column] + this.distance.compute(dArr2, findBest.getFeatures());
            i10 = 1;
        }
        for (int i11 = 0; i11 < numberOfRows; i11++) {
            for (int i12 = 0; i12 < numberOfColumns; i12++) {
                int i13 = iArr[i11][i12];
                if (i13 != 0) {
                    double[] dArr4 = dArr[i11];
                    dArr4[i12] = dArr4[i12] / i13;
                }
            }
        }
        return dArr;
    }
}
