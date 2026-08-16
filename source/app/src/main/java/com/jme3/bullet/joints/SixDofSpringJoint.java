package com.jme3.bullet.joints;

import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.Matrix3f;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.C13702E;

public class SixDofSpringJoint extends SixDofJoint {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger3 = Logger.getLogger(SixDofSpringJoint.class.getName());
    private static final String tagDof = "Dof";
    private static final String tagSpringDamping = "_SpringDamping";
    private static final String tagStiffness = "_Stiffness";

    public SixDofSpringJoint() {
    }

    private static native void enableSpring(long j10, int i10, boolean z10);

    private static native float getDamping(long j10, int i10);

    private static native float getEquilibriumPoint(long j10, int i10);

    private static native float getStiffness(long j10, int i10);

    private static native boolean isSpringEnabled(long j10, int i10);

    private static native void setDamping(long j10, int i10, float f10);

    private static native void setEquilibriumPoint(long j10);

    private static native void setEquilibriumPoint(long j10, int i10);

    private static native void setStiffness(long j10, int i10, float f10);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        SixDofSpringJoint sixDofSpringJoint = (SixDofSpringJoint) obj;
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        for (int i10 = 0; i10 < 6; i10++) {
            setDamping(i10, sixDofSpringJoint.getDamping(i10));
            setStiffness(i10, sixDofSpringJoint.getStiffness(i10));
        }
    }

    @Override
    public native long createJoint(long j10, long j11, Vector3f vector3f, Matrix3f matrix3f, Vector3f vector3f2, Matrix3f matrix3f2, boolean z10);

    @Override
    public native long createJoint1(long j10, Vector3f vector3f, Matrix3f matrix3f, boolean z10);

    public void enableSpring(int i10, boolean z10) {
        C13702E.i(i10, "DOF index", 0, 5);
        enableSpring(nativeId(), i10, z10);
    }

    public float getDamping(int i10) {
        C13702E.i(i10, "DOF index", 0, 5);
        return getDamping(nativeId(), i10);
    }

    public float getEquilibriumPoint(int i10) {
        C13702E.i(i10, "DOF index", 0, 5);
        return getEquilibriumPoint(nativeId(), i10);
    }

    public float getStiffness(int i10) {
        C13702E.i(i10, "DOF index", 0, 5);
        return getStiffness(nativeId(), i10);
    }

    public boolean isSpringEnabled(int i10) {
        C13702E.i(i10, "DOF index", 0, 5);
        return isSpringEnabled(nativeId(), i10);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        for (int i10 = 0; i10 < 6; i10++) {
            String str = tagDof + i10;
            setDamping(i10, capsule.readFloat(str + tagSpringDamping, 1.0f));
            setStiffness(i10, capsule.readFloat(str + tagStiffness, 0.0f));
        }
    }

    public void setDamping(int i10, float f10) {
        C13702E.i(i10, "DOF index", 0, 5);
        setDamping(nativeId(), i10, f10);
    }

    public void setEquilibriumPoint() {
        setEquilibriumPoint(nativeId());
    }

    public void setStiffness(int i10, float f10) {
        C13702E.i(i10, "DOF index", 0, 5);
        setStiffness(nativeId(), i10, f10);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        for (int i10 = 0; i10 < 6; i10++) {
            String str = tagDof + i10;
            capsule.write(getDamping(i10), str + tagSpringDamping, 1.0f);
            capsule.write(getStiffness(i10), str + tagStiffness, 0.0f);
        }
    }

    public SixDofSpringJoint(PhysicsRigidBody physicsRigidBody, Vector3f vector3f, Vector3f vector3f2, Matrix3f matrix3f, Matrix3f matrix3f2, JointEnd jointEnd) {
        super(physicsRigidBody, vector3f, vector3f2, matrix3f, matrix3f2, jointEnd);
    }

    public SixDofSpringJoint(PhysicsRigidBody physicsRigidBody, PhysicsRigidBody physicsRigidBody2, Vector3f vector3f, Vector3f vector3f2, Matrix3f matrix3f, Matrix3f matrix3f2, boolean z10) {
        super(physicsRigidBody, physicsRigidBody2, vector3f, vector3f2, matrix3f, matrix3f2, z10);
    }

    public void setEquilibriumPoint(int i10) {
        C13702E.i(i10, "DOF index", 0, 5);
        setEquilibriumPoint(nativeId(), i10);
    }
}
