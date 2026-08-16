package com.jme3.bullet.animation;

import com.jme3.bounding.BoundingSphere;
import com.jme3.math.Vector3f;
import jf.h;
import jf.o;

public enum CenterHeuristic {
    AABB,
    Joint,
    Mean,
    Sphere;

    static final boolean $assertionsDisabled = false;

    public Vector3f center(o oVar, Vector3f vector3f) {
        oVar.m();
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        int ordinal = ordinal();
        if (ordinal == 0) {
            Vector3f vector3f2 = new Vector3f();
            Vector3f vector3f3 = new Vector3f();
            oVar.g(vector3f2, vector3f3);
            h.M(vector3f2, vector3f3, vector3f);
        } else if (ordinal == 2) {
            oVar.k(vector3f);
        } else {
            if (ordinal != 3) {
                throw new IllegalStateException("heuristic = " + toString());
            }
            BoundingSphere boundingSphere = new BoundingSphere();
            boundingSphere.computeFromPoints(oVar.j());
            boundingSphere.getCenter(vector3f);
        }
        return vector3f;
    }
}
