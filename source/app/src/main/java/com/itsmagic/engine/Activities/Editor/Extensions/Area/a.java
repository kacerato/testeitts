package com.itsmagic.engine.Activities.Editor.Extensions.Area;

import Ug.k;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.PointLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SpotLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vertex.Data.MeshSerializer;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import da.C12894h;
import java.io.File;
import java.io.IOException;
import java.lang.constant.ConstantDescs;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import org.ITsMagic.Atlas.BakeOptions;
import org.ITsMagic.Atlas.LightDrawer;
import org.ITsMagic.Atlas.XAtlas;
import org.ITsMagic.Atlas.c;
import org.eclipse.jdt.core.JavaCore;
import ub.n;
import yb.C16165b;

public class a {

    public static final boolean f69999n = false;

    public static final float f70000o = 0.45f;

    public static final float f70001p = 0.8f;

    public static final float f70002q = 0.95f;

    public static final float f70003r = 0.95f;

    public static final g[] f70004s = {new g("albedo", "albedo", "BakeAtlas", "albedo", "albedoTilling", "albedoOffset", "albedo", "albedo", true, true), new g("normal map", "normalmap", "BakeNormalMap", JavaCore.NORMAL, "normalTilling", "normalOffset", JavaCore.NORMAL, "normalMap", false, false), new g("roughness", "roughness", "BakeRoughnessMap", "roughness", "roughnessTilling", "roughnessOffset", "roughness", "roughnessMap", false, false), new g("ao", "ao", "BakeAOMap", "ao", "aoTilling", "aoOffset", "ao", "aoMap", false, false), new g("emissive", "emissive", "BakeEmissive", "emissive", "emissiveTilling", "emissiveOffset", "emissive", "emissive", true, false)};

    public final List<GameObject> f70005a;

    public final BakeOptions f70006b;

    public List<k> f70007c;

    public i f70008d;

    public String f70009e;

    public GameObject f70010f;

    public CountDownLatch f70011g;

    public boolean f70012h;

    public File f70013i;

    public final List<SunLight> f70014j;

    public final List<SpotLight> f70015k;

    public final List<PointLight> f70016l;

    public float f70017m;

    public class C1044a implements XAtlas.a {

        public final i f70018a;

        public C1044a(final i val$listener) {
            this.f70018a = val$listener;
        }

        @Override
        public void a(int executed, int total, float progress, String tda) {
            a.this.h(executed, total, progress, tda, 0.0f, 0.45f);
        }

        @Override
        public void b(String step) {
            this.f70018a.b(step);
        }
    }

    public class b implements Runnable {

        public final CountDownLatch[] f70020b;

        public final int f70021c;

        public b(final CountDownLatch[] val$latches, final int val$finalChannelIndex) {
            this.f70020b = val$latches;
            this.f70021c = val$finalChannelIndex;
        }

        @Override
        public void run() {
            this.f70020b[this.f70021c].countDown();
        }
    }

    public class c implements LightDrawer.e {

        public final i f70023a;

        public final float f70024b;

        public final float f70025c;

        public c(final i val$listener, final float val$lightSlotStart, final float val$lightDrawEnd) {
            this.f70023a = val$listener;
            this.f70024b = val$lightSlotStart;
            this.f70025c = val$lightDrawEnd;
        }

        @Override
        public void a(int executed, int total, float progress, String tda) {
            a.this.h(executed, total, progress, tda, this.f70024b, this.f70025c);
        }

        @Override
        public void b(String step) {
            this.f70023a.b(step);
        }
    }

    public class d implements Runnable {

        public final Exception f70027b;

        public d(final Exception val$e) {
            this.f70027b = val$e;
        }

        @Override
        public void run() {
            Z6.i.y1("Ops!", "Failed:" + this.f70027b.getMessage());
        }
    }

    public class e implements c.b {

        public final float f70029a;

        public final float f70030b;

        public e(final float val$drawStart, final float val$drawEnd) {
            this.f70029a = val$drawStart;
            this.f70030b = val$drawEnd;
        }

        @Override
        public void a(int executed, int total, float progress, String tda) {
            a.this.h(executed, total, progress, tda, this.f70029a, this.f70030b);
        }

        @Override
        public void b(String step) {
            a.this.f70008d.b(step);
        }
    }

    public class f implements Runnable {

        public final String f70032b;

        public final g f70033c;

        public final AreaEditorComponent f70034d;

        public final n f70035e;

        public final Runnable f70036f;

        public class RunnableC1045a implements Runnable {
            public RunnableC1045a() {
            }

            @Override
            public void run() {
                try {
                    C16165b.i(f.this.f70032b).E0();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public f(final String val$outputFile, final g val$channel, final AreaEditorComponent val$aec, final n val$atlasTexture, final Runnable val$asyncFinished) {
            this.f70032b = val$outputFile;
            this.f70033c = val$channel;
            this.f70034d = val$aec;
            this.f70035e = val$atlasTexture;
            this.f70036f = val$asyncFinished;
        }

        @Override
        public void run() {
            try {
                File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + this.f70032b));
                if (!file.exists()) {
                    try {
                        file.createNewFile();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                }
                TextureConfig textureConfig = new TextureConfig();
                textureConfig.gammaCorrection = this.f70033c.f70047i;
                textureConfig.maxResolutionID = 16;
                textureConfig.m0(TextureConfig.d.RGBA8);
                textureConfig.j0(this.f70034d.getFilter());
                textureConfig.B0(this.f70034d.getQuality());
                textureConfig.p0(this.f70034d.isGenMipmaps());
                textureConfig.w0(this.f70034d.getMipmapLevels());
                com.itsmagic.engine.Engines.Engine.Texture.Utils.b.c(this.f70035e, file, textureConfig);
                K8.a.I(new RunnableC1045a());
            } finally {
                Runnable runnable = this.f70036f;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }
    }

    public static class g {

        public final String f70039a;

        public final String f70040b;

        public final String f70041c;

        public final String f70042d;

        public final String f70043e;

        public final String f70044f;

        public final String f70045g;

        public final String f70046h;

        public final boolean f70047i;

        public final boolean f70048j;

        public g(String displayName, String filePrefix, String defaultNamePrefix, String sourceTextureEntry, String tillingEntry, String offsetEntry, String materialTextureEntry, String serializedTextureEntry, boolean gammaCorrection, boolean allowDiffuseColor) {
            this.f70039a = displayName;
            this.f70040b = filePrefix;
            this.f70041c = defaultNamePrefix;
            this.f70042d = sourceTextureEntry;
            this.f70043e = tillingEntry;
            this.f70044f = offsetEntry;
            this.f70045g = materialTextureEntry;
            this.f70046h = serializedTextureEntry;
            this.f70047i = gammaCorrection;
            this.f70048j = allowDiffuseColor;
        }
    }

    public static class h {

        public k f70049a;

        public Material f70050b;

        public String f70051c;

        public String f70052d;

        public String f70053e;

        public String f70054f;

        public String f70055g;

        public int f70056h;

        public h() {
        }

        public h(C1044a c1044a) {
            this();
        }
    }

    public interface i {
        void a(int executed, int total, float progress, String tda);

        void b(String step);

        void c(GameObject gameObject);
    }

    public a(List<GameObject> objects, BakeOptions options) {
        this.f70009e = "Bake";
        this.f70011g = new CountDownLatch(1);
        this.f70012h = true;
        this.f70014j = new SteppedArrayList();
        this.f70015k = new SteppedArrayList();
        this.f70016l = new SteppedArrayList();
        this.f70017m = 0.0f;
        this.f70005a = objects;
        this.f70006b = options;
    }

    public static float e(float value) {
        return Math.max(0.0f, Math.min(1.0f, value));
    }

    public static void n(String msg) {
    }

    public static float o(int executed, int total, float progress) {
        if (total > 0) {
            progress = executed / total;
        } else if (progress > 1.0f) {
            progress /= 100.0f;
        }
        return e(progress);
    }

    public final void c(XAtlas atlas, GameObject object) {
        if (object.isEnabled()) {
            for (int i10 = 0; i10 < object.N(); i10++) {
                Component L10 = object.L(i10);
                if (L10.isEnabled()) {
                    if (L10 instanceof ModelRenderer) {
                        ModelRenderer modelRenderer = (ModelRenderer) L10;
                        Vertex vertex = modelRenderer.getVertex();
                        if (vertex != null) {
                            atlas.addInputMesh(vertex, modelRenderer.f73747F, object.transform.r0(new float[16]));
                        }
                    } else if (L10 instanceof SunLight) {
                        this.f70014j.add((SunLight) L10);
                    } else if (L10 instanceof SpotLight) {
                        this.f70015k.add((SpotLight) L10);
                    } else if (L10 instanceof PointLight) {
                        this.f70016l.add((PointLight) L10);
                    }
                }
            }
            for (int i11 = 0; i11 < object.D(); i11++) {
                GameObject C10 = object.C(i11);
                if (C10 != null) {
                    c(atlas, C10);
                }
            }
        }
    }

    public final String d(AreaEditorComponent aec, XAtlas atlas, k buildedAtlas, Vertex vertex, int currentAtlasIndex, org.ITsMagic.Atlas.c atlasDrawer, g channel, float drawStart, float drawEnd, Runnable asyncFinished) {
        this.f70008d.b("Creating " + channel.f70039a + " atlas texture");
        n nVar = new n(atlas.getEffectiveResolution(), atlas.getEffectiveResolution());
        nVar.apply();
        atlasDrawer.e(nVar, vertex, buildedAtlas.c(), this.f70006b.padding / 2, channel.f70042d, channel.f70043e, channel.f70044f, channel.f70048j, new e(drawStart, drawEnd));
        f(drawEnd, "");
        this.f70008d.b("Exporting " + channel.f70039a + " atlas texture");
        String p10 = p(channel, currentAtlasIndex);
        if (p10 == null || p10.isEmpty()) {
            if (asyncFinished != null) {
                asyncFinished.run();
            }
            return "";
        }
        File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + p10));
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        O9.b.d(new f(p10, channel, aec, nVar, asyncFinished));
        return p10;
    }

    public final void f(float progress, String tda) {
        g(progress, tda, 0, 0);
    }

    public final void g(float progress, String tda, int executed, int total) {
        float e10 = e(progress);
        float f10 = this.f70017m;
        if (e10 < f10) {
            e10 = f10;
        }
        this.f70017m = e10;
        this.f70008d.a(executed, total, e10, tda);
    }

    public final void h(int executed, int total, float progress, String tda, float start, float end) {
        g(start + ((end - start) * o(executed, total, progress)), tda, executed, total);
    }

    public final void i(Material material, String entryName, String file) {
        if (material == null || entryName == null || entryName.isEmpty()) {
            return;
        }
        SerializableShaderEntry.o(SerializableShaderEntry.e(entryName, SerializableShaderEntry.f81152f, material.B()), file);
    }

    public final void j() {
        if (this.f70012h) {
            for (int i10 = 0; i10 < this.f70005a.size(); i10++) {
                this.f70005a.get(i10).setEnabled(false);
            }
        }
        this.f70008d.c(this.f70010f);
        this.f70011g.countDown();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void k(AreaEditorComponent aec, boolean allowRecursiveSizeReduction, i listener) {
        float f10;
        String str;
        SteppedArrayList steppedArrayList;
        float f11;
        int max;
        int i10;
        float f12;
        float f13;
        int i11;
        int i12;
        String str2;
        int i13;
        int i14;
        float f14;
        XAtlas xAtlas;
        i iVar;
        SteppedArrayList steppedArrayList2;
        String str3;
        k kVar;
        String str4;
        String str5;
        int i15;
        Vertex vertex;
        SteppedArrayList steppedArrayList3;
        HashMap hashMap;
        int i16;
        String str6;
        String str7;
        String sb2;
        i iVar2 = listener;
        this.f70008d = iVar2;
        this.f70011g = new CountDownLatch(1);
        this.f70014j.clear();
        this.f70015k.clear();
        this.f70016l.clear();
        this.f70017m = 0.0f;
        XAtlas xAtlas2 = new XAtlas();
        iVar2.b("Computing charts");
        f(0.0f, "");
        for (int i17 = 0; i17 < this.f70005a.size(); i17++) {
            GameObject gameObject = this.f70005a.get(i17);
            if (gameObject != null) {
                c(xAtlas2, gameObject);
            }
        }
        try {
            BakeOptions bakeOptions = this.f70006b;
            xAtlas2.generate(-1, bakeOptions.maxChartArea, bakeOptions.maxBoundaryLength, bakeOptions.normalDeviationWeight, bakeOptions.roundnessWeight, bakeOptions.straightnessWeight, bakeOptions.normalSeamWeight, bakeOptions.textureSeamWeight, bakeOptions.maxChartSize, bakeOptions.padding, bakeOptions.texelsPerUnit, bakeOptions.bilinear, bakeOptions.blockAlign, allowRecursiveSizeReduction, new C1044a(iVar2));
            f10 = 0.45f;
            str = "";
            f(0.45f, str);
            this.f70007c = xAtlas2.getBakeDataList();
            if (this.f70012h) {
                for (int i18 = 0; i18 < this.f70005a.size(); i18++) {
                    this.f70005a.get(i18).setEnabled(false);
                }
            }
            this.f70010f = new GameObject(this.f70009e);
            steppedArrayList = new SteppedArrayList();
            f11 = this.f70006b.light ? 0.8f : 0.95f;
            max = Math.max(this.f70007c.size(), 1);
            i10 = 0;
        } catch (Exception e10) {
            N7.c.j0(new d(e10));
            e10.printStackTrace();
            j();
            return;
        }
        while (true) {
            String str8 = "/Bake/";
            String str9 = "/";
            if (i10 >= this.f70007c.size()) {
                break;
            }
            float f15 = f11 - f10;
            float f16 = max;
            float f17 = ((i10 / f16) * f15) + f10;
            int i19 = i10 + 1;
            float f18 = (f15 * (i19 / f16)) + f10;
            float f19 = f18 - f17;
            float f20 = f17 + (f19 * 0.8f);
            k kVar2 = this.f70007c.get(i10);
            Vertex d10 = kVar2.d();
            if (d10 != null) {
                iVar2.b("Starting atlas generation");
                HashMap hashMap2 = new HashMap();
                i13 = i19;
                if (this.f70006b.texture) {
                    org.ITsMagic.Atlas.c cVar = new org.ITsMagic.Atlas.c();
                    int length = f70004s.length;
                    steppedArrayList3 = steppedArrayList;
                    CountDownLatch[] countDownLatchArr = new CountDownLatch[length];
                    k kVar3 = kVar2;
                    int i20 = 0;
                    while (i20 < length) {
                        countDownLatchArr[i20] = new CountDownLatch(1);
                        i20++;
                        str9 = str9;
                        str8 = str8;
                    }
                    String str10 = str9;
                    String str11 = str8;
                    int i21 = 0;
                    while (i21 < length) {
                        g gVar = f70004s[i21];
                        float f21 = f20 - f17;
                        int i22 = i10;
                        float f22 = length;
                        float f23 = f17 + ((i21 / f22) * f21);
                        int i23 = i21 + 1;
                        int i24 = length;
                        float f24 = f17 + (f21 * (i23 / f22));
                        b bVar = new b(countDownLatchArr, i21);
                        k kVar4 = kVar3;
                        String str12 = str10;
                        String str13 = str11;
                        Vertex vertex2 = d10;
                        int i25 = max;
                        float f25 = f11;
                        Vertex vertex3 = d10;
                        float f26 = f20;
                        CountDownLatch[] countDownLatchArr2 = countDownLatchArr;
                        HashMap hashMap3 = hashMap2;
                        String str14 = str;
                        XAtlas xAtlas3 = xAtlas2;
                        String d11 = d(aec, xAtlas2, kVar4, vertex2, i22, cVar, gVar, f23, f24, bVar);
                        if (d11 != null && !d11.isEmpty()) {
                            hashMap3.put(gVar.f70045g, d11);
                        }
                        str = str14;
                        f20 = f26;
                        hashMap2 = hashMap3;
                        i21 = i23;
                        i10 = i22;
                        max = i25;
                        length = i24;
                        kVar3 = kVar4;
                        xAtlas2 = xAtlas3;
                        countDownLatchArr = countDownLatchArr2;
                        str10 = str12;
                        str11 = str13;
                        f11 = f25;
                        d10 = vertex3;
                    }
                    int i26 = length;
                    i14 = max;
                    f14 = f11;
                    str3 = str;
                    xAtlas = xAtlas2;
                    vertex = d10;
                    CountDownLatch[] countDownLatchArr3 = countDownLatchArr;
                    kVar = kVar3;
                    str4 = str10;
                    str5 = str11;
                    i15 = i10;
                    hashMap = hashMap2;
                    f(f20, str3);
                    f(f18, str3);
                    for (int i27 = 0; i27 < i26; i27++) {
                        try {
                            countDownLatchArr3[i27].await();
                        } catch (InterruptedException e11) {
                            e11.printStackTrace();
                        }
                    }
                } else {
                    kVar = kVar2;
                    str4 = "/";
                    str5 = "/Bake/";
                    i15 = i10;
                    i14 = max;
                    f14 = f11;
                    str3 = str;
                    xAtlas = xAtlas2;
                    vertex = d10;
                    steppedArrayList3 = steppedArrayList;
                    hashMap = hashMap2;
                }
                iVar = listener;
                iVar.b("Exporting atlas vertex");
                File file = this.f70013i;
                if (file != null) {
                    String absolutePath = file.getAbsolutePath();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(com.itsmagic.engine.Core.Components.ProjectController.a.R());
                    str6 = str4;
                    sb3.append(str6);
                    String replace = absolutePath.replace(sb3.toString(), str3);
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("mesh_");
                    i16 = i15;
                    sb4.append(i16);
                    sb4.append(".mesh");
                    sb2 = replace + str6 + sb4.toString();
                    str7 = str5;
                } else {
                    i16 = i15;
                    str6 = str4;
                    String L10 = com.itsmagic.engine.Core.Components.ProjectController.a.L();
                    String G10 = com.itsmagic.engine.Core.Components.ProjectController.a.G();
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(L10);
                    str7 = str5;
                    sb5.append(str7);
                    sb5.append(G10);
                    sb2 = sb5.toString();
                }
                MeshSerializer.o(MeshSerializer.m(sb2), vertex);
                f(f17 + (f19 * 0.9f), str3);
                Material material = new Material();
                material.f0("Lit/LightMap");
                if (this.f70006b.texture && !hashMap.isEmpty()) {
                    for (g gVar2 : f70004s) {
                        String str15 = (String) hashMap.get(gVar2.f70045g);
                        if (str15 != null && !str15.isEmpty()) {
                            material.i0(gVar2.f70045g, str15);
                            i(material, gVar2.f70046h, str15);
                        }
                    }
                }
                File file2 = this.f70013i;
                material.f78885e = file2 != null ? file2.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + str6, str3) + str6 + ("material_" + i16 + ".mesh") : com.itsmagic.engine.Core.Components.ProjectController.a.L() + str7 + com.itsmagic.engine.Core.Components.ProjectController.a.F();
                material.f78886g = true;
                s(material);
                h hVar = new h(null);
                hVar.f70049a = kVar;
                hVar.f70050b = material;
                hVar.f70051c = sb2;
                hVar.f70052d = material.f78885e;
                hVar.f70053e = (String) hashMap.get("albedo");
                hVar.f70054f = (String) hashMap.get(JavaCore.NORMAL);
                hVar.f70055g = (String) hashMap.get("emissive");
                hVar.f70056h = i16;
                steppedArrayList2 = steppedArrayList3;
                steppedArrayList2.add(hVar);
            } else {
                i13 = i19;
                i14 = max;
                f14 = f11;
                xAtlas = xAtlas2;
                iVar = iVar2;
                steppedArrayList2 = steppedArrayList;
                str3 = str;
                f(f18, str3);
            }
            steppedArrayList = steppedArrayList2;
            str = str3;
            i10 = i13;
            max = i14;
            xAtlas2 = xAtlas;
            f11 = f14;
            f10 = 0.45f;
            iVar2 = iVar;
            N7.c.j0(new d(e10));
            e10.printStackTrace();
            j();
            return;
        }
        float f27 = f11;
        XAtlas xAtlas4 = xAtlas2;
        i iVar3 = iVar2;
        SteppedArrayList steppedArrayList4 = steppedArrayList;
        String str16 = str;
        f(f27, str16);
        int max2 = Math.max(steppedArrayList4.size(), 1);
        int i28 = 0;
        while (i28 < steppedArrayList4.size()) {
            float f28 = 0.95f - f27;
            float f29 = max2;
            float f30 = ((i28 / f29) * f28) + f27;
            int i29 = i28 + 1;
            float f31 = f27 + (f28 * (i29 / f29));
            float f32 = ((f31 - f30) * 0.8f) + f30;
            h hVar2 = (h) steppedArrayList4.get(i28);
            if (hVar2 == null || hVar2.f70049a == null) {
                f13 = f27;
                i11 = max2;
                i12 = i29;
                f(f31, str16);
            } else if (this.f70006b.light) {
                iVar3.b("Creating light map texture");
                int q10 = q(aec, xAtlas4.getEffectiveResolution());
                n nVar = new n(q10, q10);
                nVar.apply();
                f13 = f27;
                i11 = max2;
                i12 = i29;
                new LightDrawer().l(nVar, m(hVar2.f70053e), m(hVar2.f70054f), m(hVar2.f70055g), aec.getEffectiveGIQuality(), aec.getBounceGIIterations(), aec.getBounceGIRange(), aec.getBounceGIIntensity(), aec.isBounceGIVisibility(), aec.isBakeAmbientOcclusion(), aec.getAmbientOcclusionRadius(), aec.getAmbientOcclusionIntensity(), aec.getAmbientOcclusionPower(), aec.getAmbientOcclusionQuality(), hVar2.f70049a.c(), this.f70007c, this.f70014j, this.f70015k, this.f70016l, this.f70006b.padding / 2, r(this.f70013i), new c(iVar3, f30, f32));
                f(f32, str16);
                iVar3.b("Exporting light map texture");
                File file3 = this.f70013i;
                if (file3 != null) {
                    str2 = file3.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", str16) + "/lightmap_" + hVar2.f70056h + ".png";
                } else {
                    String L11 = com.itsmagic.engine.Core.Components.ProjectController.a.L();
                    File file4 = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + L11 + "/Bake/"));
                    if (!file4.exists()) {
                        file4.mkdirs();
                    }
                    str2 = L11 + "/Bake/lightmap_" + hVar2.f70056h + ".png";
                }
                String str17 = str2;
                File file5 = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + str17));
                if (!file5.exists()) {
                    try {
                        file5.createNewFile();
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                }
                TextureConfig textureConfig = new TextureConfig();
                textureConfig.gammaCorrection = false;
                textureConfig.maxResolutionID = 16;
                textureConfig.m0(TextureConfig.d.RGBA8);
                textureConfig.j0(aec.getFilter());
                textureConfig.B0(aec.getQuality());
                textureConfig.p0(aec.isGenMipmaps());
                textureConfig.w0(aec.getMipmapLevels());
                com.itsmagic.engine.Engines.Engine.Texture.Utils.b.c(nVar, file5, textureConfig);
                try {
                    C16165b.i(str17).E0();
                } catch (Exception e13) {
                    e13.printStackTrace();
                }
                hVar2.f70050b.i0("lightMap", str17);
                s(hVar2.f70050b);
                f(f31, str16);
            } else {
                f(f31, str16);
                f13 = f27;
                i11 = max2;
                i12 = i29;
            }
            max2 = i11;
            i28 = i12;
            f27 = f13;
        }
        float f33 = f27;
        if (this.f70006b.light) {
            f12 = 0.95f;
            f(0.95f, str16);
        } else {
            f12 = 0.95f;
        }
        iVar3.b("Spawning objects");
        float f34 = this.f70006b.light ? f12 : f33;
        f(f34, str16);
        int i30 = 0;
        while (i30 < steppedArrayList4.size()) {
            h hVar3 = (h) steppedArrayList4.get(i30);
            if (hVar3 != null) {
                Fb.c.f(hVar3.f70051c);
                C12894h.f(hVar3.f70052d);
                this.f70010f.r(new ModelRenderer(hVar3.f70051c, hVar3.f70052d));
            }
            i30++;
            h(i30, steppedArrayList4.size(), i30 / Math.max(steppedArrayList4.size(), 1), "", f34, 1.0f);
        }
        f(1.0f, str16);
        j();
    }

    public final String l(String worldMeta, String baseName) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(baseName);
        int i10 = 0;
        sb2.append(0);
        sb2.append(".png");
        String sb3 = sb2.toString();
        File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + worldMeta + "/Bake/" + sb3));
        while (file.exists()) {
            i10++;
            sb3 = baseName + i10 + ".png";
            file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + worldMeta + "/Bake/" + sb3));
        }
        return sb3;
    }

    public final ub.g m(String file) {
        if (file != null && !file.isEmpty()) {
            try {
                TextureConfig textureConfig = new TextureConfig();
                textureConfig.gammaCorrection = false;
                textureConfig.j0(TextureConfig.c.Nearest);
                textureConfig.allowModifications = true;
                return new ub.g(file, textureConfig, true);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public final String p(g channel, int currentAtlasIndex) {
        File file = this.f70013i;
        if (file != null) {
            return file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "") + "/" + (channel.f70040b + ConstantDescs.DEFAULT_NAME + currentAtlasIndex + ".png");
        }
        String L10 = com.itsmagic.engine.Core.Components.ProjectController.a.L();
        File file2 = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + L10 + "/Bake/"));
        if (!file2.exists()) {
            file2.mkdirs();
        }
        if ("albedo".equalsIgnoreCase(channel.f70045g)) {
            return L10 + "/Bake/" + com.itsmagic.engine.Core.Components.ProjectController.a.D();
        }
        return L10 + "/Bake/" + l(L10, channel.f70041c);
    }

    public final int q(AreaEditorComponent aec, int atlasResolution) {
        if (atlasResolution <= 1) {
            return 1;
        }
        float I10 = aec != null ? Nc.b.I(aec.getLightTexelsPerUnit() / aec.getTexelsPerUnit()) : 1.0f;
        if (!Float.isFinite(I10) || I10 <= 0.0f) {
            I10 = 0.25f;
        }
        return Math.max(1, Math.round(atlasResolution * ((float) Math.sqrt(I10))));
    }

    public final File r(File metaFolder) {
        if (metaFolder != null) {
            return new File(metaFolder, "tempGI.png");
        }
        File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + com.itsmagic.engine.Core.Components.ProjectController.a.L() + "/Bake/"));
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, "tempGI.png");
    }

    public final void s(Material material) {
        String str;
        if (material == null || (str = material.f78885e) == null || str.isEmpty()) {
            return;
        }
        try {
            X7.a.b(material.f78885e, material.a0(N7.c.t()), N7.c.t());
        } catch (Exception e10) {
            System.out.println("FAILED TO SAVE MATERIAL " + material.f78885e);
            e10.printStackTrace();
        }
    }

    public void t(boolean disableOriginalObjects) {
        this.f70012h = disableOriginalObjects;
    }

    public void u(File metaFolder) {
        this.f70013i = metaFolder;
    }

    public a(GameObject object, BakeOptions options) {
        this.f70009e = "Bake";
        this.f70011g = new CountDownLatch(1);
        this.f70012h = true;
        this.f70014j = new SteppedArrayList();
        this.f70015k = new SteppedArrayList();
        this.f70016l = new SteppedArrayList();
        this.f70017m = 0.0f;
        this.f70005a = Collections.singletonList(object);
        this.f70006b = options;
        this.f70009e = object.getName() + " bake";
    }
}
