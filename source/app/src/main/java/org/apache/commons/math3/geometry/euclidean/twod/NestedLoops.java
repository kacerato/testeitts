package org.apache.commons.math3.geometry.euclidean.twod;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.RegionFactory;

class NestedLoops {
    private Vector2D[] loop;
    private boolean originalIsClockwise;
    private Region<Euclidean2D> polygon;
    private List<NestedLoops> surrounded;
    private final double tolerance;

    public NestedLoops(double d10) {
        this.surrounded = new ArrayList();
        this.tolerance = d10;
    }

    private void setClockWise(boolean z10) {
        if (this.originalIsClockwise ^ z10) {
            int length = this.loop.length;
            int i10 = -1;
            while (true) {
                i10++;
                length--;
                if (i10 >= length) {
                    break;
                }
                Vector2D[] vector2DArr = this.loop;
                Vector2D vector2D = vector2DArr[i10];
                vector2DArr[i10] = vector2DArr[length];
                vector2DArr[length] = vector2D;
            }
        }
        Iterator<NestedLoops> it = this.surrounded.iterator();
        while (it.hasNext()) {
            it.next().setClockWise(!z10);
        }
    }

    public void add(Vector2D[] vector2DArr) throws MathIllegalArgumentException {
        add(new NestedLoops(vector2DArr, this.tolerance));
    }

    public void correctOrientation() {
        Iterator<NestedLoops> it = this.surrounded.iterator();
        while (it.hasNext()) {
            it.next().setClockWise(true);
        }
    }

    private void add(NestedLoops nestedLoops) throws MathIllegalArgumentException {
        for (NestedLoops nestedLoops2 : this.surrounded) {
            if (nestedLoops2.polygon.contains(nestedLoops.polygon)) {
                nestedLoops2.add(nestedLoops);
                return;
            }
        }
        Iterator<NestedLoops> it = this.surrounded.iterator();
        while (it.hasNext()) {
            NestedLoops next = it.next();
            if (nestedLoops.polygon.contains(next.polygon)) {
                nestedLoops.surrounded.add(next);
                it.remove();
            }
        }
        RegionFactory regionFactory = new RegionFactory();
        Iterator<NestedLoops> it2 = this.surrounded.iterator();
        while (it2.hasNext()) {
            if (!regionFactory.intersection(nestedLoops.polygon, it2.next().polygon).isEmpty()) {
                throw new MathIllegalArgumentException(LocalizedFormats.CROSSING_BOUNDARY_LOOPS, new Object[0]);
            }
        }
        this.surrounded.add(nestedLoops);
    }

    /* JADX WARN: Type inference failed for: r2v8, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    /* JADX WARN: Type inference failed for: r2v9, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    private NestedLoops(Vector2D[] vector2DArr, double d10) throws MathIllegalArgumentException {
        if (vector2DArr[0] != null) {
            this.loop = vector2DArr;
            this.surrounded = new ArrayList();
            this.tolerance = d10;
            ArrayList arrayList = new ArrayList();
            Vector2D vector2D = vector2DArr[vector2DArr.length - 1];
            int i10 = 0;
            while (i10 < vector2DArr.length) {
                Vector2D vector2D2 = vector2DArr[i10];
                Line line = new Line(vector2D, vector2D2, d10);
                arrayList.add(new SubLine(line, new IntervalsSet(line.toSubSpace((Point<Euclidean2D>) vector2D).getX(), line.toSubSpace((Point<Euclidean2D>) vector2D2).getX(), d10)));
                i10++;
                vector2D = vector2D2;
            }
            PolygonsSet polygonsSet = new PolygonsSet(arrayList, d10);
            this.polygon = polygonsSet;
            if (Double.isInfinite(polygonsSet.getSize())) {
                this.polygon = new RegionFactory().getComplement(this.polygon);
                this.originalIsClockwise = false;
                return;
            } else {
                this.originalIsClockwise = true;
                return;
            }
        }
        throw new MathIllegalArgumentException(LocalizedFormats.OUTLINE_BOUNDARY_LOOP_OPEN, new Object[0]);
    }
}
