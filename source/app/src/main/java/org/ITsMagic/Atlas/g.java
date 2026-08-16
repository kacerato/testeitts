package org.ITsMagic.Atlas;

import Ug.k;
import Z6.i;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vertex.Data.MeshSerializer;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import ib.C13600g;
import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import org.ITsMagic.Atlas.XAtlas;
import org.ITsMagic.Atlas.c;
import ub.n;

public class g {

    public static final boolean f100022k = false;

    public final List<GameObject> f100023a;

    public final BakeOptions f100024b;

    public List<k> f100025c;

    public b f100026d;

    public final AtomicBoolean f100027e;

    public String f100028f;

    public GameObject f100029g;

    public CountDownLatch f100030h;

    public boolean f100031i;

    public File f100032j;

    public class a implements Runnable {

        public final b f100033b;

        public final XAtlas f100034c;

        public class RunnableC1905a implements Runnable {

            public class C1906a implements XAtlas.a {
                public C1906a() {
                }

                @Override
                public void a(int executed, int total, float progress, String tda) {
                    a.this.f100033b.a(executed, total, progress, tda);
                }

                @Override
                public void b(String step) {
                    a.this.f100033b.b(step);
                }
            }

            public class b implements c.b {

                public final k f100038a;

                public b(final k val$buildedAtlas) {
                    this.f100038a = val$buildedAtlas;
                }

                @Override
                public void a(int executed, int total, float progress, String tda) {
                    float size = 1.0f / g.this.f100025c.size();
                    a.this.f100033b.a(executed, total, ((g.this.f100025c.indexOf(this.f100038a) * size) + ((progress / 100.0f) * size)) * 100.0f, tda);
                }

                @Override
                public void b(String step) {
                    a.this.f100033b.b(step);
                }
            }

            public class c implements Runnable {

                public final String f100040b;

                public final k f100041c;

                public final String f100042d;

                public final CountDownLatch f100043e;

                public c(final String val$finalAlbedoFile, final k val$buildedAtlas, final String val$finalVertexFile, final CountDownLatch val$countDownLatch) {
                    this.f100040b = val$finalAlbedoFile;
                    this.f100041c = val$buildedAtlas;
                    this.f100042d = val$finalVertexFile;
                    this.f100043e = val$countDownLatch;
                }

                @Override
                public void run() {
                    String str;
                    a.this.f100033b.b("Spawning objects");
                    Material material = new Material();
                    if (g.this.f100024b.texture) {
                        material.i0("albedo", this.f100040b);
                    }
                    if (g.this.f100032j != null) {
                        str = g.this.f100032j.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "") + "/" + ("iatlas_material_" + g.this.f100025c.indexOf(this.f100041c) + ".mat");
                    } else {
                        str = com.itsmagic.engine.Core.Components.ProjectController.a.L() + "/Bake/" + com.itsmagic.engine.Core.Components.ProjectController.a.F();
                    }
                    material.f78885e = str;
                    material.f78886g = true;
                    try {
                        X7.a.b(material.f78885e, material.a0(N7.c.t()), N7.c.t());
                    } catch (Exception e10) {
                        System.out.println("FAILED TO SAVE MATERIAL " + material.f78885e);
                        e10.printStackTrace();
                    }
                    g.this.f100029g.r(new ModelRenderer(this.f100042d, material.f78885e));
                    this.f100043e.countDown();
                }
            }

            public class d implements Runnable {

                public final Exception f100045b;

                public d(final Exception val$e) {
                    this.f100045b = val$e;
                }

                @Override
                public void run() {
                    i.y1("Ops!", "Failed:" + this.f100045b.getMessage());
                }
            }

            public RunnableC1905a() {
            }

            @Override
            public void run() {
                n nVar;
                String str;
                String str2;
                try {
                    a aVar = a.this;
                    aVar.f100034c.generate(-1, g.this.f100024b.maxChartArea, g.this.f100024b.maxBoundaryLength, g.this.f100024b.normalDeviationWeight, g.this.f100024b.roundnessWeight, g.this.f100024b.straightnessWeight, g.this.f100024b.normalSeamWeight, g.this.f100024b.textureSeamWeight, g.this.f100024b.maxChartSize, g.this.f100024b.padding, g.this.f100024b.texelsPerUnit, g.this.f100024b.bilinear, g.this.f100024b.blockAlign, true, new C1906a());
                    a aVar2 = a.this;
                    g.this.f100025c = aVar2.f100034c.getBakeDataList();
                    if (g.this.f100031i) {
                        for (int i10 = 0; i10 < g.this.f100023a.size(); i10++) {
                            ((GameObject) g.this.f100023a.get(i10)).setEnabled(false);
                        }
                    }
                    a.this.f100033b.d();
                    g.this.f100029g = new GameObject(g.this.f100028f);
                    for (k kVar : g.this.f100025c) {
                        Vertex d10 = kVar.d();
                        if (d10 != null && !g.this.f100027e.get()) {
                            a.this.f100033b.b("Starting atlas generation");
                            if (g.this.f100024b.texture) {
                                a.this.f100033b.b("Creating atlas texture");
                                nVar = new n(a.this.f100034c.getEffectiveResolution(), a.this.f100034c.getEffectiveResolution());
                                nVar.apply();
                                new org.ITsMagic.Atlas.c().e(nVar, d10, kVar.c(), g.this.f100024b.padding / 2, "albedo", "albedoTilling", "albedoOffset", true, new b(kVar));
                            } else {
                                nVar = null;
                            }
                            a.this.f100033b.b("Exporting atlas vertex");
                            String str3 = g.this.f100032j != null ? g.this.f100032j.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "") + "/" + ("iatlas_bake_" + g.this.f100025c.indexOf(kVar) + ".mesh") : com.itsmagic.engine.Core.Components.ProjectController.a.L() + "/Bake/" + com.itsmagic.engine.Core.Components.ProjectController.a.G();
                            MeshSerializer.o(MeshSerializer.m(str3), d10);
                            a.this.f100033b.b("Exporting atlas texture");
                            if (g.this.f100024b.texture) {
                                if (g.this.f100032j != null) {
                                    str2 = g.this.f100032j.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "") + "/" + ("iatlas_atlas_albedo_" + g.this.f100025c.indexOf(kVar) + ".png");
                                } else {
                                    String L10 = com.itsmagic.engine.Core.Components.ProjectController.a.L();
                                    String D10 = com.itsmagic.engine.Core.Components.ProjectController.a.D();
                                    File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + L10 + "/Bake/"));
                                    if (!file.exists()) {
                                        file.mkdirs();
                                    }
                                    str2 = L10 + "/Bake/" + D10;
                                }
                                String str4 = str2;
                                File file2 = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + str4));
                                if (!file2.exists()) {
                                    try {
                                        file2.createNewFile();
                                    } catch (IOException e10) {
                                        e10.printStackTrace();
                                    }
                                }
                                TextureConfig textureConfig = new TextureConfig();
                                textureConfig.maxResolutionID = 16;
                                textureConfig.m0(TextureConfig.d.RGBA8);
                                com.itsmagic.engine.Engines.Engine.Texture.Utils.b.c(nVar, file2, textureConfig);
                                str = str4;
                            } else {
                                str = "";
                            }
                            CountDownLatch countDownLatch = new CountDownLatch(1);
                            K8.a.I(new c(str, kVar, str3, countDownLatch));
                            try {
                                countDownLatch.await();
                            } catch (InterruptedException e11) {
                                e11.printStackTrace();
                            }
                        }
                    }
                    g.this.n();
                } catch (Exception e12) {
                    N7.c.j0(new d(e12));
                    e12.printStackTrace();
                    g.this.n();
                }
            }
        }

        public a(final b val$listener, final XAtlas val$atlas) {
            this.f100033b = val$listener;
            this.f100034c = val$atlas;
        }

        @Override
        public void run() {
            this.f100033b.b("Preparing");
            for (int i10 = 0; i10 < g.this.f100023a.size(); i10++) {
                GameObject gameObject = (GameObject) g.this.f100023a.get(i10);
                if (gameObject != null) {
                    g.this.m(this.f100034c, gameObject);
                }
            }
            new Thread(new RunnableC1905a()).start();
        }
    }

    public interface b {
        void a(int executed, int total, float progress, String tda);

        void b(String step);

        void c(GameObject gameObject);

        void d();
    }

    public g(List<GameObject> objects, BakeOptions options) {
        this.f100027e = new AtomicBoolean();
        this.f100028f = "Bake";
        this.f100030h = new CountDownLatch(1);
        this.f100031i = true;
        this.f100023a = objects;
        this.f100024b = options;
    }

    public static void r(Vertex vertex) {
        if (vertex.i1() != null) {
            boolean z10 = true;
            boolean z11 = vertex.x0() == null || vertex.x0().capacity() != vertex.i1().capacity();
            if (vertex.F0() != null && vertex.F0().capacity() == vertex.i1().capacity()) {
                z10 = z11;
            }
            if (z10) {
                vertex.apply();
            }
        }
    }

    public static void s(String msg) {
    }

    public final void m(XAtlas atlas, GameObject object) {
        ModelRenderer modelRenderer;
        Vertex vertex;
        if (object.isEnabled()) {
            float[] c10 = C13600g.c(object, new float[16]);
            for (int i10 = 0; i10 < object.N(); i10++) {
                Component L10 = object.L(i10);
                if (L10.isEnabled() && (L10 instanceof ModelRenderer) && (vertex = (modelRenderer = (ModelRenderer) L10).getVertex()) != null) {
                    r(vertex);
                    atlas.addInputMesh(vertex, modelRenderer.f73747F, c10);
                }
            }
            for (int i11 = 0; i11 < object.D(); i11++) {
                GameObject C10 = object.C(i11);
                if (C10 != null) {
                    m(atlas, C10);
                }
            }
        }
    }

    public final void n() {
        if (this.f100031i) {
            for (int i10 = 0; i10 < this.f100023a.size(); i10++) {
                this.f100023a.get(i10).setEnabled(false);
            }
        }
        this.f100026d.c(this.f100029g);
        this.f100030h.countDown();
    }

    public void o() {
        this.f100027e.set(true);
    }

    public void p(b listener) {
        this.f100026d = listener;
        K8.a.I(new a(listener, new XAtlas()));
    }

    public void q(b listener) {
        p(listener);
        try {
            this.f100030h.await();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }

    public void t(boolean disableOriginalObjects) {
        this.f100031i = disableOriginalObjects;
    }

    public void u(File metaFolder) {
        this.f100032j = metaFolder;
    }

    public g(GameObject object, BakeOptions options) {
        this.f100027e = new AtomicBoolean();
        this.f100028f = "Bake";
        this.f100030h = new CountDownLatch(1);
        this.f100031i = true;
        this.f100023a = Collections.singletonList(object);
        this.f100024b = options;
        this.f100028f = object.getName() + " bake";
    }
}
