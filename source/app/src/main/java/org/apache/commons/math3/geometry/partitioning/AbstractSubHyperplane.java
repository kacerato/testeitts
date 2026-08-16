package org.apache.commons.math3.geometry.partitioning;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;

public abstract class AbstractSubHyperplane<S extends Space, T extends Space> implements SubHyperplane<S> {
    private final Hyperplane<S> hyperplane;
    private final Region<T> remainingRegion;

    public AbstractSubHyperplane(Hyperplane<S> hyperplane, Region<T> region) {
        this.hyperplane = hyperplane;
        this.remainingRegion = region;
    }

    private BSPTree<T> recurseTransform(BSPTree<T> bSPTree, Hyperplane<S> hyperplane, Transform<S, T> transform, Map<BSPTree<T>, BSPTree<T>> map) {
        BSPTree<T> bSPTree2;
        if (bSPTree.getCut() == null) {
            bSPTree2 = new BSPTree<>(bSPTree.getAttribute());
        } else {
            BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
            if (boundaryAttribute != null) {
                boundaryAttribute = new BoundaryAttribute(boundaryAttribute.getPlusOutside() == null ? null : transform.apply(boundaryAttribute.getPlusOutside(), this.hyperplane, hyperplane), boundaryAttribute.getPlusInside() != null ? transform.apply(boundaryAttribute.getPlusInside(), this.hyperplane, hyperplane) : null, new NodesSet());
            }
            bSPTree2 = new BSPTree<>(transform.apply(bSPTree.getCut(), this.hyperplane, hyperplane), recurseTransform(bSPTree.getPlus(), hyperplane, transform, map), recurseTransform(bSPTree.getMinus(), hyperplane, transform, map), boundaryAttribute);
        }
        map.put(bSPTree, bSPTree2);
        return bSPTree2;
    }

    public AbstractSubHyperplane<S, T> applyTransform(Transform<S, T> transform) {
        BoundaryAttribute boundaryAttribute;
        Hyperplane<S> apply = transform.apply(this.hyperplane);
        HashMap hashMap = new HashMap();
        BSPTree<T> recurseTransform = recurseTransform(this.remainingRegion.getTree(false), apply, transform, hashMap);
        for (Map.Entry<BSPTree<T>, BSPTree<T>> entry : hashMap.entrySet()) {
            if (entry.getKey().getCut() != null && (boundaryAttribute = (BoundaryAttribute) entry.getKey().getAttribute()) != null) {
                BoundaryAttribute boundaryAttribute2 = (BoundaryAttribute) entry.getValue().getAttribute();
                Iterator<BSPTree<S>> it = boundaryAttribute.getSplitters().iterator();
                while (it.hasNext()) {
                    boundaryAttribute2.getSplitters().add(hashMap.get(it.next()));
                }
            }
        }
        return buildNew(apply, this.remainingRegion.buildNew(recurseTransform));
    }

    public abstract AbstractSubHyperplane<S, T> buildNew(Hyperplane<S> hyperplane, Region<T> region);

    @Override
    public Hyperplane<S> getHyperplane() {
        return this.hyperplane;
    }

    public Region<T> getRemainingRegion() {
        return this.remainingRegion;
    }

    @Override
    public double getSize() {
        return this.remainingRegion.getSize();
    }

    @Override
    public boolean isEmpty() {
        return this.remainingRegion.isEmpty();
    }

    @Override
    @Deprecated
    public Side side(Hyperplane<S> hyperplane) {
        return split(hyperplane).getSide();
    }

    @Override
    public abstract SubHyperplane.SplitSubHyperplane<S> split(Hyperplane<S> hyperplane);

    @Override
    public AbstractSubHyperplane<S, T> copySelf() {
        return buildNew(this.hyperplane.copySelf(), this.remainingRegion);
    }

    @Override
    public AbstractSubHyperplane<S, T> reunite(SubHyperplane<S> subHyperplane) {
        return buildNew(this.hyperplane, new RegionFactory().union(this.remainingRegion, ((AbstractSubHyperplane) subHyperplane).remainingRegion));
    }
}
