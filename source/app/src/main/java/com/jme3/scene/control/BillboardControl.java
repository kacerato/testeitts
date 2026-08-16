package com.jme3.scene.control;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.FastMath;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import ga.m;
import java.io.IOException;

public class BillboardControl extends AbstractControl {
    private Matrix3f orient = new Matrix3f();
    private Vector3f look = new Vector3f();
    private Vector3f left = new Vector3f();
    private Alignment alignment = Alignment.Screen;

    public enum Alignment {
        Screen,
        Camera,
        AxialY,
        AxialZ
    }

    private void fixRefreshFlags() {
        this.spatial.updateGeometricState();
        Spatial spatial = this.spatial;
        while (spatial.getParent() != null) {
            spatial = spatial.getParent();
        }
        spatial.getWorldBound();
    }

    private void rotateAxial(Camera camera, Vector3f vector3f) {
        this.look.set(camera.getLocation()).subtractLocal(this.spatial.getWorldTranslation());
        this.spatial.getParent().getWorldRotation().mult(this.look, this.left);
        this.left.f81611x *= 1.0f / this.spatial.getWorldScale().f81611x;
        this.left.f81612y *= 1.0f / this.spatial.getWorldScale().f81612y;
        this.left.f81613z *= 1.0f / this.spatial.getWorldScale().f81613z;
        Vector3f vector3f2 = this.left;
        float f10 = vector3f2.f81611x;
        float f11 = vector3f2.f81613z;
        float f12 = (f10 * f10) + (f11 * f11);
        if (f12 < 1.1920929E-7f) {
            return;
        }
        float invSqrt = FastMath.invSqrt(f12);
        if (vector3f.f81612y == 1.0f) {
            Vector3f vector3f3 = this.left;
            vector3f3.f81611x *= invSqrt;
            vector3f3.f81612y = 0.0f;
            float f13 = vector3f3.f81613z * invSqrt;
            vector3f3.f81613z = f13;
            this.orient.set(0, 0, f13);
            this.orient.set(0, 1, 0.0f);
            this.orient.set(0, 2, this.left.f81611x);
            this.orient.set(1, 0, 0.0f);
            this.orient.set(1, 1, 1.0f);
            this.orient.set(1, 2, 0.0f);
            this.orient.set(2, 0, -this.left.f81611x);
            this.orient.set(2, 1, 0.0f);
            this.orient.set(2, 2, this.left.f81613z);
        } else if (vector3f.f81613z == 1.0f) {
            Vector3f vector3f4 = this.left;
            vector3f4.f81611x *= invSqrt;
            float f14 = vector3f4.f81612y * invSqrt;
            vector3f4.f81612y = f14;
            vector3f4.f81613z = 0.0f;
            this.orient.set(0, 0, f14);
            this.orient.set(0, 1, this.left.f81611x);
            this.orient.set(0, 2, 0.0f);
            this.orient.set(1, 0, -this.left.f81612y);
            this.orient.set(1, 1, this.left.f81611x);
            this.orient.set(1, 2, 0.0f);
            this.orient.set(2, 0, 0.0f);
            this.orient.set(2, 1, 0.0f);
            this.orient.set(2, 2, 1.0f);
        }
        this.spatial.setLocalRotation(this.orient);
        fixRefreshFlags();
    }

    private void rotateBillboard(Camera camera) {
        int ordinal = this.alignment.ordinal();
        if (ordinal == 0) {
            rotateScreenAligned(camera);
            return;
        }
        if (ordinal == 1) {
            rotateCameraAligned(camera);
        } else if (ordinal == 2) {
            rotateAxial(camera, Vector3f.UNIT_Y);
        } else {
            if (ordinal != 3) {
                return;
            }
            rotateAxial(camera, Vector3f.UNIT_Z);
        }
    }

    private void rotateCameraAligned(Camera camera) {
        this.look.set(camera.getLocation()).subtractLocal(this.spatial.getWorldTranslation());
        Vector3f vector3f = this.left;
        Vector3f vector3f2 = this.look;
        vector3f.set(vector3f2.f81611x, 0.0f, vector3f2.f81613z);
        if (vector3f.equals(Vector3f.ZERO)) {
            return;
        }
        this.look.normalizeLocal();
        vector3f.normalizeLocal();
        float dot = this.look.dot(vector3f);
        this.orient.set(0, 0, vector3f.f81613z);
        this.orient.set(0, 1, vector3f.f81611x * (-this.look.f81612y));
        this.orient.set(0, 2, vector3f.f81611x * dot);
        this.orient.set(1, 0, 0.0f);
        this.orient.set(1, 1, dot);
        this.orient.set(1, 2, this.look.f81612y);
        this.orient.set(2, 0, -vector3f.f81611x);
        this.orient.set(2, 1, vector3f.f81613z * (-this.look.f81612y));
        this.orient.set(2, 2, vector3f.f81613z * dot);
        this.spatial.setLocalRotation(this.orient);
        fixRefreshFlags();
    }

    private void rotateScreenAligned(Camera camera) {
        this.look.set(camera.getDirection()).negateLocal();
        this.left.set(camera.getLeft()).negateLocal();
        this.orient.fromAxes(this.left, camera.getUp(), this.look);
        Node parent = this.spatial.getParent();
        Quaternion fromRotationMatrix = new Quaternion().fromRotationMatrix(this.orient);
        if (parent != null) {
            fromRotationMatrix = parent.getWorldRotation().inverse().multLocal(fromRotationMatrix);
            fromRotationMatrix.normalizeLocal();
        }
        this.spatial.setLocalRotation(fromRotationMatrix);
        fixRefreshFlags();
    }

    @Override
    public void controlRender(RenderManager renderManager, ViewPort viewPort) {
        rotateBillboard(viewPort.getCamera());
    }

    @Override
    public void controlUpdate(float f10) {
    }

    public Alignment getAlignment() {
        return this.alignment;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.orient = (Matrix3f) capsule.readSavable("orient", null);
        this.look = (Vector3f) capsule.readSavable("look", null);
        this.left = (Vector3f) capsule.readSavable(m.f88234c, null);
        this.alignment = (Alignment) capsule.readEnum("alignment", Alignment.class, Alignment.Screen);
    }

    public void setAlignment(Alignment alignment) {
        this.alignment = alignment;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.orient, "orient", (Savable) null);
        capsule.write(this.look, "look", (Savable) null);
        capsule.write(this.left, m.f88234c, (Savable) null);
        capsule.write(this.alignment, "alignment", Alignment.Screen);
    }
}
