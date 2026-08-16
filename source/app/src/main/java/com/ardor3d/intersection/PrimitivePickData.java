package com.ardor3d.intersection;

import com.ardor3d.math.Ray3;

public class PrimitivePickData extends PickData {
    public PrimitivePickData(Ray3 ray3, Pickable pickable) {
        super(ray3, pickable, false);
        this._intersectionRecord = pickable.intersectsPrimitivesWhere(ray3);
    }
}
