package p000if;

import com.jme3.asset.AssetManager;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.material.Material;
import com.jme3.post.Filter;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import java.io.IOException;
import java.util.logging.Logger;

public class C13705a extends Filter {

    public static final Logger f92077c = Logger.getLogger(C13705a.class.getName());

    public static final String f92078d = "MatDefs/filter/ContrastAdjustment.j3md";

    public static final boolean f92079e = false;

    public float f92080b;

    public C13705a() {
        super("ContrastAdjustmentFilter");
    }

    public float a() {
        return this.f92080b;
    }

    public final void b(float f10) {
        C13702E.E(f10, "exponent");
        Material material = this.material;
        if (material != null) {
            material.setFloat("Exponent", f10);
        }
        this.f92080b = f10;
    }

    @Override
    public Material getMaterial() {
        return this.material;
    }

    @Override
    public void initFilter(AssetManager assetManager, RenderManager renderManager, ViewPort viewPort, int i10, int i11) {
        C13702E.t(assetManager, "asset manager");
        C13702E.t(renderManager, "render manager");
        C13702E.t(viewPort, "view port");
        C13702E.F(i10, "width");
        C13702E.F(i11, "height");
        Material material = new Material(assetManager, f92078d);
        this.material = material;
        material.setFloat("Exponent", this.f92080b);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.f92080b = jmeImporter.getCapsule(this).readFloat("exponent", 1.0f);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.f92080b, "exponent", 1.0f);
    }

    public C13705a(float f10) {
        super("ContrastAdjustmentFilter");
        C13702E.E(f10, "exponent");
        b(f10);
    }
}
