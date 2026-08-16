package org.apache.commons.math3.geometry.partitioning;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;

public class RegionFactory<S extends Space> {
    private final RegionFactory<S>.NodesCleaner nodeCleaner = new NodesCleaner(this, null);

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$geometry$partitioning$Side;

        static {
            int[] iArr = new int[Side.values().length];
            $SwitchMap$org$apache$commons$math3$geometry$partitioning$Side = iArr;
            try {
                iArr[Side.HYPER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$geometry$partitioning$Side[Side.PLUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public class DifferenceMerger implements BSPTree.LeafMerger<S>, BSPTree.VanishingCutHandler<S> {
        private final Region<S> region1;
        private final Region<S> region2;

        public DifferenceMerger(Region<S> region, Region<S> region2) {
            this.region1 = region.copySelf();
            this.region2 = region2.copySelf();
        }

        @Override
        public BSPTree<S> fixNode(BSPTree<S> bSPTree) {
            Point<S> barycenter = this.region1.buildNew(bSPTree.pruneAroundConvexCell(Boolean.TRUE, Boolean.FALSE, null)).getBarycenter();
            return new BSPTree<>(Boolean.valueOf(this.region1.checkPoint(barycenter) == Region.Location.INSIDE && this.region2.checkPoint(barycenter) == Region.Location.OUTSIDE));
        }

        @Override
        public BSPTree<S> merge(BSPTree<S> bSPTree, BSPTree<S> bSPTree2, BSPTree<S> bSPTree3, boolean z10, boolean z11) {
            if (!((Boolean) bSPTree.getAttribute()).booleanValue()) {
                if (!z11) {
                    bSPTree = bSPTree2;
                }
                bSPTree.insertInTree(bSPTree3, z10, this);
                return bSPTree;
            }
            RegionFactory regionFactory = RegionFactory.this;
            if (z11) {
                bSPTree = bSPTree2;
            }
            BSPTree<S> recurseComplement = regionFactory.recurseComplement(bSPTree);
            recurseComplement.insertInTree(bSPTree3, z10, this);
            return recurseComplement;
        }
    }

    public class IntersectionMerger implements BSPTree.LeafMerger<S> {
        private IntersectionMerger() {
        }

        @Override
        public BSPTree<S> merge(BSPTree<S> bSPTree, BSPTree<S> bSPTree2, BSPTree<S> bSPTree3, boolean z10, boolean z11) {
            if (((Boolean) bSPTree.getAttribute()).booleanValue()) {
                bSPTree2.insertInTree(bSPTree3, z10, new VanishingToLeaf(true));
                return bSPTree2;
            }
            bSPTree.insertInTree(bSPTree3, z10, new VanishingToLeaf(false));
            return bSPTree;
        }

        public IntersectionMerger(RegionFactory regionFactory, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public class NodesCleaner implements BSPTreeVisitor<S> {
        private NodesCleaner() {
        }

        @Override
        public void visitInternalNode(BSPTree<S> bSPTree) {
            bSPTree.setAttribute(null);
        }

        @Override
        public void visitLeafNode(BSPTree<S> bSPTree) {
        }

        @Override
        public BSPTreeVisitor.Order visitOrder(BSPTree<S> bSPTree) {
            return BSPTreeVisitor.Order.PLUS_SUB_MINUS;
        }

        public NodesCleaner(RegionFactory regionFactory, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public class UnionMerger implements BSPTree.LeafMerger<S> {
        private UnionMerger() {
        }

        @Override
        public BSPTree<S> merge(BSPTree<S> bSPTree, BSPTree<S> bSPTree2, BSPTree<S> bSPTree3, boolean z10, boolean z11) {
            if (((Boolean) bSPTree.getAttribute()).booleanValue()) {
                bSPTree.insertInTree(bSPTree3, z10, new VanishingToLeaf(true));
                return bSPTree;
            }
            bSPTree2.insertInTree(bSPTree3, z10, new VanishingToLeaf(false));
            return bSPTree2;
        }

        public UnionMerger(RegionFactory regionFactory, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public class VanishingToLeaf implements BSPTree.VanishingCutHandler<S> {
        private final boolean inside;

        public VanishingToLeaf(boolean z10) {
            this.inside = z10;
        }

        @Override
        public BSPTree<S> fixNode(BSPTree<S> bSPTree) {
            return bSPTree.getPlus().getAttribute().equals(bSPTree.getMinus().getAttribute()) ? new BSPTree<>(bSPTree.getPlus().getAttribute()) : new BSPTree<>(Boolean.valueOf(this.inside));
        }
    }

    public class XorMerger implements BSPTree.LeafMerger<S> {
        private XorMerger() {
        }

        @Override
        public BSPTree<S> merge(BSPTree<S> bSPTree, BSPTree<S> bSPTree2, BSPTree<S> bSPTree3, boolean z10, boolean z11) {
            if (((Boolean) bSPTree.getAttribute()).booleanValue()) {
                bSPTree2 = RegionFactory.this.recurseComplement(bSPTree2);
            }
            bSPTree2.insertInTree(bSPTree3, z10, new VanishingToLeaf(true));
            return bSPTree2;
        }

        public XorMerger(RegionFactory regionFactory, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public BSPTree<S> recurseComplement(BSPTree<S> bSPTree) {
        BoundaryAttribute boundaryAttribute;
        HashMap hashMap = new HashMap();
        BSPTree<S> recurseComplement = recurseComplement(bSPTree, hashMap);
        for (Map.Entry<BSPTree<S>, BSPTree<S>> entry : hashMap.entrySet()) {
            if (entry.getKey().getCut() != null && (boundaryAttribute = (BoundaryAttribute) entry.getKey().getAttribute()) != null) {
                BoundaryAttribute boundaryAttribute2 = (BoundaryAttribute) entry.getValue().getAttribute();
                Iterator<BSPTree<S>> it = boundaryAttribute.getSplitters().iterator();
                while (it.hasNext()) {
                    boundaryAttribute2.getSplitters().add(hashMap.get(it.next()));
                }
            }
        }
        return recurseComplement;
    }

    public Region<S> buildConvex(Hyperplane<S>... hyperplaneArr) {
        if (hyperplaneArr == null || hyperplaneArr.length == 0) {
            return null;
        }
        Region<S> wholeSpace = hyperplaneArr[0].wholeSpace();
        BSPTree<S> tree = wholeSpace.getTree(false);
        tree.setAttribute(Boolean.TRUE);
        for (Hyperplane<S> hyperplane : hyperplaneArr) {
            if (tree.insertCut(hyperplane)) {
                tree.setAttribute(null);
                tree.getPlus().setAttribute(Boolean.FALSE);
                tree = tree.getMinus();
                tree.setAttribute(Boolean.TRUE);
            } else {
                SubHyperplane<S> wholeHyperplane = hyperplane.wholeHyperplane();
                for (BSPTree<S> bSPTree = tree; bSPTree.getParent() != null && wholeHyperplane != null; bSPTree = bSPTree.getParent()) {
                    Hyperplane<S> hyperplane2 = bSPTree.getParent().getCut().getHyperplane();
                    SubHyperplane.SplitSubHyperplane<S> split = wholeHyperplane.split(hyperplane2);
                    int i10 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side[split.getSide().ordinal()];
                    if (i10 != 1) {
                        if (i10 == 2) {
                            throw new MathIllegalArgumentException(LocalizedFormats.NOT_CONVEX_HYPERPLANES, new Object[0]);
                        }
                        wholeHyperplane = split.getMinus();
                    } else if (!hyperplane.sameOrientationAs(hyperplane2)) {
                        return getComplement(hyperplaneArr[0].wholeSpace());
                    }
                }
            }
        }
        return wholeSpace;
    }

    public Region<S> difference(Region<S> region, Region<S> region2) {
        BSPTree<S> merge = region.getTree(false).merge(region2.getTree(false), new DifferenceMerger(region, region2));
        merge.visit(this.nodeCleaner);
        return region.buildNew(merge);
    }

    public Region<S> getComplement(Region<S> region) {
        return region.buildNew(recurseComplement(region.getTree(false)));
    }

    public Region<S> intersection(Region<S> region, Region<S> region2) {
        BSPTree<S> merge = region.getTree(false).merge(region2.getTree(false), new IntersectionMerger(this, null));
        merge.visit(this.nodeCleaner);
        return region.buildNew(merge);
    }

    public Region<S> union(Region<S> region, Region<S> region2) {
        BSPTree<S> merge = region.getTree(false).merge(region2.getTree(false), new UnionMerger(this, null));
        merge.visit(this.nodeCleaner);
        return region.buildNew(merge);
    }

    public Region<S> xor(Region<S> region, Region<S> region2) {
        BSPTree<S> merge = region.getTree(false).merge(region2.getTree(false), new XorMerger(this, null));
        merge.visit(this.nodeCleaner);
        return region.buildNew(merge);
    }

    private BSPTree<S> recurseComplement(BSPTree<S> bSPTree, Map<BSPTree<S>, BSPTree<S>> map) {
        BSPTree<S> bSPTree2;
        if (bSPTree.getCut() == null) {
            bSPTree2 = new BSPTree<>(((Boolean) bSPTree.getAttribute()).booleanValue() ? Boolean.FALSE : Boolean.TRUE);
        } else {
            BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
            if (boundaryAttribute != null) {
                boundaryAttribute = new BoundaryAttribute(boundaryAttribute.getPlusInside() == null ? null : boundaryAttribute.getPlusInside().copySelf(), boundaryAttribute.getPlusOutside() != null ? boundaryAttribute.getPlusOutside().copySelf() : null, new NodesSet());
            }
            bSPTree2 = new BSPTree<>(bSPTree.getCut().copySelf(), recurseComplement(bSPTree.getPlus(), map), recurseComplement(bSPTree.getMinus(), map), boundaryAttribute);
        }
        map.put(bSPTree, bSPTree2);
        return bSPTree2;
    }
}
