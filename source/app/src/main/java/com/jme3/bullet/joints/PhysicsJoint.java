package com.jme3.bullet.joints;

import android.provider.Telephony;
import com.jme3.bullet.NativePhysicsObject;
import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.objects.PhysicsBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.C13702E;
import yd.C16181m;

public abstract class PhysicsJoint extends NativePhysicsObject implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(PhysicsJoint.class.getName());
    private static final String tagNodeA = "nodeA";
    private static final String tagNodeB = "nodeB";
    private PhysicsBody bodyA = null;
    private PhysicsBody bodyB = null;
    private PhysicsSpace space = null;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$bullet$joints$JointEnd;

        static {
            int[] iArr = new int[JointEnd.values().length];
            $SwitchMap$com$jme3$bullet$joints$JointEnd = iArr;
            try {
                iArr[JointEnd.A.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$bullet$joints$JointEnd[JointEnd.B.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public void cloneFields(Cloner cloner, Object obj) {
        PhysicsJoint physicsJoint = (PhysicsJoint) obj;
        PhysicsBody physicsBody = physicsJoint.bodyA;
        PhysicsBody physicsBody2 = (PhysicsBody) cloner.clone(physicsBody);
        this.bodyA = physicsBody2;
        if (physicsBody2 != null && !physicsBody2.hasAssignedNativeObject()) {
            this.bodyA.cloneFields(cloner, physicsBody);
        }
        PhysicsBody physicsBody3 = physicsJoint.bodyB;
        PhysicsBody physicsBody4 = (PhysicsBody) cloner.clone(physicsBody3);
        this.bodyB = physicsBody4;
        if (physicsBody4 != null && !physicsBody4.hasAssignedNativeObject()) {
            this.bodyB.cloneFields(cloner, physicsBody3);
        }
        this.space = null;
    }

    public int countEnds() {
        return (this.bodyA == null || this.bodyB == null) ? 1 : 2;
    }

    public void destroy() {
        PhysicsBody physicsBody = this.bodyA;
        if (physicsBody != null) {
            physicsBody.removeJoint(this);
        }
        PhysicsBody physicsBody2 = this.bodyB;
        if (physicsBody2 != null) {
            physicsBody2.removeJoint(this);
        }
    }

    public JointEnd findEnd(PhysicsBody physicsBody) {
        C13702E.t(physicsBody, Telephony.TextBasedSmsColumns.BODY);
        if (physicsBody == this.bodyA) {
            return JointEnd.A;
        }
        if (physicsBody == this.bodyB) {
            return JointEnd.B;
        }
        return null;
    }

    public PhysicsBody findOtherBody(PhysicsBody physicsBody) {
        C13702E.t(physicsBody, Telephony.TextBasedSmsColumns.BODY);
        PhysicsBody physicsBody2 = this.bodyA;
        if (physicsBody == physicsBody2) {
            return this.bodyB;
        }
        if (physicsBody == this.bodyB) {
            return physicsBody2;
        }
        return null;
    }

    public PhysicsBody getBody(JointEnd jointEnd) {
        C13702E.t(jointEnd, "end");
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$bullet$joints$JointEnd[jointEnd.ordinal()];
        if (i10 == 1) {
            return this.bodyA;
        }
        if (i10 == 2) {
            return this.bodyB;
        }
        throw new IllegalArgumentException("end = " + ((Object) jointEnd));
    }

    public PhysicsBody getBodyA() {
        return this.bodyA;
    }

    public PhysicsBody getBodyB() {
        return this.bodyB;
    }

    public PhysicsSpace getPhysicsSpace() {
        return this.space;
    }

    public abstract boolean isEnabled();

    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.bodyA = (PhysicsBody) capsule.readSavable(tagNodeA, null);
        this.bodyB = (PhysicsBody) capsule.readSavable(tagNodeB, null);
    }

    public final void setBodyA(PhysicsBody physicsBody) {
        this.bodyA = physicsBody;
    }

    public final void setBodyB(PhysicsBody physicsBody) {
        this.bodyB = physicsBody;
    }

    @Override
    public void setNativeId(long j10) {
        super.setNativeId(j10);
        logger.log(Level.FINE, "Created {0}.", this);
    }

    public void setPhysicsSpace(PhysicsSpace physicsSpace) {
        this.space = physicsSpace;
    }

    @Override
    public String toString() {
        String replace = getClass().getSimpleName().replace("Joint", "").replace("Physics", "").replace("Point", "P").replace("Six", "6");
        if (!hasAssignedNativeObject()) {
            return replace + "#unassigned";
        }
        return replace + C16181m.f130230g + Long.toHexString(nativeId());
    }

    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.bodyA, tagNodeA, (Savable) null);
        capsule.write(this.bodyB, tagNodeB, (Savable) null);
    }

    @Override
    public PhysicsJoint jmeClone() {
        try {
            PhysicsJoint physicsJoint = (PhysicsJoint) clone();
            physicsJoint.unassignNativeObject();
            return physicsJoint;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }
}
