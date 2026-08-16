package org.apache.commons.math3.ml.neuralnet.twod.util;

import java.lang.reflect.Array;
import java.util.Iterator;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.neuralnet.MapUtils;
import org.apache.commons.math3.ml.neuralnet.Network;
import org.apache.commons.math3.ml.neuralnet.Neuron;
import org.apache.commons.math3.ml.neuralnet.twod.NeuronSquareMesh2D;
import org.apache.commons.math3.ml.neuralnet.twod.util.LocationFinder;
import org.apache.commons.math3.util.Pair;

public class TopographicErrorHistogram implements MapDataVisualization {
    private final DistanceMeasure distance;
    private final boolean relativeCount;

    public TopographicErrorHistogram(boolean z10, DistanceMeasure distanceMeasure) {
        this.relativeCount = z10;
        this.distance = distanceMeasure;
    }

    @Override
    public double[][] computeImage(NeuronSquareMesh2D neuronSquareMesh2D, Iterable<double[]> iterable) {
        int numberOfRows = neuronSquareMesh2D.getNumberOfRows();
        int numberOfColumns = neuronSquareMesh2D.getNumberOfColumns();
        Network network = neuronSquareMesh2D.getNetwork();
        LocationFinder locationFinder = new LocationFinder(neuronSquareMesh2D);
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, numberOfRows, numberOfColumns);
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, numberOfRows, numberOfColumns);
        Iterator<double[]> it = iterable.iterator();
        while (it.hasNext()) {
            Pair<Neuron, Neuron> findBestAndSecondBest = MapUtils.findBestAndSecondBest(it.next(), neuronSquareMesh2D, this.distance);
            Neuron first = findBestAndSecondBest.getFirst();
            LocationFinder.Location location = locationFinder.getLocation(first);
            int row = location.getRow();
            int column = location.getColumn();
            int[] iArr2 = iArr[row];
            iArr2[column] = iArr2[column] + 1;
            if (!network.getNeighbours(first).contains(findBestAndSecondBest.getSecond())) {
                double[] dArr2 = dArr[row];
                dArr2[column] = dArr2[column] + 1.0d;
            }
        }
        if (this.relativeCount) {
            for (int i10 = 0; i10 < numberOfRows; i10++) {
                for (int i11 = 0; i11 < numberOfColumns; i11++) {
                    double[] dArr3 = dArr[i10];
                    dArr3[i11] = dArr3[i11] / iArr[i10][i11];
                }
            }
        }
        return dArr;
    }
}
