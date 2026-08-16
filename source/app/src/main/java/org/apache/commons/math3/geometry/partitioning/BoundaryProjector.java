package org.apache.commons.math3.geometry.partitioning;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.util.FastMath;

public class BoundaryProjector<S extends Space, T extends Space> implements BSPTreeVisitor<S> {
    private final Point<S> original;
    private Point<S> projected = null;
    private BSPTree<S> leaf = null;
    private double offset = Double.POSITIVE_INFINITY;

    public BoundaryProjector(Point<S> point) {
        this.original = point;
    }

    private void addRegion(SubHyperplane<S> subHyperplane, List<Region<T>> list) {
        Region<T> remainingRegion;
        if (subHyperplane == null || (remainingRegion = ((AbstractSubHyperplane) subHyperplane).getRemainingRegion()) == null) {
            return;
        }
        list.add(remainingRegion);
    }

    private boolean belongsToPart(Point<S> point, Hyperplane<S> hyperplane, Region<T> region) {
        return region.checkPoint(((Embedding) hyperplane).toSubSpace(point)) != Region.Location.OUTSIDE;
    }

    private List<Region<T>> boundaryRegions(BSPTree<S> bSPTree) {
        ArrayList arrayList = new ArrayList(2);
        BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
        addRegion(boundaryAttribute.getPlusInside(), arrayList);
        addRegion(boundaryAttribute.getPlusOutside(), arrayList);
        return arrayList;
    }

    private Point<S> singularProjection(Point<S> point, Hyperplane<S> hyperplane, Region<T> region) {
        Embedding embedding = (Embedding) hyperplane;
        BoundaryProjection<T> projectToBoundary = region.projectToBoundary(embedding.toSubSpace(point));
        if (projectToBoundary.getProjected() == null) {
            return null;
        }
        return embedding.toSpace(projectToBoundary.getProjected());
    }

    public BoundaryProjection<S> getProjection() {
        double copySign = FastMath.copySign(this.offset, ((Boolean) this.leaf.getAttribute()).booleanValue() ? -1.0d : 1.0d);
        this.offset = copySign;
        return new BoundaryProjection<>(this.original, this.projected, copySign);
    }

    @Override
    public void visitInternalNode(BSPTree<S> bSPTree) {
        Hyperplane<S> hyperplane = bSPTree.getCut().getHyperplane();
        double offset = hyperplane.getOffset(this.original);
        if (FastMath.abs(offset) < this.offset) {
            Point<S> project = hyperplane.project(this.original);
            List<Region<T>> boundaryRegions = boundaryRegions(bSPTree);
            boolean z10 = false;
            for (Region<T> region : boundaryRegions) {
                if (!z10 && belongsToPart(project, hyperplane, region)) {
                    this.projected = project;
                    this.offset = FastMath.abs(offset);
                    z10 = true;
                }
            }
            if (z10) {
                return;
            }
            Iterator<Region<T>> it = boundaryRegions.iterator();
            while (it.hasNext()) {
                Point<S> singularProjection = singularProjection(project, hyperplane, it.next());
                if (singularProjection != null) {
                    double distance = this.original.distance(singularProjection);
                    if (distance < this.offset) {
                        this.projected = singularProjection;
                        this.offset = distance;
                    }
                }
            }
        }
    }

    @Override
    public void visitLeafNode(BSPTree<S> bSPTree) {
        if (this.leaf == null) {
            this.leaf = bSPTree;
        }
    }

    @Override
    public BSPTreeVisitor.Order visitOrder(BSPTree<S> bSPTree) {
        return bSPTree.getCut().getHyperplane().getOffset(this.original) <= 0.0d ? BSPTreeVisitor.Order.MINUS_SUB_PLUS : BSPTreeVisitor.Order.PLUS_SUB_MINUS;
    }
}
