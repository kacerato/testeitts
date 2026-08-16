package org.apache.commons.math3.ml.neuralnet.twod.util;

import java.lang.reflect.Array;
import java.util.Iterator;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.neuralnet.MapUtils;
import org.apache.commons.math3.ml.neuralnet.twod.NeuronSquareMesh2D;
import org.apache.commons.math3.ml.neuralnet.twod.util.LocationFinder;

public class HitHistogram implements MapDataVisualization {
    private final DistanceMeasure distance;
    private final boolean normalizeCount;

    public HitHistogram(boolean z10, DistanceMeasure distanceMeasure) {
        this.normalizeCount = z10;
        this.distance = distanceMeasure;
    }

    @Override
    public double[][] computeImage(NeuronSquareMesh2D neuronSquareMesh2D, Iterable<double[]> iterable) {
        int numberOfRows = neuronSquareMesh2D.getNumberOfRows();
        int numberOfColumns = neuronSquareMesh2D.getNumberOfColumns();
        LocationFinder locationFinder = new LocationFinder(neuronSquareMesh2D);
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, numberOfRows, numberOfColumns);
        Iterator<double[]> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            LocationFinder.Location location = locationFinder.getLocation(MapUtils.findBest(it.next(), neuronSquareMesh2D, this.distance));
            int row = location.getRow();
            int column = location.getColumn();
            double[] dArr2 = dArr[row];
            dArr2[column] = dArr2[column] + 1.0d;
            i10++;
        }
        if (this.normalizeCount) {
            for (int i11 = 0; i11 < numberOfRows; i11++) {
                for (int i12 = 0; i12 < numberOfColumns; i12++) {
                    double[] dArr3 = dArr[i11];
                    dArr3[i12] = dArr3[i12] / i10;
                }
            }
        }
        return dArr;
    }
}
