package com.jme3.bullet.joints;

import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import jf.f;
import p000if.C13702E;

public class Point2PointJoint extends Constraint {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(Point2PointJoint.class.getName());
    private static final String tagDamping = "damping";
    private static final String tagImpulseClamp = "impulseClamp";
    private static final String tagTau = "tau";

    public Point2PointJoint() {
    }

    private static native long createJoint(long j10, long j11, Vector3f vector3f, Vector3f vector3f2);

    private void createJoint() {
        long createJoint;
        PhysicsRigidBody bodyA = getBodyA();
        long nativeId = bodyA.nativeId();
        PhysicsRigidBody bodyB = getBodyB();
        if (bodyB == null) {
            if (this.pivotB == null) {
                createJoint = createJoint1(nativeId, this.pivotA);
            } else {
                Vector3f physicsLocation = bodyA.getPhysicsLocation(null);
                Transform transform = new Transform();
                transform.setTranslation(physicsLocation);
                bodyA.getPhysicsRotation(transform.getRotation());
                bodyA.setPhysicsLocation(physicsLocation.add(this.pivotB.subtract(f.S(transform, this.pivotA, null))));
                long createJoint1 = createJoint1(nativeId, this.pivotA);
                bodyA.setPhysicsLocation(physicsLocation);
                createJoint = createJoint1;
            }
        } else {
            createJoint = createJoint(nativeId, bodyB.nativeId(), this.pivotA, this.pivotB);
        }
        setNativeId(createJoint);
    }

    private static native long createJoint1(long j10, Vector3f vector3f);

    private static native float getDamping(long j10);

    private static native float getImpulseClamp(long j10);

    private static native void getPivotInA(long j10, Vector3f vector3f);

    private static native void getPivotInB(long j10, Vector3f vector3f);

    private static native float getTau(long j10);

    private static native void setDamping(long j10, float f10);

    private static native void setImpulseClamp(long j10, float f10);

    private static native void setPivotInA(long j10, Vector3f vector3f);

    private static native void setPivotInB(long j10, Vector3f vector3f);

    private static native void setTau(long j10, float f10);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        Point2PointJoint point2PointJoint = (Point2PointJoint) obj;
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        createJoint();
        copyConstraintProperties(point2PointJoint);
        setDamping(point2PointJoint.getDamping());
        setImpulseClamp(point2PointJoint.getImpulseClamp());
        setTau(point2PointJoint.getTau());
    }

    public float getDamping() {
        return getDamping(nativeId());
    }

    public float getImpulseClamp() {
        return getImpulseClamp(nativeId());
    }

    public float getTau() {
        return getTau(nativeId());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        createJoint();
        readConstraintProperties(capsule);
        setDamping(capsule.readFloat(tagDamping, 1.0f));
        setTau(capsule.readFloat(tagTau, 0.3f));
        setImpulseClamp(capsule.readFloat(tagImpulseClamp, 0.0f));
    }

    public void setDamping(float f10) {
        setDamping(nativeId(), f10);
    }

    public void setImpulseClamp(float f10) {
        setImpulseClamp(nativeId(), f10);
    }

    @Override
    public void setPivotInA(Vector3f vector3f) {
        C13702E.t(vector3f, "location");
        setPivotInA(nativeId(), vector3f);
        super.setPivotInA(vector3f);
    }

    @Override
    public void setPivotInB(Vector3f vector3f) {
        C13702E.t(vector3f, "location");
        if (this.pivotB != null) {
            setPivotInB(nativeId(), vector3f);
            super.setPivotInB(vector3f);
            return;
        }
        throw new IllegalStateException("The Point2PointJoint doesn't have a B end.");
    }

    public void setTau(float f10) {
        setTau(nativeId(), f10);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(getDamping(), tagDamping, 1.0f);
        capsule.write(getTau(), tagTau, 0.3f);
        capsule.write(getImpulseClamp(), tagImpulseClamp, 0.0f);
    }

    public Point2PointJoint(PhysicsRigidBody physicsRigidBody, Vector3f vector3f) {
        super(physicsRigidBody, JointEnd.A, vector3f);
        createJoint();
    }

    public Point2PointJoint(PhysicsRigidBody physicsRigidBody, Vector3f vector3f, Vector3f vector3f2) {
        super(physicsRigidBody, JointEnd.A, vector3f, vector3f2);
        createJoint();
    }

    public Point2PointJoint(PhysicsRigidBody physicsRigidBody, PhysicsRigidBody physicsRigidBody2, Vector3f vector3f, Vector3f vector3f2) {
        super(physicsRigidBody, physicsRigidBody2, vector3f, vector3f2);
        createJoint();
    }
}
