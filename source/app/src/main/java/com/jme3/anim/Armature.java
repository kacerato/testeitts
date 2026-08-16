package com.jme3.anim;

import com.jme3.anim.util.JointModelTransform;
import com.jme3.asset.AssetLoadException;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix4f;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Armature implements JmeCloneable, Savable {
    private Joint[] jointList;
    private Class<? extends JointModelTransform> modelTransformClass = SeparateJointModelTransform.class;
    private Joint[] rootJoints;
    private transient Matrix4f[] skinningMatrixes;

    public Armature() {
    }

    private void createSkinningMatrices() {
        this.skinningMatrixes = new Matrix4f[this.jointList.length];
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

    private void instantiateJointModelTransform(Joint joint) {
        try {
            joint.setJointModelTransform(this.modelTransformClass.getDeclaredConstructor(null).newInstance(null));
        } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | SecurityException | InvocationTargetException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public void applyBindPose() {
        for (Joint joint : this.rootJoints) {
            joint.applyBindPose();
        }
    }

    public void applyInitialPose() {
        for (Joint joint : this.rootJoints) {
            joint.applyInitialPose();
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.rootJoints = (Joint[]) cloner.clone(this.rootJoints);
        this.jointList = (Joint[]) cloner.clone(this.jointList);
        this.skinningMatrixes = (Matrix4f[]) cloner.clone(this.skinningMatrixes);
        for (Joint joint : this.jointList) {
            instantiateJointModelTransform(joint);
        }
    }

    public Matrix4f[] computeSkinningMatrices() {
        int i10 = 0;
        while (true) {
            Joint[] jointArr = this.jointList;
            if (i10 >= jointArr.length) {
                return this.skinningMatrixes;
            }
            jointArr[i10].getOffsetTransform(this.skinningMatrixes[i10]);
            i10++;
        }
    }

    public Joint getJoint(int i10) {
        return this.jointList[i10];
    }

    public int getJointCount() {
        return this.jointList.length;
    }

    public int getJointIndex(Joint joint) {
        int i10 = 0;
        while (true) {
            Joint[] jointArr = this.jointList;
            if (i10 >= jointArr.length) {
                return -1;
            }
            if (jointArr[i10] == joint) {
                return i10;
            }
            i10++;
        }
    }

    public List<Joint> getJointList() {
        return Arrays.asList(this.jointList);
    }

    public Joint[] getRoots() {
        return this.rootJoints;
    }

    @Override
    public Object jmeClone() {
        try {
            return (Armature) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        Savable[] readSavableArray = capsule.readSavableArray("rootJoints", null);
        Joint[] jointArr = new Joint[readSavableArray.length];
        this.rootJoints = jointArr;
        System.arraycopy(readSavableArray, 0, jointArr, 0, readSavableArray.length);
        Savable[] readSavableArray2 = capsule.readSavableArray("jointList", null);
        Joint[] jointArr2 = new Joint[readSavableArray2.length];
        this.jointList = jointArr2;
        System.arraycopy(readSavableArray2, 0, jointArr2, 0, readSavableArray2.length);
        String readString = capsule.readString("modelTransformClass", MatrixJointModelTransform.class.getCanonicalName());
        try {
            this.modelTransformClass = Class.forName(readString);
            Joint[] jointArr3 = this.jointList;
            int length = jointArr3.length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                Joint joint = jointArr3[i10];
                joint.setId(i11);
                instantiateJointModelTransform(joint);
                i10++;
                i11++;
            }
            createSkinningMatrices();
            for (Joint joint2 : this.rootJoints) {
                joint2.update();
            }
            applyInitialPose();
        } catch (ClassNotFoundException unused) {
            throw new AssetLoadException("Cannot find class for name " + readString);
        }
    }

    public void saveBindPose() {
        update();
        for (Joint joint : this.jointList) {
            joint.saveBindPose();
        }
    }

    public void saveInitialPose() {
        for (Joint joint : this.jointList) {
            joint.saveInitialPose();
        }
    }

    public void setModelTransformClass(Class<? extends JointModelTransform> cls) {
        this.modelTransformClass = cls;
        Joint[] jointArr = this.jointList;
        if (jointArr == null) {
            return;
        }
        for (Joint joint : jointArr) {
            instantiateJointModelTransform(joint);
        }
    }

    public void update() {
        for (Joint joint : this.rootJoints) {
            joint.update();
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.rootJoints, "rootJoints", (Savable[]) null);
        capsule.write(this.jointList, "jointList", (Savable[]) null);
        capsule.write(this.modelTransformClass.getCanonicalName(), "modelTransformClass", MatrixJointModelTransform.class.getCanonicalName());
    }

    public Joint getJoint(String str) {
        int i10 = 0;
        while (true) {
            Joint[] jointArr = this.jointList;
            if (i10 >= jointArr.length) {
                return null;
            }
            if (jointArr[i10].getName().equals(str)) {
                return this.jointList[i10];
            }
            i10++;
        }
    }

    public Armature(Joint[] jointArr) {
        this.jointList = jointArr;
        ArrayList arrayList = new ArrayList();
        for (int length = jointArr.length - 1; length >= 0; length--) {
            Joint joint = jointArr[length];
            joint.setId(length);
            instantiateJointModelTransform(joint);
            if (joint.getParent() == null) {
                arrayList.add(joint);
            }
        }
        this.rootJoints = (Joint[]) arrayList.toArray(new Joint[arrayList.size()]);
        createSkinningMatrices();
        for (int length2 = this.rootJoints.length - 1; length2 >= 0; length2--) {
            this.rootJoints[length2].update();
        }
    }

    public int getJointIndex(String str) {
        int i10 = 0;
        while (true) {
            Joint[] jointArr = this.jointList;
            if (i10 >= jointArr.length) {
                return -1;
            }
            if (jointArr[i10].getName().equals(str)) {
                return i10;
            }
            i10++;
        }
    }
}
