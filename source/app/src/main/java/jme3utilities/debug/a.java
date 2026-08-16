package jme3utilities.debug;

import com.jme3.asset.AssetManager;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.debug.Arrow;
import java.io.IOException;
import java.util.Iterator;
import java.util.logging.Logger;
import p000if.AbstractC13699B;
import p000if.C13702E;
import p000if.C13716l;
import p000if.C13723s;

public class a extends AbstractC13699B {

    public static final boolean f94012j = false;

    public static final float f94016n = 0.0f;

    public static final String f94018p = "Models/indicators/arrow/arrow.j3o";

    public static final String f94019q = "axes node";

    public static final String f94020r = "axisLength";

    public static final String f94021s = "depthTest";

    public static final String f94022t = "lineWidth";

    public static final String f94023u = "numAxes";

    public static final boolean f94027y = false;

    public AssetManager f94028e;

    public float f94030g;

    public float f94031h;

    public static final ColorRGBA f94013k = new ColorRGBA(1.0f, 0.0f, 0.0f, 1.0f);

    public static final ColorRGBA f94014l = new ColorRGBA(0.0f, 1.0f, 0.0f, 1.0f);

    public static final ColorRGBA f94015m = new ColorRGBA(0.0f, 0.0f, 1.0f, 1.0f);

    public static final Logger f94017o = Logger.getLogger(a.class.getName());

    public static final Vector3f f94024v = new Vector3f(1.0f, 0.0f, 0.0f);

    public static final Vector3f f94025w = new Vector3f(0.0f, 1.0f, 0.0f);

    public static final Vector3f f94026x = new Vector3f(0.0f, 0.0f, 1.0f);

    public boolean f94029f = false;

    public int f94032i = 3;

    public a() {
    }

    @Override
    public void controlUpdate(float f10) {
        super.controlUpdate(f10);
        Node node = (Node) c();
        if (node.getQuantity() != this.f94032i) {
            node.detachAllChildren();
            e();
            return;
        }
        boolean z10 = ((Geometry) node.getChild(0)).getMesh() instanceof Arrow;
        float f11 = this.f94031h;
        if (f11 >= 1.0f && z10) {
            r();
        } else if (f11 < 1.0f && !z10) {
            r();
        } else {
            node.detachAllChildren();
            e();
        }
    }

    public final void e() {
        if (this.f94031h >= 1.0f) {
            g(f94013k, "xAxis", f94024v);
            if (this.f94032i > 1) {
                g(f94014l, "yAxis", f94025w);
                if (this.f94032i > 2) {
                    g(f94015m, "zAxis", f94026x);
                }
            }
        } else {
            f(f94013k, "xAxis", f94024v);
            if (this.f94032i > 1) {
                f(f94014l, "yAxis", f94025w);
                if (this.f94032i > 2) {
                    f(f94015m, "zAxis", f94026x);
                }
            }
        }
        r();
    }

    public final void f(ColorRGBA colorRGBA, String str, Vector3f vector3f) {
        Geometry geometry = (Geometry) ((Node) ((Node) ((Node) this.f94028e.loadModel("Models/indicators/arrow/arrow.j3o")).getChild(0)).getChild(0)).getChild(0);
        ((Node) c()).attachChild(geometry);
        Vector3f m1292clone = vector3f.m1292clone();
        Vector3f vector3f2 = new Vector3f();
        Vector3f vector3f3 = new Vector3f();
        jf.h.u(m1292clone, vector3f2, vector3f3);
        Quaternion quaternion = new Quaternion();
        quaternion.fromAxes(m1292clone, vector3f2, vector3f3);
        geometry.setLocalRotation(quaternion);
        geometry.setName(str);
        Material n10 = C13716l.n(this.f94028e, colorRGBA);
        geometry.setMaterial(n10);
        n10.getAdditionalRenderState().setDepthTest(this.f94029f);
        n10.setName(str + "Material");
    }

    public final void g(ColorRGBA colorRGBA, String str, Vector3f vector3f) {
        Geometry geometry = new Geometry(str, new Arrow(vector3f));
        ((Node) c()).attachChild(geometry);
        Material q10 = C13716l.q(this.f94028e, colorRGBA);
        geometry.setMaterial(q10);
        q10.getAdditionalRenderState().setDepthTest(this.f94029f);
        q10.setName(str + "Material");
    }

    public float h() {
        return this.f94030g;
    }

    @Override
    public a clone() throws CloneNotSupportedException {
        return (a) super.clone();
    }

    public boolean j() {
        return this.f94029f;
    }

    public float k() {
        return this.f94031h;
    }

    public int l() {
        return this.f94032i;
    }

    public void m(float f10) {
        C13702E.E(f10, "length");
        this.f94030g = f10;
    }

    public void n(boolean z10) {
        this.f94029f = z10;
    }

    public void o(float f10) {
        C13702E.p(f10, "width");
        this.f94031h = f10;
    }

    public void p(int i10) {
        C13702E.i(i10, "new number", 1, 3);
        this.f94032i = i10;
    }

    public Vector3f q(int i10) {
        C13702E.a(i10, "axis index");
        if (!isEnabled() || i10 >= this.f94032i) {
            return null;
        }
        Node node = (Node) c();
        C13723s.O(node, this.f94030g);
        return ((Geometry) node.getChild(i10)).localToWorld(f94024v, null);
    }

    public final void r() {
        Node node = (Node) c();
        C13723s.O(node, this.f94030g);
        Iterator<Spatial> it = node.getChildren().iterator();
        while (it.hasNext()) {
            RenderState additionalRenderState = ((Geometry) it.next()).getMaterial().getAdditionalRenderState();
            additionalRenderState.setDepthTest(this.f94029f);
            float f10 = this.f94031h;
            if (f10 >= 1.0f) {
                additionalRenderState.setLineWidth(f10);
            }
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.f94028e = jmeImporter.getAssetManager();
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f94030g = capsule.readFloat(f94020r, 1.0f);
        this.f94029f = capsule.readBoolean("depthTest", false);
        this.f94031h = capsule.readFloat("lineWidth", 0.0f);
        this.f94032i = capsule.readInt(f94023u, 3);
    }

    @Override
    public void setEnabled(boolean z10) {
        if (z10 && c() == null) {
            Node node = new Node(f94019q);
            node.setQueueBucket(RenderQueue.Bucket.Transparent);
            node.setShadowMode(RenderQueue.ShadowMode.Off);
            d(node);
        }
        super.setEnabled(z10);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.f94030g, f94020r, 1.0f);
        capsule.write(this.f94029f, "depthTest", false);
        capsule.write(this.f94031h, "lineWidth", 0.0f);
        capsule.write(this.f94032i, f94023u, 3);
    }

    public a(AssetManager assetManager, float f10) {
        C13702E.t(assetManager, "asset manager");
        C13702E.E(f10, "axis length");
        this.f94028e = assetManager;
        this.f94030g = f10;
        this.f94031h = 0.0f;
    }

    public a(AssetManager assetManager, float f10, float f11) {
        C13702E.t(assetManager, "asset manager");
        C13702E.E(f10, "axis length");
        C13702E.h(f11, "line width", 1.0f, Float.MAX_VALUE);
        this.f94028e = assetManager;
        this.f94030g = f10;
        this.f94031h = f11;
    }
}
