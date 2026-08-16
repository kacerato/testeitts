package com.jme3.util.mikktspace;

public interface MikkTSpaceContext {
    void getNormal(float[] fArr, int i10, int i11);

    int getNumFaces();

    int getNumVerticesOfFace(int i10);

    void getPosition(float[] fArr, int i10, int i11);

    void getTexCoord(float[] fArr, int i10, int i11);

    void setTSpace(float[] fArr, float[] fArr2, float f10, float f11, boolean z10, int i10, int i11);

    void setTSpaceBasic(float[] fArr, float f10, int i10, int i11);
}
