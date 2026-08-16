package com.jme3.bullet.animation;

import com.jme3.bullet.joints.New6Dof;
import com.jme3.bullet.joints.PhysicsJoint;
import com.jme3.bullet.joints.SixDofJoint;
import com.jme3.bullet.joints.motors.MotorParam;
import com.jme3.bullet.joints.motors.RotationMotor;
import com.jme3.bullet.joints.motors.RotationalLimitMotor;
import com.jme3.bullet.joints.motors.TranslationMotor;
import com.jme3.bullet.joints.motors.TranslationalLimitMotor;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.C13702E;

public class RangeOfMotion implements Savable {
    private static final String tagMaxX = "maxX";
    private static final String tagMaxY = "maxY";
    private static final String tagMaxZ = "maxZ";
    private static final String tagMinX = "minX";
    private static final String tagMinY = "minY";
    private static final String tagMinZ = "minZ";
    private float maxX;
    private float maxY;
    private float maxZ;
    private float minX;
    private float minY;
    private float minZ;
    public static final Logger logger = Logger.getLogger(RangeOfMotion.class.getName());
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);
    private static final Vector3f maxMotorForces = new Vector3f(1.0E8f, 1.0E8f, 1.0E8f);

    public RangeOfMotion() {
        this.maxX = 0.0f;
        this.minX = 0.0f;
        this.maxY = 0.0f;
        this.minY = 0.0f;
        this.maxZ = 0.0f;
        this.minZ = 0.0f;
    }

    public float getMaxRotation(int i10) {
        if (i10 == 0) {
            return this.maxX;
        }
        if (i10 == 1) {
            return this.maxY;
        }
        if (i10 == 2) {
            return this.maxZ;
        }
        throw new IllegalArgumentException("axisIndex = " + i10);
    }

    public float getMinRotation(int i10) {
        if (i10 == 0) {
            return this.minX;
        }
        if (i10 == 1) {
            return this.minY;
        }
        if (i10 == 2) {
            return this.minZ;
        }
        throw new IllegalArgumentException("axisIndex = " + i10);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.maxX = capsule.readFloat(tagMaxX, 0.0f);
        this.minX = capsule.readFloat(tagMinX, 0.0f);
        this.maxY = capsule.readFloat(tagMaxY, 0.0f);
        this.minY = capsule.readFloat(tagMinY, 0.0f);
        this.maxZ = capsule.readFloat(tagMaxZ, 0.0f);
        this.minZ = capsule.readFloat(tagMinZ, 0.0f);
    }

    public void setup(PhysicsJoint physicsJoint, boolean z10, boolean z11, boolean z12) {
        if (physicsJoint instanceof New6Dof) {
            setupNew6Dof((New6Dof) physicsJoint, z10, z11, z12);
        } else {
            setupJoint((SixDofJoint) physicsJoint, z10, z11, z12);
        }
    }

    public void setupJoint(SixDofJoint sixDofJoint, boolean z10, boolean z11, boolean z12) {
        C13702E.t(sixDofJoint, "joint");
        Vector3f vector3f = new Vector3f(this.minX, this.minY, this.minZ);
        Vector3f vector3f2 = new Vector3f(this.maxX, this.maxY, this.maxZ);
        RotationalLimitMotor rotationalLimitMotor = sixDofJoint.getRotationalLimitMotor(0);
        if (z10) {
            float angle = rotationalLimitMotor.getAngle();
            vector3f.f81611x = angle;
            vector3f2.f81611x = angle;
        }
        rotationalLimitMotor.setLowerLimit(vector3f.f81611x);
        rotationalLimitMotor.setUpperLimit(vector3f2.f81611x);
        RotationalLimitMotor rotationalLimitMotor2 = sixDofJoint.getRotationalLimitMotor(1);
        if (z11) {
            float angle2 = rotationalLimitMotor2.getAngle();
            vector3f.f81612y = angle2;
            vector3f2.f81612y = angle2;
        }
        rotationalLimitMotor2.setLowerLimit(vector3f.f81612y);
        rotationalLimitMotor2.setUpperLimit(vector3f2.f81612y);
        RotationalLimitMotor rotationalLimitMotor3 = sixDofJoint.getRotationalLimitMotor(2);
        if (z12) {
            float angle3 = rotationalLimitMotor3.getAngle();
            vector3f.f81613z = angle3;
            vector3f2.f81613z = angle3;
        }
        rotationalLimitMotor3.setLowerLimit(vector3f.f81613z);
        rotationalLimitMotor3.setUpperLimit(vector3f2.f81613z);
        sixDofJoint.setAngularLowerLimit(vector3f);
        sixDofJoint.setAngularUpperLimit(vector3f2);
        for (int i10 = 0; i10 < 3; i10++) {
            RotationalLimitMotor rotationalLimitMotor4 = sixDofJoint.getRotationalLimitMotor(i10);
            Vector3f vector3f3 = maxMotorForces;
            rotationalLimitMotor4.setMaxMotorForce(vector3f3.f81611x);
            rotationalLimitMotor4.setMaxLimitForce(vector3f3.f81611x * 10.0f);
        }
        Vector3f vector3f4 = translateIdentity;
        sixDofJoint.setLinearLowerLimit(vector3f4);
        sixDofJoint.setLinearUpperLimit(vector3f4);
        TranslationalLimitMotor translationalLimitMotor = sixDofJoint.getTranslationalLimitMotor();
        translationalLimitMotor.setLowerLimit(vector3f4);
        translationalLimitMotor.setMaxMotorForce(maxMotorForces);
        translationalLimitMotor.setUpperLimit(vector3f4);
    }

    public void setupNew6Dof(New6Dof new6Dof, boolean z10, boolean z11, boolean z12) {
        Vector3f angles = new6Dof.getAngles(null);
        Vector3f vector3f = new Vector3f(this.minX, this.minY, this.minZ);
        Vector3f vector3f2 = new Vector3f(this.maxX, this.maxY, this.maxZ);
        if (z10) {
            vector3f.f81611x = angles.f81611x;
            vector3f2.f81611x = angles.f81611x;
        }
        RotationMotor rotationMotor = new6Dof.getRotationMotor(0);
        MotorParam motorParam = MotorParam.Equilibrium;
        rotationMotor.set(motorParam, (vector3f.f81611x + vector3f2.f81611x) * 0.5f);
        MotorParam motorParam2 = MotorParam.LowerLimit;
        rotationMotor.set(motorParam2, vector3f.f81611x);
        MotorParam motorParam3 = MotorParam.UpperLimit;
        rotationMotor.set(motorParam3, vector3f2.f81611x);
        rotationMotor.setSpringEnabled(z10);
        if (z11) {
            vector3f.f81612y = angles.f81612y;
            vector3f2.f81612y = angles.f81612y;
        }
        RotationMotor rotationMotor2 = new6Dof.getRotationMotor(1);
        rotationMotor2.set(motorParam, (vector3f.f81612y + vector3f2.f81612y) * 0.5f);
        rotationMotor2.set(motorParam2, vector3f.f81612y);
        rotationMotor2.set(motorParam3, vector3f2.f81612y);
        rotationMotor2.setSpringEnabled(z11);
        if (z12) {
            vector3f.f81613z = angles.f81613z;
            vector3f2.f81613z = angles.f81613z;
        }
        RotationMotor rotationMotor3 = new6Dof.getRotationMotor(2);
        rotationMotor3.set(motorParam, (vector3f.f81613z + vector3f2.f81613z) * 0.5f);
        rotationMotor3.set(motorParam2, vector3f.f81613z);
        rotationMotor3.set(motorParam3, vector3f2.f81613z);
        rotationMotor3.setSpringEnabled(z12);
        for (int i10 = 0; i10 < 3; i10++) {
            new6Dof.getRotationMotor(i10).set(MotorParam.MaxMotorForce, maxMotorForces.f81611x);
        }
        TranslationMotor translationMotor = new6Dof.getTranslationMotor();
        MotorParam motorParam4 = MotorParam.LowerLimit;
        Vector3f vector3f3 = translateIdentity;
        translationMotor.set(motorParam4, vector3f3);
        translationMotor.set(MotorParam.MaxMotorForce, maxMotorForces);
        translationMotor.set(MotorParam.UpperLimit, vector3f3);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.maxX, tagMaxX, 0.0f);
        capsule.write(this.minX, tagMinX, 0.0f);
        capsule.write(this.maxY, tagMaxY, 0.0f);
        capsule.write(this.minY, tagMinY, 0.0f);
        capsule.write(this.maxZ, tagMaxZ, 0.0f);
        capsule.write(this.minZ, tagMinZ, 0.0f);
    }

    public RangeOfMotion(Vector3f vector3f) {
        this.maxX = 0.0f;
        this.minX = 0.0f;
        this.maxY = 0.0f;
        this.minY = 0.0f;
        this.maxZ = 0.0f;
        this.minZ = 0.0f;
        C13702E.t(vector3f, "angles");
        C13702E.h(vector3f.f81611x, "X rotation", -3.1415927f, 3.1415927f);
        C13702E.h(vector3f.f81612y, "Y rotation", -3.1415927f, 3.1415927f);
        C13702E.h(vector3f.f81613z, "Z rotation", -3.1415927f, 3.1415927f);
        float f10 = vector3f.f81611x;
        this.maxX = f10;
        this.minX = f10;
        float f11 = vector3f.f81612y;
        this.maxY = f11;
        this.minY = f11;
        float f12 = vector3f.f81613z;
        this.maxZ = f12;
        this.minZ = f12;
    }

    public RangeOfMotion(float f10, float f11, float f12, float f13, float f14, float f15) {
        this.maxX = 0.0f;
        this.minX = 0.0f;
        this.maxY = 0.0f;
        this.minY = 0.0f;
        this.maxZ = 0.0f;
        this.minZ = 0.0f;
        C13702E.h(f10, "max X rotation", f11, 3.1415927f);
        C13702E.h(f11, "min X rotation", -3.1415927f, f10);
        C13702E.h(f12, "max Y rotation", f13, 3.1415927f);
        C13702E.h(f13, "min Y rotation", -3.1415927f, f12);
        C13702E.h(f14, "max Z rotation", f15, 3.1415927f);
        C13702E.h(f15, "min Z rotation", -3.1415927f, f14);
        this.maxX = f10;
        this.minX = f11;
        this.maxY = f12;
        this.minY = f13;
        this.maxZ = f14;
        this.minZ = f15;
    }

    public RangeOfMotion(float f10, float f11, float f12) {
        this.maxX = 0.0f;
        this.minX = 0.0f;
        this.maxY = 0.0f;
        this.minY = 0.0f;
        this.maxZ = 0.0f;
        this.minZ = 0.0f;
        C13702E.h(f10, "max X rotation", 0.0f, 3.1415927f);
        C13702E.h(f11, "max Y rotation", 0.0f, 3.1415927f);
        C13702E.h(f12, "max Z rotation", 0.0f, 3.1415927f);
        this.maxX = f10;
        this.minX = -f10;
        this.maxY = f11;
        this.minY = -f11;
        this.maxZ = f12;
        this.minZ = -f12;
    }

    public RangeOfMotion(float f10) {
        this.maxX = 0.0f;
        this.minX = 0.0f;
        this.maxY = 0.0f;
        this.minY = 0.0f;
        this.maxZ = 0.0f;
        this.minZ = 0.0f;
        C13702E.h(0.0f, "max rotation", 0.0f, 3.1415927f);
        this.maxX = f10;
        float f11 = -f10;
        this.minX = f11;
        this.maxY = f10;
        this.minY = f11;
        this.maxZ = f10;
        this.minZ = f11;
    }

    public RangeOfMotion(int i10) {
        this.maxX = 0.0f;
        this.minX = 0.0f;
        this.maxY = 0.0f;
        this.minY = 0.0f;
        this.maxZ = 0.0f;
        this.minZ = 0.0f;
        if (i10 == 0) {
            this.maxX = 1.0f;
            this.minX = -1.0f;
            return;
        }
        if (i10 == 1) {
            this.maxY = 1.0f;
            this.minY = -1.0f;
        } else if (i10 == 2) {
            this.maxZ = 1.0f;
            this.minZ = -1.0f;
        } else {
            throw new IllegalArgumentException("axisIndex = " + i10);
        }
    }
}
