package com.ardor3d.spline;

import com.ardor3d.math.Vector3;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.core.JavaElement;

public class ArcLengthTable implements Serializable {
    private static final Logger LOGGER = Logger.getLogger(ArcLengthTable.class.getName());
    private static final long serialVersionUID = 1;
    private final Curve _curve;
    private Map<Integer, List<ArcLengthEntry>> _lookupTable;

    public static class ArcLengthEntry implements Serializable {
        private static final long serialVersionUID = 1;
        private final double _delta;
        private final double _length;

        public ArcLengthEntry(double d10, double d11) {
            this._delta = d10;
            this._length = d11;
        }

        public double getDelta() {
            return this._delta;
        }

        public double getLength() {
            return this._length;
        }

        public String toString() {
            return "ArcLengthEntry[length=" + this._length + ", delta=" + this._delta + JavaElement.JEM_TYPE_PARAMETER;
        }
    }

    public ArcLengthTable(Curve curve) {
        if (curve == null) {
            throw new IllegalArgumentException("curve was null!");
        }
        this._curve = curve;
    }

    private boolean continueLoop(int i10, boolean z10) {
        if (z10) {
            if (i10 <= 0) {
                return false;
            }
        } else if (i10 >= this._curve.getControlPointCount() - 2) {
            return false;
        }
        return true;
    }

    private int updateCounter(int i10, boolean z10) {
        return z10 ? i10 - 1 : i10 + 1;
    }

    public void generate(int i10, boolean z10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("step must be > 0! step=" + i10);
        }
        this._lookupTable = new HashMap();
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        double d10 = 1.0d / i10;
        int controlPointCount = z10 ? this._curve.getControlPointCount() - 2 : 1;
        while (continueLoop(controlPointCount, z10)) {
            fetchTempInstance2.set(this._curve.getControlPoints().get(controlPointCount));
            ArrayList arrayList = new ArrayList();
            double d11 = 0.0d;
            arrayList.add(new ArcLengthEntry(0.0d, 0.0d));
            int i11 = z10 ? controlPointCount - 1 : controlPointCount + 1;
            double d12 = 0.0d;
            while (true) {
                double d13 = d11 + d10;
                double d14 = d13 > 1.0d ? 1.0d : d13;
                this._curve.interpolate(controlPointCount, i11, d14, fetchTempInstance);
                double distance = d12 + fetchTempInstance2.distance(fetchTempInstance);
                fetchTempInstance2.set(fetchTempInstance);
                arrayList.add(new ArcLengthEntry(d14, distance));
                if (d14 == 1.0d) {
                    break;
                }
                d12 = distance;
                d11 = d14;
            }
            this._lookupTable.put(Integer.valueOf(controlPointCount), arrayList);
            controlPointCount = updateCounter(controlPointCount, z10);
        }
        Logger logger = LOGGER;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine("look up table = " + ((Object) this._lookupTable));
        }
        Vector3.releaseTempInstance(fetchTempInstance);
        Vector3.releaseTempInstance(fetchTempInstance2);
    }

    public double getDelta(int i10, double d10) {
        Map<Integer, List<ArcLengthEntry>> map = this._lookupTable;
        if (map == null) {
            throw new IllegalStateException("You must generate the look up table before calling this method! see generate()");
        }
        List<ArcLengthEntry> list = map.get(Integer.valueOf(i10));
        if (list == null) {
            throw new IllegalArgumentException("entries was null, the index parameter was invalid. index=" + i10);
        }
        Iterator<ArcLengthEntry> it = list.iterator();
        ArcLengthEntry arcLengthEntry = null;
        ArcLengthEntry arcLengthEntry2 = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ArcLengthEntry next = it.next();
            if (next.getLength() <= d10) {
                arcLengthEntry2 = next;
            }
            if (next.getLength() >= d10) {
                arcLengthEntry = next;
                break;
            }
        }
        if (arcLengthEntry2 == null) {
            throw new IllegalArgumentException("previous was null, either the index or distance parameters were invalid. index=" + i10 + ", distance=" + d10);
        }
        if (arcLengthEntry == null) {
            int i11 = i10 + 1;
            return getDelta(i11 < this._lookupTable.size() ? i11 : 1, d10 - arcLengthEntry2.getLength()) + arcLengthEntry2.getDelta();
        }
        if (arcLengthEntry2.equals(arcLengthEntry)) {
            return arcLengthEntry2.getDelta();
        }
        double delta = arcLengthEntry2.getDelta();
        double delta2 = arcLengthEntry.getDelta();
        double length = arcLengthEntry2.getLength();
        return delta + (((d10 - length) / (arcLengthEntry.getLength() - length)) * (delta2 - delta));
    }

    public double getLength(int i10) {
        Map<Integer, List<ArcLengthEntry>> map = this._lookupTable;
        if (map == null) {
            throw new IllegalStateException("You must generate the look up table before calling this method! see generate()");
        }
        List<ArcLengthEntry> list = map.get(Integer.valueOf(i10));
        if (list != null) {
            return list.get(list.size() - 1).getLength();
        }
        throw new IllegalArgumentException("entries was null, the index parameter was invalid. index=" + i10);
    }
}
