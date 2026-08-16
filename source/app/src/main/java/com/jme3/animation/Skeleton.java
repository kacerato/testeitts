package com.jme3.animation;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix4f;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.ArrayList;

@Deprecated
public final class Skeleton implements Savable, JmeCloneable {
    private Bone[] boneList;
    private Bone[] rootBones;
    private transient Matrix4f[] skinningMatrixes;

    public Skeleton(Bone[] boneArr) {
        this.boneList = boneArr;
        ArrayList arrayList = new ArrayList();
        for (int length = boneArr.length - 1; length >= 0; length--) {
            Bone bone = boneArr[length];
            if (bone.getParent() == null) {
                arrayList.add(bone);
            }
        }
        this.rootBones = (Bone[]) arrayList.toArray(new Bone[arrayList.size()]);
        createSkinningMatrices();
        for (int length2 = this.rootBones.length - 1; length2 >= 0; length2--) {
            Bone bone2 = this.rootBones[length2];
            bone2.update();
            bone2.setBindingPose();
        }
    }

    private void createSkinningMatrices() {
        this.skinningMatrixes = new Matrix4f[this.boneList.length];
        int i10 = 0;
        while (true) {
            Matrix4f[] matrix4fArr = this.skinningMatrixes;
            if (i10 >= matrix4fArr.length) {
                return;
            }
            matrix4fArr[i10] = new Matrix4f();
            i10++;
        }
    }

    private Bone recreateBoneStructure(Bone bone) {
        Bone bone2 = getBone(bone.getName());
        ArrayList<Bone> children = bone.getChildren();
        for (int i10 = 0; i10 < children.size(); i10++) {
            Bone bone3 = children.get(i10);
            bone2.addChild(getBone(bone3.getName()));
            recreateBoneStructure(bone3);
        }
        return bone2;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.rootBones = (Bone[]) cloner.clone(this.rootBones);
        this.boneList = (Bone[]) cloner.clone(this.boneList);
        this.skinningMatrixes = (Matrix4f[]) cloner.clone(this.skinningMatrixes);
    }

    public Matrix4f[] computeSkinningMatrices() {
        TempVars tempVars = TempVars.get();
        int i10 = 0;
        while (true) {
            Bone[] boneArr = this.boneList;
            if (i10 >= boneArr.length) {
                tempVars.release();
                return this.skinningMatrixes;
            }
            boneArr[i10].getOffsetTransform(this.skinningMatrixes[i10], tempVars.quat1, tempVars.vect1, tempVars.vect2, tempVars.tempMat3);
            i10++;
        }
    }

    public Bone getBone(int i10) {
        return this.boneList[i10];
    }

    public int getBoneCount() {
        return this.boneList.length;
    }

    public int getBoneIndex(Bone bone) {
        int i10 = 0;
        while (true) {
            Bone[] boneArr = this.boneList;
            if (i10 >= boneArr.length) {
                return -1;
            }
            if (boneArr[i10] == bone) {
                return i10;
            }
            i10++;
        }
    }

    public Bone[] getRoots() {
        return this.rootBones;
    }

    @Override
    public Object jmeClone() {
        try {
            return (Skeleton) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        Savable[] readSavableArray = capsule.readSavableArray("rootBones", null);
        Bone[] boneArr = new Bone[readSavableArray.length];
        this.rootBones = boneArr;
        System.arraycopy(readSavableArray, 0, boneArr, 0, readSavableArray.length);
        Savable[] readSavableArray2 = capsule.readSavableArray("boneList", null);
        Bone[] boneArr2 = new Bone[readSavableArray2.length];
        this.boneList = boneArr2;
        System.arraycopy(readSavableArray2, 0, boneArr2, 0, readSavableArray2.length);
        createSkinningMatrices();
        for (Bone bone : this.rootBones) {
            bone.reset();
            bone.update();
            bone.setBindingPose();
        }
    }

    public final void reset() {
        for (int length = this.rootBones.length - 1; length >= 0; length--) {
            this.rootBones[length].reset();
        }
    }

    public final void resetAndUpdate() {
        for (int length = this.rootBones.length - 1; length >= 0; length--) {
            Bone bone = this.rootBones[length];
            bone.reset();
            bone.update();
        }
    }

    public void setBindingPose() {
        for (int length = this.rootBones.length - 1; length >= 0; length--) {
            this.rootBones[length].setBindingPose();
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Skeleton - ");
        sb2.append(this.boneList.length);
        sb2.append(" bones, ");
        sb2.append(this.rootBones.length);
        sb2.append(" roots\n");
        for (Bone bone : this.rootBones) {
            sb2.append(bone.toString());
        }
        return sb2.toString();
    }

    public void updateWorldVectors() {
        for (int length = this.rootBones.length - 1; length >= 0; length--) {
            this.rootBones[length].update();
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.rootBones, "rootBones", (Savable[]) null);
        capsule.write(this.boneList, "boneList", (Savable[]) null);
    }

    public Bone getBone(String str) {
        int i10 = 0;
        while (true) {
            Bone[] boneArr = this.boneList;
            if (i10 >= boneArr.length) {
                return null;
            }
            if (boneArr[i10].getName().equals(str)) {
                return this.boneList[i10];
            }
            i10++;
        }
    }

    public int getBoneIndex(String str) {
        int i10 = 0;
        while (true) {
            Bone[] boneArr = this.boneList;
            if (i10 >= boneArr.length) {
                return -1;
            }
            if (boneArr[i10].getName().equals(str)) {
                return i10;
            }
            i10++;
        }
    }

    public Skeleton(Skeleton skeleton) {
        Bone[] boneArr = skeleton.boneList;
        this.boneList = new Bone[boneArr.length];
        int i10 = 0;
        for (int i11 = 0; i11 < boneArr.length; i11++) {
            this.boneList[i11] = new Bone(boneArr[i11]);
        }
        this.rootBones = new Bone[skeleton.rootBones.length];
        while (true) {
            Bone[] boneArr2 = this.rootBones;
            if (i10 >= boneArr2.length) {
                break;
            }
            boneArr2[i10] = recreateBoneStructure(skeleton.rootBones[i10]);
            i10++;
        }
        createSkinningMatrices();
        for (int length = this.rootBones.length - 1; length >= 0; length--) {
            this.rootBones[length].update();
        }
    }

    public Skeleton() {
    }
}
