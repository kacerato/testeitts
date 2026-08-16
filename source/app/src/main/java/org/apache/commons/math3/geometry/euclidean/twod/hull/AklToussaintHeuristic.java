package org.apache.commons.math3.geometry.euclidean.twod.hull;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.apache.commons.math3.geometry.euclidean.twod.Vector2D;

public final class AklToussaintHeuristic {
    private AklToussaintHeuristic() {
    }

    private static List<Vector2D> buildQuadrilateral(Vector2D... vector2DArr) {
        ArrayList arrayList = new ArrayList();
        for (Vector2D vector2D : vector2DArr) {
            if (!arrayList.contains(vector2D)) {
                arrayList.add(vector2D);
            }
        }
        return arrayList;
    }

    private static boolean insideQuadrilateral(Vector2D vector2D, List<Vector2D> list) {
        Vector2D vector2D2 = list.get(0);
        Vector2D vector2D3 = list.get(1);
        if (!vector2D.equals(vector2D2) && !vector2D.equals(vector2D3)) {
            double crossProduct = vector2D.crossProduct(vector2D2, vector2D3);
            int size = list.size();
            int i10 = 1;
            while (i10 < size) {
                i10++;
                Vector2D vector2D4 = list.get(i10 == size ? 0 : i10);
                if (vector2D.equals(vector2D3) || vector2D.equals(vector2D4)) {
                    break;
                }
                if (vector2D.crossProduct(vector2D3, vector2D4) * crossProduct < 0.0d) {
                    return false;
                }
                vector2D3 = vector2D4;
            }
        }
        return true;
    }

    public static Collection<Vector2D> reducePoints(Collection<Vector2D> collection) {
        int i10 = 0;
        Vector2D vector2D = null;
        Vector2D vector2D2 = null;
        Vector2D vector2D3 = null;
        Vector2D vector2D4 = null;
        for (Vector2D vector2D5 : collection) {
            if (vector2D == null || vector2D5.getX() < vector2D.getX()) {
                vector2D = vector2D5;
            }
            if (vector2D3 == null || vector2D5.getX() > vector2D3.getX()) {
                vector2D3 = vector2D5;
            }
            if (vector2D2 == null || vector2D5.getY() < vector2D2.getY()) {
                vector2D2 = vector2D5;
            }
            if (vector2D4 == null || vector2D5.getY() > vector2D4.getY()) {
                vector2D4 = vector2D5;
            }
            i10++;
        }
        if (i10 < 4) {
            return collection;
        }
        List<Vector2D> buildQuadrilateral = buildQuadrilateral(vector2D2, vector2D3, vector2D4, vector2D);
        if (buildQuadrilateral.size() < 3) {
            return collection;
        }
        ArrayList arrayList = new ArrayList(buildQuadrilateral);
        for (Vector2D vector2D6 : collection) {
            if (!insideQuadrilateral(vector2D6, buildQuadrilateral)) {
                arrayList.add(vector2D6);
            }
        }
        return arrayList;
    }
}
