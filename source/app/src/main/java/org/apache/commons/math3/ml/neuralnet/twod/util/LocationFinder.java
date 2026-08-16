package org.apache.commons.math3.ml.neuralnet.twod.util;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.ml.neuralnet.Neuron;
import org.apache.commons.math3.ml.neuralnet.twod.NeuronSquareMesh2D;

public class LocationFinder {
    private final Map<Long, Location> locations = new HashMap();

    public static class Location {
        private final int column;
        private final int row;

        public Location(int i10, int i11) {
            this.row = i10;
            this.column = i11;
        }

        public int getColumn() {
            return this.column;
        }

        public int getRow() {
            return this.row;
        }
    }

    public LocationFinder(NeuronSquareMesh2D neuronSquareMesh2D) {
        int numberOfRows = neuronSquareMesh2D.getNumberOfRows();
        int numberOfColumns = neuronSquareMesh2D.getNumberOfColumns();
        for (int i10 = 0; i10 < numberOfRows; i10++) {
            for (int i11 = 0; i11 < numberOfColumns; i11++) {
                Long valueOf = Long.valueOf(neuronSquareMesh2D.getNeuron(i10, i11).getIdentifier());
                if (this.locations.get(valueOf) != null) {
                    throw new MathIllegalStateException();
                }
                this.locations.put(valueOf, new Location(i10, i11));
            }
        }
    }

    public Location getLocation(Neuron neuron) {
        return this.locations.get(Long.valueOf(neuron.getIdentifier()));
    }
}
