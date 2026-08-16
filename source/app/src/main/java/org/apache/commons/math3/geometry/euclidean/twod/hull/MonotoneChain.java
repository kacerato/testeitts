package org.apache.commons.math3.geometry.euclidean.twod.hull;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D;
import org.apache.commons.math3.geometry.euclidean.twod.Line;
import org.apache.commons.math3.geometry.euclidean.twod.Vector2D;
import org.apache.commons.math3.geometry.hull.ConvexHull;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

public class MonotoneChain extends AbstractConvexHullGenerator2D {
    public MonotoneChain() {
        this(false);
    }

    private void updateHull(Vector2D vector2D, List<Vector2D> list) {
        double tolerance = getTolerance();
        if (list.size() != 1 || list.get(0).distance((Vector<Euclidean2D>) vector2D) >= tolerance) {
            while (list.size() >= 2) {
                int size = list.size();
                Vector2D vector2D2 = list.get(size - 2);
                int i10 = size - 1;
                Vector2D vector2D3 = list.get(i10);
                double offset = new Line(vector2D2, vector2D3, tolerance).getOffset((Vector<Euclidean2D>) vector2D);
                if (FastMath.abs(offset) >= tolerance) {
                    if (offset <= 0.0d) {
                        break;
                    } else {
                        list.remove(i10);
                    }
                } else {
                    double distance = vector2D2.distance((Vector<Euclidean2D>) vector2D);
                    if (distance < tolerance || vector2D3.distance((Vector<Euclidean2D>) vector2D) < tolerance) {
                        return;
                    }
                    double distance2 = vector2D2.distance((Vector<Euclidean2D>) vector2D3);
                    if (isIncludeCollinearPoints()) {
                        if (distance < distance2) {
                            size = i10;
                        }
                        list.add(size, vector2D);
                        return;
                    } else {
                        if (distance > distance2) {
                            list.remove(i10);
                            list.add(vector2D);
                            return;
                        }
                        return;
                    }
                }
            }
            list.add(vector2D);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Collection<Vector2D> findHullVertices(Collection<Vector2D> collection) {
        ArrayList arrayList = new ArrayList(collection);
        Collections.sort(arrayList, new Comparator<Vector2D>() {
            @Override
            public int compare(Vector2D vector2D, Vector2D vector2D2) {
                double tolerance = MonotoneChain.this.getTolerance();
                int compareTo = Precision.compareTo(vector2D.getX(), vector2D2.getX(), tolerance);
                return compareTo == 0 ? Precision.compareTo(vector2D.getY(), vector2D2.getY(), tolerance) : compareTo;
            }
        });
        ArrayList arrayList2 = new ArrayList();
        Iterator<E> it = arrayList.iterator();
        while (it.hasNext()) {
            updateHull((Vector2D) it.next(), arrayList2);
        }
        ArrayList arrayList3 = new ArrayList();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            updateHull((Vector2D) arrayList.get(size), arrayList3);
        }
        ArrayList arrayList4 = new ArrayList((arrayList2.size() + arrayList3.size()) - 2);
        for (int i10 = 0; i10 < arrayList2.size() - 1; i10++) {
            arrayList4.add(arrayList2.get(i10));
        }
        for (int i11 = 0; i11 < arrayList3.size() - 1; i11++) {
            arrayList4.add(arrayList3.get(i11));
        }
        if (arrayList4.isEmpty() && !arrayList2.isEmpty()) {
            arrayList4.add(arrayList2.get(0));
        }
        return arrayList4;
    }

    @Override
    public ConvexHull<Euclidean2D, Vector2D> generate2(Collection<Vector2D> collection) throws NullArgumentException, ConvergenceException {
        return super.generate2(collection);
    }

    @Override
    public double getTolerance() {
        return super.getTolerance();
    }

    @Override
    public boolean isIncludeCollinearPoints() {
        return super.isIncludeCollinearPoints();
    }

    public MonotoneChain(boolean z10) {
        super(z10);
    }

    public MonotoneChain(boolean z10, double d10) {
        super(z10, d10);
    }
}
