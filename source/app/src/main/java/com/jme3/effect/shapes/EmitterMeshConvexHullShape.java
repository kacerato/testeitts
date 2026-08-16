package com.jme3.effect.shapes;

import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import java.util.List;

public class EmitterMeshConvexHullShape extends EmitterMeshFaceShape {
    public EmitterMeshConvexHullShape() {
    }

    @Override
    public void getRandomPoint(Vector3f vector3f) {
        super.getRandomPoint(vector3f);
        vector3f.multLocal(FastMath.nextRandomFloat());
    }

    @Override
    public void getRandomPointAndNormal(Vector3f vector3f, Vector3f vector3f2) {
        super.getRandomPointAndNormal(vector3f, vector3f2);
        vector3f.multLocal(FastMath.nextRandomFloat());
    }

    public EmitterMeshConvexHullShape(List<Mesh> list) {
        super(list);
    }
}
