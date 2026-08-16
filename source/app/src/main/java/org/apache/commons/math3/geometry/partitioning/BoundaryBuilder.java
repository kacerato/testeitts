package org.apache.commons.math3.geometry.partitioning;

import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;

public class BoundaryBuilder<S extends Space> implements BSPTreeVisitor<S> {
    /* JADX WARN: Removed duplicated region for block: B:15:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x004b  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void visitInternalNode(BSPTree<S> bSPTree) {
        SubHyperplane<S> subHyperplane;
        NodesSet nodesSet;
        Characterization characterization = new Characterization(bSPTree.getPlus(), bSPTree.getCut().copySelf());
        SubHyperplane<S> subHyperplane2 = null;
        if (characterization.touchOutside()) {
            Characterization characterization2 = new Characterization(bSPTree.getMinus(), characterization.outsideTouching());
            if (characterization2.touchInside()) {
                subHyperplane = characterization2.insideTouching();
                nodesSet = new NodesSet();
                nodesSet.addAll(characterization2.getInsideSplitters());
                nodesSet.addAll(characterization.getOutsideSplitters());
                if (characterization.touchInside()) {
                    Characterization characterization3 = new Characterization(bSPTree.getMinus(), characterization.insideTouching());
                    if (characterization3.touchOutside()) {
                        subHyperplane2 = characterization3.outsideTouching();
                        if (nodesSet == null) {
                            nodesSet = new NodesSet();
                        }
                        nodesSet.addAll(characterization3.getOutsideSplitters());
                        nodesSet.addAll(characterization.getInsideSplitters());
                    }
                }
                if (nodesSet != null) {
                    for (BSPTree<S> parent = bSPTree.getParent(); parent != null; parent = parent.getParent()) {
                        nodesSet.add(parent);
                    }
                }
                bSPTree.setAttribute(new BoundaryAttribute(subHyperplane, subHyperplane2, nodesSet));
            }
        }
        subHyperplane = null;
        nodesSet = null;
        if (characterization.touchInside()) {
        }
        if (nodesSet != null) {
        }
        bSPTree.setAttribute(new BoundaryAttribute(subHyperplane, subHyperplane2, nodesSet));
    }

    @Override
    public void visitLeafNode(BSPTree<S> bSPTree) {
    }

    @Override
    public BSPTreeVisitor.Order visitOrder(BSPTree<S> bSPTree) {
        return BSPTreeVisitor.Order.PLUS_MINUS_SUB;
    }
}
