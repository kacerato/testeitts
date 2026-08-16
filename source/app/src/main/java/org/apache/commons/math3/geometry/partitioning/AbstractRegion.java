package org.apache.commons.math3.geometry.partitioning;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeSet;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;

public abstract class AbstractRegion<S extends Space, T extends Space> implements Region<S> {
    private Point<S> barycenter;
    private double size;
    private final double tolerance;
    private BSPTree<S> tree;

    public static class AnonymousClass3 {
        static final int[] $SwitchMap$org$apache$commons$math3$geometry$partitioning$Side;

        static {
            int[] iArr = new int[Side.values().length];
            $SwitchMap$org$apache$commons$math3$geometry$partitioning$Side = iArr;
            try {
                iArr[Side.PLUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$geometry$partitioning$Side[Side.MINUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$geometry$partitioning$Side[Side.BOTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public AbstractRegion(double d10) {
        this.tree = new BSPTree<>(Boolean.TRUE);
        this.tolerance = d10;
    }

    private void insertCuts(BSPTree<S> bSPTree, Collection<SubHyperplane<S>> collection) {
        Hyperplane<S> hyperplane;
        Iterator<SubHyperplane<S>> it = collection.iterator();
        loop0: while (true) {
            hyperplane = null;
            while (hyperplane == null && it.hasNext()) {
                hyperplane = it.next().getHyperplane();
                if (!bSPTree.insertCut(hyperplane.copySelf())) {
                    break;
                }
            }
        }
        if (it.hasNext()) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            while (it.hasNext()) {
                SubHyperplane<S> next = it.next();
                SubHyperplane.SplitSubHyperplane<S> split = next.split(hyperplane);
                int i10 = AnonymousClass3.$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side[split.getSide().ordinal()];
                if (i10 == 1) {
                    arrayList.add(next);
                } else if (i10 == 2) {
                    arrayList2.add(next);
                } else if (i10 == 3) {
                    arrayList.add(split.getPlus());
                    arrayList2.add(split.getMinus());
                }
            }
            insertCuts(bSPTree.getPlus(), arrayList);
            insertCuts(bSPTree.getMinus(), arrayList2);
        }
    }

    private SubHyperplane<S> recurseIntersection(BSPTree<S> bSPTree, SubHyperplane<S> subHyperplane) {
        if (bSPTree.getCut() == null) {
            if (((Boolean) bSPTree.getAttribute()).booleanValue()) {
                return subHyperplane.copySelf();
            }
            return null;
        }
        SubHyperplane.SplitSubHyperplane<S> split = subHyperplane.split(bSPTree.getCut().getHyperplane());
        if (split.getPlus() == null) {
            return split.getMinus() != null ? recurseIntersection(bSPTree.getMinus(), subHyperplane) : recurseIntersection(bSPTree.getPlus(), recurseIntersection(bSPTree.getMinus(), subHyperplane));
        }
        if (split.getMinus() == null) {
            return recurseIntersection(bSPTree.getPlus(), subHyperplane);
        }
        SubHyperplane<S> recurseIntersection = recurseIntersection(bSPTree.getPlus(), split.getPlus());
        SubHyperplane<S> recurseIntersection2 = recurseIntersection(bSPTree.getMinus(), split.getMinus());
        return recurseIntersection == null ? recurseIntersection2 : recurseIntersection2 == null ? recurseIntersection : recurseIntersection.reunite(recurseIntersection2);
    }

    private BSPTree<S> recurseTransform(BSPTree<S> bSPTree, Transform<S, T> transform, Map<BSPTree<S>, BSPTree<S>> map) {
        BSPTree<S> bSPTree2;
        if (bSPTree.getCut() == null) {
            bSPTree2 = new BSPTree<>(bSPTree.getAttribute());
        } else {
            AbstractSubHyperplane<S, T> applyTransform = ((AbstractSubHyperplane) bSPTree.getCut()).applyTransform(transform);
            BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
            if (boundaryAttribute != null) {
                boundaryAttribute = new BoundaryAttribute(boundaryAttribute.getPlusOutside() == null ? null : ((AbstractSubHyperplane) boundaryAttribute.getPlusOutside()).applyTransform(transform), boundaryAttribute.getPlusInside() != null ? ((AbstractSubHyperplane) boundaryAttribute.getPlusInside()).applyTransform(transform) : null, new NodesSet());
            }
            bSPTree2 = new BSPTree<>(applyTransform, recurseTransform(bSPTree.getPlus(), transform, map), recurseTransform(bSPTree.getMinus(), transform, map), boundaryAttribute);
        }
        map.put(bSPTree, bSPTree2);
        return bSPTree2;
    }

    public AbstractRegion<S, T> applyTransform(Transform<S, T> transform) {
        BoundaryAttribute boundaryAttribute;
        HashMap hashMap = new HashMap();
        BSPTree<S> recurseTransform = recurseTransform(getTree(false), transform, hashMap);
        for (Map.Entry<BSPTree<S>, BSPTree<S>> entry : hashMap.entrySet()) {
            if (entry.getKey().getCut() != null && (boundaryAttribute = (BoundaryAttribute) entry.getKey().getAttribute()) != null) {
                BoundaryAttribute boundaryAttribute2 = (BoundaryAttribute) entry.getValue().getAttribute();
                Iterator<BSPTree<S>> it = boundaryAttribute.getSplitters().iterator();
                while (it.hasNext()) {
                    boundaryAttribute2.getSplitters().add(hashMap.get(it.next()));
                }
            }
        }
        return buildNew((BSPTree) recurseTransform);
    }

    @Override
    public abstract AbstractRegion<S, T> buildNew(BSPTree<S> bSPTree);

    public Region.Location checkPoint(Vector<S> vector) {
        return checkPoint((Point) vector);
    }

    public abstract void computeGeometricalProperties();

    @Override
    public boolean contains(Region<S> region) {
        return new RegionFactory().difference(region, this).isEmpty();
    }

    @Override
    public Point<S> getBarycenter() {
        if (this.barycenter == null) {
            computeGeometricalProperties();
        }
        return this.barycenter;
    }

    @Override
    public double getBoundarySize() {
        BoundarySizeVisitor boundarySizeVisitor = new BoundarySizeVisitor();
        getTree(true).visit(boundarySizeVisitor);
        return boundarySizeVisitor.getSize();
    }

    @Override
    public double getSize() {
        if (this.barycenter == null) {
            computeGeometricalProperties();
        }
        return this.size;
    }

    public double getTolerance() {
        return this.tolerance;
    }

    @Override
    public BSPTree<S> getTree(boolean z10) {
        if (z10 && this.tree.getCut() != null && this.tree.getAttribute() == null) {
            this.tree.visit(new BoundaryBuilder());
        }
        return this.tree;
    }

    @Override
    public SubHyperplane<S> intersection(SubHyperplane<S> subHyperplane) {
        return recurseIntersection(this.tree, subHyperplane);
    }

    @Override
    public boolean isEmpty() {
        return isEmpty(this.tree);
    }

    @Override
    public boolean isFull() {
        return isFull(this.tree);
    }

    @Override
    public BoundaryProjection<S> projectToBoundary(Point<S> point) {
        BoundaryProjector boundaryProjector = new BoundaryProjector(point);
        getTree(true).visit(boundaryProjector);
        return boundaryProjector.getProjection();
    }

    public void setBarycenter(Vector<S> vector) {
        setBarycenter((Point) vector);
    }

    public void setSize(double d10) {
        this.size = d10;
    }

    @Override
    @Deprecated
    public Side side(Hyperplane<S> hyperplane) {
        InsideFinder insideFinder = new InsideFinder(this);
        insideFinder.recurseSides(this.tree, hyperplane.wholeHyperplane());
        return insideFinder.plusFound() ? insideFinder.minusFound() ? Side.BOTH : Side.PLUS : insideFinder.minusFound() ? Side.MINUS : Side.HYPER;
    }

    @Override
    public Region.Location checkPoint(Point<S> point) {
        return checkPoint(this.tree, point);
    }

    @Override
    public AbstractRegion<S, T> copySelf() {
        return buildNew((BSPTree) this.tree.copySelf());
    }

    @Override
    public boolean isEmpty(BSPTree<S> bSPTree) {
        if (bSPTree.getCut() == null) {
            return !((Boolean) bSPTree.getAttribute()).booleanValue();
        }
        return isEmpty(bSPTree.getMinus()) && isEmpty(bSPTree.getPlus());
    }

    @Override
    public boolean isFull(BSPTree<S> bSPTree) {
        if (bSPTree.getCut() == null) {
            return ((Boolean) bSPTree.getAttribute()).booleanValue();
        }
        return isFull(bSPTree.getMinus()) && isFull(bSPTree.getPlus());
    }

    public void setBarycenter(Point<S> point) {
        this.barycenter = point;
    }

    public Region.Location checkPoint(BSPTree<S> bSPTree, Vector<S> vector) {
        return checkPoint((BSPTree) bSPTree, (Point) vector);
    }

    public AbstractRegion(BSPTree<S> bSPTree, double d10) {
        this.tree = bSPTree;
        this.tolerance = d10;
    }

    public Region.Location checkPoint(BSPTree<S> bSPTree, Point<S> point) {
        BSPTree<S> cell = bSPTree.getCell(point, this.tolerance);
        if (cell.getCut() == null) {
            return ((Boolean) cell.getAttribute()).booleanValue() ? Region.Location.INSIDE : Region.Location.OUTSIDE;
        }
        Region.Location checkPoint = checkPoint(cell.getMinus(), point);
        return checkPoint == checkPoint(cell.getPlus(), point) ? checkPoint : Region.Location.BOUNDARY;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractRegion(Collection<SubHyperplane<S>> collection, double d10) {
        this.tolerance = d10;
        if (collection.size() == 0) {
            this.tree = new BSPTree<>(Boolean.TRUE);
            return;
        }
        TreeSet treeSet = new TreeSet(new Comparator<SubHyperplane<S>>() {
            @Override
            public int compare(SubHyperplane<S> subHyperplane, SubHyperplane<S> subHyperplane2) {
                if (subHyperplane2.getSize() < subHyperplane.getSize()) {
                    return -1;
                }
                return subHyperplane == subHyperplane2 ? 0 : 1;
            }
        });
        treeSet.addAll(collection);
        BSPTree<S> bSPTree = new BSPTree<>();
        this.tree = bSPTree;
        insertCuts(bSPTree, treeSet);
        this.tree.visit(new BSPTreeVisitor<S>() {
            @Override
            public void visitInternalNode(BSPTree<S> bSPTree2) {
            }

            @Override
            public void visitLeafNode(BSPTree<S> bSPTree2) {
                if (bSPTree2.getParent() == null || bSPTree2 == bSPTree2.getParent().getMinus()) {
                    bSPTree2.setAttribute(Boolean.TRUE);
                } else {
                    bSPTree2.setAttribute(Boolean.FALSE);
                }
            }

            @Override
            public BSPTreeVisitor.Order visitOrder(BSPTree<S> bSPTree2) {
                return BSPTreeVisitor.Order.PLUS_SUB_MINUS;
            }
        });
    }

    public AbstractRegion(Hyperplane<S>[] hyperplaneArr, double d10) {
        this.tolerance = d10;
        if (hyperplaneArr != null && hyperplaneArr.length != 0) {
            BSPTree<S> tree = hyperplaneArr[0].wholeSpace().getTree(false);
            this.tree = tree;
            tree.setAttribute(Boolean.TRUE);
            for (Hyperplane<S> hyperplane : hyperplaneArr) {
                if (tree.insertCut(hyperplane)) {
                    tree.setAttribute(null);
                    tree.getPlus().setAttribute(Boolean.FALSE);
                    tree = tree.getMinus();
                    tree.setAttribute(Boolean.TRUE);
                }
            }
            return;
        }
        this.tree = new BSPTree<>(Boolean.FALSE);
    }
}
