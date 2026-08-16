package org.apache.commons.math3.geometry.partitioning;

import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;

class InsideFinder<S extends Space> {
    private final Region<S> region;
    private boolean plusFound = false;
    private boolean minusFound = false;

    public static class AnonymousClass1 {
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

    public InsideFinder(Region<S> region) {
        this.region = region;
    }

    public boolean minusFound() {
        return this.minusFound;
    }

    public boolean plusFound() {
        return this.plusFound;
    }

    public void recurseSides(BSPTree<S> bSPTree, SubHyperplane<S> subHyperplane) {
        if (bSPTree.getCut() == null) {
            if (((Boolean) bSPTree.getAttribute()).booleanValue()) {
                this.plusFound = true;
                this.minusFound = true;
                return;
            }
            return;
        }
        SubHyperplane.SplitSubHyperplane<S> split = subHyperplane.split(bSPTree.getCut().getHyperplane());
        int i10 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side[split.getSide().ordinal()];
        if (i10 == 1) {
            if (bSPTree.getCut().split(subHyperplane.getHyperplane()).getSide() == Side.PLUS) {
                if (!this.region.isEmpty(bSPTree.getMinus())) {
                    this.plusFound = true;
                }
            } else if (!this.region.isEmpty(bSPTree.getMinus())) {
                this.minusFound = true;
            }
            if (this.plusFound && this.minusFound) {
                return;
            }
            recurseSides(bSPTree.getPlus(), subHyperplane);
            return;
        }
        if (i10 == 2) {
            if (bSPTree.getCut().split(subHyperplane.getHyperplane()).getSide() == Side.PLUS) {
                if (!this.region.isEmpty(bSPTree.getPlus())) {
                    this.plusFound = true;
                }
            } else if (!this.region.isEmpty(bSPTree.getPlus())) {
                this.minusFound = true;
            }
            if (this.plusFound && this.minusFound) {
                return;
            }
            recurseSides(bSPTree.getMinus(), subHyperplane);
            return;
        }
        if (i10 == 3) {
            recurseSides(bSPTree.getPlus(), split.getPlus());
            if (this.plusFound && this.minusFound) {
                return;
            }
            recurseSides(bSPTree.getMinus(), split.getMinus());
            return;
        }
        if (bSPTree.getCut().getHyperplane().sameOrientationAs(subHyperplane.getHyperplane())) {
            if (bSPTree.getPlus().getCut() != null || ((Boolean) bSPTree.getPlus().getAttribute()).booleanValue()) {
                this.plusFound = true;
            }
            if (bSPTree.getMinus().getCut() != null || ((Boolean) bSPTree.getMinus().getAttribute()).booleanValue()) {
                this.minusFound = true;
                return;
            }
            return;
        }
        if (bSPTree.getPlus().getCut() != null || ((Boolean) bSPTree.getPlus().getAttribute()).booleanValue()) {
            this.minusFound = true;
        }
        if (bSPTree.getMinus().getCut() != null || ((Boolean) bSPTree.getMinus().getAttribute()).booleanValue()) {
            this.plusFound = true;
        }
    }
}
