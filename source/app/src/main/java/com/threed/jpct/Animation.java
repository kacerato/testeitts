package com.threed.jpct;

import java.io.Serializable;

public final class Animation implements Serializable {
    public static final int KEYFRAMESONLY = 4;
    public static final int LINEAR = 0;
    public static final int USE_CLAMPING = 1;
    public static final int USE_WRAPPING = 0;
    private static final long serialVersionUID = 1;
    int[] endFrames;
    Mesh[] keyFrames;
    int maxFrames;
    String[] seqNames;
    int[] startFrames;
    private transient int lastFrame = -1;
    boolean cacheIndices = true;
    int endFrame = 0;
    int aktFrames = 0;
    int mode = 0;
    int anzAnim = 0;
    int wrapMode = 0;

    public Animation(int i10) {
        this.maxFrames = i10;
        this.keyFrames = new Mesh[i10];
        int i11 = Config.maxAnimationSubSequences;
        this.startFrames = new int[i11];
        this.endFrames = new int[i11];
        this.seqNames = new String[i11];
        for (int i12 = 0; i12 < Config.maxAnimationSubSequences; i12++) {
            this.startFrames[i12] = -1;
            this.endFrames[i12] = -1;
            this.seqNames[i12] = null;
        }
    }

    public void addKeyFrame(Mesh mesh) {
        int i10 = this.anzAnim;
        if (i10 == 0) {
            Logger.log("Can't add a keyframe without a sub-sequence being created!", 0);
        } else if (mesh.obbStart != 0) {
            int i11 = this.aktFrames;
            if (i11 < this.maxFrames) {
                this.keyFrames[i11] = mesh;
                int i12 = i11 + 1;
                this.aktFrames = i12;
                this.endFrames[i10] = i12;
                this.endFrame = i12;
            } else {
                Logger.log("Too many keyframes defined!", 0);
            }
        } else {
            Logger.log("Bounding box missing in this mesh!", 0);
        }
        this.endFrames[0] = this.endFrame;
    }

    public int createSubSequence(String str) {
        int i10 = this.anzAnim;
        if (i10 + 1 < Config.maxAnimationSubSequences) {
            int i11 = i10 + 1;
            this.anzAnim = i11;
            int[] iArr = this.startFrames;
            iArr[i11] = this.aktFrames;
            String[] strArr = this.seqNames;
            strArr[i11] = str;
            iArr[0] = 0;
            this.endFrames[0] = 0;
            strArr[0] = "complete";
        } else {
            Logger.log("Too many sub-sequences defined. Modify configuration to allow a higher number.", 0);
        }
        return this.anzAnim;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
    
        if (r11 < r10) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0010, code lost:
    
        if (r11 < 0.0f) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void doAnimation(Object3D object3D, int i10, float f10) {
        int i11;
        if (i10 > this.anzAnim) {
            Logger.log("Sub-sequence number " + i10 + " doesn't exist!", 0);
            return;
        }
        float f11 = f10 <= 1.0f ? 0.0f : 1.0f;
        f10 = f11;
        int i12 = this.endFrames[i10];
        int i13 = this.startFrames[i10];
        float f12 = i13;
        float f13 = (f10 * ((i12 - i13) - r0)) + f12;
        if (this.wrapMode == 1) {
            if (f13 >= i12) {
                f12 = i12 - 1;
            }
            int i14 = (int) f12;
            float f14 = f12 - i14;
            i11 = this.mode;
            if (i11 != 0) {
                interpolateLinear(object3D, i14, f14, i13, i12);
                return;
            } else if (i11 != 4) {
                Logger.log("Unsupported interpolation mode used!", 0);
                return;
            } else {
                interpolateNone(object3D, i14, i13, i12);
                return;
            }
        }
        f12 = f13;
        int i142 = (int) f12;
        float f142 = f12 - i142;
        i11 = this.mode;
        if (i11 != 0) {
        }
    }

    public Mesh[] getKeyFrames() {
        int i10 = this.aktFrames;
        Mesh[] meshArr = new Mesh[i10];
        System.arraycopy(this.keyFrames, 0, meshArr, 0, i10);
        return meshArr;
    }

    public String getName(int i10) {
        return this.seqNames[i10];
    }

    public int getSequence(String str) {
        int length = this.seqNames.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (str.equalsIgnoreCase(this.seqNames[i10])) {
                return i10;
            }
        }
        return -1;
    }

    public int[] getSequenceBorders(int i10) {
        return new int[]{this.startFrames[i10], this.endFrames[i10]};
    }

    public int getSequenceCount() {
        return this.anzAnim;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0022, code lost:
    
        if (r2 < r26) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0031, code lost:
    
        if (r2 < r26) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void interpolateLinear(Object3D object3D, int i10, float f10, int i11, int i12) {
        int i13 = i10;
        float f11 = 1.0f - f10;
        int i14 = i13 + 1;
        if (this.wrapMode == 1) {
            if (i14 >= i12) {
                i14 = i12 - 1;
            } else if (i14 < i11) {
                i14 = i11;
            }
            if (i13 < i12) {
            }
            i13 = i12 - 1;
        } else {
            if (i14 >= i12) {
                i14 = i11;
            } else if (i14 < i11) {
                i14 = i12 - 1;
            }
            if (i13 < i12) {
            }
            i13 = i11;
        }
        Mesh mesh = object3D.objMesh;
        Mesh[] meshArr = this.keyFrames;
        float[] fArr = mesh.xOrg;
        float[] fArr2 = mesh.yOrg;
        float[] fArr3 = mesh.zOrg;
        Mesh mesh2 = meshArr[i13];
        float[] fArr4 = mesh2.xOrg;
        float[] fArr5 = mesh2.yOrg;
        float[] fArr6 = mesh2.zOrg;
        float[] fArr7 = mesh.nxOrg;
        float[] fArr8 = mesh.nyOrg;
        float[] fArr9 = mesh.nzOrg;
        float[] fArr10 = mesh2.nxOrg;
        float[] fArr11 = mesh2.nyOrg;
        float[] fArr12 = mesh2.nzOrg;
        Mesh mesh3 = meshArr[i14];
        float[] fArr13 = mesh3.xOrg;
        float[] fArr14 = mesh3.yOrg;
        float[] fArr15 = mesh3.zOrg;
        float[] fArr16 = mesh3.nxOrg;
        float[] fArr17 = mesh3.nyOrg;
        float[] fArr18 = mesh3.nzOrg;
        int i15 = 0;
        for (int i16 = mesh.anzCoords; i15 < i16; i16 = i16) {
            fArr[i15] = (fArr4[i15] * f11) + (fArr13[i15] * f10);
            fArr2[i15] = (fArr5[i15] * f11) + (fArr14[i15] * f10);
            fArr3[i15] = (fArr6[i15] * f11) + (fArr15[i15] * f10);
            fArr7[i15] = (fArr10[i15] * f11) + (fArr16[i15] * f10);
            fArr8[i15] = (fArr11[i15] * f11) + (fArr17[i15] * f10);
            fArr9[i15] = (fArr12[i15] * f11) + (fArr18[i15] * f10);
            i15++;
        }
        object3D.modified = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0014, code lost:
    
        if (r2 < r21) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x001b, code lost:
    
        if (r2 < r21) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void interpolateNone(Object3D object3D, int i10, int i11, int i12) {
        int i13 = i10;
        if (this.wrapMode == 1) {
            if (i13 < i12) {
            }
            i13 = i12 - 1;
        } else {
            if (i13 < i12) {
            }
            i13 = i11;
        }
        Mesh mesh = object3D.objMesh;
        int i14 = mesh.anzCoords;
        float[] fArr = mesh.xOrg;
        float[] fArr2 = mesh.yOrg;
        float[] fArr3 = mesh.zOrg;
        Mesh mesh2 = this.keyFrames[i13];
        float[] fArr4 = mesh2.xOrg;
        float[] fArr5 = mesh2.yOrg;
        float[] fArr6 = mesh2.zOrg;
        float[] fArr7 = mesh.nxOrg;
        float[] fArr8 = mesh.nyOrg;
        float[] fArr9 = mesh.nzOrg;
        float[] fArr10 = mesh2.nxOrg;
        float[] fArr11 = mesh2.nyOrg;
        float[] fArr12 = mesh2.nzOrg;
        for (int i15 = 0; i15 < i14; i15++) {
            fArr[i15] = fArr4[i15];
            fArr2[i15] = fArr5[i15];
            fArr3[i15] = fArr6[i15];
            fArr7[i15] = fArr10[i15];
            fArr8[i15] = fArr11[i15];
            fArr9[i15] = fArr12[i15];
        }
        if (i13 != this.lastFrame) {
            object3D.modified = true;
            this.lastFrame = i13;
        }
    }

    public void remove(int i10) {
        int[] sequenceBorders = getSequenceBorders(i10);
        for (int i11 = sequenceBorders[0]; i11 < sequenceBorders[1]; i11++) {
            this.keyFrames[i11] = null;
        }
    }

    public void rotateMesh(Matrix matrix, float f10, float f11, float f12, float f13) {
        for (int i10 = 0; i10 < this.aktFrames; i10++) {
            Mesh mesh = this.keyFrames[i10];
            if (mesh != null) {
                mesh.rotateMesh(matrix, f10, f11, f12, f13);
            }
        }
    }

    public void setCaching(boolean z10) {
        this.cacheIndices = z10;
    }

    public void setClampingMode(int i10) {
        if (i10 == 0 || i10 == 1) {
            this.wrapMode = i10;
        } else {
            Logger.log("Clamping-mode not supported!", 0);
        }
    }

    public void setInterpolationMethod(int i10) {
        this.mode = i10;
    }

    public void strip() {
        for (int i10 = 0; i10 < this.aktFrames; i10++) {
            this.keyFrames[i10].strip();
        }
    }

    public void translateMesh(Matrix matrix, Matrix matrix2) {
        for (int i10 = 0; i10 < this.aktFrames; i10++) {
            Mesh mesh = this.keyFrames[i10];
            if (mesh != null) {
                mesh.translateMesh(matrix, matrix2);
            }
        }
    }

    public void validate(Object3D object3D) {
        Mesh mesh = object3D.getMesh();
        if (mesh == null) {
            return;
        }
        for (int i10 = 0; i10 < this.aktFrames; i10++) {
            Mesh mesh2 = this.keyFrames[i10];
            if (mesh2 != null && mesh2 == mesh) {
                Logger.log("The animation shares a mesh with the animated object...fixing this...!", 1);
                this.keyFrames[i10] = mesh2.cloneMesh(true);
            }
        }
    }
}
