package org.apache.commons.math3.geometry.spherical.oned;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.partitioning.AbstractRegion;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BoundaryProjection;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.Side;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

public class ArcsSet extends AbstractRegion<Sphere1D, Sphere1D> implements Iterable<double[]> {

    public static class InconsistentStateAt2PiWrapping extends MathIllegalArgumentException {
        private static final long serialVersionUID = 20140107;

        public InconsistentStateAt2PiWrapping() {
            super(LocalizedFormats.INCONSISTENT_STATE_AT_2_PI_WRAPPING, new Object[0]);
        }
    }

    public static class Split {
        private final ArcsSet minus;
        private final ArcsSet plus;

        public ArcsSet getMinus() {
            return this.minus;
        }

        public ArcsSet getPlus() {
            return this.plus;
        }

        public Side getSide() {
            return this.plus != null ? this.minus != null ? Side.BOTH : Side.PLUS : this.minus != null ? Side.MINUS : Side.HYPER;
        }

        private Split(ArcsSet arcsSet, ArcsSet arcsSet2) {
            this.plus = arcsSet;
            this.minus = arcsSet2;
        }
    }

    public class SubArcsIterator implements Iterator<double[]> {
        private BSPTree<Sphere1D> current;
        private final BSPTree<Sphere1D> firstStart;
        private double[] pending;

        public SubArcsIterator() {
            BSPTree<Sphere1D> firstArcStart = ArcsSet.this.getFirstArcStart();
            this.firstStart = firstArcStart;
            this.current = firstArcStart;
            if (firstArcStart != null) {
                selectPending();
            } else if (((Boolean) ArcsSet.this.getFirstLeaf(ArcsSet.this.getTree(false)).getAttribute()).booleanValue()) {
                this.pending = new double[]{0.0d, 6.283185307179586d};
            } else {
                this.pending = null;
            }
        }

        private void selectPending() {
            BSPTree<Sphere1D> bSPTree = this.current;
            while (bSPTree != null && !ArcsSet.this.isArcStart(bSPTree)) {
                bSPTree = ArcsSet.this.nextInternalNode(bSPTree);
            }
            if (bSPTree == null) {
                this.current = null;
                this.pending = null;
                return;
            }
            BSPTree<Sphere1D> bSPTree2 = bSPTree;
            while (bSPTree2 != null && !ArcsSet.this.isArcEnd(bSPTree2)) {
                bSPTree2 = ArcsSet.this.nextInternalNode(bSPTree2);
            }
            if (bSPTree2 != null) {
                this.pending = new double[]{ArcsSet.this.getAngle(bSPTree), ArcsSet.this.getAngle(bSPTree2)};
                this.current = bSPTree2;
                return;
            }
            BSPTree<Sphere1D> bSPTree3 = this.firstStart;
            while (bSPTree3 != null && !ArcsSet.this.isArcEnd(bSPTree3)) {
                bSPTree3 = ArcsSet.this.previousInternalNode(bSPTree3);
            }
            if (bSPTree3 == null) {
                throw new MathInternalError();
            }
            this.pending = new double[]{ArcsSet.this.getAngle(bSPTree), ArcsSet.this.getAngle(bSPTree3) + 6.283185307179586d};
            this.current = null;
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

    public ArcsSet(double d10) {
        super(d10);
    }

    private void addArcLimit(BSPTree<Sphere1D> bSPTree, double d10, boolean z10) {
        LimitAngle limitAngle = new LimitAngle(new S1Point(d10), !z10, getTolerance());
        BSPTree<Sphere1D> cell = bSPTree.getCell(limitAngle.getLocation(), getTolerance());
        if (cell.getCut() != null) {
            throw new MathInternalError();
        }
        cell.insertCut(limitAngle);
        cell.setAttribute(null);
        cell.getPlus().setAttribute(Boolean.FALSE);
        cell.getMinus().setAttribute(Boolean.TRUE);
    }

    private static BSPTree<Sphere1D> buildTree(double d10, double d11, double d12) throws NumberIsTooLargeException {
        if (!Precision.equals(d10, d11, 0)) {
            double d13 = d11 - d10;
            if (d13 < 6.283185307179586d) {
                if (d10 > d11) {
                    throw new NumberIsTooLargeException(LocalizedFormats.ENDPOINTS_NOT_AN_INTERVAL, Double.valueOf(d10), Double.valueOf(d11), true);
                }
                double normalizeAngle = MathUtils.normalizeAngle(d10, 3.141592653589793d);
                double d14 = d13 + normalizeAngle;
                SubHyperplane<Sphere1D> wholeHyperplane = new LimitAngle(new S1Point(normalizeAngle), false, d12).wholeHyperplane();
                if (d14 <= 6.283185307179586d) {
                    SubHyperplane<Sphere1D> wholeHyperplane2 = new LimitAngle(new S1Point(d14), true, d12).wholeHyperplane();
                    Boolean bool = Boolean.FALSE;
                    return new BSPTree<>(wholeHyperplane, new BSPTree(bool), new BSPTree(wholeHyperplane2, new BSPTree(bool), new BSPTree(Boolean.TRUE), null), null);
                }
                SubHyperplane<Sphere1D> wholeHyperplane3 = new LimitAngle(new S1Point(d14 - 6.283185307179586d), true, d12).wholeHyperplane();
                BSPTree bSPTree = new BSPTree(Boolean.FALSE);
                Boolean bool2 = Boolean.TRUE;
                return new BSPTree<>(wholeHyperplane, new BSPTree(wholeHyperplane3, bSPTree, new BSPTree(bool2), null), new BSPTree(bool2), null);
            }
        }
        return new BSPTree<>(Boolean.TRUE);
    }

    private void check2PiConsistency() throws InconsistentStateAt2PiWrapping {
        BSPTree<Sphere1D> tree = getTree(false);
        if (tree.getCut() == null) {
            return;
        }
        Boolean bool = (Boolean) getFirstLeaf(tree).getAttribute();
        Boolean bool2 = (Boolean) getLastLeaf(tree).getAttribute();
        if (bool2.booleanValue() ^ bool.booleanValue()) {
            throw new InconsistentStateAt2PiWrapping();
        }
    }

    private BSPTree<Sphere1D> childAfter(BSPTree<Sphere1D> bSPTree) {
        return isDirect(bSPTree) ? bSPTree.getPlus() : bSPTree.getMinus();
    }

    private BSPTree<Sphere1D> childBefore(BSPTree<Sphere1D> bSPTree) {
        return isDirect(bSPTree) ? bSPTree.getMinus() : bSPTree.getPlus();
    }

    private ArcsSet createSplitPart(List<Double> list) {
        if (list.isEmpty()) {
            return null;
        }
        int i10 = 0;
        while (i10 < list.size()) {
            int size = (i10 + 1) % list.size();
            double doubleValue = list.get(i10).doubleValue();
            if (FastMath.abs(MathUtils.normalizeAngle(list.get(size).doubleValue(), doubleValue) - doubleValue) <= getTolerance()) {
                if (size > 0) {
                    list.remove(size);
                    list.remove(i10);
                    i10--;
                } else {
                    double doubleValue2 = list.remove(list.size() - 1).doubleValue();
                    double doubleValue3 = list.remove(0).doubleValue();
                    if (list.isEmpty()) {
                        if (doubleValue2 - doubleValue3 > 3.141592653589793d) {
                            return new ArcsSet((BSPTree<Sphere1D>) new BSPTree(Boolean.TRUE), getTolerance());
                        }
                        return null;
                    }
                    list.add(Double.valueOf(list.remove(0).doubleValue() + 6.283185307179586d));
                }
            }
            i10++;
        }
        BSPTree<Sphere1D> bSPTree = new BSPTree<>(Boolean.FALSE);
        for (int i11 = 0; i11 < list.size() - 1; i11 += 2) {
            addArcLimit(bSPTree, list.get(i11).doubleValue(), true);
            addArcLimit(bSPTree, list.get(i11 + 1).doubleValue(), false);
        }
        if (bSPTree.getCut() == null) {
            return null;
        }
        return new ArcsSet(bSPTree, getTolerance());
    }

    public double getAngle(BSPTree<Sphere1D> bSPTree) {
        return ((LimitAngle) bSPTree.getCut().getHyperplane()).getLocation().getAlpha();
    }

    public BSPTree<Sphere1D> getFirstArcStart() {
        BSPTree<Sphere1D> tree = getTree(false);
        if (tree.getCut() == null) {
            return null;
        }
        BSPTree<Sphere1D> parent = getFirstLeaf(tree).getParent();
        while (parent != null && !isArcStart(parent)) {
            parent = nextInternalNode(parent);
        }
        return parent;
    }

    public BSPTree<Sphere1D> getFirstLeaf(BSPTree<Sphere1D> bSPTree) {
        if (bSPTree.getCut() == null) {
            return bSPTree;
        }
        BSPTree<Sphere1D> bSPTree2 = null;
        while (bSPTree != null) {
            bSPTree2 = bSPTree;
            bSPTree = previousInternalNode(bSPTree);
        }
        return leafBefore(bSPTree2);
    }

    private BSPTree<Sphere1D> getLastLeaf(BSPTree<Sphere1D> bSPTree) {
        if (bSPTree.getCut() == null) {
            return bSPTree;
        }
        BSPTree<Sphere1D> bSPTree2 = null;
        while (bSPTree != null) {
            bSPTree2 = bSPTree;
            bSPTree = nextInternalNode(bSPTree);
        }
        return leafAfter(bSPTree2);
    }

    private boolean isAfterParent(BSPTree<Sphere1D> bSPTree) {
        BSPTree<Sphere1D> parent = bSPTree.getParent();
        return parent != null && bSPTree == childAfter(parent);
    }

    public boolean isArcEnd(BSPTree<Sphere1D> bSPTree) {
        return ((Boolean) leafBefore(bSPTree).getAttribute()).booleanValue() && !((Boolean) leafAfter(bSPTree).getAttribute()).booleanValue();
    }

    public boolean isArcStart(BSPTree<Sphere1D> bSPTree) {
        return !((Boolean) leafBefore(bSPTree).getAttribute()).booleanValue() && ((Boolean) leafAfter(bSPTree).getAttribute()).booleanValue();
    }

    private boolean isBeforeParent(BSPTree<Sphere1D> bSPTree) {
        BSPTree<Sphere1D> parent = bSPTree.getParent();
        return parent != null && bSPTree == childBefore(parent);
    }

    private boolean isDirect(BSPTree<Sphere1D> bSPTree) {
        return ((LimitAngle) bSPTree.getCut().getHyperplane()).isDirect();
    }

    private BSPTree<Sphere1D> leafAfter(BSPTree<Sphere1D> bSPTree) {
        BSPTree<Sphere1D> childAfter = childAfter(bSPTree);
        while (childAfter.getCut() != null) {
            childAfter = childBefore(childAfter);
        }
        return childAfter;
    }

    private BSPTree<Sphere1D> leafBefore(BSPTree<Sphere1D> bSPTree) {
        BSPTree<Sphere1D> childBefore = childBefore(bSPTree);
        while (childBefore.getCut() != null) {
            childBefore = childAfter(childBefore);
        }
        return childBefore;
    }

    public BSPTree<Sphere1D> nextInternalNode(BSPTree<Sphere1D> bSPTree) {
        if (childAfter(bSPTree).getCut() != null) {
            return leafAfter(bSPTree).getParent();
        }
        while (isAfterParent(bSPTree)) {
            bSPTree = bSPTree.getParent();
        }
        return bSPTree.getParent();
    }

    public BSPTree<Sphere1D> previousInternalNode(BSPTree<Sphere1D> bSPTree) {
        if (childBefore(bSPTree).getCut() != null) {
            return leafBefore(bSPTree).getParent();
        }
        while (isBeforeParent(bSPTree)) {
            bSPTree = bSPTree.getParent();
        }
        return bSPTree.getParent();
    }

    public List<Arc> asList() {
        ArrayList arrayList = new ArrayList();
        Iterator<double[]> it = iterator();
        while (it.hasNext()) {
            double[] next = it.next();
            arrayList.add(new Arc(next[0], next[1], getTolerance()));
        }
        return arrayList;
    }

    @Override
    public AbstractRegion buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Sphere1D>) bSPTree);
    }

    @Override
    public void computeGeometricalProperties() {
        double d10 = 0.0d;
        if (getTree(false).getCut() == null) {
            setBarycenter(S1Point.NaN);
            setSize(((Boolean) getTree(false).getAttribute()).booleanValue() ? 6.283185307179586d : 0.0d);
            return;
        }
        Iterator<double[]> it = iterator();
        double d11 = 0.0d;
        while (it.hasNext()) {
            double[] next = it.next();
            double d12 = next[1];
            double d13 = next[0];
            double d14 = d12 - d13;
            d10 += d14;
            d11 += d14 * (d13 + d12);
        }
        setSize(d10);
        if (Precision.equals(d10, 6.283185307179586d, 0)) {
            setBarycenter(S1Point.NaN);
        } else if (d10 >= Precision.SAFE_MIN) {
            setBarycenter(new S1Point(d11 / (d10 * 2.0d)));
        } else {
            setBarycenter(((LimitAngle) getTree(false).getCut().getHyperplane()).getLocation());
        }
    }

    @Override
    public Iterator<double[]> iterator() {
        return new SubArcsIterator();
    }

    @Override
    public BoundaryProjection<Sphere1D> projectToBoundary(Point<Sphere1D> point) {
        double alpha = ((S1Point) point).getAlpha();
        Iterator<double[]> it = iterator();
        double d10 = Double.NaN;
        boolean z10 = false;
        double d11 = Double.NaN;
        while (it.hasNext()) {
            double[] next = it.next();
            if (Double.isNaN(d11)) {
                d11 = next[0];
            }
            if (!z10) {
                double d12 = next[0];
                if (alpha >= d12) {
                    double d13 = next[1];
                    if (alpha <= d13) {
                        double d14 = d12 - alpha;
                        double d15 = alpha - d13;
                        return d14 < d15 ? new BoundaryProjection<>(point, new S1Point(next[1]), d15) : new BoundaryProjection<>(point, new S1Point(next[0]), d14);
                    }
                } else {
                    if (!Double.isNaN(d10)) {
                        double d16 = alpha - d10;
                        double d17 = next[0] - alpha;
                        return d16 < d17 ? new BoundaryProjection<>(point, new S1Point(d10), d16) : new BoundaryProjection<>(point, new S1Point(next[0]), d17);
                    }
                    z10 = true;
                }
            }
            d10 = next[1];
        }
        if (Double.isNaN(d10)) {
            return new BoundaryProjection<>(point, null, 6.283185307179586d);
        }
        if (z10) {
            double d18 = alpha - (d10 - 6.283185307179586d);
            double d19 = d11 - alpha;
            return d18 < d19 ? new BoundaryProjection<>(point, new S1Point(d10), d18) : new BoundaryProjection<>(point, new S1Point(d11), d19);
        }
        double d20 = alpha - d10;
        double d21 = (6.283185307179586d + d11) - alpha;
        return d20 < d21 ? new BoundaryProjection<>(point, new S1Point(d10), d20) : new BoundaryProjection<>(point, new S1Point(d11), d21);
    }

    @Deprecated
    public Side side(Arc arc) {
        return split(arc).getSide();
    }

    public Split split(Arc arc) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        double inf = arc.getInf() + 3.141592653589793d;
        double sup = arc.getSup() - arc.getInf();
        Iterator<double[]> it = iterator();
        while (it.hasNext()) {
            double[] next = it.next();
            double normalizeAngle = MathUtils.normalizeAngle(next[0], inf) - arc.getInf();
            double d10 = next[0];
            double d11 = d10 - normalizeAngle;
            double d12 = next[1] - d11;
            if (normalizeAngle < sup) {
                arrayList.add(Double.valueOf(d10));
                if (d12 > sup) {
                    double d13 = sup + d11;
                    arrayList.add(Double.valueOf(d13));
                    arrayList2.add(Double.valueOf(d13));
                    if (d12 > 6.283185307179586d) {
                        double d14 = d11 + 6.283185307179586d;
                        arrayList2.add(Double.valueOf(d14));
                        arrayList.add(Double.valueOf(d14));
                        arrayList.add(Double.valueOf(next[1]));
                    } else {
                        arrayList2.add(Double.valueOf(next[1]));
                    }
                } else {
                    arrayList.add(Double.valueOf(next[1]));
                }
            } else {
                arrayList2.add(Double.valueOf(d10));
                if (d12 > 6.283185307179586d) {
                    double d15 = d11 + 6.283185307179586d;
                    arrayList2.add(Double.valueOf(d15));
                    arrayList.add(Double.valueOf(d15));
                    double d16 = sup + 6.283185307179586d;
                    if (d12 > d16) {
                        double d17 = d16 + d11;
                        arrayList.add(Double.valueOf(d17));
                        arrayList2.add(Double.valueOf(d17));
                        arrayList2.add(Double.valueOf(next[1]));
                    } else {
                        arrayList.add(Double.valueOf(next[1]));
                    }
                } else {
                    arrayList2.add(Double.valueOf(next[1]));
                }
            }
        }
        return new Split(createSplitPart(arrayList));
    }

    public ArcsSet(double d10, double d11, double d12) throws NumberIsTooLargeException {
        super(buildTree(d10, d11, d12), d12);
    }

    @Override
    public Region buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Sphere1D>) bSPTree);
    }

    public ArcsSet(BSPTree<Sphere1D> bSPTree, double d10) throws InconsistentStateAt2PiWrapping {
        super(bSPTree, d10);
        check2PiConsistency();
    }

    @Override
    public ArcsSet buildNew(BSPTree<Sphere1D> bSPTree) {
        return new ArcsSet(bSPTree, getTolerance());
    }

    public ArcsSet(Collection<SubHyperplane<Sphere1D>> collection, double d10) throws InconsistentStateAt2PiWrapping {
        super(collection, d10);
        check2PiConsistency();
    }
}
