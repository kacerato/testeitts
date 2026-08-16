package com.threed.jpct;

import java.io.Serializable;

public abstract class GenericVertexController implements IVertexController, Serializable {
    private static final long serialVersionUID = 1;
    private Mesh mesh;
    private SimpleVector[] meshData;
    private SimpleVector[] meshTarget;
    private SimpleVector[] normalData;
    private SimpleVector[] normalTarget;

    private float f83617x;

    private float f83618y;

    private float f83619z;
    private int size = 0;
    private boolean initialized = false;
    private float[] meshxOrg = null;
    private float[] meshyOrg = null;
    private float[] meshzOrg = null;
    private float[] meshnxOrg = null;
    private float[] meshnyOrg = null;
    private float[] meshnzOrg = null;

    @Override
    public void cleanup() {
    }

    @Override
    public final void destroy() {
        cleanup();
        this.initialized = false;
    }

    @Override
    public final SimpleVector[] getDestinationMesh() {
        return this.meshTarget;
    }

    @Override
    public final SimpleVector[] getDestinationNormals() {
        return this.normalTarget;
    }

    @Override
    public final int getMeshSize() {
        return this.size;
    }

    @Override
    public int[] getPolygonIDs(int i10, int i11) {
        int[] iArr = new int[i11];
        int i12 = 0;
        int i13 = 0;
        while (true) {
            Mesh mesh = this.mesh;
            if (i12 >= mesh.anzTri || i13 >= i11) {
                break;
            }
            int[] iArr2 = mesh.coords;
            int[] iArr3 = mesh.points[i12];
            if (iArr2[iArr3[0]] == i10 || iArr2[iArr3[1]] == i10 || iArr2[iArr3[2]] == i10) {
                iArr[i13] = i12;
                i13++;
            }
            i12++;
        }
        int[] iArr4 = new int[i13];
        System.arraycopy(iArr, 0, iArr4, 0, i13);
        return iArr4;
    }

    @Override
    public final SimpleVector[] getSourceMesh() {
        return this.meshData;
    }

    @Override
    public final SimpleVector[] getSourceNormals() {
        return this.normalData;
    }

    @Override
    public final boolean init(Mesh mesh, boolean z10) {
        if (this.initialized) {
            Logger.log("This instance has already been assigned to another Mesh!", 0);
            return false;
        }
        this.mesh = mesh;
        this.meshxOrg = mesh.xOrg;
        this.meshyOrg = mesh.yOrg;
        this.meshzOrg = mesh.zOrg;
        this.meshnxOrg = mesh.nxOrg;
        this.meshnyOrg = mesh.nyOrg;
        this.meshnzOrg = mesh.nzOrg;
        if (!mesh.normalsCalculated) {
            Logger.log("No normals have been calculated for this mesh yet!", 1);
        }
        int i10 = mesh.obbStart;
        if (i10 == 0 || mesh.obbEnd + 1 != mesh.anzCoords) {
            i10 = mesh.anzCoords;
        }
        this.size = i10;
        SimpleVector[] simpleVectorArr = new SimpleVector[i10];
        this.meshData = simpleVectorArr;
        SimpleVector[] simpleVectorArr2 = new SimpleVector[i10];
        this.normalData = simpleVectorArr2;
        if (z10) {
            this.meshTarget = simpleVectorArr;
            this.normalTarget = simpleVectorArr2;
        } else {
            this.meshTarget = new SimpleVector[i10];
            this.normalTarget = new SimpleVector[i10];
        }
        for (int i11 = 0; i11 < i10; i11++) {
            float f10 = this.meshxOrg[i11];
            float f11 = this.meshyOrg[i11];
            float f12 = this.meshzOrg[i11];
            float f13 = this.meshnxOrg[i11];
            float f14 = this.meshnyOrg[i11];
            float f15 = this.meshnzOrg[i11];
            if (!z10) {
                this.meshTarget[i11] = new SimpleVector(f10, f11, f12);
                this.normalTarget[i11] = new SimpleVector(f13, f14, f15);
            }
            this.meshData[i11] = new SimpleVector(f10, f11, f12);
            this.normalData[i11] = new SimpleVector(f13, f14, f15);
        }
        boolean upVar = setup();
        this.initialized = upVar;
        return upVar;
    }

    @Override
    public void refreshMeshData() {
        Mesh mesh = this.mesh;
        float[] fArr = mesh.xOrg;
        float[] fArr2 = mesh.yOrg;
        float[] fArr3 = mesh.zOrg;
        float[] fArr4 = mesh.nxOrg;
        float[] fArr5 = mesh.nyOrg;
        float[] fArr6 = mesh.nzOrg;
        for (int i10 = 0; i10 < this.size; i10++) {
            SimpleVector simpleVector = this.meshTarget[i10];
            SimpleVector simpleVector2 = this.normalData[i10];
            simpleVector.f83625x = fArr[i10];
            simpleVector.f83626y = fArr2[i10];
            simpleVector.f83627z = fArr3[i10];
            simpleVector2.f83625x = fArr4[i10];
            simpleVector2.f83626y = fArr5[i10];
            simpleVector2.f83627z = fArr6[i10];
        }
    }

    @Override
    public boolean setup() {
        return true;
    }

    @Override
    public final void updateMesh() {
        int i10;
        GenericVertexController genericVertexController = this;
        if (genericVertexController.size == 0) {
            return;
        }
        SimpleVector[] simpleVectorArr = genericVertexController.meshTarget;
        int i11 = 0;
        SimpleVector simpleVector = simpleVectorArr[0];
        float f10 = simpleVector.f83625x;
        genericVertexController.f83617x = f10;
        float f11 = simpleVector.f83626y;
        genericVertexController.f83618y = f11;
        float f12 = simpleVector.f83627z;
        genericVertexController.f83619z = f12;
        SimpleVector[] simpleVectorArr2 = genericVertexController.normalTarget;
        float[] fArr = genericVertexController.meshxOrg;
        float[] fArr2 = genericVertexController.meshyOrg;
        float[] fArr3 = genericVertexController.meshzOrg;
        float[] fArr4 = genericVertexController.meshnxOrg;
        float[] fArr5 = genericVertexController.meshnyOrg;
        float[] fArr6 = genericVertexController.meshnzOrg;
        Mesh mesh = genericVertexController.mesh;
        float f13 = f10;
        float f14 = f11;
        float f15 = f14;
        float f16 = f12;
        float f17 = f13;
        while (true) {
            i10 = genericVertexController.size;
            if (i11 >= i10) {
                break;
            }
            SimpleVector simpleVector2 = simpleVectorArr[i11];
            SimpleVector[] simpleVectorArr3 = simpleVectorArr;
            SimpleVector simpleVector3 = simpleVectorArr2[i11];
            SimpleVector[] simpleVectorArr4 = simpleVectorArr2;
            float f18 = simpleVector2.f83625x;
            genericVertexController.f83617x = f18;
            Mesh mesh2 = mesh;
            float f19 = simpleVector2.f83626y;
            genericVertexController.f83618y = f19;
            float f20 = simpleVector2.f83627z;
            genericVertexController.f83619z = f20;
            fArr[i11] = f18;
            fArr2[i11] = f19;
            fArr3[i11] = f20;
            fArr4[i11] = simpleVector3.f83625x;
            fArr5[i11] = simpleVector3.f83626y;
            fArr6[i11] = simpleVector3.f83627z;
            if (f18 < f17) {
                f17 = f18;
            } else if (f18 > f13) {
                f13 = f18;
            }
            if (f19 < f14) {
                f14 = f19;
            } else if (f19 > f15) {
                f15 = f19;
            }
            if (f20 < f12) {
                f12 = f20;
            } else if (f20 > f16) {
                f16 = f20;
            }
            i11++;
            genericVertexController = this;
            simpleVectorArr = simpleVectorArr3;
            simpleVectorArr2 = simpleVectorArr4;
            mesh = mesh2;
        }
        if (mesh.obbStart == 0) {
            int i12 = mesh.anzCoords;
            mesh.obbStart = i12;
            mesh.obbEnd = i10 + 7;
            mesh.anzCoords = i12 + 8;
        }
        int i13 = mesh.obbStart;
        fArr[i13] = f17;
        fArr2[i13] = f14;
        int i14 = i13 + 1;
        fArr3[i13] = f12;
        fArr[i14] = f17;
        fArr2[i14] = f14;
        int i15 = i13 + 2;
        fArr3[i14] = f16;
        fArr[i15] = f13;
        fArr2[i15] = f14;
        int i16 = i13 + 3;
        fArr3[i15] = f12;
        fArr[i16] = f13;
        fArr2[i16] = f14;
        int i17 = i13 + 4;
        fArr3[i16] = f16;
        fArr[i17] = f13;
        fArr2[i17] = f15;
        int i18 = i13 + 5;
        fArr3[i17] = f12;
        fArr[i18] = f13;
        fArr2[i18] = f15;
        int i19 = i13 + 6;
        fArr3[i18] = f16;
        fArr[i19] = f17;
        fArr2[i19] = f15;
        int i20 = i13 + 7;
        fArr3[i19] = f12;
        fArr[i20] = f17;
        fArr2[i20] = f15;
        fArr3[i20] = f16;
    }
}
