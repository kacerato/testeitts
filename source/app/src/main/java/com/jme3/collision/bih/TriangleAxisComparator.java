package com.jme3.collision.bih;

import com.jme3.math.Vector3f;
import java.util.Comparator;

public class TriangleAxisComparator implements Comparator<BIHTriangle> {
    static final boolean $assertionsDisabled = false;
    private final int axis;

    public TriangleAxisComparator(int i10) {
        this.axis = i10;
    }

    @Override
    public int compare(BIHTriangle bIHTriangle, BIHTriangle bIHTriangle2) {
        float f10;
        float f11;
        Vector3f center = bIHTriangle.getCenter();
        Vector3f center2 = bIHTriangle2.getCenter();
        int i10 = this.axis;
        if (i10 == 0) {
            f10 = center.f81611x;
            f11 = center2.f81611x;
        } else if (i10 == 1) {
            f10 = center.f81612y;
            f11 = center2.f81612y;
        } else {
            if (i10 != 2) {
                return 0;
            }
            f10 = center.f81613z;
            f11 = center2.f81613z;
        }
        if (f10 > f11) {
            return 1;
        }
        return f10 < f11 ? -1 : 0;
    }
}
