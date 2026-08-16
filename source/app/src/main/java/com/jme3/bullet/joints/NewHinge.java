package com.jme3.bullet.joints;

import com.jme3.bullet.RotationOrder;
import com.jme3.bullet.joints.motors.MotorParam;
import com.jme3.bullet.joints.motors.RotationMotor;
import com.jme3.bullet.joints.motors.TranslationMotor;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix3f;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import jf.f;

public class NewHinge extends New6Dof {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger3 = Logger.getLogger(NewHinge.class.getName());
    private static final String tagAxis1 = "axis1";
    private static final String tagAxis2 = "axis2";
    private Vector3f axis1;
    private Vector3f axis2;

    public NewHinge() {
    }

    private static Vector3f pivotInBody(PhysicsRigidBody physicsRigidBody, Vector3f vector3f) {
        Transform transform = physicsRigidBody.getTransform(null);
        transform.setScale(1.0f);
        return f.U(transform, vector3f, null);
    }

    private static Matrix3f rotInBody(PhysicsRigidBody physicsRigidBody, Vector3f vector3f, Vector3f vector3f2) {
        Vector3f normalize = vector3f.normalize();
        Vector3f normalize2 = vector3f2.normalize();
        Vector3f cross = normalize.cross(normalize2);
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.fromAxes(normalize2, cross, normalize);
        Matrix3f physicsRotationMatrix = physicsRigidBody.getPhysicsRotationMatrix(null);
        physicsRotationMatrix.invert(null);
        return physicsRotationMatrix.mult(matrix3f, (Matrix3f) null);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        this.axis1 = (Vector3f) cloner.clone(this.axis1);
        this.axis2 = (Vector3f) cloner.clone(this.axis2);
    }

    public Vector3f getAnchor(Vector3f vector3f) {
        return calculatedOriginA(vector3f);
    }

    public Vector3f getAnchor2(Vector3f vector3f) {
        return calculatedOriginB(vector3f);
    }

    public float getAngle1() {
        return getAngles(null).f81613z;
    }

    public float getAngle2() {
        return getAngles(null).f81611x;
    }

    public Vector3f getAxis1(Vector3f vector3f) {
        return vector3f == null ? this.axis1.m1292clone() : vector3f.set(this.axis1);
    }

    public Vector3f getAxis2(Vector3f vector3f) {
        return vector3f == null ? this.axis2.m1292clone() : vector3f.set(this.axis2);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.axis1 = (Vector3f) capsule.readSavable(tagAxis1, null);
        this.axis2 = (Vector3f) capsule.readSavable(tagAxis2, null);
    }

    public final void setLowerLimit(float f10) {
        RotationMotor rotationMotor = getRotationMotor(0);
        MotorParam motorParam = MotorParam.LowerLimit;
        rotationMotor.set(motorParam, 1.0f);
        getRotationMotor(1).set(motorParam, 0.0f);
        getRotationMotor(2).set(motorParam, f10);
    }

    public final void setUpperLimit(float f10) {
        RotationMotor rotationMotor = getRotationMotor(0);
        MotorParam motorParam = MotorParam.UpperLimit;
        rotationMotor.set(motorParam, -1.0f);
        getRotationMotor(1).set(motorParam, 0.0f);
        getRotationMotor(2).set(motorParam, f10);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.axis1, tagAxis1, (Savable) null);
        capsule.write(this.axis2, tagAxis2, (Savable) null);
    }

    public NewHinge(PhysicsRigidBody physicsRigidBody, PhysicsRigidBody physicsRigidBody2, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        super(physicsRigidBody, physicsRigidBody2, pivotInBody(physicsRigidBody, vector3f), pivotInBody(physicsRigidBody2, vector3f), rotInBody(physicsRigidBody, vector3f2, vector3f3), rotInBody(physicsRigidBody2, vector3f2, vector3f3), RotationOrder.XYZ);
        this.axis1 = vector3f2.m1292clone();
        this.axis2 = vector3f3.m1292clone();
        TranslationMotor translationMotor = super.getTranslationMotor();
        translationMotor.set(MotorParam.LowerLimit, new Vector3f(0.0f, 0.0f, -1.0f));
        translationMotor.set(MotorParam.UpperLimit, new Vector3f(0.0f, 0.0f, 1.0f));
        setLowerLimit(-0.7853982f);
        setUpperLimit(0.7853982f);
        super.enableSpring(2, true);
        super.set(MotorParam.Damping, 2, 0.01f);
        super.set(MotorParam.Stiffness, 2, 39.47842f);
        super.setEquilibriumPoint();
    }
}
