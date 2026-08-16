package org.apache.commons.math3.geometry.spherical.twod;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.geometry.euclidean.threed.Vector3D;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.util.FastMath;

public class PropertiesComputer implements BSPTreeVisitor<Sphere2D> {
    private final double tolerance;
    private double summedArea = 0.0d;
    private Vector3D summedBarycenter = Vector3D.ZERO;
    private final List<Vector3D> convexCellsInsidePoints = new ArrayList();

    public PropertiesComputer(double d10) {
        this.tolerance = d10;
    }

    private double convexCellArea(Vertex vertex) {
        Edge outgoing = vertex.getOutgoing();
        int i10 = 0;
        double d10 = 0.0d;
        while (true) {
            if (i10 != 0 && outgoing.getStart() == vertex) {
                return d10 - ((i10 - 2) * 3.141592653589793d);
            }
            Vector3D pole = outgoing.getCircle().getPole();
            Vector3D pole2 = outgoing.getEnd().getOutgoing().getCircle().getPole();
            double atan2 = FastMath.atan2(Vector3D.dotProduct(pole2, Vector3D.crossProduct(outgoing.getEnd().getLocation().getVector(), pole)), -Vector3D.dotProduct(pole2, pole));
            if (atan2 < 0.0d) {
                atan2 += 6.283185307179586d;
            }
            d10 += atan2;
            i10++;
            outgoing = outgoing.getEnd().getOutgoing();
        }
    }

    /* JADX WARN: Type inference failed for: r11v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    private Vector3D convexCellBarycenter(Vertex vertex) {
        Vector3D vector3D = Vector3D.ZERO;
        Edge outgoing = vertex.getOutgoing();
        int i10 = 0;
        while (true) {
            Vector3D vector3D2 = vector3D;
            if (i10 != 0 && outgoing.getStart() == vertex) {
                return vector3D2.normalize();
            }
            vector3D = new Vector3D(1.0d, vector3D2, outgoing.getLength(), outgoing.getCircle().getPole());
            i10++;
            outgoing = outgoing.getEnd().getOutgoing();
        }
    }

    public double getArea() {
        return this.summedArea;
    }

    public S2Point getBarycenter() {
        return this.summedBarycenter.getNormSq() == 0.0d ? S2Point.NaN : new S2Point(this.summedBarycenter);
    }

    public List<Vector3D> getConvexCellsInsidePoints() {
        return this.convexCellsInsidePoints;
    }

    @Override
    public void visitInternalNode(BSPTree<Sphere2D> bSPTree) {
    }

    @Override
    public void visitLeafNode(BSPTree<Sphere2D> bSPTree) {
        if (((Boolean) bSPTree.getAttribute()).booleanValue()) {
            List<Vertex> boundaryLoops = new SphericalPolygonsSet(bSPTree.pruneAroundConvexCell(Boolean.TRUE, Boolean.FALSE, null), this.tolerance).getBoundaryLoops();
            if (boundaryLoops.size() != 1) {
                throw new MathInternalError();
            }
            double convexCellArea = convexCellArea(boundaryLoops.get(0));
            Vector3D convexCellBarycenter = convexCellBarycenter(boundaryLoops.get(0));
            this.convexCellsInsidePoints.add(convexCellBarycenter);
            this.summedArea += convexCellArea;
            this.summedBarycenter = new Vector3D(1.0d, this.summedBarycenter, convexCellArea, convexCellBarycenter);
        }
    }

    @Override
    public BSPTreeVisitor.Order visitOrder(BSPTree<Sphere2D> bSPTree) {
        return BSPTreeVisitor.Order.MINUS_SUB_PLUS;
    }
}
