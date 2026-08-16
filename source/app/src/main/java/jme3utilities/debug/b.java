package jme3utilities.debug;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingSphere;
import com.jme3.bounding.BoundingVolume;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.Material;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.debug.WireBox;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.AbstractC13699B;
import p000if.C13702E;
import p000if.C13716l;
import p000if.C13723s;

public class b extends AbstractC13699B {

    public static final boolean f94033k = false;

    public static final float f94035m = 1.0f;

    public static final int f94036n = 0;

    public static final String f94038p = "bound lines";

    public static final String f94039q = "bound node";

    public static final String f94040r = "billboardAxis";

    public static final String f94041s = "camera";

    public static final String f94042t = "lineMaterial";

    public static final String f94043u = "lineWidth";

    public static final String f94044v = "sphereType";

    public static final String f94045w = "subject";

    public static final boolean f94046x = false;

    public Material f94050h;

    public static final ColorRGBA f94034l = new ColorRGBA(0.0f, 0.0f, 1.0f, 1.0f);

    public static final Logger f94037o = Logger.getLogger(b.class.getName());

    public Camera f94047e = null;

    public float f94048f = 1.0f;

    public int f94049g = 0;

    public Spatial f94051i = null;

    public i f94052j = i.WireSphere;

    public b() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.f94047e = (Camera) cloner.clone(this.f94047e);
        this.f94050h = (Material) cloner.clone(this.f94050h);
        this.f94051i = (Spatial) cloner.clone(this.f94051i);
    }

    @Override
    public void controlUpdate(float f10) {
        super.controlUpdate(f10);
        Node node = (Node) c();
        if (this.f94051i == null || this.f94048f < 1.0f) {
            node.detachAllChildren();
            return;
        }
        if (node.getQuantity() == 0) {
            e();
            return;
        }
        Geometry geometry = (Geometry) node.getChild(0);
        BoundingVolume worldBound = this.f94051i.getWorldBound();
        Mesh mesh = geometry.getMesh();
        if ((worldBound instanceof BoundingBox) && (mesh instanceof WireBox)) {
            t();
        } else if ((worldBound instanceof BoundingSphere) && this.f94052j.b(mesh)) {
            v();
        } else {
            node.detachAllChildren();
            e();
        }
    }

    public final void e() {
        Mesh c10;
        BoundingVolume worldBound = this.f94051i.getWorldBound();
        boolean z10 = worldBound instanceof BoundingBox;
        if (z10) {
            c10 = new WireBox();
        } else {
            if (!(worldBound instanceof BoundingSphere)) {
                throw new IllegalStateException(worldBound.getClass().getName());
            }
            c10 = this.f94052j.c(1.0f, false, false);
        }
        Geometry geometry = new Geometry(f94038p, c10);
        geometry.setMaterial(this.f94050h);
        ((Node) c()).attachChildAt(geometry, 0);
        if (z10) {
            t();
        } else {
            v();
        }
    }

    public int f() {
        if (this.f94047e == null) {
            return -1;
        }
        return this.f94049g;
    }

    @Override
    public b clone() throws CloneNotSupportedException {
        return (b) super.clone();
    }

    public Camera getCamera() {
        return this.f94047e;
    }

    public ColorRGBA h(ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        colorRGBA.set((ColorRGBA) this.f94050h.getParam(SerializableShaderEntry.f81153g).getValue());
        return colorRGBA;
    }

    public void i() {
        this.f94047e = null;
    }

    public void j(Camera camera, int i10) {
        C13702E.t(camera, "camera");
        C13702E.a(i10, "axis index");
        this.f94047e = camera;
        this.f94049g = i10;
    }

    public Spatial k() {
        return this.f94051i;
    }

    public boolean l() {
        return this.f94050h.getAdditionalRenderState().isDepthTest();
    }

    public float m() {
        return this.f94048f;
    }

    public void n(ColorRGBA colorRGBA) {
        this.f94050h.setColor(SerializableShaderEntry.f81153g, colorRGBA.m1279clone());
    }

    public void o(boolean z10) {
        this.f94050h.getAdditionalRenderState().setDepthTest(z10);
    }

    public void p(float f10) {
        C13702E.p(f10, "new width");
        this.f94048f = f10;
    }

    public void q(i iVar) {
        C13702E.t(iVar, "type");
        this.f94052j = iVar;
    }

    public void r(Spatial spatial) {
        this.f94051i = spatial;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f94049g = capsule.readInt(f94040r, 0);
        this.f94047e = (Camera) capsule.readSavable("camera", null);
        this.f94050h = (Material) capsule.readSavable("lineMaterial", null);
        this.f94048f = capsule.readFloat("lineWidth", 0.0f);
        this.f94052j = (i) capsule.readEnum(f94044v, i.class, null);
        this.f94051i = (Spatial) capsule.readSavable("subject", null);
    }

    public i s() {
        return this.f94052j;
    }

    @Override
    public void setEnabled(boolean z10) {
        if (z10 && c() == null) {
            Node node = new Node(f94039q);
            node.setQueueBucket(RenderQueue.Bucket.Transparent);
            node.setShadowMode(RenderQueue.ShadowMode.Off);
            d(node);
        }
        super.setEnabled(z10);
    }

    public final void t() {
        BoundingBox boundingBox = (BoundingBox) this.f94051i.getWorldBound();
        Geometry geometry = (Geometry) ((Node) c()).getChild(0);
        ((WireBox) geometry.getMesh()).updatePositions(boundingBox.getXExtent(), boundingBox.getYExtent(), boundingBox.getZExtent());
        Transform transform = new Transform();
        transform.setTranslation(boundingBox.getCenter());
        C13723s.P(geometry, transform);
        u();
    }

    public final void u() {
        this.f94050h.getAdditionalRenderState().setLineWidth(this.f94048f);
    }

    public final void v() {
        BoundingSphere boundingSphere = (BoundingSphere) this.f94051i.getWorldBound();
        Geometry geometry = (Geometry) ((Node) c()).getChild(0);
        Transform transform = new Transform();
        Vector3f center = boundingSphere.getCenter();
        transform.setTranslation(center);
        Camera camera = this.f94047e;
        if (camera != null) {
            Vector3f subtract = camera.getLocation().subtract(center);
            Vector3f vector3f = new Vector3f();
            Vector3f vector3f2 = new Vector3f();
            jf.h.u(subtract, vector3f, vector3f2);
            Quaternion rotation = transform.getRotation();
            int i10 = this.f94049g;
            if (i10 == 0) {
                rotation.fromAxes(subtract, vector3f, vector3f2);
            } else if (i10 == 1) {
                rotation.fromAxes(vector3f2, subtract, vector3f);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("billboardAxis = " + this.f94049g);
                }
                rotation.fromAxes(vector3f, vector3f2, subtract);
            }
        }
        transform.setScale(boundingSphere.getRadius());
        C13723s.P(geometry, transform);
        u();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.f94049g, f94040r, 0);
        capsule.write(this.f94047e, "camera", (Savable) null);
        capsule.write(this.f94050h, "lineMaterial", (Savable) null);
        capsule.write(this.f94048f, "lineWidth", 0.0f);
        capsule.write(this.f94052j, f94044v, (Enum) null);
        capsule.write(this.f94051i, "subject", (Savable) null);
    }

    public b(AssetManager assetManager) {
        C13702E.t(assetManager, "asset manager");
        Material q10 = C13716l.q(assetManager, f94034l);
        this.f94050h = q10;
        q10.getAdditionalRenderState().setDepthTest(false);
        this.f94050h.setName("bound mat");
    }
}
