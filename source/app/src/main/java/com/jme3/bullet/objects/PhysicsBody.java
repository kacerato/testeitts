package com.jme3.bullet.objects;

import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.joints.PhysicsJoint;
import com.jme3.export.InputCapsule;
import com.jme3.export.OutputCapsule;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import p000if.C13702E;

public abstract class PhysicsBody extends PhysicsCollisionObject {
    static final boolean $assertionsDisabled = false;
    public static final float massForStatic = 0.0f;
    private static final String tagJoints = "joints";
    private ArrayList<PhysicsJoint> joints = new ArrayList<>(4);

    public static native float getDeactivationDeadline();

    public static native boolean isDeactivationEnabled();

    public static native void setDeactivationDeadline(float f10);

    public static native void setDeactivationEnabled(boolean z10);

    public void addJoint(PhysicsJoint physicsJoint) {
        C13702E.t(physicsJoint, "joint");
        if (this.joints.contains(physicsJoint)) {
            return;
        }
        this.joints.add(physicsJoint);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        this.joints = new ArrayList<>(4);
    }

    public void cloneJoints(Cloner cloner, PhysicsBody physicsBody) {
        this.joints = new ArrayList<>(this.joints.size());
        Iterator<PhysicsJoint> it = physicsBody.joints.iterator();
        while (it.hasNext()) {
            PhysicsJoint next = it.next();
            if (next.countEnds() == 1) {
                addJoint((PhysicsJoint) cloner.clone(next));
            } else {
                PhysicsBody physicsBody2 = (PhysicsBody) cloner.clone(next.findOtherBody(physicsBody));
                if (physicsBody2.hasAssignedNativeObject()) {
                    PhysicsJoint physicsJoint = (PhysicsJoint) cloner.clone(next);
                    if (!physicsJoint.hasAssignedNativeObject()) {
                        physicsJoint.cloneFields(cloner, next);
                    }
                    physicsBody2.addJoint(physicsJoint);
                    addJoint(physicsJoint);
                }
            }
        }
    }

    public int countJoints() {
        return this.joints.size();
    }

    public abstract Vector3f getGravity(Vector3f vector3f);

    public abstract float getMass();

    public PhysicsJoint[] listJoints() {
        PhysicsJoint[] physicsJointArr = new PhysicsJoint[this.joints.size()];
        this.joints.toArray(physicsJointArr);
        return physicsJointArr;
    }

    public void readJoints(InputCapsule inputCapsule) throws IOException {
        this.joints = inputCapsule.readSavableArrayList(tagJoints, null);
    }

    public void removeJoint(PhysicsJoint physicsJoint) {
        C13702E.t(physicsJoint, "joint");
        this.joints.remove(physicsJoint);
    }

    public abstract void setGravity(Vector3f vector3f);

    public abstract void setMass(float f10);

    public abstract void setPhysicsLocation(Vector3f vector3f);

    public void writeJoints(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.writeSavableArrayList(this.joints, tagJoints, null);
    }
}
