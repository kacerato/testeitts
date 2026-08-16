package org.apache.commons.math3.geometry.euclidean.oned;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.partitioning.AbstractRegion;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BoundaryProjection;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.Precision;

public class IntervalsSet extends AbstractRegion<Euclidean1D, Euclidean1D> implements Iterable<double[]> {
    private static final double DEFAULT_TOLERANCE = 1.0E-10d;

    public class SubIntervalsIterator implements Iterator<double[]> {
        private BSPTree<Euclidean1D> current;
        private double[] pending;

        public SubIntervalsIterator() {
            BSPTree<Euclidean1D> firstIntervalBoundary = IntervalsSet.this.getFirstIntervalBoundary();
            this.current = firstIntervalBoundary;
            if (firstIntervalBoundary == null) {
                if (((Boolean) IntervalsSet.this.getFirstLeaf(IntervalsSet.this.getTree(false)).getAttribute()).booleanValue()) {
                    this.pending = new double[]{Double.NEGATIVE_INFINITY, Double.POSITIVE_INFINITY};
                    return;
                } else {
                    this.pending = null;
                    return;
                }
            }
            if (IntervalsSet.this.isIntervalEnd(firstIntervalBoundary)) {
                this.pending = new double[]{Double.NEGATIVE_INFINITY, IntervalsSet.this.getAngle(this.current)};
            } else {
                selectPending();
            }
        }

        private void selectPending() {
            BSPTree<Euclidean1D> bSPTree = this.current;
            while (bSPTree != null && !IntervalsSet.this.isIntervalStart(bSPTree)) {
                bSPTree = IntervalsSet.this.nextInternalNode(bSPTree);
            }
            if (bSPTree == null) {
                this.current = null;
                this.pending = null;
                return;
            }
            BSPTree<Euclidean1D> bSPTree2 = bSPTree;
            while (bSPTree2 != null && !IntervalsSet.this.isIntervalEnd(bSPTree2)) {
                bSPTree2 = IntervalsSet.this.nextInternalNode(bSPTree2);
            }
            if (bSPTree2 != null) {
                this.pending = new double[]{IntervalsSet.this.getAngle(bSPTree), IntervalsSet.this.getAngle(bSPTree2)};
                this.current = bSPTree2;
            } else {
                this.pending = new double[]{IntervalsSet.this.getAngle(bSPTree), Double.POSITIVE_INFINITY};
                this.current = null;
            }
        }

        @Override
        public boolean hasNext() {
            return this.pending != null;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public double[] next() {
            double[] dArr = this.pending;
            if (dArr != null) {
                selectPending();
                return dArr;
            }
            throw new NoSuchElementException();
        }
    }

    public IntervalsSet(double d10) {
        super(d10);
    }

    private static BSPTree<Euclidean1D> buildTree(double d10, double d11, double d12) {
        if (Double.isInfinite(d10) && d10 < 0.0d) {
            return (!Double.isInfinite(d11) || d11 <= 0.0d) ? new BSPTree<>(new OrientedPoint(new Vector1D(d11), true, d12).wholeHyperplane(), new BSPTree(Boolean.FALSE), new BSPTree(Boolean.TRUE), null) : new BSPTree<>(Boolean.TRUE);
        }
        SubHyperplane<Euclidean1D> wholeHyperplane = new OrientedPoint(new Vector1D(d10), false, d12).wholeHyperplane();
        if (Double.isInfinite(d11) && d11 > 0.0d) {
            return new BSPTree<>(wholeHyperplane, new BSPTree(Boolean.FALSE), new BSPTree(Boolean.TRUE), null);
        }
        SubHyperplane<Euclidean1D> wholeHyperplane2 = new OrientedPoint(new Vector1D(d11), true, d12).wholeHyperplane();
        Boolean bool = Boolean.FALSE;
        return new BSPTree<>(wholeHyperplane, new BSPTree(bool), new BSPTree(wholeHyperplane2, new BSPTree(bool), new BSPTree(Boolean.TRUE), null), null);
    }

    private BSPTree<Euclidean1D> childAfter(BSPTree<Euclidean1D> bSPTree) {
        return isDirect(bSPTree) ? bSPTree.getPlus() : bSPTree.getMinus();
    }

    private BSPTree<Euclidean1D> childBefore(BSPTree<Euclidean1D> bSPTree) {
        return isDirect(bSPTree) ? bSPTree.getMinus() : bSPTree.getPlus();
    }

    private Vector1D finiteOrNullPoint(double d10) {
        if (Double.isInfinite(d10)) {
            return null;
        }
        return new Vector1D(d10);
    }

    public double getAngle(BSPTree<Euclidean1D> bSPTree) {
        return ((OrientedPoint) bSPTree.getCut().getHyperplane()).getLocation().getX();
    }

    public BSPTree<Euclidean1D> getFirstIntervalBoundary() {
        BSPTree<Euclidean1D> tree = getTree(false);
        if (tree.getCut() == null) {
            return null;
        }
        BSPTree<Euclidean1D> parent = getFirstLeaf(tree).getParent();
        while (parent != null && !isIntervalStart(parent) && !isIntervalEnd(parent)) {
            parent = nextInternalNode(parent);
        }
        return parent;
    }

    public BSPTree<Euclidean1D> getFirstLeaf(BSPTree<Euclidean1D> bSPTree) {
        if (bSPTree.getCut() == null) {
            return bSPTree;
        }
        BSPTree<Euclidean1D> bSPTree2 = null;
        while (bSPTree != null) {
            bSPTree2 = bSPTree;
            bSPTree = previousInternalNode(bSPTree);
        }
        return leafBefore(bSPTree2);
    }

    private boolean isAfterParent(BSPTree<Euclidean1D> bSPTree) {
        BSPTree<Euclidean1D> parent = bSPTree.getParent();
        return parent != null && bSPTree == childAfter(parent);
    }

    private boolean isBeforeParent(BSPTree<Euclidean1D> bSPTree) {
        BSPTree<Euclidean1D> parent = bSPTree.getParent();
        return parent != null && bSPTree == childBefore(parent);
    }

    private boolean isDirect(BSPTree<Euclidean1D> bSPTree) {
        return ((OrientedPoint) bSPTree.getCut().getHyperplane()).isDirect();
    }

    public boolean isIntervalEnd(BSPTree<Euclidean1D> bSPTree) {
        return ((Boolean) leafBefore(bSPTree).getAttribute()).booleanValue() && !((Boolean) leafAfter(bSPTree).getAttribute()).booleanValue();
    }

    public boolean isIntervalStart(BSPTree<Euclidean1D> bSPTree) {
        return !((Boolean) leafBefore(bSPTree).getAttribute()).booleanValue() && ((Boolean) leafAfter(bSPTree).getAttribute()).booleanValue();
    }

    private BSPTree<Euclidean1D> leafAfter(BSPTree<Euclidean1D> bSPTree) {
        BSPTree<Euclidean1D> childAfter = childAfter(bSPTree);
        while (childAfter.getCut() != null) {
            childAfter = childBefore(childAfter);
        }
        return childAfter;
    }

    private BSPTree<Euclidean1D> leafBefore(BSPTree<Euclidean1D> bSPTree) {
        BSPTree<Euclidean1D> childBefore = childBefore(bSPTree);
        while (childBefore.getCut() != null) {
            childBefore = childAfter(childBefore);
        }
        return childBefore;
    }

    public BSPTree<Euclidean1D> nextInternalNode(BSPTree<Euclidean1D> bSPTree) {
        if (childAfter(bSPTree).getCut() != null) {
            return leafAfter(bSPTree).getParent();
        }
        while (isAfterParent(bSPTree)) {
            bSPTree = bSPTree.getParent();
        }
        return bSPTree.getParent();
    }

    private BSPTree<Euclidean1D> previousInternalNode(BSPTree<Euclidean1D> bSPTree) {
        if (childBefore(bSPTree).getCut() != null) {
            return leafBefore(bSPTree).getParent();
        }
        while (isBeforeParent(bSPTree)) {
            bSPTree = bSPTree.getParent();
        }
        return bSPTree.getParent();
    }

    public List<Interval> asList() {
        ArrayList arrayList = new ArrayList();
        Iterator<double[]> it = iterator();
        while (it.hasNext()) {
            double[] next = it.next();
            arrayList.add(new Interval(next[0], next[1]));
        }
        return arrayList;
    }

    @Override
    public AbstractRegion buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean1D>) bSPTree);
    }

    @Override
    public void computeGeometricalProperties() {
        if (getTree(false).getCut() == null) {
            setBarycenter((Point) Vector1D.NaN);
            setSize(((Boolean) getTree(false).getAttribute()).booleanValue() ? Double.POSITIVE_INFINITY : 0.0d);
            return;
        }
        double d10 = 0.0d;
        for (Interval interval : asList()) {
            r2 += interval.getSize();
            d10 += interval.getSize() * interval.getBarycenter();
        }
        setSize(r2);
        if (Double.isInfinite(r2)) {
            setBarycenter((Point) Vector1D.NaN);
        } else if (r2 >= Precision.SAFE_MIN) {
            setBarycenter((Point) new Vector1D(d10 / r2));
        } else {
            setBarycenter((Point) ((OrientedPoint) getTree(false).getCut().getHyperplane()).getLocation());
        }
    }

    public double getInf() {
        BSPTree<Euclidean1D> tree = getTree(false);
        double d10 = Double.POSITIVE_INFINITY;
        while (tree.getCut() != null) {
            OrientedPoint orientedPoint = (OrientedPoint) tree.getCut().getHyperplane();
            double x10 = orientedPoint.getLocation().getX();
            tree = orientedPoint.isDirect() ? tree.getMinus() : tree.getPlus();
            d10 = x10;
        }
        if (((Boolean) tree.getAttribute()).booleanValue()) {
            return Double.NEGATIVE_INFINITY;
        }
        return d10;
    }

    public double getSup() {
        BSPTree<Euclidean1D> tree = getTree(false);
        double d10 = Double.NEGATIVE_INFINITY;
        while (tree.getCut() != null) {
            OrientedPoint orientedPoint = (OrientedPoint) tree.getCut().getHyperplane();
            double x10 = orientedPoint.getLocation().getX();
            tree = orientedPoint.isDirect() ? tree.getPlus() : tree.getMinus();
            d10 = x10;
        }
        if (((Boolean) tree.getAttribute()).booleanValue()) {
            return Double.POSITIVE_INFINITY;
        }
        return d10;
    }

    @Override
    public Iterator<double[]> iterator() {
        return new SubIntervalsIterator();
    }

    @Override
    public BoundaryProjection<Euclidean1D> projectToBoundary(Point<Euclidean1D> point) {
        double x10 = ((Vector1D) point).getX();
        Iterator<double[]> it = iterator();
        double d10 = Double.NEGATIVE_INFINITY;
        while (it.hasNext()) {
            double[] next = it.next();
            double d11 = next[0];
            if (x10 < d11) {
                double d12 = x10 - d10;
                double d13 = d11 - x10;
                return d12 < d13 ? new BoundaryProjection<>(point, finiteOrNullPoint(d10), d12) : new BoundaryProjection<>(point, finiteOrNullPoint(d11), d13);
            }
            d10 = next[1];
            if (x10 <= d10) {
                double d14 = d11 - x10;
                double d15 = x10 - d10;
                return d14 < d15 ? new BoundaryProjection<>(point, finiteOrNullPoint(d10), d15) : new BoundaryProjection<>(point, finiteOrNullPoint(d11), d14);
            }
        }
        return new BoundaryProjection<>(point, finiteOrNullPoint(d10), x10 - d10);
    }

    public IntervalsSet(double d10, double d11, double d12) {
        super(buildTree(d10, d11, d12), d12);
    }

    @Override
    public Region buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean1D>) bSPTree);
    }

    public IntervalsSet(BSPTree<Euclidean1D> bSPTree, double d10) {
        super(bSPTree, d10);
    }

    @Override
    public IntervalsSet buildNew(BSPTree<Euclidean1D> bSPTree) {
        return new IntervalsSet(bSPTree, getTolerance());
    }

    public IntervalsSet(Collection<SubHyperplane<Euclidean1D>> collection, double d10) {
        super(collection, d10);
    }

    @Deprecated
    public IntervalsSet() {
        this(1.0E-10d);
    }

    @Deprecated
    public IntervalsSet(double d10, double d11) {
        this(d10, d11, 1.0E-10d);
    }

    @Deprecated
    public IntervalsSet(BSPTree<Euclidean1D> bSPTree) {
        this(bSPTree, 1.0E-10d);
    }

    @Deprecated
    public IntervalsSet(Collection<SubHyperplane<Euclidean1D>> collection) {
        this(collection, 1.0E-10d);
    }
}
