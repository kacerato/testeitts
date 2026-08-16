package com.ardor3d.intersection;

import com.ardor3d.math.Ray3;

public interface Pickable {
    IntersectionRecord intersectsPrimitivesWhere(Ray3 ray3);

    boolean intersectsWorldBound(Ray3 ray3);

    IntersectionRecord intersectsWorldBoundsWhere(Ray3 ray3);
}
