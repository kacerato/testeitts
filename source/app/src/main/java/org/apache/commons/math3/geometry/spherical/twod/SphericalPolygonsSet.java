package org.apache.commons.math3.geometry.spherical.twod;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.geometry.enclosing.EnclosingBall;
import org.apache.commons.math3.geometry.enclosing.WelzlEncloser;
import org.apache.commons.math3.geometry.euclidean.threed.Rotation;
import org.apache.commons.math3.geometry.euclidean.threed.RotationConvention;
import org.apache.commons.math3.geometry.euclidean.threed.SphereGenerator;
import org.apache.commons.math3.geometry.euclidean.threed.Vector3D;
import org.apache.commons.math3.geometry.partitioning.AbstractRegion;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BoundaryProjection;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.RegionFactory;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.geometry.spherical.oned.Sphere1D;
import org.apache.commons.math3.util.FastMath;

public class SphericalPolygonsSet extends AbstractRegion<Sphere2D, Sphere1D> {
    private List<Vertex> loops;

    public SphericalPolygonsSet(double d10) {
        super(d10);
    }

    private static S2Point[] createRegularPolygonVertices(Vector3D vector3D, Vector3D vector3D2, double d10, int i10) {
        S2Point[] s2PointArr = new S2Point[i10];
        Vector3D crossProduct = Vector3D.crossProduct(vector3D, vector3D2);
        RotationConvention rotationConvention = RotationConvention.VECTOR_OPERATOR;
        s2PointArr[0] = new S2Point(new Rotation(crossProduct, d10, rotationConvention).applyTo(vector3D));
        Rotation rotation = new Rotation(vector3D, 6.283185307179586d / i10, rotationConvention);
        for (int i11 = 1; i11 < i10; i11++) {
            s2PointArr[i11] = new S2Point(rotation.applyTo(s2PointArr[i11 - 1].getVector()));
        }
        return s2PointArr;
    }

    private List<Vector3D> getInsidePoints() {
        PropertiesComputer propertiesComputer = new PropertiesComputer(getTolerance());
        getTree(true).visit(propertiesComputer);
        return propertiesComputer.getConvexCellsInsidePoints();
    }

    private List<Vector3D> getOutsidePoints() {
        SphericalPolygonsSet sphericalPolygonsSet = (SphericalPolygonsSet) new RegionFactory().getComplement(this);
        PropertiesComputer propertiesComputer = new PropertiesComputer(getTolerance());
        sphericalPolygonsSet.getTree(true).visit(propertiesComputer);
        return propertiesComputer.getConvexCellsInsidePoints();
    }

    private static void insertEdges(double d10, BSPTree<Sphere2D> bSPTree, List<Edge> list) {
        Edge edge;
        int i10;
        int i11 = 0;
        loop0: while (true) {
            edge = null;
            while (edge == null && i11 < list.size()) {
                i10 = i11 + 1;
                Edge edge2 = list.get(i11);
                if (!bSPTree.insertCut(edge2.getCircle())) {
                    break;
                }
                edge = edge2;
                i11 = i10;
            }
            i11 = i10;
        }
        if (edge == null) {
            BSPTree<Sphere2D> parent = bSPTree.getParent();
            if (parent == null || bSPTree == parent.getMinus()) {
                bSPTree.setAttribute(Boolean.TRUE);
                return;
            } else {
                bSPTree.setAttribute(Boolean.FALSE);
                return;
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Edge edge3 : list) {
            if (edge3 != edge) {
                edge3.split(edge.getCircle(), arrayList, arrayList2);
            }
        }
        if (arrayList.isEmpty()) {
            bSPTree.getPlus().setAttribute(Boolean.FALSE);
        } else {
            insertEdges(d10, bSPTree.getPlus(), arrayList);
        }
        if (arrayList2.isEmpty()) {
            bSPTree.getMinus().setAttribute(Boolean.TRUE);
        } else {
            insertEdges(d10, bSPTree.getMinus(), arrayList2);
        }
    }

    private static BSPTree<Sphere2D> verticesToTree(double d10, S2Point... s2PointArr) {
        int length = s2PointArr.length;
        if (length == 0) {
            return new BSPTree<>(Boolean.TRUE);
        }
        Vertex[] vertexArr = new Vertex[length];
        for (int i10 = 0; i10 < length; i10++) {
            vertexArr[i10] = new Vertex(s2PointArr[i10]);
        }
        ArrayList arrayList = new ArrayList(length);
        Vertex vertex = vertexArr[length - 1];
        int i11 = 0;
        while (i11 < length) {
            Vertex vertex2 = vertexArr[i11];
            Circle sharedCircleWith = vertex.sharedCircleWith(vertex2);
            if (sharedCircleWith == null) {
                sharedCircleWith = new Circle(vertex.getLocation(), vertex2.getLocation(), d10);
            }
            Circle circle = sharedCircleWith;
            arrayList.add(new Edge(vertex, vertex2, Vector3D.angle(vertex.getLocation().getVector(), vertex2.getLocation().getVector()), circle));
            for (int i12 = 0; i12 < length; i12++) {
                Vertex vertex3 = vertexArr[i12];
                if (vertex3 != vertex && vertex3 != vertex2 && FastMath.abs(circle.getOffset(vertex3.getLocation())) <= d10) {
                    vertex3.bindWith(circle);
                }
            }
            i11++;
            vertex = vertex2;
        }
        BSPTree<Sphere2D> bSPTree = new BSPTree<>();
        insertEdges(d10, bSPTree, arrayList);
        return bSPTree;
    }

    @Override
    public AbstractRegion buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Sphere2D>) bSPTree);
    }

    @Override
    public void computeGeometricalProperties() throws MathIllegalStateException {
        BSPTree<Sphere2D> tree = getTree(true);
        if (tree.getCut() != null) {
            PropertiesComputer propertiesComputer = new PropertiesComputer(getTolerance());
            tree.visit(propertiesComputer);
            setSize(propertiesComputer.getArea());
            setBarycenter(propertiesComputer.getBarycenter());
            return;
        }
        if (tree.getCut() == null && ((Boolean) tree.getAttribute()).booleanValue()) {
            setSize(12.566370614359172d);
            setBarycenter(new S2Point(0.0d, 0.0d));
        } else {
            setSize(0.0d);
            setBarycenter(S2Point.NaN);
        }
    }

    public List<Vertex> getBoundaryLoops() throws MathIllegalStateException {
        if (this.loops == null) {
            if (getTree(false).getCut() == null) {
                this.loops = Collections.emptyList();
            } else {
                BSPTree<Sphere2D> tree = getTree(true);
                EdgesBuilder edgesBuilder = new EdgesBuilder(tree, getTolerance());
                tree.visit(edgesBuilder);
                List<Edge> edges = edgesBuilder.getEdges();
                this.loops = new ArrayList();
                while (!edges.isEmpty()) {
                    Edge edge = edges.get(0);
                    Vertex start = edge.getStart();
                    this.loops.add(start);
                    do {
                        Iterator<Edge> it = edges.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            if (it.next() == edge) {
                                it.remove();
                                break;
                            }
                        }
                        edge = edge.getEnd().getOutgoing();
                    } while (edge.getStart() != start);
                }
            }
        }
        return Collections.unmodifiableList(this.loops);
    }

    public EnclosingBall<Sphere2D, S2Point> getEnclosingCap() {
        if (isEmpty()) {
            return new EnclosingBall<>(S2Point.PLUS_K, Double.NEGATIVE_INFINITY, new S2Point[0]);
        }
        if (isFull()) {
            return new EnclosingBall<>(S2Point.PLUS_K, Double.POSITIVE_INFINITY, new S2Point[0]);
        }
        BSPTree<Sphere2D> tree = getTree(false);
        if (isEmpty(tree.getMinus()) && isFull(tree.getPlus())) {
            return new EnclosingBall<>(new S2Point(((Circle) tree.getCut().getHyperplane()).getPole()).negate(), 1.5707963267948966d, new S2Point[0]);
        }
        if (isFull(tree.getMinus()) && isEmpty(tree.getPlus())) {
            return new EnclosingBall<>(new S2Point(((Circle) tree.getCut().getHyperplane()).getPole()), 1.5707963267948966d, new S2Point[0]);
        }
        List<Vector3D> insidePoints = getInsidePoints();
        for (Vertex vertex : getBoundaryLoops()) {
            int i10 = 0;
            Vertex vertex2 = vertex;
            while (true) {
                if (i10 == 0 || vertex2 != vertex) {
                    i10++;
                    insidePoints.add(vertex2.getLocation().getVector());
                    vertex2 = vertex2.getOutgoing().getEnd();
                }
            }
        }
        EnclosingBall enclose = new WelzlEncloser(getTolerance(), new SphereGenerator()).enclose(insidePoints);
        Vector3D[] vector3DArr = (Vector3D[]) enclose.getSupport();
        double radius = enclose.getRadius();
        double norm = ((Vector3D) enclose.getCenter()).getNorm();
        if (norm >= getTolerance()) {
            S2Point[] s2PointArr = new S2Point[vector3DArr.length];
            for (int i11 = 0; i11 < vector3DArr.length; i11++) {
                s2PointArr[i11] = new S2Point(vector3DArr[i11]);
            }
            return new EnclosingBall<>(new S2Point((Vector3D) enclose.getCenter()), FastMath.acos((((norm * norm) + 1.0d) - (radius * radius)) / (norm * 2.0d)), s2PointArr);
        }
        EnclosingBall<Sphere2D, S2Point> enclosingBall = new EnclosingBall<>(S2Point.PLUS_K, Double.POSITIVE_INFINITY, new S2Point[0]);
        Iterator<Vector3D> it = getOutsidePoints().iterator();
        while (it.hasNext()) {
            S2Point s2Point = new S2Point(it.next());
            BoundaryProjection<Sphere2D> projectToBoundary = projectToBoundary(s2Point);
            if (3.141592653589793d - projectToBoundary.getOffset() < enclosingBall.getRadius()) {
                enclosingBall = new EnclosingBall<>(s2Point.negate(), 3.141592653589793d - projectToBoundary.getOffset(), (S2Point) projectToBoundary.getProjected());
            }
        }
        return enclosingBall;
    }

    public SphericalPolygonsSet(Vector3D vector3D, double d10) {
        super(new BSPTree(new Circle(vector3D, d10).wholeHyperplane(), new BSPTree(Boolean.FALSE), new BSPTree(Boolean.TRUE), null), d10);
    }

    @Override
    public Region buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Sphere2D>) bSPTree);
    }

    public SphericalPolygonsSet(Vector3D vector3D, Vector3D vector3D2, double d10, int i10, double d11) {
        this(d11, createRegularPolygonVertices(vector3D, vector3D2, d10, i10));
    }

    @Override
    public SphericalPolygonsSet buildNew(BSPTree<Sphere2D> bSPTree) {
        return new SphericalPolygonsSet(bSPTree, getTolerance());
    }

    public SphericalPolygonsSet(BSPTree<Sphere2D> bSPTree, double d10) {
        super(bSPTree, d10);
    }

    public SphericalPolygonsSet(Collection<SubHyperplane<Sphere2D>> collection, double d10) {
        super(collection, d10);
    }

    public SphericalPolygonsSet(double d10, S2Point... s2PointArr) {
        super(verticesToTree(d10, s2PointArr), d10);
    }
}
