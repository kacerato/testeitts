package jme3utilities.debug;

import com.ardor3d.util.export.xml.XMLExporter;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.anim.Armature;
import com.jme3.anim.SkinningControl;
import com.jme3.animation.Skeleton;
import com.jme3.animation.SkeletonControl;
import com.jme3.asset.AssetManager;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Transform;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.AbstractControl;
import com.jme3.texture.Texture;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Logger;
import p000if.AbstractC13699B;
import p000if.C13702E;
import p000if.C13716l;
import p000if.C13723s;

public class h extends AbstractC13699B {

    public static final String f94087A = "headColor";

    public static final String f94088B = "headMaterial";

    public static final String f94089C = "lineMaterial";

    public static final String f94090D = "lineWidth";

    public static final String f94091E = "skeleton";

    public static final String f94092F = "transformSpatial";

    public static final boolean f94094H = false;

    public static final float f94097o = 4.0f;

    public static final float f94098p = 1.0f;

    public static final int f94099q = 0;

    public static final int f94100r = 1;

    public static final String f94102t = "Textures/shapes/solid circle.png";

    public static final String f94103u = "skeleton heads";

    public static final String f94104v = "skeleton links";

    public static final String f94105w = "skeleton node";

    public static final String f94106x = "armature";

    public static final String f94107y = "customColorKeys";

    public static final String f94108z = "customColors";

    public Material f94113i;

    public Material f94114j;

    public static final ColorRGBA f94095m = new ColorRGBA(1.0f, 1.0f, 1.0f, 1.0f);

    public static final ColorRGBA f94096n = new ColorRGBA(0.0f, 0.0f, 1.0f, 1.0f);

    public static final Logger f94101s = Logger.getLogger(h.class.getName());

    public static final Transform f94093G = new Transform();

    public Armature f94109e = null;

    public ColorRGBA f94110f = f94095m.m1279clone();

    public float f94111g = 1.0f;

    public Map<Integer, ColorRGBA> f94112h = new TreeMap();

    public Skeleton f94115k = null;

    public Spatial f94116l = null;

    public h() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.f94112h = new TreeMap();
        for (Map.Entry<Integer, ColorRGBA> entry : ((h) obj).f94112h.entrySet()) {
            Integer key = entry.getKey();
            key.intValue();
            this.f94112h.put(key, (ColorRGBA) cloner.clone(entry.getValue()));
        }
        this.f94109e = (Armature) cloner.clone(this.f94109e);
        this.f94110f = (ColorRGBA) cloner.clone(this.f94110f);
        this.f94113i = (Material) cloner.clone(this.f94113i);
        this.f94114j = (Material) cloner.clone(this.f94114j);
        this.f94115k = (Skeleton) cloner.clone(this.f94115k);
        this.f94116l = (Spatial) cloner.clone(this.f94116l);
    }

    @Override
    public void controlUpdate(float f10) {
        super.controlUpdate(f10);
        Node node = (Node) c();
        if (i() == 0) {
            node.detachAllChildren();
        } else if (node.getQuantity() == 0) {
            e();
        } else {
            v();
        }
    }

    public final void e() {
        Node node = (Node) c();
        Geometry geometry = new Geometry(f94103u, new g(this.f94109e, this.f94115k, Mesh.Mode.Points));
        geometry.setMaterial(this.f94113i);
        node.attachChildAt(geometry, 0);
        Geometry geometry2 = new Geometry(f94104v, new g(this.f94109e, this.f94115k, Mesh.Mode.Lines));
        geometry2.setMaterial(this.f94114j);
        node.attachChildAt(geometry2, 1);
        v();
    }

    @Override
    public h clone() throws CloneNotSupportedException {
        return (h) super.clone();
    }

    public ColorRGBA g(int i10, ColorRGBA colorRGBA) {
        C13702E.q(i10, "bone index");
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        ColorRGBA colorRGBA2 = this.f94112h.get(Integer.valueOf(i10));
        if (colorRGBA2 == null) {
            colorRGBA2 = this.f94110f;
        }
        colorRGBA.set(colorRGBA2);
        return colorRGBA;
    }

    public ColorRGBA h(ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        colorRGBA.set((ColorRGBA) this.f94114j.getParam(SerializableShaderEntry.f81153g).getValue());
        return colorRGBA;
    }

    public int i() {
        Armature armature = this.f94109e;
        if (armature != null) {
            return armature.getJointCount();
        }
        Skeleton skeleton = this.f94115k;
        if (skeleton != null) {
            return skeleton.getBoneCount();
        }
        return 0;
    }

    public float j() {
        return ((Float) this.f94113i.getParam("PointSize").getValue()).floatValue();
    }

    public float k() {
        return this.f94111g;
    }

    public void l(ColorRGBA colorRGBA) {
        C13702E.t(colorRGBA, "new color");
        q(colorRGBA);
        n(colorRGBA);
    }

    public void m(int i10, ColorRGBA colorRGBA) {
        C13702E.q(i10, "bone index");
        C13702E.t(colorRGBA, "new color");
        this.f94112h.put(Integer.valueOf(i10), colorRGBA.m1279clone());
    }

    public void n(ColorRGBA colorRGBA) {
        C13702E.t(colorRGBA, "new color");
        this.f94110f.set(colorRGBA);
        this.f94112h.clear();
    }

    public void o(Texture texture) {
        C13702E.t(texture, "shape");
        this.f94113i.setTexture("PointShape", texture);
    }

    public void p(float f10) {
        C13702E.p(f10, XMLExporter.ATTRIBUTE_SIZE);
        this.f94113i.setFloat("PointSize", f10);
    }

    public void q(ColorRGBA colorRGBA) {
        C13702E.t(colorRGBA, "new color");
        this.f94114j.setColor(SerializableShaderEntry.f81153g, colorRGBA.m1279clone());
    }

    public void r(float f10) {
        C13702E.p(f10, "width");
        this.f94111g = f10;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f94109e = (Armature) capsule.readSavable(f94106x, null);
        int[] readIntArray = capsule.readIntArray(f94107y, null);
        Savable[] readSavableArray = capsule.readSavableArray(f94108z, null);
        for (int i10 = 0; i10 < readIntArray.length; i10++) {
            int i11 = readIntArray[i10];
            this.f94112h.put(Integer.valueOf(i11), (ColorRGBA) readSavableArray[i10]);
        }
        this.f94110f = (ColorRGBA) capsule.readSavable(f94087A, f94095m);
        this.f94113i = (Material) capsule.readSavable(f94088B, null);
        this.f94114j = (Material) capsule.readSavable("lineMaterial", null);
        this.f94111g = capsule.readFloat("lineWidth", 1.0f);
        this.f94115k = (Skeleton) capsule.readSavable(f94091E, null);
        this.f94116l = (Spatial) capsule.readSavable(f94092F, null);
    }

    public final void s(Armature armature, Skeleton skeleton) {
        if (this.f94109e == armature && this.f94115k == skeleton) {
            return;
        }
        if (c() != null) {
            ((Node) c()).detachAllChildren();
        }
        this.f94109e = armature;
        this.f94115k = skeleton;
    }

    @Override
    public void setEnabled(boolean z10) {
        if (z10 && c() == null) {
            Node node = new Node(f94105w);
            node.setQueueBucket(RenderQueue.Bucket.Transparent);
            node.setShadowMode(RenderQueue.ShadowMode.Off);
            d(node);
        }
        super.setEnabled(z10);
    }

    public final void t(AbstractControl abstractControl) {
        if (abstractControl == null) {
            s(null, null);
            this.f94116l = null;
            return;
        }
        if (abstractControl instanceof SkeletonControl) {
            s(null, ((SkeletonControl) abstractControl).getSkeleton());
        } else {
            s(((SkinningControl) abstractControl).getArmature(), null);
        }
        Spatial spatial = abstractControl.getSpatial();
        Geometry j10 = C13723s.j(spatial);
        if (j10 == null) {
            this.f94116l = spatial;
        } else {
            this.f94116l = j10;
        }
    }

    public void u(Spatial spatial) {
        this.f94116l = spatial;
    }

    public final void v() {
        Spatial spatial = this.f94116l;
        Transform worldTransform = (spatial == null || C13723s.w(spatial)) ? f94093G : this.f94116l.getWorldTransform();
        Node node = (Node) c();
        C13723s.P(node, worldTransform);
        g gVar = (g) ((Geometry) node.getChild(0)).getMesh();
        gVar.e(this);
        gVar.f(this.f94109e, this.f94115k);
        Geometry geometry = (Geometry) node.getChild(1);
        g gVar2 = (g) geometry.getMesh();
        gVar2.e(this);
        gVar2.f(this.f94109e, this.f94115k);
        if (this.f94111g < 1.0f) {
            geometry.setCullHint(Spatial.CullHint.Always);
        } else {
            this.f94114j.getAdditionalRenderState().setLineWidth(this.f94111g);
            geometry.setCullHint(Spatial.CullHint.Inherit);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.f94109e, f94106x, (Savable) null);
        int size = this.f94112h.size();
        int[] iArr = new int[size];
        Savable[] savableArr = new Savable[size];
        int i10 = 0;
        for (Map.Entry<Integer, ColorRGBA> entry : this.f94112h.entrySet()) {
            iArr[i10] = entry.getKey().intValue();
            savableArr[i10] = entry.getValue();
            i10++;
        }
        capsule.write(iArr, f94107y, (int[]) null);
        capsule.write(savableArr, f94108z, (Savable[]) null);
        capsule.write(this.f94110f, f94087A, f94095m);
        capsule.write(this.f94113i, f94088B, (Savable) null);
        capsule.write(this.f94114j, "lineMaterial", (Savable) null);
        capsule.write(this.f94111g, "lineWidth", 1.0f);
        capsule.write(this.f94115k, f94091E, (Savable) null);
        capsule.write(this.f94116l, f94092F, (Savable) null);
    }

    public h(AssetManager assetManager, AbstractControl abstractControl) {
        C13702E.t(assetManager, "asset manager");
        Material f10 = C13716l.f(assetManager, null, 0.0f);
        this.f94114j = f10;
        f10.setBoolean("UseVertexColor", true);
        this.f94114j.setColor(SerializableShaderEntry.f81153g, f94096n.m1279clone());
        this.f94114j.setFloat("AlphaDiscardThreshold", 0.9999f);
        RenderState additionalRenderState = this.f94114j.getAdditionalRenderState();
        RenderState.BlendMode blendMode = RenderState.BlendMode.Alpha;
        additionalRenderState.setBlendMode(blendMode);
        additionalRenderState.setDepthTest(false);
        Material f11 = C13716l.f(assetManager, C13716l.t(assetManager, f94102t, false), 4.0f);
        this.f94113i = f11;
        f11.setBoolean("UseVertexColor", true);
        this.f94113i.setFloat("AlphaDiscardThreshold", 1.0E-4f);
        RenderState additionalRenderState2 = this.f94113i.getAdditionalRenderState();
        additionalRenderState2.setBlendMode(blendMode);
        additionalRenderState2.setDepthTest(false);
        t(abstractControl);
    }
}
