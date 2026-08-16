package org.apache.commons.math3.geometry.spherical.twod;

import java.util.List;
import org.apache.commons.math3.geometry.euclidean.threed.Vector3D;
import org.apache.commons.math3.geometry.spherical.oned.Arc;
import org.apache.commons.math3.util.MathUtils;

public class Edge {
    private final Circle circle;
    private Vertex end;
    private final double length;
    private final Vertex start;

    public Edge(Vertex vertex, Vertex vertex2, double d10, Circle circle) {
        this.start = vertex;
        this.end = vertex2;
        this.length = d10;
        this.circle = circle;
        vertex.setOutgoing(this);
        vertex2.setIncoming(this);
    }

    private Vertex addSubEdge(Vertex vertex, Vertex vertex2, double d10, List<Edge> list, Circle circle) {
        if (d10 <= this.circle.getTolerance()) {
            return vertex;
        }
        vertex2.bindWith(circle);
        list.add(new Edge(vertex, vertex2, d10, this.circle));
        return vertex2;
    }

    public Circle getCircle() {
        return this.circle;
    }

    public Vertex getEnd() {
        return this.end;
    }

    public double getLength() {
        return this.length;
    }

    public Vector3D getPointAt(double d10) {
        Circle circle = this.circle;
        return circle.getPointAt(d10 + circle.getPhase(this.start.getLocation().getVector()));
    }

    public Vertex getStart() {
        return this.start;
    }

    public void setNextEdge(Edge edge) {
        Vertex start = edge.getStart();
        this.end = start;
        start.setIncoming(this);
        this.end.bindWith(getCircle());
    }

    public void split(Circle circle, List<Edge> list, List<Edge> list2) {
        double phase = this.circle.getPhase(this.start.getLocation().getVector());
        Arc insideArc = this.circle.getInsideArc(circle);
        double normalizeAngle = MathUtils.normalizeAngle(insideArc.getInf(), 3.141592653589793d + phase) - phase;
        double size = normalizeAngle + insideArc.getSize();
        double d10 = size - 6.283185307179586d;
        double tolerance = this.circle.getTolerance();
        Vertex vertex = this.start;
        if (d10 >= this.length - tolerance) {
            list2.add(this);
            return;
        }
        if (d10 >= 0.0d) {
            vertex = addSubEdge(vertex, new Vertex(new S2Point(this.circle.getPointAt(phase + d10))), d10, list2, circle);
        } else {
            d10 = 0.0d;
        }
        double d11 = this.length;
        if (normalizeAngle >= d11 - tolerance) {
            if (d10 >= 0.0d) {
                addSubEdge(vertex, this.end, d11 - d10, list, circle);
                return;
            } else {
                list.add(this);
                return;
            }
        }
        double d12 = phase + normalizeAngle;
        Vertex addSubEdge = addSubEdge(vertex, new Vertex(new S2Point(this.circle.getPointAt(d12))), normalizeAngle - d10, list, circle);
        double d13 = this.length;
        if (size >= d13 - tolerance) {
            addSubEdge(addSubEdge, this.end, d13 - normalizeAngle, list2, circle);
        } else {
            addSubEdge(addSubEdge(addSubEdge, new Vertex(new S2Point(this.circle.getPointAt(d12))), normalizeAngle - normalizeAngle, list2, circle), this.end, this.length - normalizeAngle, list, circle);
        }
    }
}
