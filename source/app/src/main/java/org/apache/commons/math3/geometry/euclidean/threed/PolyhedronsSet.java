package org.apache.commons.math3.geometry.euclidean.threed;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D;
import org.apache.commons.math3.geometry.euclidean.twod.PolygonsSet;
import org.apache.commons.math3.geometry.euclidean.twod.Vector2D;
import org.apache.commons.math3.geometry.partitioning.AbstractRegion;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.BoundaryAttribute;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.RegionFactory;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.geometry.partitioning.Transform;
import org.apache.commons.math3.util.FastMath;

public class PolyhedronsSet extends AbstractRegion<Euclidean3D, Euclidean2D> {
    private static final double DEFAULT_TOLERANCE = 1.0E-10d;

    public class FacetsContributionVisitor implements BSPTreeVisitor<Euclidean3D> {
        public FacetsContributionVisitor() {
            PolyhedronsSet.this.setSize(0.0d);
            PolyhedronsSet.this.setBarycenter((Point) new Vector3D(0.0d, 0.0d, 0.0d));
        }

        /* JADX WARN: Type inference failed for: r9v0, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
        private void addContribution(SubHyperplane<Euclidean3D> subHyperplane, boolean z10) {
            Region<Euclidean2D> remainingRegion = ((SubPlane) subHyperplane).getRemainingRegion();
            double size = remainingRegion.getSize();
            if (Double.isInfinite(size)) {
                PolyhedronsSet.this.setSize(Double.POSITIVE_INFINITY);
                PolyhedronsSet.this.setBarycenter((Point) Vector3D.NaN);
                return;
            }
            Plane plane = (Plane) subHyperplane.getHyperplane();
            ?? space = plane.toSpace(remainingRegion.getBarycenter());
            double dotProduct = size * space.dotProduct(plane.getNormal());
            double d10 = z10 ? -dotProduct : dotProduct;
            PolyhedronsSet polyhedronsSet = PolyhedronsSet.this;
            polyhedronsSet.setSize(polyhedronsSet.getSize() + d10);
            PolyhedronsSet.this.setBarycenter((Point) new Vector3D(1.0d, (Vector3D) PolyhedronsSet.this.getBarycenter(), d10, space));
        }

        @Override
        public void visitInternalNode(BSPTree<Euclidean3D> bSPTree) {
            BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
            if (boundaryAttribute.getPlusOutside() != null) {
                addContribution(boundaryAttribute.getPlusOutside(), false);
            }
            if (boundaryAttribute.getPlusInside() != null) {
                addContribution(boundaryAttribute.getPlusInside(), true);
            }
        }

        @Override
        public void visitLeafNode(BSPTree<Euclidean3D> bSPTree) {
        }

        @Override
        public BSPTreeVisitor.Order visitOrder(BSPTree<Euclidean3D> bSPTree) {
            return BSPTreeVisitor.Order.MINUS_SUB_PLUS;
        }
    }

    public PolyhedronsSet(double d10) {
        super(d10);
    }

    private SubHyperplane<Euclidean3D> boundaryFacet(Vector3D vector3D, BSPTree<Euclidean3D> bSPTree) {
        Point<Euclidean2D> subSpace = ((Plane) bSPTree.getCut().getHyperplane()).toSubSpace((Point<Euclidean3D>) vector3D);
        BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
        if (boundaryAttribute.getPlusOutside() != null && ((SubPlane) boundaryAttribute.getPlusOutside()).getRemainingRegion().checkPoint(subSpace) == Region.Location.INSIDE) {
            return boundaryAttribute.getPlusOutside();
        }
        if (boundaryAttribute.getPlusInside() == null || ((SubPlane) boundaryAttribute.getPlusInside()).getRemainingRegion().checkPoint(subSpace) != Region.Location.INSIDE) {
            return null;
        }
        return boundaryAttribute.getPlusInside();
    }

    private static BSPTree<Euclidean3D> buildBoundary(double d10, double d11, double d12, double d13, double d14, double d15, double d16) {
        if (d10 < d11 - d16 && d12 < d13 - d16 && d14 < d15 - d16) {
            return new RegionFactory().buildConvex(new Plane(new Vector3D(d10, 0.0d, 0.0d), Vector3D.MINUS_I, d16), new Plane(new Vector3D(d11, 0.0d, 0.0d), Vector3D.PLUS_I, d16), new Plane(new Vector3D(0.0d, d12, 0.0d), Vector3D.MINUS_J, d16), new Plane(new Vector3D(0.0d, d13, 0.0d), Vector3D.PLUS_J, d16), new Plane(new Vector3D(0.0d, 0.0d, d14), Vector3D.MINUS_K, d16), new Plane(new Vector3D(0.0d, 0.0d, d15), Vector3D.PLUS_K, d16)).getTree(false);
        }
        return new BSPTree<>(Boolean.FALSE);
    }

    private static int[][] findReferences(List<Vector3D> list, List<int[]> list2) {
        int[] iArr = new int[list.size()];
        int i10 = 0;
        for (int[] iArr2 : list2) {
            if (iArr2.length < 3) {
                throw new NumberIsTooSmallException(LocalizedFormats.WRONG_NUMBER_OF_POINTS, 3, Integer.valueOf(iArr2.length), true);
            }
            for (int i11 : iArr2) {
                int i12 = iArr[i11] + 1;
                iArr[i11] = i12;
                i10 = FastMath.max(i10, i12);
            }
        }
        int[][] iArr3 = (int[][]) Array.newInstance(Integer.TYPE, list.size(), i10);
        for (int[] iArr4 : iArr3) {
            Arrays.fill(iArr4, -1);
        }
        for (int i13 = 0; i13 < list2.size(); i13++) {
            for (int i14 : list2.get(i13)) {
                int i15 = 0;
                while (i15 < i10 && iArr3[i14][i15] >= 0) {
                    i15++;
                }
                iArr3[i14][i15] = i13;
            }
        }
        return iArr3;
    }

    private SubHyperplane<Euclidean3D> recurseFirstIntersection(BSPTree<Euclidean3D> bSPTree, Vector3D vector3D, Line line) {
        Vector3D intersection;
        SubHyperplane<Euclidean3D> boundaryFacet;
        SubHyperplane<Euclidean3D> boundaryFacet2;
        SubHyperplane<Euclidean3D> cut = bSPTree.getCut();
        if (cut == null) {
            return null;
        }
        BSPTree<Euclidean3D> minus = bSPTree.getMinus();
        BSPTree<Euclidean3D> plus = bSPTree.getPlus();
        Plane plane = (Plane) cut.getHyperplane();
        double offset = plane.getOffset((Point<Euclidean3D>) vector3D);
        boolean z10 = FastMath.abs(offset) < getTolerance();
        if (offset >= 0.0d) {
            plus = minus;
            minus = plus;
        }
        if (z10 && (boundaryFacet2 = boundaryFacet(vector3D, bSPTree)) != null) {
            return boundaryFacet2;
        }
        SubHyperplane<Euclidean3D> recurseFirstIntersection = recurseFirstIntersection(minus, vector3D, line);
        return recurseFirstIntersection != null ? recurseFirstIntersection : (z10 || (intersection = plane.intersection(line)) == null || line.getAbscissa(intersection) <= line.getAbscissa(vector3D) || (boundaryFacet = boundaryFacet(intersection, bSPTree)) == null) ? recurseFirstIntersection(plus, vector3D, line) : boundaryFacet;
    }

    private static int[][] successors(List<Vector3D> list, List<int[]> list2, int[][] iArr) {
        int i10;
        int[][] iArr2 = (int[][]) Array.newInstance(Integer.TYPE, list.size(), iArr[0].length);
        for (int[] iArr3 : iArr2) {
            Arrays.fill(iArr3, -1);
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            for (int i12 = 0; i12 < iArr2[i11].length && (i10 = iArr[i11][i12]) >= 0; i12++) {
                int[] iArr4 = list2.get(i10);
                int i13 = 0;
                while (i13 < iArr4.length && iArr4[i13] != i11) {
                    i13++;
                }
                iArr2[i11][i12] = iArr4[(i13 + 1) % iArr4.length];
                for (int i14 = 0; i14 < i12; i14++) {
                    int[] iArr5 = iArr2[i11];
                    if (iArr5[i14] == iArr5[i12]) {
                        Vector3D vector3D = list.get(i11);
                        Vector3D vector3D2 = list.get(iArr2[i11][i12]);
                        throw new MathIllegalArgumentException(LocalizedFormats.FACET_ORIENTATION_MISMATCH, Double.valueOf(vector3D.getX()), Double.valueOf(vector3D.getY()), Double.valueOf(vector3D.getZ()), Double.valueOf(vector3D2.getX()), Double.valueOf(vector3D2.getY()), Double.valueOf(vector3D2.getZ()));
                    }
                }
            }
        }
        return iArr2;
    }

    @Override
    public AbstractRegion buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean3D>) bSPTree);
    }

    @Override
    public void computeGeometricalProperties() {
        getTree(true).visit(new FacetsContributionVisitor());
        if (getSize() < 0.0d) {
            setSize(Double.POSITIVE_INFINITY);
            setBarycenter((Point) Vector3D.NaN);
        } else {
            setSize(getSize() / 3.0d);
            setBarycenter((Point) new Vector3D(1.0d / (getSize() * 4.0d), (Vector3D) getBarycenter()));
        }
    }

    public SubHyperplane<Euclidean3D> firstIntersection(Vector3D vector3D, Line line) {
        return recurseFirstIntersection(getTree(true), vector3D, line);
    }

    public PolyhedronsSet rotate(Vector3D vector3D, Rotation rotation) {
        return (PolyhedronsSet) applyTransform(new RotationTransform(vector3D, rotation));
    }

    public PolyhedronsSet translate(Vector3D vector3D) {
        return (PolyhedronsSet) applyTransform(new TranslationTransform(vector3D));
    }

    public static class RotationTransform implements Transform<Euclidean3D, Euclidean2D> {
        private Plane cachedOriginal;
        private Transform<Euclidean2D, Euclidean1D> cachedTransform;
        private Vector3D center;
        private Rotation rotation;

        public RotationTransform(Vector3D vector3D, Rotation rotation) {
            this.center = vector3D;
            this.rotation = rotation;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r9v2, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
        @Override
        public Point<Euclidean3D> apply(Point<Euclidean3D> point) {
            return new Vector3D(1.0d, this.center, 1.0d, this.rotation.applyTo((Vector3D) ((Vector3D) point).subtract((Vector<Euclidean3D>) this.center)));
        }

        @Override
        public Hyperplane<Euclidean3D> apply2(Hyperplane<Euclidean3D> hyperplane) {
            return ((Plane) hyperplane).rotate(this.center, this.rotation);
        }

        /* JADX WARN: Type inference failed for: r2v4, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
        /* JADX WARN: Type inference failed for: r3v2, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
        /* JADX WARN: Type inference failed for: r4v3, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
        @Override
        public SubHyperplane<Euclidean2D> apply(SubHyperplane<Euclidean2D> subHyperplane, Hyperplane<Euclidean3D> hyperplane, Hyperplane<Euclidean3D> hyperplane2) {
            if (hyperplane != this.cachedOriginal) {
                Plane plane = (Plane) hyperplane;
                Plane plane2 = (Plane) hyperplane2;
                Vector3D origin = plane.getOrigin();
                Point<Euclidean3D> space = plane.toSpace((Point<Euclidean2D>) new Vector2D(1.0d, 0.0d));
                Point<Euclidean3D> space2 = plane.toSpace((Point<Euclidean2D>) new Vector2D(0.0d, 1.0d));
                ?? subSpace = plane2.toSubSpace(apply((Point<Euclidean3D>) origin));
                ?? subSpace2 = plane2.toSubSpace(apply(space));
                ?? subSpace3 = plane2.toSubSpace(apply(space2));
                this.cachedOriginal = plane;
                this.cachedTransform = org.apache.commons.math3.geometry.euclidean.twod.Line.getTransform(subSpace2.getX() - subSpace.getX(), subSpace2.getY() - subSpace.getY(), subSpace3.getX() - subSpace.getX(), subSpace3.getY() - subSpace.getY(), subSpace.getX(), subSpace.getY());
            }
            return ((org.apache.commons.math3.geometry.euclidean.twod.SubLine) subHyperplane).applyTransform(this.cachedTransform);
        }
    }

    public static class TranslationTransform implements Transform<Euclidean3D, Euclidean2D> {
        private Plane cachedOriginal;
        private Transform<Euclidean2D, Euclidean1D> cachedTransform;
        private Vector3D translation;

        public TranslationTransform(Vector3D vector3D) {
            this.translation = vector3D;
        }

        @Override
        public Point<Euclidean3D> apply(Point<Euclidean3D> point) {
            return new Vector3D(1.0d, (Vector3D) point, 1.0d, this.translation);
        }

        @Override
        public Hyperplane<Euclidean3D> apply2(Hyperplane<Euclidean3D> hyperplane) {
            return ((Plane) hyperplane).translate(this.translation);
        }

        /* JADX WARN: Type inference failed for: r15v2, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
        @Override
        public SubHyperplane<Euclidean2D> apply(SubHyperplane<Euclidean2D> subHyperplane, Hyperplane<Euclidean3D> hyperplane, Hyperplane<Euclidean3D> hyperplane2) {
            if (hyperplane != this.cachedOriginal) {
                Plane plane = (Plane) hyperplane;
                ?? subSpace = ((Plane) hyperplane2).toSubSpace(apply((Point<Euclidean3D>) plane.getOrigin()));
                this.cachedOriginal = plane;
                this.cachedTransform = org.apache.commons.math3.geometry.euclidean.twod.Line.getTransform(1.0d, 0.0d, 0.0d, 1.0d, subSpace.getX(), subSpace.getY());
            }
            return ((org.apache.commons.math3.geometry.euclidean.twod.SubLine) subHyperplane).applyTransform(this.cachedTransform);
        }
    }

    public PolyhedronsSet(BSPTree<Euclidean3D> bSPTree, double d10) {
        super(bSPTree, d10);
    }

    @Override
    public Region buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean3D>) bSPTree);
    }

    public PolyhedronsSet(Collection<SubHyperplane<Euclidean3D>> collection, double d10) {
        super(collection, d10);
    }

    @Override
    public PolyhedronsSet buildNew(BSPTree<Euclidean3D> bSPTree) {
        return new PolyhedronsSet(bSPTree, getTolerance());
    }

    public PolyhedronsSet(List<Vector3D> list, List<int[]> list2, double d10) {
        super(buildBoundary(list, list2, d10), d10);
    }

    public PolyhedronsSet(double d10, double d11, double d12, double d13, double d14, double d15, double d16) {
        super(buildBoundary(d10, d11, d12, d13, d14, d15, d16), d16);
    }

    @Deprecated
    public PolyhedronsSet() {
        this(1.0E-10d);
    }

    @Deprecated
    public PolyhedronsSet(BSPTree<Euclidean3D> bSPTree) {
        this(bSPTree, 1.0E-10d);
    }

    @Deprecated
    public PolyhedronsSet(Collection<SubHyperplane<Euclidean3D>> collection) {
        this(collection, 1.0E-10d);
    }

    @Deprecated
    public PolyhedronsSet(double d10, double d11, double d12, double d13, double d14, double d15) {
        this(d10, d11, d12, d13, d14, d15, 1.0E-10d);
    }

    private static List<SubHyperplane<Euclidean3D>> buildBoundary(List<Vector3D> list, List<int[]> list2, double d10) {
        int i10 = 0;
        while (i10 < list.size() - 1) {
            Vector3D vector3D = list.get(i10);
            i10++;
            for (int i11 = i10; i11 < list.size(); i11++) {
                if (Vector3D.distance(vector3D, list.get(i11)) <= d10) {
                    throw new MathIllegalArgumentException(LocalizedFormats.CLOSE_VERTICES, Double.valueOf(vector3D.getX()), Double.valueOf(vector3D.getY()), Double.valueOf(vector3D.getZ()));
                }
            }
        }
        int[][] successors = successors(list, list2, findReferences(list, list2));
        int i12 = 0;
        while (i12 < list.size()) {
            for (int i13 : successors[i12]) {
                if (i13 >= 0) {
                    boolean z10 = false;
                    for (int i14 : successors[i13]) {
                        z10 = z10 || i14 == i12;
                    }
                    if (!z10) {
                        Vector3D vector3D2 = list.get(i12);
                        Vector3D vector3D3 = list.get(i13);
                        throw new MathIllegalArgumentException(LocalizedFormats.EDGE_CONNECTED_TO_ONE_FACET, Double.valueOf(vector3D2.getX()), Double.valueOf(vector3D2.getY()), Double.valueOf(vector3D2.getZ()), Double.valueOf(vector3D3.getX()), Double.valueOf(vector3D3.getY()), Double.valueOf(vector3D3.getZ()));
                    }
                }
            }
            i12++;
        }
        ArrayList arrayList = new ArrayList();
        for (int[] iArr : list2) {
            Plane plane = new Plane(list.get(iArr[0]), list.get(iArr[1]), list.get(iArr[2]), d10);
            Vector2D[] vector2DArr = new Vector2D[iArr.length];
            for (int i15 = 0; i15 < iArr.length; i15++) {
                Vector3D vector3D4 = list.get(iArr[i15]);
                if (plane.contains(vector3D4)) {
                    vector2DArr[i15] = plane.toSubSpace((Vector<Euclidean3D>) vector3D4);
                } else {
                    throw new MathIllegalArgumentException(LocalizedFormats.OUT_OF_PLANE, Double.valueOf(vector3D4.getX()), Double.valueOf(vector3D4.getY()), Double.valueOf(vector3D4.getZ()));
                }
            }
            arrayList.add(new SubPlane(plane, new PolygonsSet(d10, vector2DArr)));
        }
        return arrayList;
    }
}
