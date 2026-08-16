package org.apache.commons.math3.ml.neuralnet.twod.util;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.neuralnet.Network;
import org.apache.commons.math3.ml.neuralnet.Neuron;
import org.apache.commons.math3.ml.neuralnet.twod.NeuronSquareMesh2D;

public class UnifiedDistanceMatrix implements MapVisualization {
    private final DistanceMeasure distance;
    private final boolean individualDistances;

    public UnifiedDistanceMatrix(boolean z10, DistanceMeasure distanceMeasure) {
        this.individualDistances = z10;
        this.distance = distanceMeasure;
    }

    private double[][] averageDistances(NeuronSquareMesh2D neuronSquareMesh2D) {
        int numberOfRows = neuronSquareMesh2D.getNumberOfRows();
        int numberOfColumns = neuronSquareMesh2D.getNumberOfColumns();
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, numberOfRows, numberOfColumns);
        Network network = neuronSquareMesh2D.getNetwork();
        for (int i10 = 0; i10 < numberOfRows; i10++) {
            for (int i11 = 0; i11 < numberOfColumns; i11++) {
                Neuron neuron = neuronSquareMesh2D.getNeuron(i10, i11);
                Collection<Neuron> neighbours = network.getNeighbours(neuron);
                double[] features = neuron.getFeatures();
                Iterator<Neuron> it = neighbours.iterator();
                double d10 = 0.0d;
                int i12 = 0;
                while (it.hasNext()) {
                    i12++;
                    d10 += this.distance.compute(features, it.next().getFeatures());
                }
                dArr[i10][i11] = d10 / i12;
            }
        }
        return dArr;
    }

    private double[][] individualDistances(NeuronSquareMesh2D neuronSquareMesh2D) {
        int numberOfRows = neuronSquareMesh2D.getNumberOfRows();
        int numberOfColumns = neuronSquareMesh2D.getNumberOfColumns();
        int i10 = 0;
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, (numberOfRows * 2) + 1, (numberOfColumns * 2) + 1);
        int i11 = 0;
        while (i11 < numberOfRows) {
            int i12 = i11 * 2;
            int i13 = i12 + 1;
            for (int i14 = i10; i14 < numberOfColumns; i14++) {
                int i15 = i14 * 2;
                int i16 = i15 + 1;
                double[] features = neuronSquareMesh2D.getNeuron(i11, i14).getFeatures();
                Neuron neuron = neuronSquareMesh2D.getNeuron(i11, i14, NeuronSquareMesh2D.HorizontalDirection.RIGHT, NeuronSquareMesh2D.VerticalDirection.CENTER);
                if (neuron != null) {
                    dArr[i13][i15 + 2] = this.distance.compute(features, neuron.getFeatures());
                }
                Neuron neuron2 = neuronSquareMesh2D.getNeuron(i11, i14, NeuronSquareMesh2D.HorizontalDirection.CENTER, NeuronSquareMesh2D.VerticalDirection.DOWN);
                if (neuron2 != null) {
                    dArr[i12 + 2][i16] = this.distance.compute(features, neuron2.getFeatures());
                }
            }
            i11++;
            i10 = 0;
        }
        for (int i17 = 0; i17 < numberOfRows; i17++) {
            int i18 = i17 * 2;
            for (int i19 = 0; i19 < numberOfColumns; i19++) {
                int i20 = i19 * 2;
                Neuron neuron3 = neuronSquareMesh2D.getNeuron(i17, i19);
                NeuronSquareMesh2D.HorizontalDirection horizontalDirection = NeuronSquareMesh2D.HorizontalDirection.RIGHT;
                Neuron neuron4 = neuronSquareMesh2D.getNeuron(i17, i19, horizontalDirection, NeuronSquareMesh2D.VerticalDirection.CENTER);
                NeuronSquareMesh2D.HorizontalDirection horizontalDirection2 = NeuronSquareMesh2D.HorizontalDirection.CENTER;
                NeuronSquareMesh2D.VerticalDirection verticalDirection = NeuronSquareMesh2D.VerticalDirection.DOWN;
                Neuron neuron5 = neuronSquareMesh2D.getNeuron(i17, i19, horizontalDirection2, verticalDirection);
                Neuron neuron6 = neuronSquareMesh2D.getNeuron(i17, i19, horizontalDirection, verticalDirection);
                dArr[i18 + 2][i20 + 2] = ((neuron6 == null ? 0.0d : this.distance.compute(neuron3.getFeatures(), neuron6.getFeatures())) + ((neuron4 == null || neuron5 == null) ? 0.0d : this.distance.compute(neuron4.getFeatures(), neuron5.getFeatures()))) * 0.5d;
            }
        }
        int length = dArr.length - 1;
        double[] dArr2 = dArr[length];
        dArr[0] = dArr2;
        int length2 = dArr2.length - 1;
        for (int i21 = 0; i21 < length; i21++) {
            double[] dArr3 = dArr[i21];
            dArr3[0] = dArr3[length2];
        }
        return dArr;
    }

    @Override
    public double[][] computeImage(NeuronSquareMesh2D neuronSquareMesh2D) {
        return this.individualDistances ? individualDistances(neuronSquareMesh2D) : averageDistances(neuronSquareMesh2D);
    }
}
