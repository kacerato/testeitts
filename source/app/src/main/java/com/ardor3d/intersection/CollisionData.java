package com.ardor3d.intersection;

import com.ardor3d.scenegraph.Mesh;
import java.util.List;

public class CollisionData {
    private final Mesh _sourceMesh;
    private final List<PrimitiveKey> _sourcePrimitives;
    private final Mesh _targetMesh;
    private final List<PrimitiveKey> _targetPrimitives;

    public CollisionData(Mesh mesh, Mesh mesh2) {
        this(mesh, mesh2, null, null);
    }

    public Mesh getSourceMesh() {
        return this._sourceMesh;
    }

    public List<PrimitiveKey> getSourcePrimitives() {
        return this._sourcePrimitives;
    }

    public Mesh getTargetMesh() {
        return this._targetMesh;
    }

    public List<PrimitiveKey> getTargetPrimitives() {
        return this._targetPrimitives;
    }

    public CollisionData(Mesh mesh, Mesh mesh2, List<PrimitiveKey> list, List<PrimitiveKey> list2) {
        this._targetMesh = mesh2;
        this._sourceMesh = mesh;
        this._targetPrimitives = list2;
        this._sourcePrimitives = list;
    }
}
