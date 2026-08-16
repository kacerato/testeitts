package org.apache.commons.math3.geometry.euclidean.threed;

import java.util.ArrayList;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D;
import org.apache.commons.math3.geometry.euclidean.twod.PolygonsSet;
import org.apache.commons.math3.geometry.euclidean.twod.Vector2D;
import org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.BoundaryAttribute;
import org.apache.commons.math3.geometry.partitioning.RegionFactory;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.FastMath;

public class OutlineExtractor {

    private Vector3D f100174u;

    private Vector3D f100175v;

    private Vector3D f100176w;

    public class BoundaryProjector implements BSPTreeVisitor<Euclidean3D> {
        private PolygonsSet projected;
        private final double tolerance;

        public BoundaryProjector(double d10) {
            this.projected = new PolygonsSet((BSPTree<Euclidean2D>) new BSPTree(Boolean.FALSE), d10);
            this.tolerance = d10;
        }

        /* JADX WARN: Type inference failed for: r11v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
        /* JADX WARN: Type inference failed for: r5v9, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
        private void addContribution(SubHyperplane<Euclidean3D> subHyperplane, boolean z10) {
            AbstractSubHyperplane abstractSubHyperplane = (AbstractSubHyperplane) subHyperplane;
            Plane plane = (Plane) subHyperplane.getHyperplane();
            double dotProduct = plane.getNormal().dotProduct(OutlineExtractor.this.f100176w);
            if (FastMath.abs(dotProduct) > 0.001d) {
                Vector2D[][] vertices = ((PolygonsSet) abstractSubHyperplane.getRemainingRegion()).getVertices();
                int i10 = 0;
                int i11 = 1;
                if ((dotProduct < 0.0d) ^ z10) {
                    Vector2D[][] vector2DArr = new Vector2D[vertices.length];
                    for (int i12 = 0; i12 < vertices.length; i12++) {
                        Vector2D[] vector2DArr2 = vertices[i12];
                        Vector2D[] vector2DArr3 = new Vector2D[vector2DArr2.length];
                        if (vector2DArr2[0] == null) {
                            vector2DArr3[0] = null;
                            for (int i13 = 1; i13 < vector2DArr2.length; i13++) {
                                vector2DArr3[i13] = vector2DArr2[vector2DArr2.length - i13];
                            }
                        } else {
                            int i14 = 0;
                            while (i14 < vector2DArr2.length) {
                                int i15 = i14 + 1;
                                vector2DArr3[i14] = vector2DArr2[vector2DArr2.length - i15];
                                i14 = i15;
                            }
                        }
                        vector2DArr[i12] = vector2DArr3;
                    }
                    vertices = vector2DArr;
                }
                ArrayList arrayList = new ArrayList();
                int length = vertices.length;
                int i16 = 0;
                while (i16 < length) {
                    Vector2D[] vector2DArr4 = vertices[i16];
                    int i17 = vector2DArr4[i10] != null ? i11 : i10;
                    int length2 = i17 != 0 ? vector2DArr4.length - i11 : i11;
                    ?? space = plane.toSpace((Point<Euclidean2D>) vector2DArr4[length2]);
                    int length3 = (length2 + 1) % vector2DArr4.length;
                    int i18 = length;
                    Vector2D vector2D = new Vector2D(space.dotProduct(OutlineExtractor.this.f100174u), space.dotProduct(OutlineExtractor.this.f100175v));
                    int i19 = length2;
                    int i20 = length3;
                    while (i20 < vector2DArr4.length) {
                        ?? space2 = plane.toSpace((Point<Euclidean2D>) vector2DArr4[i20]);
                        Vector2D vector2D2 = new Vector2D(space2.dotProduct(OutlineExtractor.this.f100174u), space2.dotProduct(OutlineExtractor.this.f100175v));
                        org.apache.commons.math3.geometry.euclidean.twod.Line line = new org.apache.commons.math3.geometry.euclidean.twod.Line(vector2D, vector2D2, this.tolerance);
                        SubHyperplane<Euclidean2D> wholeHyperplane = line.wholeHyperplane();
                        if (i17 != 0 || i19 != 1) {
                            wholeHyperplane = wholeHyperplane.split(new org.apache.commons.math3.geometry.euclidean.twod.Line(vector2D, line.getAngle() + 1.5707963267948966d, this.tolerance)).getPlus();
                        }
                        if (i17 == 0 && i20 == vector2DArr4.length - 1) {
                            arrayList.add(wholeHyperplane);
                            vector2D = vector2D2;
                            int i21 = i20;
                            i20++;
                            i19 = i21;
                        }
                        wholeHyperplane = wholeHyperplane.split(new org.apache.commons.math3.geometry.euclidean.twod.Line(vector2D2, line.getAngle() + 1.5707963267948966d, this.tolerance)).getMinus();
                        arrayList.add(wholeHyperplane);
                        vector2D = vector2D2;
                        int i212 = i20;
                        i20++;
                        i19 = i212;
                    }
                    i16++;
                    length = i18;
                    i11 = 1;
                    i10 = 0;
                }
                this.projected = (PolygonsSet) new RegionFactory().union(this.projected, new PolygonsSet(arrayList, this.tolerance));
            }
        }

        public PolygonsSet getProjected() {
            return this.projected;
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

    public OutlineExtractor(Vector3D vector3D, Vector3D vector3D2) {
        this.f100174u = vector3D;
        this.f100175v = vector3D2;
        this.f100176w = Vector3D.crossProduct(vector3D, vector3D2);
    }

    private boolean pointIsBetween(Vector2D[] vector2DArr, int i10, int i11) {
        Vector2D vector2D = vector2DArr[((i11 + i10) - 1) % i10];
        Vector2D vector2D2 = vector2DArr[i11];
        Vector2D vector2D3 = vector2DArr[(i11 + 1) % i10];
        double x10 = vector2D2.getX() - vector2D.getX();
        double y10 = vector2D2.getY() - vector2D.getY();
        double x11 = vector2D3.getX() - vector2D2.getX();
        double y11 = vector2D3.getY() - vector2D2.getY();
        return FastMath.abs((x10 * y11) - (x11 * y10)) <= FastMath.sqrt(((x10 * x10) + (y10 * y10)) * ((x11 * x11) + (y11 * y11))) * 1.0E-6d && (x10 * x11) + (y10 * y11) >= 0.0d;
    }

    public Vector2D[][] getOutline(PolyhedronsSet polyhedronsSet) {
        BoundaryProjector boundaryProjector = new BoundaryProjector(polyhedronsSet.getTolerance());
        polyhedronsSet.getTree(true).visit(boundaryProjector);
        Vector2D[][] vertices = boundaryProjector.getProjected().getVertices();
        for (int i10 = 0; i10 < vertices.length; i10++) {
            Vector2D[] vector2DArr = vertices[i10];
            int length = vector2DArr.length;
            int i11 = 0;
            while (i11 < length) {
                if (pointIsBetween(vector2DArr, length, i11)) {
                    int i12 = i11;
                    while (i12 < length - 1) {
                        int i13 = i12 + 1;
                        vector2DArr[i12] = vector2DArr[i13];
                        i12 = i13;
                    }
                    length--;
                } else {
                    i11++;
                }
            }
            if (length != vector2DArr.length) {
                Vector2D[] vector2DArr2 = new Vector2D[length];
                vertices[i10] = vector2DArr2;
                System.arraycopy(vector2DArr, 0, vector2DArr2, 0, length);
            }
        }
        return vertices;
    }
}
