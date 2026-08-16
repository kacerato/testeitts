package com.threed.jpct;

public interface IVertexController {
    public static final boolean ALTER_SOURCE_MESH = true;
    public static final boolean PRESERVE_SOURCE_MESH = false;

    void apply();

    void cleanup();

    void destroy();

    SimpleVector[] getDestinationMesh();

    SimpleVector[] getDestinationNormals();

    int getMeshSize();

    int[] getPolygonIDs(int i10, int i11);

    SimpleVector[] getSourceMesh();

    SimpleVector[] getSourceNormals();

    boolean init(Mesh mesh, boolean z10);

    void refreshMeshData();

    boolean setup();

    void updateMesh();
}
