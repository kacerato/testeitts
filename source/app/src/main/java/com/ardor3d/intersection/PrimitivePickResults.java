package com.ardor3d.intersection;

import com.ardor3d.math.Ray3;

public class PrimitivePickResults extends PickResults {
    @Override
    public void addPick(Ray3 ray3, Pickable pickable) {
        if (pickable.intersectsWorldBound(ray3)) {
            PrimitivePickData primitivePickData = new PrimitivePickData(ray3, pickable);
            if (primitivePickData.getIntersectionRecord() == null || primitivePickData.getIntersectionRecord().getNumberOfIntersections() <= 0) {
                return;
            }
            addPickData(primitivePickData);
        }
    }
}
