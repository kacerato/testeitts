package com.jme3.bullet.objects.infos;

import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.math.Matrix3f;
import com.jme3.math.Vector3f;
import com.simsilica.mathd.Vec3d;
import java.util.logging.Logger;

public class RigidBodySnapshot {
    public static final Logger logger = Logger.getLogger(RigidBodySnapshot.class.getName());
    private static final Vector3f scaleIdentity = new Vector3f(1.0f, 1.0f, 1.0f);
    private final float angularDamping;
    private final Vector3f angularFactor;
    private final float angularSleepingThreshold;
    private final Vec3d angularVelocity;
    private final Vector3f anisotropicFrictionComponents;
    private final int anisotropicFrictionModes;
    private final float ccdMotionThreshold;
    private final float ccdSweptSphereRadius;
    private Float contactDamping;
    private final float contactProcessingThreshold;
    private final boolean contactResponse;
    private Float contactStiffness;
    private final float deactivationTime;
    private final float friction;
    private final PhysicsCollisionObject[] ignoreList;
    private final float linearDamping;
    private final Vector3f linearFactor;
    private final float linearSleepingThreshold;
    private final Vec3d linearVelocity;
    private final Vec3d location;
    private final boolean protectGravity;
    private final float restitution;
    private final float rollingFriction;
    private final Matrix3f rotationMatrix;
    private final float spinningFriction;
    private final Vector3f totalAppliedForce;
    private final Vector3f totalAppliedTorque;
    private final int userIndex;
    private final int userIndex2;
    private final int userIndex3;

    public RigidBodySnapshot(PhysicsRigidBody physicsRigidBody) {
        boolean z10 = (physicsRigidBody.collisionFlags() & 128) != 0;
        this.contactResponse = physicsRigidBody.isContactResponse();
        this.protectGravity = physicsRigidBody.isGravityProtected();
        this.angularDamping = physicsRigidBody.getAngularDamping();
        this.angularSleepingThreshold = physicsRigidBody.getAngularSleepingThreshold();
        this.ccdMotionThreshold = physicsRigidBody.getCcdMotionThreshold();
        this.ccdSweptSphereRadius = physicsRigidBody.getCcdSweptSphereRadius();
        if (z10) {
            this.contactDamping = Float.valueOf(physicsRigidBody.getContactDamping());
        }
        this.contactProcessingThreshold = physicsRigidBody.getContactProcessingThreshold();
        if (z10) {
            this.contactStiffness = Float.valueOf(physicsRigidBody.getContactStiffness());
        }
        this.deactivationTime = physicsRigidBody.getDeactivationTime();
        this.friction = physicsRigidBody.getFriction();
        this.linearDamping = physicsRigidBody.getLinearDamping();
        this.linearSleepingThreshold = physicsRigidBody.getLinearSleepingThreshold();
        this.restitution = physicsRigidBody.getRestitution();
        this.rollingFriction = physicsRigidBody.getRollingFriction();
        this.spinningFriction = physicsRigidBody.getSpinningFriction();
        int i10 = 0;
        for (int i11 = 0; i11 < 2; i11++) {
            int i12 = 1 << i11;
            if (physicsRigidBody.hasAnisotropicFriction(i12)) {
                i10 |= i12;
            }
        }
        this.anisotropicFrictionModes = i10;
        this.userIndex = physicsRigidBody.userIndex();
        this.userIndex2 = physicsRigidBody.userIndex2();
        this.userIndex3 = physicsRigidBody.userIndex3();
        this.ignoreList = physicsRigidBody.listIgnoredPcos();
        this.rotationMatrix = physicsRigidBody.getPhysicsRotationMatrix(null);
        if (physicsRigidBody.isDynamic()) {
            this.angularVelocity = physicsRigidBody.getAngularVelocityDp(null);
            this.linearVelocity = physicsRigidBody.getLinearVelocityDp(null);
        } else {
            this.angularVelocity = new Vec3d();
            this.linearVelocity = new Vec3d();
        }
        this.location = physicsRigidBody.getPhysicsLocationDp(null);
        this.anisotropicFrictionComponents = physicsRigidBody.getAnisotropicFriction(null);
        this.angularFactor = physicsRigidBody.getAngularFactor(null);
        this.linearFactor = physicsRigidBody.getLinearFactor(null);
        this.totalAppliedForce = physicsRigidBody.totalAppliedForce(null);
        this.totalAppliedTorque = physicsRigidBody.totalAppliedTorque(null);
    }

    public void applyAllExceptIgnoreListTo(PhysicsRigidBody physicsRigidBody) {
        physicsRigidBody.setContactResponse(this.contactResponse);
        physicsRigidBody.setProtectGravity(this.protectGravity);
        physicsRigidBody.setAngularDamping(this.angularDamping);
        physicsRigidBody.setAngularSleepingThreshold(this.angularSleepingThreshold);
        physicsRigidBody.setCcdMotionThreshold(this.ccdMotionThreshold);
        physicsRigidBody.setCcdSweptSphereRadius(this.ccdSweptSphereRadius);
        Float f10 = this.contactDamping;
        if (f10 != null) {
            physicsRigidBody.setContactDamping(f10.floatValue());
        }
        physicsRigidBody.setContactProcessingThreshold(this.contactProcessingThreshold);
        Float f11 = this.contactStiffness;
        if (f11 != null) {
            physicsRigidBody.setContactStiffness(f11.floatValue());
        }
        physicsRigidBody.setFriction(this.friction);
        physicsRigidBody.setLinearDamping(this.linearDamping);
        physicsRigidBody.setLinearSleepingThreshold(this.linearSleepingThreshold);
        physicsRigidBody.setRestitution(this.restitution);
        physicsRigidBody.setRollingFriction(this.rollingFriction);
        physicsRigidBody.setSpinningFriction(this.spinningFriction);
        physicsRigidBody.setAnisotropicFriction(this.anisotropicFrictionComponents, this.anisotropicFrictionModes);
        physicsRigidBody.setUserIndex(this.userIndex);
        physicsRigidBody.setUserIndex2(this.userIndex2);
        physicsRigidBody.setUserIndex3(this.userIndex3);
        physicsRigidBody.setPhysicsRotation(this.rotationMatrix);
        physicsRigidBody.setPhysicsLocationDp(this.location);
        physicsRigidBody.clearForces();
        Vector3f vector3f = scaleIdentity;
        physicsRigidBody.setLinearFactor(vector3f);
        physicsRigidBody.applyCentralForce(this.totalAppliedForce);
        physicsRigidBody.setLinearFactor(this.linearFactor);
        physicsRigidBody.setAngularFactor(vector3f);
        physicsRigidBody.applyTorque(this.totalAppliedTorque);
        physicsRigidBody.setAngularFactor(this.angularFactor);
        if (physicsRigidBody.isDynamic()) {
            physicsRigidBody.setAngularVelocityDp(this.angularVelocity);
            physicsRigidBody.setLinearVelocityDp(this.linearVelocity);
        }
        physicsRigidBody.setDeactivationTime(this.deactivationTime);
    }

    public void applyTo(PhysicsRigidBody physicsRigidBody) {
        applyAllExceptIgnoreListTo(physicsRigidBody);
        physicsRigidBody.setIgnoreList(this.ignoreList);
    }
}
