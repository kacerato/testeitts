package jme3utilities.debug;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.debug.Arrow;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.AbstractC13699B;
import p000if.C13702E;
import p000if.C13716l;

public class j extends AbstractC13699B {

    public static final boolean f94117j = false;

    public static final float f94118k = 0.0f;

    public static final Logger f94119l = Logger.getLogger(j.class.getName());

    public static final String f94120m = "Models/indicators/arrow/arrow.j3o";

    public static final String f94121n = "vector node";

    public static final String f94122o = "color";

    public static final String f94123p = "depthTest";

    public static final String f94124q = "lineWidth";

    public static final String f94125r = "tipOffset";

    public static final boolean f94126s = false;

    public AssetManager f94127e;

    public float f94130h;

    public boolean f94128f = false;

    public ColorRGBA f94129g = new ColorRGBA(1.0f, 1.0f, 1.0f, 1.0f);

    public Vector3f f94131i = new Vector3f();

    public j() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.f94129g = this.f94129g.m1279clone();
        this.f94131i = this.f94131i.m1292clone();
    }

    @Override
    public void controlUpdate(float f10) {
        super.controlUpdate(f10);
        Node node = (Node) c();
        if (node.getQuantity() != 1) {
            node.detachAllChildren();
            e();
            return;
        }
        boolean z10 = ((Geometry) node.getChild(0)).getMesh() instanceof Arrow;
        float f11 = this.f94130h;
        if (f11 >= 1.0f && z10) {
            t();
        } else if (f11 < 1.0f && !z10) {
            s();
        } else {
            node.detachAllChildren();
            e();
        }
    }

    public final void e() {
        if (this.f94130h >= 1.0f) {
            g();
        } else {
            f();
        }
    }

    public final void f() {
        Geometry geometry = (Geometry) ((Node) ((Node) ((Node) this.f94127e.loadModel("Models/indicators/arrow/arrow.j3o")).getChild(0)).getChild(0)).getChild(0);
        ((Node) c()).attachChild(geometry);
        Material n10 = C13716l.n(this.f94127e, this.f94129g);
        geometry.setMaterial(n10);
        n10.setName("arrowMaterial");
        geometry.setName("arrow");
        s();
    }

    public final void g() {
        Geometry geometry = new Geometry("arrow", new Arrow(this.f94131i));
        ((Node) c()).attachChild(geometry);
        Material q10 = C13716l.q(this.f94127e, this.f94129g);
        geometry.setMaterial(q10);
        q10.setName("arrowMaterial");
        RenderState additionalRenderState = q10.getAdditionalRenderState();
        additionalRenderState.setDepthTest(this.f94128f);
        additionalRenderState.setLineWidth(this.f94130h);
    }

    @Override
    public j clone() throws CloneNotSupportedException {
        return (j) super.clone();
    }

    public ColorRGBA i(ColorRGBA colorRGBA) {
        return colorRGBA == null ? this.f94129g.m1279clone() : colorRGBA.set(this.f94129g);
    }

    public boolean j() {
        return this.f94128f;
    }

    public float k() {
        return this.f94130h;
    }

    public void l(ColorRGBA colorRGBA) {
        C13702E.t(colorRGBA, "color");
        this.f94129g.set(colorRGBA);
    }

    public void m(boolean z10) {
        this.f94128f = z10;
    }

    public void n(float f10) {
        C13702E.p(f10, "width");
        this.f94130h = f10;
    }

    public void o(Vector3f vector3f) {
        C13702E.t(vector3f, "offset");
        this.f94131i.set(vector3f);
    }

    public Vector3f p() {
        if (isEnabled()) {
            return ((Node) c()).localToWorld(this.f94131i, null);
        }
        return null;
    }

    public Vector3f q(Vector3f vector3f) {
        return vector3f == null ? this.f94131i.m1292clone() : vector3f.set(this.f94131i);
    }

    public final void r(Material material) {
        if (((ColorRGBA) material.getParamValue(SerializableShaderEntry.f81153g)).equals(this.f94129g)) {
            return;
        }
        material.setColor(SerializableShaderEntry.f81153g, this.f94129g.m1279clone());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.f94127e = jmeImporter.getAssetManager();
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f94129g = (ColorRGBA) capsule.readSavable("color", null);
        this.f94128f = capsule.readBoolean("depthTest", false);
        this.f94130h = capsule.readFloat("lineWidth", 0.0f);
        this.f94131i = (Vector3f) capsule.readSavable(f94125r, null);
    }

    public final void s() {
        Geometry geometry = (Geometry) ((Node) c()).getChild(0);
        float length = this.f94131i.length();
        geometry.setLocalScale(length);
        if (length > 0.0f) {
            Vector3f m1292clone = this.f94131i.m1292clone();
            Vector3f vector3f = new Vector3f();
            Vector3f vector3f2 = new Vector3f();
            jf.h.u(m1292clone, vector3f, vector3f2);
            Quaternion quaternion = new Quaternion();
            quaternion.fromAxes(m1292clone, vector3f, vector3f2);
            geometry.setLocalRotation(quaternion);
        }
        Material material = geometry.getMaterial();
        r(material);
        material.getAdditionalRenderState().setDepthTest(this.f94128f);
    }

    @Override
    public void setEnabled(boolean z10) {
        if (z10 && c() == null) {
            Node node = new Node(f94121n);
            node.setQueueBucket(RenderQueue.Bucket.Transparent);
            node.setShadowMode(RenderQueue.ShadowMode.Off);
            d(node);
        }
        super.setEnabled(z10);
    }

    public final void t() {
        Geometry geometry = (Geometry) ((Node) c()).getChild(0);
        ((Arrow) geometry.getMesh()).setArrowExtent(this.f94131i);
        Material material = geometry.getMaterial();
        r(material);
        RenderState additionalRenderState = material.getAdditionalRenderState();
        additionalRenderState.setDepthTest(this.f94128f);
        additionalRenderState.setLineWidth(this.f94130h);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.f94129g, "color", (Savable) null);
        capsule.write(this.f94128f, "depthTest", false);
        capsule.write(this.f94130h, "lineWidth", 0.0f);
        capsule.write(this.f94131i, f94125r, (Savable) null);
    }

    public j(AssetManager assetManager, float f10) {
        C13702E.t(assetManager, "asset manager");
        C13702E.p(f10, "line width");
        this.f94127e = assetManager;
        this.f94130h = f10;
    }
}
