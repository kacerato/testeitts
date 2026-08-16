package org.apache.commons.math3.geometry.euclidean.twod;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.oned.Interval;
import org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet;
import org.apache.commons.math3.geometry.euclidean.oned.Vector1D;
import org.apache.commons.math3.geometry.partitioning.AbstractRegion;
import org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.BoundaryAttribute;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.NodesSet;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.Side;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

public class PolygonsSet extends AbstractRegion<Euclidean2D, Euclidean1D> {
    private static final double DEFAULT_TOLERANCE = 1.0E-10d;
    private Vector2D[][] vertices;

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
        }
    }

    public static class ConnectableSegment extends Segment {
        private final BSPTree<Euclidean2D> endNode;
        private ConnectableSegment next;
        private final BSPTree<Euclidean2D> node;
        private ConnectableSegment previous;
        private boolean processed;
        private final BSPTree<Euclidean2D> startNode;

        public ConnectableSegment(Vector2D vector2D, Vector2D vector2D2, Line line, BSPTree<Euclidean2D> bSPTree, BSPTree<Euclidean2D> bSPTree2, BSPTree<Euclidean2D> bSPTree3) {
            super(vector2D, vector2D2, line);
            this.node = bSPTree;
            this.startNode = bSPTree2;
            this.endNode = bSPTree3;
            this.previous = null;
            this.next = null;
            this.processed = false;
        }

        public BSPTree<Euclidean2D> getEndNode() {
            return this.endNode;
        }

        public ConnectableSegment getNext() {
            return this.next;
        }

        public BSPTree<Euclidean2D> getNode() {
            return this.node;
        }

        public ConnectableSegment getPrevious() {
            return this.previous;
        }

        public BSPTree<Euclidean2D> getStartNode() {
            return this.startNode;
        }

        public boolean isProcessed() {
            return this.processed;
        }

        public void setNext(ConnectableSegment connectableSegment) {
            this.next = connectableSegment;
        }

        public void setPrevious(ConnectableSegment connectableSegment) {
            this.previous = connectableSegment;
        }

        public void setProcessed(boolean z10) {
            this.processed = z10;
        }
    }

    public static class Edge {
        private final Vertex end;
        private final Line line;
        private BSPTree<Euclidean2D> node = null;
        private final Vertex start;

        public Edge(Vertex vertex, Vertex vertex2, Line line) {
            this.start = vertex;
            this.end = vertex2;
            this.line = line;
            vertex.setOutgoing(this);
            vertex2.setIncoming(this);
        }

        public Vertex getEnd() {
            return this.end;
        }

        public Line getLine() {
            return this.line;
        }

        public BSPTree<Euclidean2D> getNode() {
            return this.node;
        }

        public Vertex getStart() {
            return this.start;
        }

        public void setNode(BSPTree<Euclidean2D> bSPTree) {
            this.node = bSPTree;
        }

        public Vertex split(Line line) {
            Vertex vertex = new Vertex(this.line.intersection(line));
            vertex.bindWith(line);
            Edge edge = new Edge(this.start, vertex, this.line);
            Edge edge2 = new Edge(vertex, this.end, this.line);
            edge.node = this.node;
            edge2.node = this.node;
            return vertex;
        }
    }

    public static class SegmentsBuilder implements BSPTreeVisitor<Euclidean2D> {
        private final List<ConnectableSegment> segments = new ArrayList();
        private final double tolerance;

        public SegmentsBuilder(double d10) {
            this.tolerance = d10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v3, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
        /* JADX WARN: Type inference failed for: r5v3, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
        private void addContribution(SubHyperplane<Euclidean2D> subHyperplane, BSPTree<Euclidean2D> bSPTree, Iterable<BSPTree<Euclidean2D>> iterable, boolean z10) {
            Line line = (Line) subHyperplane.getHyperplane();
            for (Interval interval : ((IntervalsSet) ((AbstractSubHyperplane) subHyperplane).getRemainingRegion()).asList()) {
                Vector2D space = Double.isInfinite(interval.getInf()) ? null : line.toSpace((Point<Euclidean1D>) new Vector1D(interval.getInf()));
                Vector2D space2 = Double.isInfinite(interval.getSup()) ? null : line.toSpace((Point<Euclidean1D>) new Vector1D(interval.getSup()));
                BSPTree<Euclidean2D> selectClosest = selectClosest(space, iterable);
                BSPTree<Euclidean2D> selectClosest2 = selectClosest(space2, iterable);
                if (z10) {
                    this.segments.add(new ConnectableSegment(space2, space, line.getReverse(), bSPTree, selectClosest2, selectClosest));
                } else {
                    this.segments.add(new ConnectableSegment(space, space2, line, bSPTree, selectClosest, selectClosest2));
                }
            }
        }

        private BSPTree<Euclidean2D> selectClosest(Vector2D vector2D, Iterable<BSPTree<Euclidean2D>> iterable) {
            double d10 = Double.POSITIVE_INFINITY;
            BSPTree<Euclidean2D> bSPTree = null;
            for (BSPTree<Euclidean2D> bSPTree2 : iterable) {
                double abs = FastMath.abs(bSPTree2.getCut().getHyperplane().getOffset(vector2D));
                if (abs < d10) {
                    bSPTree = bSPTree2;
                    d10 = abs;
                }
            }
            if (d10 <= this.tolerance) {
                return bSPTree;
            }
            return null;
        }

        public List<ConnectableSegment> getSegments() {
            return this.segments;
        }

        @Override
        public void visitInternalNode(BSPTree<Euclidean2D> bSPTree) {
            BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
            NodesSet splitters = boundaryAttribute.getSplitters();
            if (boundaryAttribute.getPlusOutside() != null) {
                addContribution(boundaryAttribute.getPlusOutside(), bSPTree, splitters, false);
            }
            if (boundaryAttribute.getPlusInside() != null) {
                addContribution(boundaryAttribute.getPlusInside(), bSPTree, splitters, true);
            }
        }

        @Override
        public void visitLeafNode(BSPTree<Euclidean2D> bSPTree) {
        }

        @Override
        public BSPTreeVisitor.Order visitOrder(BSPTree<Euclidean2D> bSPTree) {
            return BSPTreeVisitor.Order.MINUS_SUB_PLUS;
        }
    }

    public static class Vertex {
        private final Vector2D location;
        private Edge incoming = null;
        private Edge outgoing = null;
        private final List<Line> lines = new ArrayList();

        public Vertex(Vector2D vector2D) {
            this.location = vector2D;
        }

        public void bindWith(Line line) {
            this.lines.add(line);
        }

        public Edge getIncoming() {
            return this.incoming;
        }

        public Vector2D getLocation() {
            return this.location;
        }

        public Edge getOutgoing() {
            return this.outgoing;
        }

        public void setIncoming(Edge edge) {
            this.incoming = edge;
            bindWith(edge.getLine());
        }

        public void setOutgoing(Edge edge) {
            this.outgoing = edge;
            bindWith(edge.getLine());
        }

        public Line sharedLineWith(Vertex vertex) {
            for (Line line : this.lines) {
                Iterator<Line> it = vertex.lines.iterator();
                while (it.hasNext()) {
                    if (line == it.next()) {
                        return line;
                    }
                }
            }
            return null;
        }
    }

    public PolygonsSet(double d10) {
        super(d10);
    }

    private static Line[] boxBoundary(double d10, double d11, double d12, double d13, double d14) {
        if (d10 >= d11 - d14 || d12 >= d13 - d14) {
            return null;
        }
        Vector2D vector2D = new Vector2D(d10, d12);
        Vector2D vector2D2 = new Vector2D(d10, d13);
        Vector2D vector2D3 = new Vector2D(d11, d12);
        Vector2D vector2D4 = new Vector2D(d11, d13);
        return new Line[]{new Line(vector2D, vector2D3, d14), new Line(vector2D3, vector2D4, d14), new Line(vector2D4, vector2D2, d14), new Line(vector2D2, vector2D, d14)};
    }

    private int closeVerticesConnections(List<ConnectableSegment> list) {
        int i10 = 0;
        for (ConnectableSegment connectableSegment : list) {
            if (connectableSegment.getNext() == null && connectableSegment.getEnd() != null) {
                Vector2D end = connectableSegment.getEnd();
                ConnectableSegment connectableSegment2 = null;
                double d10 = Double.POSITIVE_INFINITY;
                for (ConnectableSegment connectableSegment3 : list) {
                    if (connectableSegment3.getPrevious() == null && connectableSegment3.getStart() != null) {
                        double distance = Vector2D.distance(end, connectableSegment3.getStart());
                        if (distance < d10) {
                            connectableSegment2 = connectableSegment3;
                            d10 = distance;
                        }
                    }
                }
                if (d10 <= getTolerance()) {
                    connectableSegment.setNext(connectableSegment2);
                    connectableSegment2.setPrevious(connectableSegment);
                    i10++;
                }
            }
        }
        return i10;
    }

    private void filterSpuriousVertices(List<Segment> list) {
        int i10 = 0;
        while (i10 < list.size()) {
            Segment segment = list.get(i10);
            int size = (i10 + 1) % list.size();
            Segment segment2 = list.get(size);
            if (segment2 != null && Precision.equals(segment.getLine().getAngle(), segment2.getLine().getAngle(), Precision.EPSILON)) {
                list.set(size, new Segment(segment.getStart(), segment2.getEnd(), segment.getLine()));
                list.remove(i10);
                i10--;
            }
            i10++;
        }
    }

    private List<Segment> followLoop(ConnectableSegment connectableSegment) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(connectableSegment);
        connectableSegment.setProcessed(true);
        ConnectableSegment next = connectableSegment.getNext();
        while (next != connectableSegment && next != null) {
            arrayList.add(next);
            next.setProcessed(true);
            next = next.getNext();
        }
        if (next == null) {
            for (ConnectableSegment previous = connectableSegment.getPrevious(); previous != null; previous = previous.getPrevious()) {
                arrayList.add(0, previous);
                previous.setProcessed(true);
            }
        }
        filterSpuriousVertices(arrayList);
        if (arrayList.size() != 2 || arrayList.get(0).getStart() == null) {
            return arrayList;
        }
        return null;
    }

    private ConnectableSegment getUnprocessed(List<ConnectableSegment> list) {
        for (ConnectableSegment connectableSegment : list) {
            if (!connectableSegment.isProcessed()) {
                return connectableSegment;
            }
        }
        return null;
    }

    private static void insertEdges(double d10, BSPTree<Euclidean2D> bSPTree, List<Edge> list) {
        Edge edge;
        int i10 = 0;
        loop0: while (true) {
            edge = null;
            while (edge == null && i10 < list.size()) {
                int i11 = i10 + 1;
                Edge edge2 = list.get(i10);
                if (edge2.getNode() == null && bSPTree.insertCut(edge2.getLine())) {
                    edge2.setNode(bSPTree);
                    edge = edge2;
                    i10 = i11;
                } else {
                    i10 = i11;
                }
            }
        }
        if (edge == null) {
            BSPTree<Euclidean2D> parent = bSPTree.getParent();
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
                double offset = edge.getLine().getOffset((Point<Euclidean2D>) edge3.getStart().getLocation());
                double offset2 = edge.getLine().getOffset((Point<Euclidean2D>) edge3.getEnd().getLocation());
                Side side = FastMath.abs(offset) <= d10 ? Side.HYPER : offset < 0.0d ? Side.MINUS : Side.PLUS;
                Side side2 = FastMath.abs(offset2) <= d10 ? Side.HYPER : offset2 < 0.0d ? Side.MINUS : Side.PLUS;
                int i12 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side[side.ordinal()];
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (side2 == Side.PLUS) {
                            arrayList.add(edge3);
                        } else if (side2 == Side.MINUS) {
                            arrayList2.add(edge3);
                        }
                    } else if (side2 == Side.PLUS) {
                        Vertex split = edge3.split(edge.getLine());
                        arrayList2.add(split.getIncoming());
                        arrayList.add(split.getOutgoing());
                    } else {
                        arrayList2.add(edge3);
                    }
                } else if (side2 == Side.MINUS) {
                    Vertex split2 = edge3.split(edge.getLine());
                    arrayList2.add(split2.getOutgoing());
                    arrayList.add(split2.getIncoming());
                } else {
                    arrayList.add(edge3);
                }
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

    private int naturalFollowerConnections(List<ConnectableSegment> list) {
        int i10 = 0;
        for (ConnectableSegment connectableSegment : list) {
            if (connectableSegment.getNext() == null) {
                BSPTree<Euclidean2D> node = connectableSegment.getNode();
                BSPTree<Euclidean2D> endNode = connectableSegment.getEndNode();
                Iterator<ConnectableSegment> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        ConnectableSegment next = it.next();
                        if (next.getPrevious() == null && next.getNode() == endNode && next.getStartNode() == node) {
                            connectableSegment.setNext(next);
                            next.setPrevious(connectableSegment);
                            i10++;
                            break;
                        }
                    }
                }
            }
        }
        return i10;
    }

    private int splitEdgeConnections(List<ConnectableSegment> list) {
        int i10 = 0;
        for (ConnectableSegment connectableSegment : list) {
            if (connectableSegment.getNext() == null) {
                Hyperplane<Euclidean2D> hyperplane = connectableSegment.getNode().getCut().getHyperplane();
                BSPTree<Euclidean2D> endNode = connectableSegment.getEndNode();
                Iterator<ConnectableSegment> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        ConnectableSegment next = it.next();
                        if (next.getPrevious() == null && next.getNode().getCut().getHyperplane() == hyperplane && next.getStartNode() == endNode) {
                            connectableSegment.setNext(next);
                            next.setPrevious(connectableSegment);
                            i10++;
                            break;
                        }
                    }
                }
            }
        }
        return i10;
    }

    private static BSPTree<Euclidean2D> verticesToTree(double d10, Vector2D... vector2DArr) {
        int length = vector2DArr.length;
        if (length == 0) {
            return new BSPTree<>(Boolean.TRUE);
        }
        Vertex[] vertexArr = new Vertex[length];
        for (int i10 = 0; i10 < length; i10++) {
            vertexArr[i10] = new Vertex(vector2DArr[i10]);
        }
        ArrayList arrayList = new ArrayList(length);
        int i11 = 0;
        while (i11 < length) {
            Vertex vertex = vertexArr[i11];
            i11++;
            Vertex vertex2 = vertexArr[i11 % length];
            Line sharedLineWith = vertex.sharedLineWith(vertex2);
            if (sharedLineWith == null) {
                sharedLineWith = new Line(vertex.getLocation(), vertex2.getLocation(), d10);
            }
            arrayList.add(new Edge(vertex, vertex2, sharedLineWith));
            for (int i12 = 0; i12 < length; i12++) {
                Vertex vertex3 = vertexArr[i12];
                if (vertex3 != vertex && vertex3 != vertex2 && FastMath.abs(sharedLineWith.getOffset((Point<Euclidean2D>) vertex3.getLocation())) <= d10) {
                    vertex3.bindWith(sharedLineWith);
                }
            }
        }
        BSPTree<Euclidean2D> bSPTree = new BSPTree<>();
        insertEdges(d10, bSPTree, arrayList);
        return bSPTree;
    }

    @Override
    public AbstractRegion buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean2D>) bSPTree);
    }

    @Override
    public void computeGeometricalProperties() {
        Vector2D[][] vertices = getVertices();
        if (vertices.length == 0) {
            BSPTree<Euclidean2D> tree = getTree(false);
            if (tree.getCut() == null && ((Boolean) tree.getAttribute()).booleanValue()) {
                setSize(Double.POSITIVE_INFINITY);
                setBarycenter((Point) Vector2D.NaN);
                return;
            } else {
                setSize(0.0d);
                setBarycenter((Point) new Vector2D(0.0d, 0.0d));
                return;
            }
        }
        if (vertices[0][0] == null) {
            setSize(Double.POSITIVE_INFINITY);
            setBarycenter((Point) Vector2D.NaN);
            return;
        }
        double d10 = 0.0d;
        double d11 = 0.0d;
        double d12 = 0.0d;
        for (Vector2D[] vector2DArr : vertices) {
            double x10 = vector2DArr[vector2DArr.length - 1].getX();
            double y10 = vector2DArr[vector2DArr.length - 1].getY();
            int length = vector2DArr.length;
            int i10 = 0;
            while (i10 < length) {
                Vector2D vector2D = vector2DArr[i10];
                double x11 = vector2D.getX();
                double y11 = vector2D.getY();
                double d13 = (x10 * y11) - (y10 * x11);
                d10 += d13;
                d11 += (x10 + x11) * d13;
                d12 += d13 * (y10 + y11);
                i10++;
                x10 = x11;
                y10 = y11;
            }
        }
        if (d10 < 0.0d) {
            setSize(Double.POSITIVE_INFINITY);
            setBarycenter((Point) Vector2D.NaN);
        } else {
            setSize(d10 / 2.0d);
            double d14 = d10 * 3.0d;
            setBarycenter((Point) new Vector2D(d11 / d14, d12 / d14));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v14, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    /* JADX WARN: Type inference failed for: r2v11, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
    /* JADX WARN: Type inference failed for: r3v13, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    /* JADX WARN: Type inference failed for: r6v2, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
    public Vector2D[][] getVertices() {
        Iterator it;
        Iterator it2;
        if (this.vertices == null) {
            int i10 = 0;
            if (getTree(false).getCut() == null) {
                this.vertices = new Vector2D[0];
            } else {
                SegmentsBuilder segmentsBuilder = new SegmentsBuilder(getTolerance());
                int i11 = 1;
                getTree(true).visit(segmentsBuilder);
                List<ConnectableSegment> segments = segmentsBuilder.getSegments();
                int size = segments.size() - naturalFollowerConnections(segments);
                if (size > 0) {
                    size -= splitEdgeConnections(segments);
                }
                if (size > 0) {
                    closeVerticesConnections(segments);
                }
                ArrayList arrayList = new ArrayList();
                while (true) {
                    ConnectableSegment unprocessed = getUnprocessed(segments);
                    if (unprocessed == null) {
                        break;
                    }
                    List<Segment> followLoop = followLoop(unprocessed);
                    if (followLoop != null) {
                        if (followLoop.get(0).getStart() == null) {
                            arrayList.add(0, followLoop);
                        } else {
                            arrayList.add(followLoop);
                        }
                    }
                }
                this.vertices = new Vector2D[arrayList.size()];
                Iterator it3 = arrayList.iterator();
                int i12 = 0;
                while (it3.hasNext()) {
                    List<Segment> list = (List) it3.next();
                    Object obj = null;
                    if (list.size() < 2 || (list.size() == 2 && ((Segment) list.get(i10)).getStart() == null && ((Segment) list.get(i11)).getEnd() == null)) {
                        it = it3;
                        Line line = ((Segment) list.get(i10)).getLine();
                        this.vertices[i12] = new Vector2D[]{null, line.toSpace((Point<Euclidean1D>) new Vector1D(-3.4028234663852886E38d)), line.toSpace((Point<Euclidean1D>) new Vector1D(3.4028234663852886E38d))};
                        i12++;
                    } else {
                        if (((Segment) list.get(i10)).getStart() == null) {
                            int size2 = list.size();
                            Vector2D[] vector2DArr = new Vector2D[size2 + 2];
                            int i13 = i10;
                            for (Segment segment : list) {
                                if (i13 == 0) {
                                    double x10 = segment.getLine().toSubSpace((Point<Euclidean2D>) segment.getEnd()).getX();
                                    it2 = it3;
                                    double max = x10 - FastMath.max(1.0d, FastMath.abs(x10 / 2.0d));
                                    int i14 = i13 + 1;
                                    vector2DArr[i13] = obj;
                                    i13 += 2;
                                    vector2DArr[i14] = segment.getLine().toSpace((Point<Euclidean1D>) new Vector1D(max));
                                } else {
                                    it2 = it3;
                                }
                                int i15 = size2 + 1;
                                if (i13 < i15) {
                                    vector2DArr[i13] = segment.getEnd();
                                    i13++;
                                }
                                if (i13 == i15) {
                                    double x11 = segment.getLine().toSubSpace((Point<Euclidean2D>) segment.getStart()).getX();
                                    vector2DArr[i13] = segment.getLine().toSpace((Point<Euclidean1D>) new Vector1D(x11 + FastMath.max(1.0d, FastMath.abs(x11 / 2.0d))));
                                    i13++;
                                }
                                it3 = it2;
                                obj = null;
                            }
                            it = it3;
                            this.vertices[i12] = vector2DArr;
                            i12++;
                        } else {
                            it = it3;
                            Vector2D[] vector2DArr2 = new Vector2D[list.size()];
                            Iterator it4 = list.iterator();
                            int i16 = 0;
                            while (it4.hasNext()) {
                                vector2DArr2[i16] = ((Segment) it4.next()).getStart();
                                i16++;
                            }
                            this.vertices[i12] = vector2DArr2;
                            i12++;
                        }
                        i10 = 0;
                    }
                    it3 = it;
                    i11 = 1;
                }
            }
        }
        return (Vector2D[][]) this.vertices.clone();
    }

    public PolygonsSet(BSPTree<Euclidean2D> bSPTree, double d10) {
        super(bSPTree, d10);
    }

    @Override
    public Region buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean2D>) bSPTree);
    }

    public PolygonsSet(Collection<SubHyperplane<Euclidean2D>> collection, double d10) {
        super(collection, d10);
    }

    @Override
    public PolygonsSet buildNew(BSPTree<Euclidean2D> bSPTree) {
        return new PolygonsSet(bSPTree, getTolerance());
    }

    public PolygonsSet(double d10, double d11, double d12, double d13, double d14) {
        super(boxBoundary(d10, d11, d12, d13, d14), d14);
    }

    public PolygonsSet(double d10, Vector2D... vector2DArr) {
        super(verticesToTree(d10, vector2DArr), d10);
    }

    @Deprecated
    public PolygonsSet() {
        this(1.0E-10d);
    }

    @Deprecated
    public PolygonsSet(BSPTree<Euclidean2D> bSPTree) {
        this(bSPTree, 1.0E-10d);
    }

    @Deprecated
    public PolygonsSet(Collection<SubHyperplane<Euclidean2D>> collection) {
        this(collection, 1.0E-10d);
    }

    @Deprecated
    public PolygonsSet(double d10, double d11, double d12, double d13) {
        this(d10, d11, d12, d13, 1.0E-10d);
    }
}
