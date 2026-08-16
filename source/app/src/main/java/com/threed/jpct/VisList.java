package com.threed.jpct;

import java.io.Serializable;
import java.util.ArrayList;

public final class VisList implements Serializable {
    private static final long serialVersionUID = 1;
    private int pivotindex;
    int size;
    int[] stageCnt;
    int[] vertexIndex;
    int[] vnum;
    Object3D[] vorg;
    float[] zValue;
    long lastCycle = -1;
    private int msgCnt = 0;
    private int maxStages = 0;
    private ArrayList<Object3D> toFill = new ArrayList<>();
    private int[] bucket = new int[30];
    int anzpoly = -1;

    public VisList(int i10) {
        int i11 = i10 + 1;
        this.vorg = new Object3D[i11];
        this.vnum = new int[i11];
        this.vertexIndex = new int[i11];
        this.zValue = new float[i11];
        this.stageCnt = new int[i11];
        this.size = i10;
    }

    private void findpivot(int i10, int i11) {
        this.pivotindex = -1;
        float f10 = this.zValue[i10];
        int i12 = i10;
        while (this.pivotindex == -1 && i12 <= i11) {
            float f11 = this.zValue[i12];
            if (f11 > f10) {
                this.pivotindex = i12;
            } else {
                if (f11 < f10) {
                    this.pivotindex = i10;
                }
                i12++;
            }
        }
    }

    private void flip(int i10, int i11) {
        float[] fArr = this.zValue;
        float f10 = fArr[i11];
        fArr[i11] = fArr[i10];
        fArr[i10] = f10;
        Object3D[] object3DArr = this.vorg;
        Object3D object3D = object3DArr[i11];
        object3DArr[i11] = object3DArr[i10];
        object3DArr[i10] = object3D;
        int[] iArr = this.vnum;
        int i12 = iArr[i11];
        iArr[i11] = iArr[i10];
        iArr[i10] = i12;
        int[] iArr2 = this.stageCnt;
        int i13 = iArr2[i11];
        iArr2[i11] = iArr2[i10];
        iArr2[i10] = i13;
        int[] iArr3 = this.vertexIndex;
        int i14 = iArr3[i11];
        iArr3[i11] = iArr3[i10];
        iArr3[i10] = i14;
    }

    private void fsort(int i10, int i11) {
        int i12 = 0;
        float f10 = this.zValue[0];
        int i13 = i11 / 20;
        if (i13 < 30) {
            i13 = 30;
        }
        if (i13 > this.bucket.length) {
            this.bucket = new int[i13];
        }
        int[] iArr = this.bucket;
        int length = iArr.length;
        for (int i14 = 0; i14 < length; i14++) {
            iArr[i14] = 0;
        }
        int i15 = 0;
        for (int i16 = 1; i16 < i11; i16++) {
            float[] fArr = this.zValue;
            float f11 = fArr[i16];
            if (f11 < f10) {
                f10 = f11;
            }
            if (f11 > fArr[i15]) {
                i15 = i16;
            }
        }
        float f12 = this.zValue[i15];
        if (f10 == f12) {
            return;
        }
        float f13 = (i13 - 1.0f) / (f12 - f10);
        for (int i17 = 0; i17 < i11; i17++) {
            int i18 = (int) ((this.zValue[i17] - f10) * f13);
            iArr[i18] = iArr[i18] + 1;
        }
        for (int i19 = 1; i19 < i13; i19++) {
            iArr[i19] = iArr[i19] + iArr[i19 - 1];
        }
        flip(i15, 0);
        int i20 = i13 - 1;
        int i21 = 0;
        while (i21 < i11 - 1) {
            while (i12 > iArr[i20] - 1) {
                i12++;
                i20 = (int) ((this.zValue[i12] - f10) * f13);
            }
            float f14 = this.zValue[i12];
            int i22 = this.vnum[i12];
            int i23 = this.stageCnt[i12];
            int i24 = this.vertexIndex[i12];
            Object3D object3D = this.vorg[i12];
            while (i12 != iArr[i20]) {
                i20 = (int) ((f14 - f10) * f13);
                int i25 = iArr[i20] - 1;
                float[] fArr2 = this.zValue;
                float f15 = fArr2[i25];
                fArr2[i25] = f14;
                int[] iArr2 = this.vnum;
                int i26 = iArr2[i25];
                iArr2[i25] = i22;
                int[] iArr3 = this.stageCnt;
                int i27 = iArr3[i25];
                iArr3[i25] = i23;
                int[] iArr4 = this.vertexIndex;
                int i28 = iArr4[i25];
                iArr4[i25] = i24;
                Object3D[] object3DArr = this.vorg;
                Object3D object3D2 = object3DArr[i25];
                object3DArr[i25] = object3D;
                iArr[i20] = iArr[i20] - 1;
                i21++;
                object3D = object3D2;
                f14 = f15;
                i24 = i28;
                i23 = i27;
                i22 = i26;
            }
        }
    }

    private void insertionSort(int i10, int i11) {
        float[] fArr;
        for (int i12 = i11 - 3; i12 >= i10; i12--) {
            float[] fArr2 = this.zValue;
            float f10 = fArr2[i12 + 1];
            float f11 = fArr2[i12];
            if (f10 < f11) {
                Object3D object3D = this.vorg[i12];
                int i13 = this.vnum[i12];
                int i14 = this.stageCnt[i12];
                int i15 = this.vertexIndex[i12];
                int i16 = i12;
                while (true) {
                    fArr = this.zValue;
                    int i17 = i16 + 1;
                    float f12 = fArr[i17];
                    if (f12 >= f11) {
                        break;
                    }
                    fArr[i16] = f12;
                    Object3D[] object3DArr = this.vorg;
                    object3DArr[i16] = object3DArr[i17];
                    int[] iArr = this.vnum;
                    iArr[i16] = iArr[i17];
                    int[] iArr2 = this.stageCnt;
                    iArr2[i16] = iArr2[i17];
                    int[] iArr3 = this.vertexIndex;
                    iArr3[i16] = iArr3[i17];
                    i16 = i17;
                }
                fArr[i16] = f11;
                this.vorg[i16] = object3D;
                this.vnum[i16] = i13;
                this.stageCnt[i16] = i14;
                this.vertexIndex[i16] = i15;
            }
        }
    }

    private int partition(int i10, int i11, float f10) {
        while (i10 <= i11) {
            float[] fArr = this.zValue;
            float f11 = fArr[i10];
            if (f11 < f10) {
                i10++;
            } else {
                float f12 = fArr[i11];
                if (f12 < f10) {
                    fArr[i11] = f11;
                    fArr[i10] = f12;
                    Object3D[] object3DArr = this.vorg;
                    Object3D object3D = object3DArr[i11];
                    object3DArr[i11] = object3DArr[i10];
                    object3DArr[i10] = object3D;
                    int[] iArr = this.vnum;
                    int i12 = iArr[i11];
                    iArr[i11] = iArr[i10];
                    iArr[i10] = i12;
                    int[] iArr2 = this.vertexIndex;
                    int i13 = iArr2[i11];
                    iArr2[i11] = iArr2[i10];
                    iArr2[i10] = i13;
                    int[] iArr3 = this.stageCnt;
                    int i14 = iArr3[i11];
                    iArr3[i11] = iArr3[i10];
                    iArr3[i10] = i14;
                    i10++;
                }
                i11--;
            }
        }
        return i10;
    }

    private void qsort(int i10, int i11) {
        findpivot(i10, i11);
        int i12 = this.pivotindex;
        if (i12 != -1) {
            int partition = partition(i10, i11, this.zValue[i12]);
            qsort(i10, partition - 1);
            qsort(partition, i11);
        }
    }

    public synchronized void addToFill(Object3D object3D) {
        if (!this.toFill.contains(object3D)) {
            this.toFill.add(object3D);
        }
    }

    public void addToList(Object3D object3D, float f10, int i10, CompiledInstance compiledInstance) {
        if (this.anzpoly >= this.size) {
            if (this.msgCnt == 0) {
                Logger.log("You've exceeded the configured instance limit for the visibility list. Consider adjusting Config.maxPolysVisible!", 1);
            }
            this.msgCnt++;
            return;
        }
        int polyIndex = compiledInstance.getPolyIndex();
        int stageCount = compiledInstance.getStageCount() - 1;
        int i11 = this.anzpoly + 1;
        this.anzpoly = i11;
        if (stageCount > this.maxStages) {
            this.maxStages = stageCount;
        }
        this.stageCnt[i11] = stageCount;
        this.vorg[i11] = object3D;
        this.vnum[i11] = polyIndex;
        float f11 = f10 + object3D.sortOffset;
        if (object3D.isTrans) {
            this.zValue[i11] = 1000000.0f - f11;
        } else {
            this.zValue[i11] = f11;
        }
        this.vertexIndex[i11] = i10;
    }

    public void clearList() {
        this.anzpoly = -1;
        this.maxStages = 0;
    }

    public void deepClear() {
        clearList();
        for (int i10 = 0; i10 < this.size; i10++) {
            this.vorg[i10] = null;
        }
    }

    public synchronized void fillInstances() {
        int size = this.toFill.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object3D object3D = this.toFill.get(i10);
            if (object3D.modified) {
                int size2 = object3D.compiled.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    object3D.compiled.get(i11).fill();
                }
                object3D.modified = false;
            }
        }
        this.toFill.clear();
    }

    public int getMaxSize() {
        return this.size;
    }

    public void sort(int i10, int i11) {
        if (i11 - i10 < Config.flashSortThreshold) {
            qsort(i10, i11);
            return;
        }
        int i12 = i11 + 1;
        fsort(i10, i12);
        insertionSort(i10, i12);
    }
}
