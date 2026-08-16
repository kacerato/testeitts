package com.ardor3d.intersection;

import com.ardor3d.math.Ray3;

public class BoundingPickResults extends PickResults {
    @Override
    public void addPick(Ray3 ray3, Pickable pickable) {
        if (pickable.intersectsWorldBound(ray3)) {
            addPickData(new PickData(ray3, pickable, willCheckDistance()));
        }
    }
}
