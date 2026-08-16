package jme3utilities.debug;

import com.ardor3d.util.export.xml.XMLExporter;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.export.JmeImporter;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Spatial;
import com.jme3.texture.Texture;
import java.io.IOException;
import java.util.logging.Logger;
import lf.C14126m;
import p000if.C13702E;
import p000if.C13716l;

public class f extends Geometry {

    public static final Logger f94082c = Logger.getLogger(f.class.getName());

    public AssetManager f94083b;

    public f() {
    }

    public ColorRGBA c(ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        colorRGBA.set((ColorRGBA) this.material.getParam(SerializableShaderEntry.f81153g).getValue());
        return colorRGBA;
    }

    public void d(boolean z10) {
        this.material.getAdditionalRenderState().setDepthTest(z10);
    }

    public void e(Texture texture) {
        C13702E.t(texture, "desired texture");
        this.material.setTexture("PointShape", texture);
    }

    public void f(String str) {
        C13702E.j(str, "shape name");
        e(C13716l.t(this.f94083b, String.format("Textures/shapes/%s.png", str), false));
    }

    public int g() {
        return Math.round(((Float) this.material.getParam("PointSize").getValue()).floatValue());
    }

    public boolean isEnabled() {
        Spatial.CullHint cullHint = this.cullHint;
        return cullHint == Spatial.CullHint.Never || cullHint == Spatial.CullHint.Dynamic;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.f94083b = jmeImporter.getAssetManager();
    }

    public void setColor(ColorRGBA colorRGBA) {
        this.material.setColor(SerializableShaderEntry.f81153g, colorRGBA.m1279clone());
    }

    public void setEnabled(boolean z10) {
        if (z10) {
            this.cullHint = Spatial.CullHint.Never;
        } else {
            this.cullHint = Spatial.CullHint.Always;
        }
    }

    public void setSize(int i10) {
        C13702E.F(i10, "desired size");
        this.material.setFloat("PointSize", i10);
    }

    public f(AssetManager assetManager, int i10, ColorRGBA colorRGBA, String str) {
        super(str, new C14126m());
        C13702E.t(assetManager, "asset manager");
        C13702E.F(i10, XMLExporter.ATTRIBUTE_SIZE);
        this.f94083b = assetManager;
        Material f10 = C13716l.f(assetManager, null, i10);
        f10.setName("point");
        if (colorRGBA != null) {
            f10.setColor(SerializableShaderEntry.f81153g, colorRGBA.m1279clone());
        }
        RenderState additionalRenderState = f10.getAdditionalRenderState();
        additionalRenderState.setBlendMode(RenderState.BlendMode.Alpha);
        additionalRenderState.setDepthTest(false);
        setMaterial(f10);
        setQueueBucket(RenderQueue.Bucket.Translucent);
        setShadowMode(RenderQueue.ShadowMode.Off);
        if (str != null) {
            f(str);
        }
    }
}
