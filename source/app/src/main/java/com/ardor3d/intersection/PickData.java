package com.ardor3d.intersection;

import com.ardor3d.math.Ray3;

public class PickData {
    protected IntersectionRecord _intersectionRecord;
    private final Ray3 _ray;
    private final Pickable _target;

    public PickData(Ray3 ray3, Pickable pickable, boolean z10) {
        this._ray = ray3;
        this._target = pickable;
        if (z10) {
            this._intersectionRecord = pickable.intersectsWorldBoundsWhere(ray3);
        }
    }

    public IntersectionRecord getIntersectionRecord() {
        return this._intersectionRecord;
    }

    public Ray3 getRay() {
        return this._ray;
    }

    public Pickable getTarget() {
        return this._target;
    }
}
