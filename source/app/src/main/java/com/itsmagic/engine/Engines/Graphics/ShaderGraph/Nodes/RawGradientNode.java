package com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes;

import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Gradient.Entry;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.g;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.p;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.s;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.w;
import java.lang.constant.ConstantDescs;
import ub.n;
import yb.C16165b;

public class RawGradientNode extends ShaderGraphNode implements s {

    public static final String f81192f = "RawGradient";

    public static final int f81193g = 256;

    public transient n f81194c;

    @Expose
    public Gradient gradient = new Gradient();

    public transient int f81195d = -1;

    public final ShaderGraphSlot[] f81196e = {new ShaderGraphSlot("Gradient", C.TEXTURE)};

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new RawGradientNode();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return RawGradientNode.class;
        }

        @Override
        public String c() {
            return "RawGradient";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, RawGradientNode.class);
        }

        @Override
        public String e() {
            return "Input";
        }

        @Override
        public String f() {
            return "Color Gradient";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        p.a(new a());
    }

    public RawGradientNode() {
        this.gradient.n();
        this.serializedNodeType = "RawGradient";
    }

    public final int H() {
        Gradient gradient = this.gradient;
        int i10 = 17;
        if (gradient == null) {
            return 17;
        }
        int j10 = gradient.j();
        for (int i11 = 0; i11 < j10; i11++) {
            Entry i12 = this.gradient.i(i11);
            int floatToIntBits = (i10 * 31) + Float.floatToIntBits(i12.d());
            ColorINT c10 = i12.c();
            i10 = (floatToIntBits * 31) + (c10 != null ? c10.intColor : 0);
        }
        return i10;
    }

    public final void I() {
        if (this.f81194c != null) {
            return;
        }
        TextureConfig textureConfig = new TextureConfig();
        textureConfig.genMipmaps = false;
        textureConfig.allowModifications = true;
        textureConfig.wrap = TextureConfig.h.Clamp;
        textureConfig.j0(TextureConfig.c.Linear);
        this.f81194c = new n(256, 1, textureConfig, true);
    }

    public String J() {
        return "sgp_" + j().replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME);
    }

    public final void K() {
        if (this.gradient == null) {
            Gradient gradient = new Gradient();
            this.gradient = gradient;
            gradient.n();
        }
        I();
        int H10 = H();
        if (H10 == this.f81195d) {
            return;
        }
        this.f81195d = H10;
        ColorINT colorINT = new ColorINT();
        for (int i10 = 0; i10 < 256; i10++) {
            this.gradient.l(i10 / 255, colorINT);
            this.f81194c.Y(255 - i10, 0, colorINT);
        }
        this.f81194c.apply();
    }

    @Override
    public void a(FilamentMaterial material, Material engineMaterial) {
        if (material == null) {
            return;
        }
        K();
        if (ub.p.L(this.f81194c)) {
            this.f81194c.f(material, J());
            return;
        }
        ub.p pVar = C16165b.f130163i;
        if (pVar != null) {
            pVar.f(material, J());
        }
    }

    @Override
    public String b() {
        return J();
    }

    @Override
    public void h(g context, w stage) {
        String J10 = J();
        context.e(new ec.g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, J10));
        context.d(this, 0, stage, "materialParams_" + J10, C.TEXTURE);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f81196e;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Color Gradient";
    }

    @Override
    public boolean z() {
        return true;
    }
}
