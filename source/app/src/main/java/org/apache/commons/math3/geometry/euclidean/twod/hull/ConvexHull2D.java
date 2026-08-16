package org.apache.commons.math3.geometry.euclidean.twod.hull;

import java.io.Serializable;
import org.apache.commons.math3.exception.InsufficientDataException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D;
import org.apache.commons.math3.geometry.euclidean.twod.Line;
import org.apache.commons.math3.geometry.euclidean.twod.Segment;
import org.apache.commons.math3.geometry.euclidean.twod.Vector2D;
import org.apache.commons.math3.geometry.hull.ConvexHull;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.RegionFactory;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.Precision;

public class ConvexHull2D implements ConvexHull<Euclidean2D, Vector2D>, Serializable {
    private static final long serialVersionUID = 20140129;
    private transient Segment[] lineSegments;
    private final double tolerance;
    private final Vector2D[] vertices;

    public ConvexHull2D(Vector2D[] vector2DArr, double d10) throws MathIllegalArgumentException {
        this.tolerance = d10;
        if (!isConvex(vector2DArr)) {
            throw new MathIllegalArgumentException(LocalizedFormats.NOT_CONVEX, new Object[0]);
        }
        this.vertices = (Vector2D[]) vector2DArr.clone();
    }

    /* JADX WARN: Type inference failed for: r5v5, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
    /* JADX WARN: Type inference failed for: r6v1, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
    private boolean isConvex(Vector2D[] vector2DArr) {
        if (vector2DArr.length < 3) {
            return true;
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < vector2DArr.length) {
            Vector2D vector2D = vector2DArr[i10 == 0 ? vector2DArr.length - 1 : i10 - 1];
            Vector2D vector2D2 = vector2DArr[i10];
            Vector2D vector2D3 = vector2DArr[i10 == vector2DArr.length - 1 ? 0 : i10 + 1];
            ?? subtract = vector2D2.subtract((Vector<Euclidean2D>) vector2D);
            ?? subtract2 = vector2D3.subtract((Vector<Euclidean2D>) vector2D2);
            int compareTo = Precision.compareTo(MathArrays.linearCombination(subtract.getX(), subtract2.getY(), -subtract.getY(), subtract2.getX()), 0.0d, this.tolerance);
            if (compareTo != 0.0d) {
                if (i11 != 0.0d && compareTo != i11) {
                    return false;
                }
                i11 = compareTo;
            }
            i10++;
        }
        return true;
    }

    private Segment[] retrieveLineSegments() {
        if (this.lineSegments == null) {
            Vector2D[] vector2DArr = this.vertices;
            int length = vector2DArr.length;
            int i10 = 0;
            if (length <= 1) {
                this.lineSegments = new Segment[0];
            } else if (length == 2) {
                this.lineSegments = r1;
                Vector2D vector2D = vector2DArr[0];
                Vector2D vector2D2 = vector2DArr[1];
                Segment[] segmentArr = {new Segment(vector2D, vector2D2, new Line(vector2D, vector2D2, this.tolerance))};
            } else {
                this.lineSegments = new Segment[length];
                int length2 = vector2DArr.length;
                Vector2D vector2D3 = null;
                Vector2D vector2D4 = null;
                int i11 = 0;
                while (i10 < length2) {
                    Vector2D vector2D5 = vector2DArr[i10];
                    if (vector2D3 == null) {
                        vector2D4 = vector2D5;
                    } else {
                        this.lineSegments[i11] = new Segment(vector2D3, vector2D5, new Line(vector2D3, vector2D5, this.tolerance));
                        i11++;
                    }
                    i10++;
                    vector2D3 = vector2D5;
                }
                this.lineSegments[i11] = new Segment(vector2D3, vector2D4, new Line(vector2D3, vector2D4, this.tolerance));
            }
        }
        return this.lineSegments;
    }

    @Override
    public Region<Euclidean2D> createRegion() throws InsufficientDataException {
        if (this.vertices.length < 3) {
            throw new InsufficientDataException();
        }
        RegionFactory regionFactory = new RegionFactory();
        Segment[] retrieveLineSegments = retrieveLineSegments();
        Line[] lineArr = new Line[retrieveLineSegments.length];
        for (int i10 = 0; i10 < retrieveLineSegments.length; i10++) {
            lineArr[i10] = retrieveLineSegments[i10].getLine();
        }
        return regionFactory.buildConvex(lineArr);
    }

    public Segment[] getLineSegments() {
        return (Segment[]) retrieveLineSegments().clone();
    }

    @Override
    public Vector2D[] getVertices() {
        return (Vector2D[]) this.vertices.clone();
    }
}
