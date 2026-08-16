package org.apache.commons.math3.ml.neuralnet.sofm;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.math3.analysis.function.Gaussian;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.neuralnet.MapUtils;
import org.apache.commons.math3.ml.neuralnet.Network;
import org.apache.commons.math3.ml.neuralnet.Neuron;
import org.apache.commons.math3.ml.neuralnet.UpdateAction;

public class KohonenUpdateAction implements UpdateAction {
    private final DistanceMeasure distance;
    private final LearningFactorFunction learningFactor;
    private final NeighbourhoodSizeFunction neighbourhoodSize;
    private final AtomicLong numberOfCalls = new AtomicLong(0);

    public KohonenUpdateAction(DistanceMeasure distanceMeasure, LearningFactorFunction learningFactorFunction, NeighbourhoodSizeFunction neighbourhoodSizeFunction) {
        this.distance = distanceMeasure;
        this.learningFactor = learningFactorFunction;
        this.neighbourhoodSize = neighbourhoodSizeFunction;
    }

    private boolean attemptNeuronUpdate(Neuron neuron, double[] dArr, double d10) {
        double[] features = neuron.getFeatures();
        return neuron.compareAndSetFeatures(features, computeFeatures(features, dArr, d10));
    }

    private double[] computeFeatures(double[] dArr, double[] dArr2, double d10) {
        ArrayRealVector arrayRealVector = new ArrayRealVector(dArr, false);
        return new ArrayRealVector(dArr2, false).subtract((RealVector) arrayRealVector).mapMultiplyToSelf(d10).add(arrayRealVector).toArray();
    }

    private Neuron findAndUpdateBestNeuron(Network network, double[] dArr, double d10) {
        Neuron findBest;
        do {
            findBest = MapUtils.findBest(dArr, network, this.distance);
        } while (!attemptNeuronUpdate(findBest, dArr, d10));
        return findBest;
    }

    private void updateNeighbouringNeuron(Neuron neuron, double[] dArr, double d10) {
        do {
        } while (!attemptNeuronUpdate(neuron, dArr, d10));
    }

    public long getNumberOfCalls() {
        return this.numberOfCalls.get();
    }

    @Override
    public void update(Network network, double[] dArr) {
        long incrementAndGet = this.numberOfCalls.incrementAndGet() - 1;
        double value = this.learningFactor.value(incrementAndGet);
        Neuron findAndUpdateBestNeuron = findAndUpdateBestNeuron(network, dArr, value);
        int value2 = this.neighbourhoodSize.value(incrementAndGet);
        Gaussian gaussian = new Gaussian(value, 0.0d, value2);
        if (value2 > 0) {
            Collection<Neuron> hashSet = new HashSet<>();
            hashSet.add(findAndUpdateBestNeuron);
            HashSet hashSet2 = new HashSet();
            hashSet2.add(findAndUpdateBestNeuron);
            int i10 = 1;
            do {
                hashSet = network.getNeighbours(hashSet, hashSet2);
                Iterator<Neuron> it = hashSet.iterator();
                while (it.hasNext()) {
                    updateNeighbouringNeuron(it.next(), dArr, gaussian.value(i10));
                }
                hashSet2.addAll(hashSet);
                i10++;
            } while (i10 <= value2);
        }
    }
}
