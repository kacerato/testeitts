package com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes;

import Ic.C2629h;
import Ic.C2632k;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.p;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.s;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.w;
import java.util.HashSet;
import ub.g;
import yb.C16165b;

public class PbrPresetNode extends ShaderGraphNode implements s {

    public static final String f81171e = "PBRPreset";

    public static final int f81172f = 0;

    public static final int f81173g = 1;

    public static final int f81174h = 2;

    public static final int f81175i = 3;

    public static final int f81176j = 4;

    public static final int f81177k = 5;

    public static final int f81178l = 6;

    public final ShaderGraphSlot[] f81180d;

    @Expose
    public String selectedPreset = "";

    public transient String f81179c = null;

    @Expose
    public String albedoFile = "";

    @Expose
    public String normalFile = "";

    @Expose
    public String roughnessFile = "";

    @Expose
    public String metallicFile = "";

    @Expose
    public String aoFile = "";

    @Expose
    public String emissiveFile = "";

    @Expose
    public String heightFile = "";

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new PbrPresetNode();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return PbrPresetNode.class;
        }

        @Override
        public String c() {
            return PbrPresetNode.f81171e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, PbrPresetNode.class);
        }

        @Override
        public String e() {
            return "Input/PBR";
        }

        @Override
        public String f() {
            return "PBR Preset";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        p.a(new a());
    }

    public PbrPresetNode() {
        C c10 = C.TEXTURE;
        this.f81180d = new ShaderGraphSlot[]{new ShaderGraphSlot("Albedo", c10), new ShaderGraphSlot("Normal", c10), new ShaderGraphSlot("Roughness", c10), new ShaderGraphSlot("Metallic", c10), new ShaderGraphSlot("AO", c10), new ShaderGraphSlot("Emissive", c10), new ShaderGraphSlot("Height", c10)};
        this.serializedNodeType = f81171e;
    }

    public static void H(C2632k dependency, HashSet<String> uniqueFiles, String filePath) {
        if (filePath == null || filePath.isEmpty() || !uniqueFiles.add(filePath)) {
            return;
        }
        dependency.f9114a.add(filePath);
    }

    public static String L(String value) {
        return value != null ? value : "";
    }

    public static String M(BuildDictionary dictionary, String slot, String filePath) {
        if (filePath == null || filePath.isEmpty()) {
            return "";
        }
        BuildDicFile f10 = dictionary.f(filePath);
        if (f10 == null) {
            return filePath;
        }
        dictionary.h("PbrPresetNode[" + slot + "]: REPLACING " + filePath + " TO " + f10.b());
        return f10.b();
    }

    public static String O(String file) {
        if (file == null) {
            file = "";
        }
        if (file.isEmpty()) {
            return "sgp_tex_0";
        }
        return "sgp_tex_" + Math.abs(file.hashCode());
    }

    @Override
    public void C(BuildDictionary dictionary) {
        N();
        this.albedoFile = M(dictionary, "albedoFile", this.albedoFile);
        this.normalFile = M(dictionary, "normalFile", this.normalFile);
        this.roughnessFile = M(dictionary, "roughnessFile", this.roughnessFile);
        this.metallicFile = M(dictionary, "metallicFile", this.metallicFile);
        this.aoFile = M(dictionary, "aoFile", this.aoFile);
        this.emissiveFile = M(dictionary, "emissiveFile", this.emissiveFile);
        this.heightFile = M(dictionary, "heightFile", this.heightFile);
    }

    public final void I(FilamentMaterial material, String file, HashSet<String> bound) {
        String O10 = O(file);
        if (bound.add(O10)) {
            g u10 = (file == null || file.isEmpty()) ? null : C16165b.u(file);
            if (ub.p.L(u10)) {
                u10.f(material, O10);
                return;
            }
            ub.p pVar = C16165b.f130163i;
            if (pVar != null) {
                pVar.f(material, O10);
            }
        }
    }

    public final void J(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, w stage, int outputIndex, String file) {
        String O10 = O(file);
        context.e(new ec.g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, O10));
        context.d(this, outputIndex, stage, "materialParams_" + O10, C.TEXTURE);
    }

    public String K() {
        String str = this.selectedPreset;
        return str != null ? str : "";
    }

    public final void N() {
        String trim = K().trim();
        if (trim.equals(this.f81179c)) {
            return;
        }
        this.f81179c = trim;
        this.albedoFile = "";
        this.normalFile = "";
        this.roughnessFile = "";
        this.metallicFile = "";
        this.aoFile = "";
        this.emissiveFile = "";
        this.heightFile = "";
        if (trim.isEmpty()) {
            return;
        }
        try {
            this.albedoFile = L(H3.g.G1(trim, true, "BaseColor.jpg", "Color.jpg", "Albedo.jpg", "color.jpg"));
            this.normalFile = L(H3.g.G1(trim, false, "Normal.jpg", "NormalGL.jpg", "normal.jpg"));
            this.roughnessFile = L(H3.g.G1(trim, false, "Roughness.jpg", "bmp.jpg"));
            this.metallicFile = L(H3.g.G1(trim, false, "Metallic.jpg", "Metalness.jpg"));
            this.aoFile = L(H3.g.G1(trim, false, "AmbientOcclusion.jpg"));
            this.emissiveFile = L(H3.g.G1(trim, false, "Emissive.jpg", "Emission.jpg"));
            this.heightFile = L(H3.g.G1(trim, false, "height.jpg", "displacement.jpg"));
        } catch (Throwable unused) {
        }
    }

    public void P(String value) {
        if (value == null) {
            value = "";
        }
        this.selectedPreset = value;
        this.f81179c = null;
        N();
    }

    @Override
    public void a(FilamentMaterial material, Material engineMaterial) {
        if (material == null) {
            return;
        }
        N();
        HashSet<String> hashSet = new HashSet<>();
        I(material, this.albedoFile, hashSet);
        I(material, this.normalFile, hashSet);
        I(material, this.roughnessFile, hashSet);
        I(material, this.metallicFile, hashSet);
        I(material, this.aoFile, hashSet);
        I(material, this.emissiveFile, hashSet);
        I(material, this.heightFile, hashSet);
    }

    @Override
    public String b() {
        N();
        return O(this.albedoFile);
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, w stage) {
        N();
        J(context, stage, 0, this.albedoFile);
        J(context, stage, 1, this.normalFile);
        J(context, stage, 2, this.roughnessFile);
        J(context, stage, 3, this.metallicFile);
        J(context, stage, 4, this.aoFile);
        J(context, stage, 5, this.emissiveFile);
        J(context, stage, 6, this.heightFile);
    }

    @Override
    public C2632k i(C2629h dependencyRequest) {
        N();
        C2632k c2632k = new C2632k();
        HashSet hashSet = new HashSet();
        H(c2632k, hashSet, this.albedoFile);
        H(c2632k, hashSet, this.normalFile);
        H(c2632k, hashSet, this.roughnessFile);
        H(c2632k, hashSet, this.metallicFile);
        H(c2632k, hashSet, this.aoFile);
        H(c2632k, hashSet, this.emissiveFile);
        H(c2632k, hashSet, this.heightFile);
        return c2632k;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f81180d;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        String K10 = K();
        if (K10 == null || K10.isEmpty()) {
            return "PBR Preset";
        }
        return "PBR Preset (" + H3.g.w1(K10) + ")";
    }

    @Override
    public boolean z() {
        return true;
    }
}
