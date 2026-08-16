package org.apache.commons.math3.ml.neuralnet;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.neuralnet.twod.NeuronSquareMesh2D;
import org.apache.commons.math3.util.Pair;

public class MapUtils {

    public static class PairNeuronDouble {
        static final Comparator<PairNeuronDouble> COMPARATOR = new Comparator<PairNeuronDouble>() {
            @Override
            public int compare(PairNeuronDouble pairNeuronDouble, PairNeuronDouble pairNeuronDouble2) {
                return Double.compare(pairNeuronDouble.value, pairNeuronDouble2.value);
            }
        };
        private final Neuron neuron;
        private final double value;

        public PairNeuronDouble(Neuron neuron, double d10) {
            this.neuron = neuron;
            this.value = d10;
        }

        public Neuron getNeuron() {
            return this.neuron;
        }
    }

    private MapUtils() {
    }

    public static int[][] computeHitHistogram(Iterable<double[]> iterable, NeuronSquareMesh2D neuronSquareMesh2D, DistanceMeasure distanceMeasure) {
        HashMap hashMap = new HashMap();
        Network network = neuronSquareMesh2D.getNetwork();
        Iterator<double[]> it = iterable.iterator();
        while (it.hasNext()) {
            Neuron findBest = findBest(it.next(), network, distanceMeasure);
            Integer num = (Integer) hashMap.get(findBest);
            if (num == null) {
                hashMap.put(findBest, 1);
            } else {
                hashMap.put(findBest, Integer.valueOf(num.intValue() + 1));
            }
        }
        int numberOfRows = neuronSquareMesh2D.getNumberOfRows();
        int numberOfColumns = neuronSquareMesh2D.getNumberOfColumns();
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, numberOfRows, numberOfColumns);
        for (int i10 = 0; i10 < numberOfRows; i10++) {
            for (int i11 = 0; i11 < numberOfColumns; i11++) {
                Integer num2 = (Integer) hashMap.get(neuronSquareMesh2D.getNeuron(i10, i11));
                if (num2 == null) {
                    iArr[i10][i11] = 0;
                } else {
                    iArr[i10][i11] = num2.intValue();
                }
            }
        }
        return iArr;
    }

    public static double computeQuantizationError(Iterable<double[]> iterable, Iterable<Neuron> iterable2, DistanceMeasure distanceMeasure) {
        double d10 = 0.0d;
        int i10 = 0;
        for (double[] dArr : iterable) {
            i10++;
            d10 += distanceMeasure.compute(dArr, findBest(dArr, iterable2, distanceMeasure).getFeatures());
        }
        if (i10 != 0) {
            return d10 / i10;
        }
        throw new NoDataException();
    }

    public static double computeTopographicError(Iterable<double[]> iterable, Network network, DistanceMeasure distanceMeasure) {
        Iterator<double[]> it = iterable.iterator();
        int i10 = 0;
        int i11 = 0;
        while (it.hasNext()) {
            i10++;
            Pair<Neuron, Neuron> findBestAndSecondBest = findBestAndSecondBest(it.next(), network, distanceMeasure);
            if (!network.getNeighbours(findBestAndSecondBest.getFirst()).contains(findBestAndSecondBest.getSecond())) {
                i11++;
            }
        }
        if (i10 != 0) {
            return i11 / i10;
        }
        throw new NoDataException();
    }

    public static double[][] computeU(NeuronSquareMesh2D neuronSquareMesh2D, DistanceMeasure distanceMeasure) {
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
                    d10 += distanceMeasure.compute(features, it.next().getFeatures());
                }
                dArr[i10][i11] = d10 / i12;
            }
        }
        return dArr;
    }

    public static Neuron findBest(double[] dArr, Iterable<Neuron> iterable, DistanceMeasure distanceMeasure) {
        Neuron neuron = null;
        double d10 = Double.POSITIVE_INFINITY;
        for (Neuron neuron2 : iterable) {
            double compute = distanceMeasure.compute(neuron2.getFeatures(), dArr);
            if (compute < d10) {
                neuron = neuron2;
                d10 = compute;
            }
        }
        return neuron;
    }

    public static Pair<Neuron, Neuron> findBestAndSecondBest(double[] dArr, Iterable<Neuron> iterable, DistanceMeasure distanceMeasure) {
        Neuron[] neuronArr = {null, null};
        double[] dArr2 = {Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY};
        for (Neuron neuron : iterable) {
            double compute = distanceMeasure.compute(neuron.getFeatures(), dArr);
            double d10 = dArr2[0];
            if (compute < d10) {
                dArr2[1] = d10;
                neuronArr[1] = neuronArr[0];
                dArr2[0] = compute;
                neuronArr[0] = neuron;
            } else if (compute < dArr2[1]) {
                dArr2[1] = compute;
                neuronArr[1] = neuron;
            }
        }
        return new Pair<>(neuronArr[0], neuronArr[1]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Neuron[] sort(double[] dArr, Iterable<Neuron> iterable, DistanceMeasure distanceMeasure) {
        ArrayList arrayList = new ArrayList();
        for (Neuron neuron : iterable) {
            arrayList.add(new PairNeuronDouble(neuron, distanceMeasure.compute(neuron.getFeatures(), dArr)));
        }
        Collections.sort(arrayList, PairNeuronDouble.COMPARATOR);
        int size = arrayList.size();
        Neuron[] neuronArr = new Neuron[size];
        for (int i10 = 0; i10 < size; i10++) {
            neuronArr[i10] = ((PairNeuronDouble) arrayList.get(i10)).getNeuron();
        }
        return neuronArr;
    }
}
