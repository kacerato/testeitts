package org.apache.commons.math3.geometry.euclidean.threed;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.oned.Interval;
import org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet;
import org.apache.commons.math3.geometry.euclidean.oned.Vector1D;
import org.apache.commons.math3.geometry.partitioning.Region;

public class SubLine {
    private static final double DEFAULT_TOLERANCE = 1.0E-10d;
    private final Line line;
    private final IntervalsSet remainingRegion;

    public SubLine(Line line, IntervalsSet intervalsSet) {
        this.line = line;
        this.remainingRegion = intervalsSet;
    }

    /* JADX WARN: Type inference failed for: r9v1, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    /* JADX WARN: Type inference failed for: r9v2, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    private static IntervalsSet buildIntervalSet(Vector3D vector3D, Vector3D vector3D2, double d10) throws MathIllegalArgumentException {
        Line line = new Line(vector3D, vector3D2, d10);
        return new IntervalsSet(line.toSubSpace((Point<Euclidean3D>) vector3D).getX(), line.toSubSpace((Point<Euclidean3D>) vector3D2).getX(), d10);
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r3v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public List<Segment> getSegments() {
        List<Interval> asList = this.remainingRegion.asList();
        ArrayList arrayList = new ArrayList(asList.size());
        for (Interval interval : asList) {
            arrayList.add(new Segment(this.line.toSpace((Point<Euclidean1D>) new Vector1D(interval.getInf())), this.line.toSpace((Point<Euclidean1D>) new Vector1D(interval.getSup())), this.line));
        }
        return arrayList;
    }

    public Vector3D intersection(SubLine subLine, boolean z10) {
        Vector3D intersection = this.line.intersection(subLine.line);
        if (intersection == null) {
            return null;
        }
        Region.Location checkPoint = this.remainingRegion.checkPoint(this.line.toSubSpace((Point<Euclidean3D>) intersection));
        Region.Location checkPoint2 = subLine.remainingRegion.checkPoint(subLine.line.toSubSpace((Point<Euclidean3D>) intersection));
        if (z10) {
            Region.Location location = Region.Location.OUTSIDE;
            if (checkPoint == location || checkPoint2 == location) {
                return null;
            }
            return intersection;
        }
        Region.Location location2 = Region.Location.INSIDE;
        if (checkPoint == location2 && checkPoint2 == location2) {
            return intersection;
        }
        return null;
    }

    public SubLine(Vector3D vector3D, Vector3D vector3D2, double d10) throws MathIllegalArgumentException {
        this(new Line(vector3D, vector3D2, d10), buildIntervalSet(vector3D, vector3D2, d10));
    }

    public SubLine(Vector3D vector3D, Vector3D vector3D2) throws MathIllegalArgumentException {
        this(vector3D, vector3D2, 1.0E-10d);
    }

    public SubLine(Segment segment) throws MathIllegalArgumentException {
        this(segment.getLine(), buildIntervalSet(segment.getStart(), segment.getEnd(), segment.getLine().getTolerance()));
    }
}
