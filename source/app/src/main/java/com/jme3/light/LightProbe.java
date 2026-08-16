package com.jme3.light;

import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingSphere;
import com.jme3.bounding.BoundingVolume;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.light.Light;
import com.jme3.math.Matrix4f;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.scene.Spatial;
import com.jme3.texture.TextureCubeMap;
import com.jme3.util.TempVars;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LightProbe extends Light implements Savable {
    private int nbMipMaps;
    private TextureCubeMap prefilteredEnvMap;
    private Vector3f[] shCoefficients;
    private static final Logger logger = Logger.getLogger(LightProbe.class.getName());
    public static final Matrix4f FALLBACK_MATRIX = new Matrix4f(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f);
    private ProbeArea area = new SphereProbeArea(Vector3f.ZERO, 1.0f);
    private boolean ready = false;
    private Vector3f position = new Vector3f();

    public enum AreaType {
        Spherical,
        OrientedBox
    }

    @Override
    public void computeLastDistance(Spatial spatial) {
        if (spatial.getWorldBound() != null) {
            this.lastDistance = spatial.getWorldBound().distanceSquaredTo(this.position);
        } else {
            this.lastDistance = spatial.getWorldTranslation().distanceSquared(this.position);
        }
    }

    public ProbeArea getArea() {
        return this.area;
    }

    public AreaType getAreaType() {
        return this.area instanceof SphereProbeArea ? AreaType.Spherical : AreaType.OrientedBox;
    }

    @Deprecated
    public BoundingVolume getBounds() {
        return new BoundingSphere(this.area.getRadius(), ((SphereProbeArea) this.area).getCenter());
    }

    public int getNbMipMaps() {
        return this.nbMipMaps;
    }

    public Vector3f getPosition() {
        return this.position;
    }

    public TextureCubeMap getPrefilteredEnvMap() {
        return this.prefilteredEnvMap;
    }

    public Vector3f[] getShCoeffs() {
        return this.shCoefficients;
    }

    @Override
    public Light.Type getType() {
        return Light.Type.Probe;
    }

    public Matrix4f getUniformMatrix() {
        Matrix4f uniformMatrix = this.area.getUniformMatrix();
        uniformMatrix.m33 = this.nbMipMaps + (1.0f / this.area.getRadius());
        return uniformMatrix;
    }

    @Override
    public boolean intersectsBox(BoundingBox boundingBox, TempVars tempVars) {
        return this.area.intersectsBox(boundingBox, tempVars);
    }

    @Override
    public boolean intersectsFrustum(Camera camera, TempVars tempVars) {
        return this.area.intersectsFrustum(camera, tempVars);
    }

    @Override
    public boolean intersectsSphere(BoundingSphere boundingSphere, TempVars tempVars) {
        return this.area.intersectsSphere(boundingSphere, tempVars);
    }

    public boolean isReady() {
        return this.ready;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.prefilteredEnvMap = (TextureCubeMap) capsule.readSavable("prefilteredEnvMap", null);
        this.position = (Vector3f) capsule.readSavable("position", null);
        ProbeArea probeArea = (ProbeArea) capsule.readSavable("area", null);
        this.area = probeArea;
        if (probeArea == null) {
            BoundingSphere boundingSphere = (BoundingSphere) capsule.readSavable("bounds", new BoundingSphere(1.0f, Vector3f.ZERO));
            this.area = new SphereProbeArea(boundingSphere.getCenter(), boundingSphere.getRadius());
        }
        this.area.setCenter(this.position);
        this.nbMipMaps = capsule.readInt("nbMipMaps", 0);
        this.ready = capsule.readBoolean("ready", false);
        Savable[] readSavableArray = capsule.readSavableArray("shCoeffs", null);
        if (readSavableArray == null) {
            this.ready = false;
            logger.log(Level.WARNING, "LightProbe is missing parameters, it should be recomputed. Please use lightProbeFactory.updateProbe()");
        } else {
            this.shCoefficients = new Vector3f[readSavableArray.length];
            for (int i10 = 0; i10 < readSavableArray.length; i10++) {
                this.shCoefficients[i10] = (Vector3f) readSavableArray[i10];
            }
        }
    }

    public void setAreaType(AreaType areaType) {
        int ordinal = areaType.ordinal();
        if (ordinal == 0) {
            this.area = new SphereProbeArea(Vector3f.ZERO, 1.0f);
        } else if (ordinal == 1) {
            this.area = new OrientedBoxProbeArea(new Transform());
        }
        this.area.setCenter(this.position);
    }

    public void setNbMipMaps(int i10) {
        this.nbMipMaps = i10;
    }

    public void setPosition(Vector3f vector3f) {
        this.position.set(vector3f);
        this.area.setCenter(vector3f);
    }

    public void setPrefilteredMap(TextureCubeMap textureCubeMap) {
        this.prefilteredEnvMap = textureCubeMap;
    }

    public void setReady(boolean z10) {
        this.ready = z10;
    }

    public void setShCoeffs(Vector3f[] vector3fArr) {
        this.shCoefficients = vector3fArr;
    }

    public String toString() {
        return getClass().getSimpleName() + "[name=" + this.name + ", position=" + ((Object) this.position) + ", area=" + ((Object) this.area) + ", enabled=" + this.enabled + "]";
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.shCoefficients, "shCoeffs", (Savable[]) null);
        capsule.write(this.prefilteredEnvMap, "prefilteredEnvMap", (Savable) null);
        capsule.write(this.position, "position", (Savable) null);
        capsule.write(this.area, "area", new SphereProbeArea(Vector3f.ZERO, 1.0f));
        capsule.write(this.ready, "ready", false);
        capsule.write(this.nbMipMaps, "nbMipMaps", 0);
    }
}
