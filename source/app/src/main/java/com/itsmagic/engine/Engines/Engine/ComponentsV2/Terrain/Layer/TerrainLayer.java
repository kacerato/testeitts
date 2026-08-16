package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Layer;

import Ic.C2632k;
import JAVARuntime.Terrain;
import ab.d;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import eb.f;
import ub.g;
import ub.p;
import yb.C16165b;

public class TerrainLayer {

    public g f76781a;

    @Expose
    private String albedoFile;

    public g f76782b;

    public g f76783c;

    public p f76784d;

    public g f76785e;

    public int f76786f;

    public boolean f76787g;

    @Expose
    private Ac.b guid;

    public a f76788h;

    @Expose
    private String heightFile;

    @Expose
    @f
    private float heightIntensity;

    @Expose
    @f
    private float heightNormalStrength;

    @Expose
    @f
    private float heightQuality;

    public String f76789i;

    public String f76790j;

    public String f76791k;

    public String f76792l;

    public String f76793m;

    @Expose
    private String metallicFile;

    public String f76794n;

    @Expose
    private String normalMapFile;

    public Terrain.Layer f76795o;

    @Expose
    @f
    private float roughness;

    @Expose
    public String selectedMatcap;

    @Expose
    @f
    private float size;

    @Expose
    public a source;

    @Expose
    @f
    private float specular;

    @Expose
    public b useAs;

    public enum a {
        Textures,
        PBRPreset
    }

    public enum b {
        Indifferent,
        Grass,
        Rock
    }

    public TerrainLayer() {
        this.useAs = b.Indifferent;
        this.source = a.Textures;
        this.guid = new Ac.b(Tc.b.L());
        this.heightIntensity = 0.0f;
        this.heightNormalStrength = 0.4f;
        this.heightQuality = 0.5f;
        this.size = 4.0f;
        this.roughness = 0.6f;
        this.specular = 1.0f;
        this.selectedMatcap = "Ground/ground008";
        this.f76786f = 0;
        this.f76787g = true;
        this.f76794n = null;
    }

    public final void A() {
        this.f76786f++;
    }

    public final void B() {
        this.f76787g = true;
        A();
    }

    public final boolean C() {
        return (!this.f76787g && this.source == this.f76788h && d(this.selectedMatcap, this.f76789i) && d(this.albedoFile, this.f76790j) && d(this.normalMapFile, this.f76791k) && d(this.metallicFile, this.f76792l) && d(this.heightFile, this.f76793m) && !x()) ? false : true;
    }

    public void D(BuildDictionary dictionary) {
        BuildDicFile f10;
        BuildDicFile f11;
        String str = this.albedoFile;
        if (str != null && !str.isEmpty() && (f11 = dictionary.f(this.albedoFile.toString())) != null) {
            dictionary.h("TerrainLayer: REPLACING " + this.albedoFile + " TO " + f11.b());
            this.albedoFile = f11.b();
        }
        String str2 = this.normalMapFile;
        if (str2 == null || str2.isEmpty() || (f10 = dictionary.f(this.normalMapFile.toString())) == null) {
            return;
        }
        dictionary.h("TerrainLayer: REPLACING " + this.normalMapFile + " TO " + f10.b());
        this.normalMapFile = f10.b();
    }

    public void E(String albedoFile) {
        if (d(this.albedoFile, albedoFile)) {
            return;
        }
        this.albedoFile = albedoFile;
        B();
    }

    public void F(String heightFile) {
        if (d(this.heightFile, heightFile)) {
            return;
        }
        this.heightFile = heightFile;
        B();
    }

    public void G(float heightIntensity) {
        if (Float.compare(this.heightIntensity, heightIntensity) != 0) {
            A();
        }
        this.heightIntensity = heightIntensity;
    }

    public void H(float heightNormalStrength) {
        if (Float.compare(this.heightNormalStrength, heightNormalStrength) != 0) {
            A();
        }
        this.heightNormalStrength = heightNormalStrength;
    }

    public void I(float heightQuality) {
        if (Float.compare(this.heightQuality, heightQuality) != 0) {
            A();
        }
        this.heightQuality = heightQuality;
    }

    public void J(String metallicFile) {
        if (d(this.metallicFile, metallicFile)) {
            return;
        }
        this.metallicFile = metallicFile;
        B();
    }

    public void K(String normalMapFile) {
        if (d(this.normalMapFile, normalMapFile)) {
            return;
        }
        this.normalMapFile = normalMapFile;
        B();
    }

    public void L(float roughness) {
        if (Float.compare(this.roughness, roughness) != 0) {
            A();
        }
        this.roughness = roughness;
    }

    public void M(Terrain.Layer run) {
        this.f76795o = run;
    }

    public void N(float size) {
        if (Float.compare(this.size, size) != 0) {
            A();
        }
        this.size = size;
    }

    public void O(float specular) {
        if (Float.compare(this.specular, specular) != 0) {
            A();
        }
        this.specular = specular;
    }

    public Terrain.Layer P() {
        Terrain.Layer layer = this.f76795o;
        if (layer != null) {
            return layer;
        }
        Terrain.Layer layer2 = new Terrain.Layer(this);
        this.f76795o = layer2;
        return layer2;
    }

    public boolean Q(com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain terrain) {
        String str;
        String str2;
        if (!C()) {
            return false;
        }
        g gVar = this.f76781a;
        g gVar2 = this.f76782b;
        g gVar3 = this.f76785e;
        g gVar4 = this.f76783c;
        p pVar = this.f76784d;
        if (this.source == a.PBRPreset && (str = this.selectedMatcap) != null && ((str2 = this.f76794n) == null || !str2.equals(str))) {
            String str3 = this.selectedMatcap;
            this.f76794n = str3;
            this.albedoFile = H3.g.G1(str3, true, "BaseColor.jpg", "Color.jpg", "Albedo.jpg", "color.jpg");
            this.normalMapFile = H3.g.G1(this.selectedMatcap, false, "Normal.jpg", "NormalGL.jpg", "normal.jpg");
            this.heightFile = H3.g.G1(this.selectedMatcap, false, "height.jpg", "displacement.jpg");
            this.metallicFile = H3.g.G1(this.selectedMatcap, false, "Metallic.jpg", "Metalness.jpg");
        }
        this.f76781a = S(this.f76781a, this.albedoFile);
        this.f76782b = S(this.f76782b, this.normalMapFile);
        this.f76785e = S(this.f76785e, this.heightFile);
        this.f76783c = S(this.f76783c, this.metallicFile);
        R(terrain);
        a();
        this.f76787g = x();
        boolean z10 = (gVar == this.f76781a && gVar2 == this.f76782b && gVar3 == this.f76785e && gVar4 == this.f76783c && pVar == this.f76784d) ? false : true;
        if (z10) {
            A();
        }
        return z10;
    }

    public final void R(com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain terrain) {
        if (e() == null) {
            this.f76784d = null;
            return;
        }
        if (i(s(), this.f76784d) == null) {
            p c10 = d.c(e(), s(), d.a.NM);
            if (c10 != null) {
                this.f76784d = c10;
            } else {
                this.f76784d = null;
            }
        }
    }

    public final g S(g texture, String file) {
        if (texture == null && file != null && !file.isEmpty()) {
            return C16165b.u(file);
        }
        if (texture == null || !(file == null || file.isEmpty())) {
            return (texture == null || file.equals(texture.getFile())) ? texture : C16165b.u(file);
        }
        return null;
    }

    public final void a() {
        this.f76788h = this.source;
        this.f76789i = this.selectedMatcap;
        this.f76790j = this.albedoFile;
        this.f76791k = this.normalMapFile;
        this.f76792l = this.metallicFile;
        this.f76793m = this.heightFile;
    }

    public TerrainLayer clone() {
        TerrainLayer terrainLayer = new TerrainLayer();
        terrainLayer.guid = this.guid.clone();
        terrainLayer.albedoFile = this.albedoFile;
        terrainLayer.normalMapFile = this.normalMapFile;
        terrainLayer.size = this.size;
        terrainLayer.roughness = this.roughness;
        terrainLayer.specular = this.specular;
        terrainLayer.heightIntensity = this.heightIntensity;
        terrainLayer.heightNormalStrength = this.heightNormalStrength;
        terrainLayer.heightQuality = this.heightQuality;
        return terrainLayer;
    }

    public boolean c(Ac.b guid) {
        return this.guid.Y(guid);
    }

    public final boolean d(Object a10, Object b10) {
        return a10 == b10 || (a10 != null && a10.equals(b10));
    }

    public g e() {
        return this.f76781a;
    }

    public String f() {
        return this.albedoFile;
    }

    public void g(C2632k dependency) {
        String str = this.albedoFile;
        if (str != null && !str.isEmpty()) {
            dependency.f9114a.add(this.albedoFile.toString());
        }
        String str2 = this.normalMapFile;
        if (str2 == null || str2.isEmpty()) {
            return;
        }
        dependency.f9114a.add(this.normalMapFile.toString());
    }

    public p h() {
        return i(s(), this.f76784d);
    }

    public final p i(p attached, p builded) {
        if (attached != null) {
            return attached;
        }
        if (builded != null) {
            return builded;
        }
        return null;
    }

    public Ac.b j() {
        return this.guid;
    }

    public g k() {
        return this.f76785e;
    }

    public String l() {
        return this.heightFile;
    }

    public float m() {
        return this.heightIntensity;
    }

    public float n() {
        return this.heightNormalStrength;
    }

    public float o() {
        return this.heightQuality;
    }

    public int p() {
        return this.f76786f;
    }

    public g q() {
        return this.f76783c;
    }

    public String r() {
        return this.metallicFile;
    }

    public g s() {
        return this.f76782b;
    }

    public String t() {
        return this.normalMapFile;
    }

    public float u() {
        return this.roughness;
    }

    public float v() {
        return this.size;
    }

    public float w() {
        return this.specular;
    }

    public final boolean x() {
        return z(this.albedoFile, this.f76781a) || z(this.normalMapFile, this.f76782b) || z(this.metallicFile, this.f76783c) || z(this.heightFile, this.f76785e);
    }

    public boolean y() {
        return C();
    }

    public final boolean z(String file, p texture) {
        return (file == null || file.isEmpty() || texture != null) ? false : true;
    }

    public TerrainLayer(Ac.b guid) {
        this.useAs = b.Indifferent;
        this.source = a.Textures;
        new Ac.b(Tc.b.L());
        this.heightIntensity = 0.0f;
        this.heightNormalStrength = 0.4f;
        this.heightQuality = 0.5f;
        this.size = 4.0f;
        this.roughness = 0.6f;
        this.specular = 1.0f;
        this.selectedMatcap = "Ground/ground008";
        this.f76786f = 0;
        this.f76787g = true;
        this.f76794n = null;
        this.guid = guid;
    }

    public TerrainLayer(Ac.b guid, String selectedMatcap, b useAs, float size) {
        this.useAs = b.Indifferent;
        this.source = a.Textures;
        new Ac.b(Tc.b.L());
        this.heightIntensity = 0.0f;
        this.heightNormalStrength = 0.4f;
        this.heightQuality = 0.5f;
        this.size = 4.0f;
        this.roughness = 0.6f;
        this.specular = 1.0f;
        this.f76786f = 0;
        this.f76787g = true;
        this.f76794n = null;
        this.guid = guid;
        this.selectedMatcap = selectedMatcap;
        this.source = a.PBRPreset;
        this.useAs = useAs;
        this.size = size;
    }
}
