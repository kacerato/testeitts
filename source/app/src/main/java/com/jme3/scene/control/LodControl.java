package com.jme3.scene.control;

import com.jme3.bounding.BoundingVolume;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.FastMath;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Spatial;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;

public class LodControl extends AbstractControl implements Cloneable, JmeCloneable {
    private int numLevels;
    private int[] numTris;
    private float trisPerPixel = 1.0f;
    private float distTolerance = 1.0f;
    private float lastDistance = 0.0f;
    private int lastLevel = 0;

    @Override
    public void controlRender(RenderManager renderManager, ViewPort viewPort) {
        int i10;
        int i11;
        int i12;
        BoundingVolume worldBound = this.spatial.getWorldBound();
        Camera camera = viewPort.getCamera();
        float distanceTo = worldBound.distanceTo(viewPort.getCamera().getLocation()) / (3.1415927f / (FastMath.atan(camera.getFrustumNear() * camera.getFrustumTop()) * 8.0f));
        if (Math.abs(distanceTo - this.lastDistance) <= this.distTolerance) {
            i10 = this.lastLevel;
        } else {
            float f10 = this.lastDistance;
            if (f10 > distanceTo && (i12 = this.lastLevel) == 0) {
                i10 = i12;
            } else if (f10 >= distanceTo || (i11 = this.lastLevel) != this.numLevels - 1) {
                this.lastDistance = distanceTo;
                float calcScreenArea = AreaUtils.calcScreenArea(worldBound, distanceTo, camera.getWidth()) * this.trisPerPixel;
                int i13 = this.numLevels;
                int i14 = i13 - 1;
                while (true) {
                    i13--;
                    if (i13 < 0 || calcScreenArea - this.numTris[i13] < 0.0f) {
                        break;
                    } else {
                        i14 = i13;
                    }
                }
                this.lastLevel = i14;
                i10 = i14;
            } else {
                i10 = i11;
            }
        }
        this.spatial.setLodLevel(i10);
    }

    @Override
    public void controlUpdate(float f10) {
    }

    public float getDistTolerance() {
        return this.distTolerance;
    }

    public float getTrisPerPixel() {
        return this.trisPerPixel;
    }

    @Override
    public Object jmeClone() {
        LodControl lodControl = (LodControl) super.jmeClone();
        lodControl.lastDistance = 0.0f;
        lodControl.lastLevel = 0;
        int[] iArr = this.numTris;
        lodControl.numTris = iArr != null ? (int[]) iArr.clone() : null;
        return lodControl;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.trisPerPixel = capsule.readFloat("trisPerPixel", 1.0f);
        this.distTolerance = capsule.readFloat("distTolerance", 1.0f);
        this.numLevels = capsule.readInt("numLevels", 0);
        this.numTris = capsule.readIntArray("numTris", null);
    }

    public void setDistTolerance(float f10) {
        this.distTolerance = f10;
    }

    @Override
    public void setSpatial(Spatial spatial) {
        if (spatial != null && !(spatial instanceof Geometry)) {
            throw new IllegalArgumentException("LodControl can only be attached to Geometry!");
        }
        super.setSpatial(spatial);
        if (spatial == null) {
            this.numLevels = 0;
            this.numTris = null;
            return;
        }
        Mesh mesh = ((Geometry) spatial).getMesh();
        int numLodLevels = mesh.getNumLodLevels();
        this.numLevels = numLodLevels;
        this.numTris = new int[numLodLevels];
        for (int i10 = numLodLevels - 1; i10 >= 0; i10--) {
            this.numTris[i10] = mesh.getTriangleCount(i10);
        }
    }

    public void setTrisPerPixel(float f10) {
        this.trisPerPixel = f10;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.trisPerPixel, "trisPerPixel", 1.0f);
        capsule.write(this.distTolerance, "distTolerance", 1.0f);
        capsule.write(this.numLevels, "numLevels", 0);
        capsule.write(this.numTris, "numTris", (int[]) null);
    }
}
