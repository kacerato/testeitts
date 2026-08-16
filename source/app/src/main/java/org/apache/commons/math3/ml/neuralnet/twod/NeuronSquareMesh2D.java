package org.apache.commons.math3.ml.neuralnet.twod;

import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.ml.neuralnet.FeatureInitializer;
import org.apache.commons.math3.ml.neuralnet.Network;
import org.apache.commons.math3.ml.neuralnet.Neuron;
import org.apache.commons.math3.ml.neuralnet.SquareNeighbourhood;

public class NeuronSquareMesh2D implements Iterable<Neuron>, Serializable {
    private static final long serialVersionUID = 1;
    private final long[][] identifiers;
    private final SquareNeighbourhood neighbourhood;
    private final Network network;
    private final int numberOfColumns;
    private final int numberOfRows;
    private final boolean wrapColumns;
    private final boolean wrapRows;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$ml$neuralnet$SquareNeighbourhood;
        static final int[] $SwitchMap$org$apache$commons$math3$ml$neuralnet$twod$NeuronSquareMesh2D$HorizontalDirection;
        static final int[] $SwitchMap$org$apache$commons$math3$ml$neuralnet$twod$NeuronSquareMesh2D$VerticalDirection;

        static {
            int[] iArr = new int[SquareNeighbourhood.values().length];
            $SwitchMap$org$apache$commons$math3$ml$neuralnet$SquareNeighbourhood = iArr;
            try {
                iArr[SquareNeighbourhood.MOORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ml$neuralnet$SquareNeighbourhood[SquareNeighbourhood.VON_NEUMANN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[VerticalDirection.values().length];
            $SwitchMap$org$apache$commons$math3$ml$neuralnet$twod$NeuronSquareMesh2D$VerticalDirection = iArr2;
            try {
                iArr2[VerticalDirection.UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ml$neuralnet$twod$NeuronSquareMesh2D$VerticalDirection[VerticalDirection.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ml$neuralnet$twod$NeuronSquareMesh2D$VerticalDirection[VerticalDirection.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[HorizontalDirection.values().length];
            $SwitchMap$org$apache$commons$math3$ml$neuralnet$twod$NeuronSquareMesh2D$HorizontalDirection = iArr3;
            try {
                iArr3[HorizontalDirection.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ml$neuralnet$twod$NeuronSquareMesh2D$HorizontalDirection[HorizontalDirection.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$ml$neuralnet$twod$NeuronSquareMesh2D$HorizontalDirection[HorizontalDirection.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public enum HorizontalDirection {
        RIGHT,
        CENTER,
        LEFT
    }

    public static class SerializationProxy implements Serializable {
        private static final long serialVersionUID = 20130226;
        private final double[][][] featuresList;
        private final SquareNeighbourhood neighbourhood;
        private final boolean wrapColumns;
        private final boolean wrapRows;

        public SerializationProxy(boolean z10, boolean z11, SquareNeighbourhood squareNeighbourhood, double[][][] dArr) {
            this.wrapRows = z10;
            this.wrapColumns = z11;
            this.neighbourhood = squareNeighbourhood;
            this.featuresList = dArr;
        }

        private Object readResolve() {
            return new NeuronSquareMesh2D(this.wrapRows, this.wrapColumns, this.neighbourhood, this.featuresList);
        }
    }

    public enum VerticalDirection {
        UP,
        CENTER,
        DOWN
    }

    public NeuronSquareMesh2D(boolean z10, boolean z11, SquareNeighbourhood squareNeighbourhood, double[][][] dArr) {
        int length = dArr.length;
        this.numberOfRows = length;
        double[][] dArr2 = dArr[0];
        int length2 = dArr2.length;
        this.numberOfColumns = length2;
        if (length < 2) {
            throw new NumberIsTooSmallException(Integer.valueOf(length), 2, true);
        }
        if (length2 >= 2) {
            this.wrapRows = z10;
            this.wrapColumns = z11;
            this.neighbourhood = squareNeighbourhood;
            this.network = new Network(0L, dArr2[0].length);
            this.identifiers = (long[][]) Array.newInstance(Long.TYPE, length, length2);
            for (int i10 = 0; i10 < this.numberOfRows; i10++) {
                for (int i11 = 0; i11 < this.numberOfColumns; i11++) {
                    this.identifiers[i10][i11] = this.network.createNeuron(dArr[i10][i11]);
                }
            }
            createLinks();
            return;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(length2), 2, true);
    }

    private void createLinks() {
        ArrayList arrayList = new ArrayList();
        int i10 = this.numberOfRows - 1;
        int i11 = this.numberOfColumns - 1;
        for (int i12 = 0; i12 < this.numberOfRows; i12++) {
            for (int i13 = 0; i13 < this.numberOfColumns; i13++) {
                arrayList.clear();
                int i14 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$ml$neuralnet$SquareNeighbourhood[this.neighbourhood.ordinal()];
                if (i14 == 1) {
                    if (i12 > 0) {
                        if (i13 > 0) {
                            arrayList.add(Long.valueOf(this.identifiers[i12 - 1][i13 - 1]));
                        }
                        if (i13 < i11) {
                            arrayList.add(Long.valueOf(this.identifiers[i12 - 1][i13 + 1]));
                        }
                    }
                    if (i12 < i10) {
                        if (i13 > 0) {
                            arrayList.add(Long.valueOf(this.identifiers[i12 + 1][i13 - 1]));
                        }
                        if (i13 < i11) {
                            arrayList.add(Long.valueOf(this.identifiers[i12 + 1][i13 + 1]));
                        }
                    }
                    if (this.wrapRows) {
                        if (i12 == 0) {
                            if (i13 > 0) {
                                arrayList.add(Long.valueOf(this.identifiers[i10][i13 - 1]));
                            }
                            if (i13 < i11) {
                                arrayList.add(Long.valueOf(this.identifiers[i10][i13 + 1]));
                            }
                        } else if (i12 == i10) {
                            if (i13 > 0) {
                                arrayList.add(Long.valueOf(this.identifiers[0][i13 - 1]));
                            }
                            if (i13 < i11) {
                                arrayList.add(Long.valueOf(this.identifiers[0][i13 + 1]));
                            }
                        }
                    }
                    if (this.wrapColumns) {
                        if (i13 == 0) {
                            if (i12 > 0) {
                                arrayList.add(Long.valueOf(this.identifiers[i12 - 1][i11]));
                            }
                            if (i12 < i10) {
                                arrayList.add(Long.valueOf(this.identifiers[i12 + 1][i11]));
                            }
                        } else if (i13 == i11) {
                            if (i12 > 0) {
                                arrayList.add(Long.valueOf(this.identifiers[i12 - 1][0]));
                            }
                            if (i12 < i10) {
                                arrayList.add(Long.valueOf(this.identifiers[i12 + 1][0]));
                            }
                        }
                    }
                    if (this.wrapRows && this.wrapColumns) {
                        if (i12 == 0 && i13 == 0) {
                            arrayList.add(Long.valueOf(this.identifiers[i10][i11]));
                        } else if (i12 == 0 && i13 == i11) {
                            arrayList.add(Long.valueOf(this.identifiers[i10][0]));
                        } else if (i12 == i10 && i13 == 0) {
                            arrayList.add(Long.valueOf(this.identifiers[0][i11]));
                        } else if (i12 == i10 && i13 == i11) {
                            arrayList.add(Long.valueOf(this.identifiers[0][0]));
                        }
                    }
                } else if (i14 != 2) {
                    throw new MathInternalError();
                }
                if (i12 > 0) {
                    arrayList.add(Long.valueOf(this.identifiers[i12 - 1][i13]));
                }
                if (i12 < i10) {
                    arrayList.add(Long.valueOf(this.identifiers[i12 + 1][i13]));
                }
                if (this.wrapRows) {
                    if (i12 == 0) {
                        arrayList.add(Long.valueOf(this.identifiers[i10][i13]));
                    } else if (i12 == i10) {
                        arrayList.add(Long.valueOf(this.identifiers[0][i13]));
                    }
                }
                if (i13 > 0) {
                    arrayList.add(Long.valueOf(this.identifiers[i12][i13 - 1]));
                }
                if (i13 < i11) {
                    arrayList.add(Long.valueOf(this.identifiers[i12][i13 + 1]));
                }
                if (this.wrapColumns) {
                    if (i13 == 0) {
                        arrayList.add(Long.valueOf(this.identifiers[i12][i11]));
                    } else if (i13 == i11) {
                        arrayList.add(Long.valueOf(this.identifiers[i12][0]));
                    }
                }
                Neuron neuron = this.network.getNeuron(this.identifiers[i12][i13]);
                Iterator<E> it = arrayList.iterator();
                while (it.hasNext()) {
                    this.network.addLink(neuron, this.network.getNeuron(((Long) it.next()).longValue()));
                }
            }
        }
    }

    private int[] getLocation(int i10, int i11, HorizontalDirection horizontalDirection, VerticalDirection verticalDirection) {
        int i12;
        int i13 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$ml$neuralnet$twod$NeuronSquareMesh2D$HorizontalDirection[horizontalDirection.ordinal()];
        int i14 = -1;
        if (i13 == 1) {
            i12 = -1;
        } else if (i13 == 2) {
            i12 = 1;
        } else {
            if (i13 != 3) {
                throw new MathInternalError();
            }
            i12 = 0;
        }
        int i15 = i11 + i12;
        if (this.wrapColumns) {
            i15 = i15 < 0 ? i15 + this.numberOfColumns : i15 % this.numberOfColumns;
        }
        int i16 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$ml$neuralnet$twod$NeuronSquareMesh2D$VerticalDirection[verticalDirection.ordinal()];
        if (i16 != 1) {
            if (i16 == 2) {
                i14 = 1;
            } else {
                if (i16 != 3) {
                    throw new MathInternalError();
                }
                i14 = 0;
            }
        }
        int i17 = i10 + i14;
        if (this.wrapRows) {
            i17 = i17 < 0 ? i17 + this.numberOfRows : i17 % this.numberOfRows;
        }
        if (i17 < 0 || i17 >= this.numberOfRows || i15 < 0 || i15 >= this.numberOfColumns) {
            return null;
        }
        return new int[]{i17, i15};
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new IllegalStateException();
    }

    private Object writeReplace() {
        double[][][] dArr = (double[][][]) Array.newInstance((Class<?>) double[].class, this.numberOfRows, this.numberOfColumns);
        for (int i10 = 0; i10 < this.numberOfRows; i10++) {
            for (int i11 = 0; i11 < this.numberOfColumns; i11++) {
                dArr[i10][i11] = getNeuron(i10, i11).getFeatures();
            }
        }
        return new SerializationProxy(this.wrapRows, this.wrapColumns, this.neighbourhood, dArr);
    }

    public synchronized NeuronSquareMesh2D copy() {
        long[][] jArr;
        try {
            jArr = (long[][]) Array.newInstance(Long.TYPE, this.numberOfRows, this.numberOfColumns);
            for (int i10 = 0; i10 < this.numberOfRows; i10++) {
                for (int i11 = 0; i11 < this.numberOfColumns; i11++) {
                    jArr[i10][i11] = this.identifiers[i10][i11];
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return new NeuronSquareMesh2D(this.wrapRows, this.wrapColumns, this.neighbourhood, this.network.copy(), jArr);
    }

    public Network getNetwork() {
        return this.network;
    }

    public Neuron getNeuron(int i10, int i11) {
        if (i10 >= 0 && i10 < this.numberOfRows) {
            if (i11 >= 0 && i11 < this.numberOfColumns) {
                return this.network.getNeuron(this.identifiers[i10][i11]);
            }
            throw new OutOfRangeException(Integer.valueOf(i11), 0, Integer.valueOf(this.numberOfColumns - 1));
        }
        throw new OutOfRangeException(Integer.valueOf(i10), 0, Integer.valueOf(this.numberOfRows - 1));
    }

    public int getNumberOfColumns() {
        return this.numberOfColumns;
    }

    public int getNumberOfRows() {
        return this.numberOfRows;
    }

    @Override
    public Iterator<Neuron> iterator() {
        return this.network.iterator();
    }

    public Neuron getNeuron(int i10, int i11, HorizontalDirection horizontalDirection, VerticalDirection verticalDirection) {
        int[] location = getLocation(i10, i11, horizontalDirection, verticalDirection);
        if (location == null) {
            return null;
        }
        return getNeuron(location[0], location[1]);
    }

    public NeuronSquareMesh2D(int i10, boolean z10, int i11, boolean z11, SquareNeighbourhood squareNeighbourhood, FeatureInitializer[] featureInitializerArr) {
        if (i10 < 2) {
            throw new NumberIsTooSmallException(Integer.valueOf(i10), 2, true);
        }
        if (i11 >= 2) {
            this.numberOfRows = i10;
            this.wrapRows = z10;
            this.numberOfColumns = i11;
            this.wrapColumns = z11;
            this.neighbourhood = squareNeighbourhood;
            this.identifiers = (long[][]) Array.newInstance(Long.TYPE, i10, i11);
            int length = featureInitializerArr.length;
            this.network = new Network(0L, length);
            for (int i12 = 0; i12 < i10; i12++) {
                for (int i13 = 0; i13 < i11; i13++) {
                    double[] dArr = new double[length];
                    for (int i14 = 0; i14 < length; i14++) {
                        dArr[i14] = featureInitializerArr[i14].value();
                    }
                    this.identifiers[i12][i13] = this.network.createNeuron(dArr);
                }
            }
            createLinks();
            return;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(i11), 2, true);
    }

    private NeuronSquareMesh2D(boolean z10, boolean z11, SquareNeighbourhood squareNeighbourhood, Network network, long[][] jArr) {
        this.numberOfRows = jArr.length;
        this.numberOfColumns = jArr[0].length;
        this.wrapRows = z10;
        this.wrapColumns = z11;
        this.neighbourhood = squareNeighbourhood;
        this.network = network;
        this.identifiers = jArr;
    }
}
