package org.apache.commons.math3.ml.neuralnet.oned;

import java.io.ObjectInputStream;
import java.io.Serializable;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.ml.neuralnet.FeatureInitializer;
import org.apache.commons.math3.ml.neuralnet.Network;
import org.apache.commons.math3.ml.neuralnet.Neuron;

public class NeuronString implements Serializable {
    private static final long serialVersionUID = 1;
    private final long[] identifiers;
    private final Network network;
    private final int size;
    private final boolean wrap;

    public static class SerializationProxy implements Serializable {
        private static final long serialVersionUID = 20130226;
        private final double[][] featuresList;
        private final boolean wrap;

        public SerializationProxy(boolean z10, double[][] dArr) {
            this.wrap = z10;
            this.featuresList = dArr;
        }

        private Object readResolve() {
            return new NeuronString(this.wrap, this.featuresList);
        }
    }

    public NeuronString(boolean z10, double[][] dArr) {
        int length = dArr.length;
        this.size = length;
        if (length >= 2) {
            this.wrap = z10;
            this.network = new Network(0L, dArr[0].length);
            this.identifiers = new long[length];
            for (int i10 = 0; i10 < this.size; i10++) {
                this.identifiers[i10] = this.network.createNeuron(dArr[i10]);
            }
            createLinks();
            return;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(length), 2, true);
    }

    private void createLinks() {
        int i10;
        int i11 = 0;
        while (true) {
            i10 = this.size;
            if (i11 >= i10 - 1) {
                break;
            }
            Network network = this.network;
            Neuron neuron = network.getNeuron(i11);
            i11++;
            network.addLink(neuron, this.network.getNeuron(i11));
        }
        for (int i12 = i10 - 1; i12 > 0; i12--) {
            Network network2 = this.network;
            network2.addLink(network2.getNeuron(i12), this.network.getNeuron(i12 - 1));
        }
        if (this.wrap) {
            Network network3 = this.network;
            network3.addLink(network3.getNeuron(0L), this.network.getNeuron(this.size - 1));
            Network network4 = this.network;
            network4.addLink(network4.getNeuron(this.size - 1), this.network.getNeuron(0L));
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new IllegalStateException();
    }

    private Object writeReplace() {
        double[][] dArr = new double[this.size];
        for (int i10 = 0; i10 < this.size; i10++) {
            dArr[i10] = getFeatures(i10);
        }
        return new SerializationProxy(this.wrap, dArr);
    }

    public double[] getFeatures(int i10) {
        if (i10 < 0 || i10 >= this.size) {
            throw new OutOfRangeException(Integer.valueOf(i10), 0, Integer.valueOf(this.size - 1));
        }
        return this.network.getNeuron(this.identifiers[i10]).getFeatures();
    }

    public Network getNetwork() {
        return this.network;
    }

    public int getSize() {
        return this.size;
    }

    public NeuronString(int i10, boolean z10, FeatureInitializer[] featureInitializerArr) {
        if (i10 >= 2) {
            this.size = i10;
            this.wrap = z10;
            this.identifiers = new long[i10];
            int length = featureInitializerArr.length;
            this.network = new Network(0L, length);
            for (int i11 = 0; i11 < i10; i11++) {
                double[] dArr = new double[length];
                for (int i12 = 0; i12 < length; i12++) {
                    dArr[i12] = featureInitializerArr[i12].value();
                }
                this.identifiers[i11] = this.network.createNeuron(dArr);
            }
            createLinks();
            return;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(i10), 2, true);
    }
}
