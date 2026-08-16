package com.jme3.scene;

public abstract class GeometryGroupNode extends Node {
    public GeometryGroupNode() {
    }

    public static int getGeometryStartIndex(Geometry geometry) {
        return geometry.startIndex;
    }

    public static void setGeometryStartIndex(Geometry geometry, int i10) {
        if (i10 < -1) {
            throw new AssertionError();
        }
        geometry.startIndex = i10;
    }

    public abstract void onGeometryUnassociated(Geometry geometry);

    public abstract void onMaterialChange(Geometry geometry);

    public abstract void onMeshChange(Geometry geometry);

    public abstract void onTransformChange(Geometry geometry);

    public GeometryGroupNode(String str) {
        super(str);
    }
}
