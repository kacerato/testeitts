package org.apache.commons.math3.stat.clustering;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.math3.util.MathArrays;

@Deprecated
public class EuclideanIntegerPoint implements Clusterable<EuclideanIntegerPoint>, Serializable {
    private static final long serialVersionUID = 3946024775784901369L;
    private final int[] point;

    public EuclideanIntegerPoint(int[] iArr) {
        this.point = iArr;
    }

    public boolean equals(Object obj) {
        if (obj instanceof EuclideanIntegerPoint) {
            return Arrays.equals(this.point, ((EuclideanIntegerPoint) obj).point);
        }
        return false;
    }

    public int[] getPoint() {
        return this.point;
    }

    public int hashCode() {
        return Arrays.hashCode(this.point);
    }

    public String toString() {
        return Arrays.toString(this.point);
    }

    @Override
    public EuclideanIntegerPoint centroidOf(Collection<EuclideanIntegerPoint> collection) {
        int i10;
        int length = getPoint().length;
        int[] iArr = new int[length];
        Iterator<EuclideanIntegerPoint> it = collection.iterator();
        while (true) {
            i10 = 0;
            if (!it.hasNext()) {
                break;
            }
            EuclideanIntegerPoint next = it.next();
            while (i10 < length) {
                iArr[i10] = iArr[i10] + next.getPoint()[i10];
                i10++;
            }
        }
        while (i10 < length) {
            iArr[i10] = iArr[i10] / collection.size();
            i10++;
        }
        return new EuclideanIntegerPoint(iArr);
    }

    @Override
    public double distanceFrom(EuclideanIntegerPoint euclideanIntegerPoint) {
        return MathArrays.distance(this.point, euclideanIntegerPoint.getPoint());
    }
}
