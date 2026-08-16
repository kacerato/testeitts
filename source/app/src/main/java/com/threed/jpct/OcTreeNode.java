package com.threed.jpct;

import java.io.Serializable;

public final class OcTreeNode implements Serializable {
    private static int nodeID = 0;
    private static final long serialVersionUID = 1;

    int f83624id;
    OcTreeNode parent;
    int pointCnt;
    int polyCnt;
    float xHigh;
    float xLow;
    float yHigh;
    float yLow;
    float zHigh;
    float zLow;
    int[] polyList = null;
    int[] pointList = null;
    int childCnt = 0;
    OcTreeNode[] children = null;
    SimpleVector[] pList = new SimpleVector[8];

    public OcTreeNode() {
        this.parent = null;
        this.f83624id = -1;
        this.polyCnt = 0;
        this.pointCnt = 0;
        for (int i10 = 0; i10 < 8; i10++) {
            this.pList[i10] = SimpleVector.create(0.0f, 0.0f, 0.0f);
        }
        this.parent = null;
        int i11 = nodeID;
        this.f83624id = i11;
        nodeID = i11 + 1;
        this.polyCnt = 0;
        this.pointCnt = 0;
    }

    private boolean notInList(int[] iArr, int i10, int i11) {
        for (int i12 = 0; i12 < i10; i12++) {
            if (i11 == iArr[i12]) {
                return false;
            }
        }
        return true;
    }

    public static void resetNodeID() {
        nodeID = 0;
    }

    public void addChild(OcTreeNode ocTreeNode) {
        if (this.children == null) {
            this.children = new OcTreeNode[8];
        }
        int i10 = this.childCnt;
        if (i10 < 8) {
            this.children[i10] = ocTreeNode;
            this.childCnt = i10 + 1;
            ocTreeNode.setParent(this);
        }
    }

    public void addTriangle(int i10, int i11, int i12, int i13, int i14) {
        if (this.polyList == null) {
            this.polyList = new int[i10];
            this.pointList = new int[i10 * 3];
        }
        this.polyList[this.polyCnt] = i11;
        if (notInList(this.pointList, this.pointCnt, i12)) {
            int[] iArr = this.pointList;
            int i15 = this.pointCnt;
            iArr[i15] = i12;
            this.pointCnt = i15 + 1;
        }
        if (notInList(this.pointList, this.pointCnt, i13)) {
            int[] iArr2 = this.pointList;
            int i16 = this.pointCnt;
            iArr2[i16] = i13;
            this.pointCnt = i16 + 1;
        }
        if (notInList(this.pointList, this.pointCnt, i14)) {
            int[] iArr3 = this.pointList;
            int i17 = this.pointCnt;
            iArr3[i17] = i14;
            this.pointCnt = i17 + 1;
        }
        this.polyCnt++;
    }

    public boolean completeFit(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        float f19 = this.xLow;
        if (f10 < f19) {
            return false;
        }
        float f20 = this.xHigh;
        if (f10 > f20 || f13 < f19 || f13 > f20 || f16 < f19 || f16 > f20) {
            return false;
        }
        float f21 = this.yLow;
        if (f11 < f21) {
            return false;
        }
        float f22 = this.yHigh;
        if (f11 > f22 || f14 < f21 || f14 > f22 || f17 < f21 || f17 > f22) {
            return false;
        }
        float f23 = this.zLow;
        if (f12 < f23) {
            return false;
        }
        float f24 = this.zHigh;
        return f12 <= f24 && f15 >= f23 && f15 <= f24 && f18 >= f23 && f18 <= f24;
    }

    public void extendDimensions(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        if (f10 < this.xLow) {
            this.xLow = f10;
        }
        if (f13 < this.xLow) {
            this.xLow = f13;
        }
        if (f16 < this.xLow) {
            this.xLow = f16;
        }
        if (f11 < this.yLow) {
            this.yLow = f11;
        }
        if (f14 < this.yLow) {
            this.yLow = f14;
        }
        if (f17 < this.yLow) {
            this.yLow = f17;
        }
        if (f12 < this.zLow) {
            this.zLow = f12;
        }
        if (f15 < this.zLow) {
            this.zLow = f15;
        }
        if (f18 < this.zLow) {
            this.zLow = f18;
        }
        if (f10 > this.xHigh) {
            this.xHigh = f10;
        }
        if (f13 > this.xHigh) {
            this.xHigh = f13;
        }
        if (f16 > this.xHigh) {
            this.xHigh = f16;
        }
        if (f11 > this.yHigh) {
            this.yHigh = f11;
        }
        if (f14 > this.yHigh) {
            this.yHigh = f14;
        }
        if (f17 > this.yHigh) {
            this.yHigh = f17;
        }
        if (f12 > this.zHigh) {
            this.zHigh = f12;
        }
        if (f15 > this.zHigh) {
            this.zHigh = f15;
        }
        if (f18 > this.zHigh) {
            this.zHigh = f18;
        }
        setDimensions(this.xLow, this.yLow, this.zLow, this.xHigh, this.yHigh, this.zHigh);
        OcTreeNode ocTreeNode = this.parent;
        if (ocTreeNode != null) {
            ocTreeNode.extendDimensions(f10, f11, f12, f13, f14, f15, f16, f17, f18);
        }
    }

    public int getChildCount() {
        return this.childCnt;
    }

    public OcTreeNode[] getChildren() {
        return this.children;
    }

    public int getID() {
        return this.f83624id;
    }

    public OcTreeNode getParent() {
        return this.parent;
    }

    public int getPointCount() {
        return this.pointCnt;
    }

    public int[] getPoints() {
        return this.pointList;
    }

    public int getPolyCount() {
        return this.polyCnt;
    }

    public int[] getPolygons() {
        return this.polyList;
    }

    public boolean isLeaf() {
        return getChildCount() == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00e2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00e6 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int isVisible(Matrix matrix, float f10, float f11) {
        float f12;
        boolean z10;
        int i10;
        int i11;
        boolean z11;
        float f13;
        float[][] fArr = matrix.mat;
        int i12 = 0;
        float[] fArr2 = fArr[0];
        float f14 = fArr2[0];
        float[] fArr3 = fArr[1];
        float f15 = fArr3[0];
        float f16 = fArr3[1];
        float[] fArr4 = fArr[2];
        float f17 = fArr4[1];
        float f18 = fArr4[2];
        float f19 = fArr3[2];
        float f20 = fArr4[0];
        float f21 = fArr2[2];
        float f22 = fArr2[1];
        float[] fArr5 = fArr[3];
        float f23 = fArr5[0];
        float f24 = fArr5[1];
        float f25 = fArr5[2];
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        boolean z12 = false;
        boolean z13 = false;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i14 < 8) {
            int i19 = i15;
            SimpleVector simpleVector = this.pList[i14];
            float f26 = simpleVector.f83625x;
            int i20 = i14;
            float f27 = simpleVector.f83626y;
            float f28 = simpleVector.f83627z;
            float f29 = (f26 * f14) + (f27 * f15) + (f28 * f20) + f23;
            float f30 = (f26 * f21) + (f27 * f19) + (f28 * f18) + f25;
            if (f30 < Config.nearPlane) {
                i12++;
            } else if (f30 > Config.farPlane) {
                i18++;
            } else {
                f12 = f25;
                z10 = z13;
                i10 = i18;
                i11 = i12;
                z11 = true;
                f13 = f30 * f10;
                float f31 = f14;
                if (f29 >= (-f13)) {
                    i16++;
                } else if (f29 > f13) {
                    i13++;
                } else {
                    float f32 = f30 * f11;
                    float f33 = (f26 * f22) + (f27 * f16) + (f28 * f17) + f24;
                    if (f33 < (-f32)) {
                        i17++;
                    } else if (f33 > f32) {
                        i15 = i19 + 1;
                        z10 = true;
                        if (!z10 && z12) {
                            return 1;
                        }
                        i14 = i20 + 1;
                        i12 = i11;
                        i18 = i10;
                        z13 = z10;
                        f25 = f12;
                        f14 = f31;
                    } else {
                        i15 = i19;
                        if (z11) {
                            z12 = true;
                        }
                        if (!z10) {
                        }
                        i14 = i20 + 1;
                        i12 = i11;
                        i18 = i10;
                        z13 = z10;
                        f25 = f12;
                        f14 = f31;
                    }
                }
                i15 = i19;
                z10 = true;
                if (!z10) {
                }
                i14 = i20 + 1;
                i12 = i11;
                i18 = i10;
                z13 = z10;
                f25 = f12;
                f14 = f31;
            }
            f12 = f25;
            i10 = i18;
            z10 = true;
            i11 = i12;
            z11 = false;
            f13 = f30 * f10;
            float f312 = f14;
            if (f29 >= (-f13)) {
            }
            i15 = i19;
            z10 = true;
            if (!z10) {
            }
            i14 = i20 + 1;
            i12 = i11;
            i18 = i10;
            z13 = z10;
            f25 = f12;
            f14 = f312;
        }
        if (i15 == 8 || i13 == 8 || i17 == 8 || i16 == 8 || i12 == 8 || i18 == 8) {
            return 0;
        }
        return (i15 == 0 && i13 == 0 && i17 == 0 && i16 == 0 && i12 == 0 && i18 == 0) ? 999 : 1;
    }

    public void packPoints() {
        int i10 = this.pointCnt;
        if (i10 != this.polyCnt * 3) {
            int[] iArr = new int[i10];
            System.arraycopy(this.pointList, 0, iArr, 0, i10);
            this.pointList = iArr;
        }
    }

    public boolean partialFit(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        float f19 = this.xLow;
        if (f10 >= f19 && f10 <= this.xHigh && f11 >= this.yLow && f11 <= this.yHigh && f12 >= this.zLow && f12 <= this.zHigh) {
            return true;
        }
        if (f13 < f19 || f13 > this.xHigh || f14 < this.yLow || f14 > this.yHigh || f15 < this.zLow || f15 > this.zHigh) {
            return f16 >= f19 && f16 <= this.xHigh && f17 >= this.yLow && f17 <= this.yHigh && f18 >= this.zLow && f18 <= this.zHigh;
        }
        return true;
    }

    public void removeChild(OcTreeNode ocTreeNode) {
        int i10 = 0;
        while (true) {
            if (i10 >= this.childCnt) {
                i10 = -1;
                break;
            } else if (this.children[i10].equals(ocTreeNode)) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 == -1) {
            return;
        }
        while (true) {
            int i11 = this.childCnt;
            if (i10 >= i11 - 1) {
                this.childCnt = i11 - 1;
                return;
            }
            OcTreeNode[] ocTreeNodeArr = this.children;
            int i12 = i10 + 1;
            ocTreeNodeArr[i10] = ocTreeNodeArr[i12];
            i10 = i12;
        }
    }

    public void setDimensions(float f10, float f11, float f12, float f13, float f14, float f15) {
        this.xLow = f10;
        this.yLow = f11;
        this.zLow = f12;
        this.xHigh = f13;
        this.yHigh = f14;
        this.zHigh = f15;
        SimpleVector[] simpleVectorArr = this.pList;
        SimpleVector simpleVector = simpleVectorArr[4];
        simpleVector.f83625x = f10;
        simpleVector.f83626y = f11;
        simpleVector.f83627z = f15;
        SimpleVector simpleVector2 = simpleVectorArr[5];
        simpleVector2.f83625x = f10;
        simpleVector2.f83626y = f11;
        simpleVector2.f83627z = f12;
        SimpleVector simpleVector3 = simpleVectorArr[6];
        simpleVector3.f83625x = f13;
        simpleVector3.f83626y = f11;
        simpleVector3.f83627z = f12;
        SimpleVector simpleVector4 = simpleVectorArr[7];
        simpleVector4.f83625x = f13;
        simpleVector4.f83626y = f11;
        simpleVector4.f83627z = f15;
        SimpleVector simpleVector5 = simpleVectorArr[0];
        simpleVector5.f83625x = f10;
        simpleVector5.f83626y = f14;
        simpleVector5.f83627z = f15;
        SimpleVector simpleVector6 = simpleVectorArr[1];
        simpleVector6.f83625x = f10;
        simpleVector6.f83626y = f14;
        simpleVector6.f83627z = f12;
        SimpleVector simpleVector7 = simpleVectorArr[2];
        simpleVector7.f83625x = f13;
        simpleVector7.f83626y = f14;
        simpleVector7.f83627z = f12;
        SimpleVector simpleVector8 = simpleVectorArr[3];
        simpleVector8.f83625x = f13;
        simpleVector8.f83626y = f14;
        simpleVector8.f83627z = f15;
    }

    public void setParent(OcTreeNode ocTreeNode) {
        this.parent = ocTreeNode;
    }

    public boolean sphereIntersectsNode(float f10, float f11, float f12, float f13) {
        return f10 + f13 >= this.xLow && f10 - f13 <= this.xHigh && f11 + f13 >= this.yLow && f11 - f13 <= this.yHigh && f12 + f13 >= this.zLow && f12 - f13 <= this.zHigh;
    }
}
