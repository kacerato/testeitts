package com.jme3.light;

import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingSphere;
import com.jme3.bounding.Intersection;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.light.Light;
import com.jme3.math.ColorRGBA;
import com.jme3.math.FastMath;
import com.jme3.math.Plane;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.scene.Spatial;
import com.jme3.util.TempVars;
import java.io.IOException;

public class SpotLight extends Light {
    protected Vector3f direction;
    protected float invSpotRange;
    protected float outerAngleCos;
    protected float outerAngleCosSqr;
    protected float outerAngleSin;
    protected float outerAngleSinRcp;
    protected float outerAngleSinSqr;
    protected float packedAngleCos;
    protected Vector3f position;
    protected float spotInnerAngle;
    protected float spotOuterAngle;
    protected float spotRange;

    public SpotLight() {
        this.position = new Vector3f();
        this.direction = new Vector3f(0.0f, -1.0f, 0.0f);
        this.spotInnerAngle = 0.09817477f;
        this.spotOuterAngle = 0.1308997f;
        this.spotRange = 100.0f;
        this.invSpotRange = 0.01f;
        this.packedAngleCos = 0.0f;
        computeAngleParameters();
    }

    private void computeAngleParameters() {
        float cos = FastMath.cos(this.spotInnerAngle);
        float cos2 = FastMath.cos(this.spotOuterAngle);
        this.outerAngleCos = cos2;
        float f10 = (int) (cos * 1000.0f);
        this.packedAngleCos = f10;
        if (((int) f10) == ((int) (1000.0f * cos2))) {
            this.outerAngleCos = cos2 - 0.001f;
        }
        float f11 = f10 + this.outerAngleCos;
        this.packedAngleCos = f11;
        if (f11 == 0.0f) {
            throw new IllegalArgumentException("Packed angle cosine is invalid");
        }
        float sin = FastMath.sin(this.spotOuterAngle);
        this.outerAngleSin = sin;
        float f12 = this.outerAngleCos;
        this.outerAngleCosSqr = f12 * f12;
        this.outerAngleSinSqr = sin * sin;
        this.outerAngleSinRcp = 1.0f / sin;
    }

    @Override
    public void computeLastDistance(Spatial spatial) {
        if (spatial.getWorldBound() != null) {
            this.lastDistance = spatial.getWorldBound().distanceSquaredTo(this.position);
        } else {
            this.lastDistance = spatial.getWorldTranslation().distanceSquared(this.position);
        }
    }

    public Vector3f getDirection() {
        return this.direction;
    }

    public float getInvSpotRange() {
        return this.invSpotRange;
    }

    public float getPackedAngleCos() {
        return this.packedAngleCos;
    }

    public Vector3f getPosition() {
        return this.position;
    }

    public float getSpotInnerAngle() {
        return this.spotInnerAngle;
    }

    public float getSpotOuterAngle() {
        return this.spotOuterAngle;
    }

    public float getSpotRange() {
        return this.spotRange;
    }

    @Override
    public Light.Type getType() {
        return Light.Type.Spot;
    }

    @Override
    public boolean intersectsBox(BoundingBox boundingBox, TempVars tempVars) {
        float f10 = this.spotRange;
        if (f10 > 0.0f && !Intersection.intersect(boundingBox, this.position, f10)) {
            return false;
        }
        Vector3f center = boundingBox.getCenter();
        Vector3f vector3f = tempVars.vect4;
        vector3f.set(boundingBox.getXExtent(), boundingBox.getYExtent(), boundingBox.getZExtent());
        float lengthSquared = vector3f.lengthSquared();
        Vector3f subtract = center.subtract(this.position.subtract(this.direction.mult(FastMath.sqrt(lengthSquared) * this.outerAngleSinRcp, tempVars.vect1), tempVars.vect2), tempVars.vect3);
        float dot = subtract.dot(subtract);
        float dot2 = this.direction.dot(subtract);
        if (dot2 <= 0.0f || dot2 * dot2 < dot * this.outerAngleCosSqr) {
            return false;
        }
        Vector3f subtract2 = center.subtract(this.position, tempVars.vect3);
        float dot3 = subtract2.dot(subtract2);
        float f11 = -this.direction.dot(subtract2);
        return f11 <= 0.0f || f11 * f11 < this.outerAngleSinSqr * dot3 || dot3 <= lengthSquared;
    }

    @Override
    public boolean intersectsFrustum(Camera camera, TempVars tempVars) {
        if (this.spotRange == 0.0f) {
            return true;
        }
        Vector3f addLocal = tempVars.vect1.set(this.position).addLocal(tempVars.vect2.set(this.direction).multLocal(this.spotRange));
        for (int i10 = 5; i10 >= 0; i10--) {
            Plane worldPlane = camera.getWorldPlane(i10);
            if (worldPlane.pseudoDistance(this.position) < 0.0f && worldPlane.pseudoDistance(addLocal) < 0.0f) {
                if (worldPlane.pseudoDistance(tempVars.vect3.set(addLocal).addLocal(tempVars.vect2.set(this.direction).crossLocal(worldPlane.getNormal()).normalizeLocal().crossLocal(this.direction).multLocal((this.spotRange / this.outerAngleCos) * this.outerAngleSin))) < 0.0f) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override
    public boolean intersectsSphere(BoundingSphere boundingSphere, TempVars tempVars) {
        float f10 = this.spotRange;
        if (f10 > 0.0f && !Intersection.intersect(boundingSphere, this.position, f10)) {
            return false;
        }
        float sqr = FastMath.sqr(boundingSphere.getRadius());
        Vector3f subtract = boundingSphere.getCenter().subtract(this.position.subtract(this.direction.mult(boundingSphere.getRadius() * this.outerAngleSinRcp, tempVars.vect1), tempVars.vect2), tempVars.vect3);
        float dot = subtract.dot(subtract);
        float dot2 = this.direction.dot(subtract);
        if (dot2 <= 0.0f || dot2 * dot2 < dot * this.outerAngleCosSqr) {
            return false;
        }
        Vector3f subtract2 = boundingSphere.getCenter().subtract(this.position, tempVars.vect3);
        float dot3 = subtract2.dot(subtract2);
        float f11 = -this.direction.dot(subtract2);
        return f11 <= 0.0f || f11 * f11 < this.outerAngleSinSqr * dot3 || dot3 <= sqr;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.spotInnerAngle = capsule.readFloat("spotInnerAngle", 0.09817477f);
        this.spotOuterAngle = capsule.readFloat("spotOuterAngle", 0.1308997f);
        computeAngleParameters();
        this.direction = (Vector3f) capsule.readSavable("direction", new Vector3f());
        this.position = (Vector3f) capsule.readSavable("position", new Vector3f());
        float readFloat = capsule.readFloat("spotRange", 100.0f);
        this.spotRange = readFloat;
        if (readFloat != 0.0f) {
            this.invSpotRange = 1.0f / readFloat;
        } else {
            this.invSpotRange = 0.0f;
        }
    }

    public final void setDirection(Vector3f vector3f) {
        this.direction.set(vector3f);
    }

    public final void setPosition(Vector3f vector3f) {
        this.position.set(vector3f);
    }

    public void setSpotInnerAngle(float f10) {
        if (f10 < 0.0f || f10 >= 1.5707964f) {
            throw new IllegalArgumentException("spot angle must be between 0 and pi/2");
        }
        this.spotInnerAngle = f10;
        computeAngleParameters();
    }

    public void setSpotOuterAngle(float f10) {
        if (f10 < 0.0f || f10 >= 1.5707964f) {
            throw new IllegalArgumentException("spot angle must be between 0 and pi/2");
        }
        this.spotOuterAngle = f10;
        computeAngleParameters();
    }

    public void setSpotRange(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("SpotLight range cannot be negative");
        }
        this.spotRange = f10;
        if (f10 != 0.0f) {
            this.invSpotRange = 1.0f / f10;
        } else {
            this.invSpotRange = 0.0f;
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "[name=" + this.name + ", direction=" + ((Object) this.direction) + ", position=" + ((Object) this.position) + ", range=" + this.spotRange + ", innerAngle=" + this.spotInnerAngle + ", outerAngle=" + this.spotOuterAngle + ", color=" + ((Object) this.color) + ", enabled=" + this.enabled + "]";
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.direction, "direction", new Vector3f());
        capsule.write(this.position, "position", new Vector3f());
        capsule.write(this.spotInnerAngle, "spotInnerAngle", 0.09817477f);
        capsule.write(this.spotOuterAngle, "spotOuterAngle", 0.1308997f);
        capsule.write(this.spotRange, "spotRange", 100.0f);
    }

    @Override
    public SpotLight mo1270clone() {
        SpotLight spotLight = (SpotLight) super.mo1270clone();
        spotLight.direction = this.direction.m1292clone();
        spotLight.position = this.position.m1292clone();
        return spotLight;
    }

    public SpotLight(boolean z10) {
        this();
        this.global = z10;
    }

    public SpotLight(Vector3f vector3f, Vector3f vector3f2) {
        this();
        setPosition(vector3f);
        setDirection(vector3f2);
    }

    public SpotLight(Vector3f vector3f, Vector3f vector3f2, boolean z10) {
        this(vector3f, vector3f2);
        this.global = z10;
    }

    public SpotLight(Vector3f vector3f, Vector3f vector3f2, float f10) {
        this();
        setPosition(vector3f);
        setDirection(vector3f2);
        setSpotRange(f10);
    }

    public SpotLight(Vector3f vector3f, Vector3f vector3f2, float f10, boolean z10) {
        this(vector3f, vector3f2, f10);
        this.global = z10;
    }

    public SpotLight(Vector3f vector3f, Vector3f vector3f2, ColorRGBA colorRGBA) {
        super(colorRGBA);
        this.position = new Vector3f();
        this.direction = new Vector3f(0.0f, -1.0f, 0.0f);
        this.spotInnerAngle = 0.09817477f;
        this.spotOuterAngle = 0.1308997f;
        this.spotRange = 100.0f;
        this.invSpotRange = 0.01f;
        this.packedAngleCos = 0.0f;
        computeAngleParameters();
        setPosition(vector3f);
        setDirection(vector3f2);
    }

    public SpotLight(Vector3f vector3f, Vector3f vector3f2, ColorRGBA colorRGBA, boolean z10) {
        this(vector3f, vector3f2, colorRGBA);
        this.global = z10;
    }

    public SpotLight(Vector3f vector3f, Vector3f vector3f2, float f10, ColorRGBA colorRGBA) {
        super(colorRGBA);
        this.position = new Vector3f();
        this.direction = new Vector3f(0.0f, -1.0f, 0.0f);
        this.spotInnerAngle = 0.09817477f;
        this.spotOuterAngle = 0.1308997f;
        this.spotRange = 100.0f;
        this.invSpotRange = 0.01f;
        this.packedAngleCos = 0.0f;
        computeAngleParameters();
        setPosition(vector3f);
        setDirection(vector3f2);
        setSpotRange(f10);
    }

    public SpotLight(Vector3f vector3f, Vector3f vector3f2, float f10, ColorRGBA colorRGBA, boolean z10) {
        this(vector3f, vector3f2, f10, colorRGBA);
        this.global = z10;
    }

    public SpotLight(Vector3f vector3f, Vector3f vector3f2, float f10, ColorRGBA colorRGBA, float f11, float f12) {
        super(colorRGBA);
        this.position = new Vector3f();
        this.direction = new Vector3f(0.0f, -1.0f, 0.0f);
        this.spotRange = 100.0f;
        this.invSpotRange = 0.01f;
        this.packedAngleCos = 0.0f;
        this.spotInnerAngle = f11;
        this.spotOuterAngle = f12;
        computeAngleParameters();
        setPosition(vector3f);
        setDirection(vector3f2);
        setSpotRange(f10);
    }

    public SpotLight(Vector3f vector3f, Vector3f vector3f2, float f10, ColorRGBA colorRGBA, float f11, float f12, boolean z10) {
        this(vector3f, vector3f2, f10, colorRGBA, f11, f12);
        this.global = z10;
    }
}
