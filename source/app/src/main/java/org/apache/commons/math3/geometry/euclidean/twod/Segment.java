package org.apache.commons.math3.geometry.euclidean.twod;

import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.util.FastMath;

public class Segment {
    private final Vector2D end;
    private final Line line;
    private final Vector2D start;

    public Segment(Vector2D vector2D, Vector2D vector2D2, Line line) {
        this.start = vector2D;
        this.end = vector2D2;
        this.line = line;
    }

    public double distance(Vector2D vector2D) {
        double x10 = this.end.getX() - this.start.getX();
        double y10 = this.end.getY() - this.start.getY();
        double x11 = (((vector2D.getX() - this.start.getX()) * x10) + ((vector2D.getY() - this.start.getY()) * y10)) / ((x10 * x10) + (y10 * y10));
        return (x11 < 0.0d || x11 > 1.0d) ? FastMath.min(getStart().distance((Point<Euclidean2D>) vector2D), getEnd().distance((Point<Euclidean2D>) vector2D)) : new Vector2D(this.start.getX() + (x10 * x11), this.start.getY() + (x11 * y10)).distance((Point<Euclidean2D>) vector2D);
    }

    public Vector2D getEnd() {
        return this.end;
    }

    public Line getLine() {
        return this.line;
    }

    public Vector2D getStart() {
        return this.start;
    }
}
