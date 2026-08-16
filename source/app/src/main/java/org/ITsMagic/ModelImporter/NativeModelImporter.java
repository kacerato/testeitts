package org.ITsMagic.ModelImporter;

import Ic.C2633l;
import Ic.C2636o;
import Ic.C2639s;
import Ic.InterfaceC2637p;
import android.content.Context;
import android.graphics.Bitmap;
import c4.C4153a;
import com.itsmagic.engine.Activities.Editor.Panels.Files.Utils.ImportFilePopup;
import com.itsmagic.engine.Activities.Editor.TextOutputActivity;
import com.itsmagic.engine.Activities.Editor.Utils.y;
import com.itsmagic.engine.Engines.Engine.Animation.AnimationData;
import com.itsmagic.engine.Engines.Engine.Animation.Frame;
import com.itsmagic.engine.Engines.Engine.Animation.Timeline;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationEntry;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.PointLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SpotLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Link.PrefabLink;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkeletonBone.SkinJoint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.Armature;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.TextureNeedsImport;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.b;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Data.MeshSerializer;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import ib.C13600g;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;
import lb.C14066c;
import org.ITsMagic.Atlas.g;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.core.JavaElement;
import t3.C15377a;

@InterfaceC2637p
public class NativeModelImporter {
    private static final int ASSIMP_LIGHT_DIRECTIONAL = 1;
    private static final int ASSIMP_LIGHT_POINT = 2;
    private static final int ASSIMP_LIGHT_SPOT = 3;
    private static final char[] INVALID_FILENAME_CHARS;
    private static final int MAX_FILENAME_LENGTH = 100;
    private static final float SKINNED_BONE_BOUNDING_RADIUS_MIN_PADDING = 0.01f;
    private static final float SKINNED_BONE_BOUNDING_RADIUS_PADDING = 1.05f;
    private static final String WIREFRAME_SUFFIX = "_wf";
    private static Vg.b activeQueue;
    private static final Object block;
    private static final AtomicBoolean importing;
    private static final List<Vg.b> queueList;

    public class a implements Runnable {

        public final Vg.a f100047b;

        public final File f100048c;

        public a(final Vg.a val$listener, final File val$goFile) {
            this.f100047b = val$listener;
            this.f100048c = val$goFile;
        }

        @Override
        public void run() {
            this.f100047b.b(this.f100048c);
        }
    }

    public class b implements Runnable {

        public final Vg.a f100049b;

        public b(final Vg.a val$listener) {
            this.f100049b = val$listener;
        }

        @Override
        public void run() {
            this.f100049b.b(null);
        }
    }

    public class c implements Consumer<String> {

        public final HashSet f100050b;

        public c(final HashSet val$usedMeshFiles) {
            this.f100050b = val$usedMeshFiles;
        }

        @Override
        public void accept(String path) {
            if (path == null) {
                return;
            }
            String trim = path.trim();
            if (trim.isEmpty() || trim.startsWith("@@ASSET@@")) {
                return;
            }
            String o10 = Tc.b.o(trim);
            if (new File(o10).isAbsolute()) {
                o10 = Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.Q(o10));
            }
            this.f100050b.add(o10);
        }
    }

    public class d implements Consumer<String> {

        public final HashSet f100051b;

        public d(final HashSet val$usedTextureFiles) {
            this.f100051b = val$usedTextureFiles;
        }

        @Override
        public void accept(String path) {
            if (path == null) {
                return;
            }
            String trim = path.trim();
            if (trim.isEmpty() || trim.startsWith("@@ASSET@@")) {
                return;
            }
            String o10 = Tc.b.o(trim);
            if (new File(o10).isAbsolute()) {
                o10 = Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.Q(o10));
            }
            this.f100051b.add(o10);
        }
    }

    public class e implements Consumer<Material> {

        public final Consumer f100052b;

        public e(final Consumer val$addTextureFile) {
            this.f100052b = val$addTextureFile;
        }

        @Override
        public void accept(Material material) {
            List<SerializableShaderEntry> B10;
            if (material == null || (B10 = material.B()) == null || B10.isEmpty()) {
                return;
            }
            for (int i10 = 0; i10 < B10.size(); i10++) {
                SerializableShaderEntry serializableShaderEntry = B10.get(i10);
                if (serializableShaderEntry != null && SerializableShaderEntry.f81152f.equals(serializableShaderEntry.type)) {
                    this.f100052b.accept(serializableShaderEntry.data);
                }
            }
        }
    }

    public class f implements Consumer<GameObject> {

        public final Consumer f100053b;

        public final Consumer f100054c;

        public final Vg.b f100055d;

        public f(final Consumer val$addMeshFile, final Consumer val$addMaterialTextures, final Vg.b val$queue) {
            this.f100053b = val$addMeshFile;
            this.f100054c = val$addMaterialTextures;
            this.f100055d = val$queue;
        }

        @Override
        public void accept(GameObject gameObject) {
            Collider collider;
            String str;
            if (gameObject == null) {
                return;
            }
            for (int i10 = 0; i10 < gameObject.N(); i10++) {
                Component L10 = gameObject.L(i10);
                if (L10 instanceof ModelRenderer) {
                    ModelRenderer modelRenderer = (ModelRenderer) L10;
                    this.f100053b.accept(modelRenderer.getMeshFile());
                    Material material = modelRenderer.f73747F;
                    if (material != null) {
                        this.f100054c.accept(material);
                    } else if (modelRenderer.getMaterialFile() != null && !modelRenderer.getMaterialFile().isEmpty()) {
                        this.f100054c.accept(this.f100055d.f26940m.get(modelRenderer.getMaterialFile()));
                    }
                } else if (L10 instanceof SkinnedModelRenderer) {
                    SkinnedModelRenderer skinnedModelRenderer = (SkinnedModelRenderer) L10;
                    this.f100053b.accept(skinnedModelRenderer.meshFile);
                    if (skinnedModelRenderer.getMaterial() != null) {
                        this.f100054c.accept(skinnedModelRenderer.getMaterial());
                    } else {
                        String str2 = skinnedModelRenderer.materialFile;
                        if (str2 != null && !str2.isEmpty()) {
                            this.f100054c.accept(this.f100055d.f26940m.get(skinnedModelRenderer.materialFile));
                        }
                    }
                } else if ((L10 instanceof Collider) && (str = (collider = (Collider) L10).modelFile) != null && !str.isEmpty()) {
                    this.f100053b.accept(collider.modelFile);
                }
            }
            gameObject.z0().forEach(this);
        }
    }

    public class g implements Consumer<GameObject> {

        public final Vg.b f100056b;

        public final int[] f100057c;

        public final int[] f100058d;

        public final int[] f100059e;

        public g(final Vg.b val$queue, final int[] val$total, final int[] val$totalVerticesBufferCapacity, final int[] val$totalTrianglesBufferCapacity) {
            this.f100056b = val$queue;
            this.f100057c = val$total;
            this.f100058d = val$totalVerticesBufferCapacity;
            this.f100059e = val$totalTrianglesBufferCapacity;
        }

        @Override
        public void accept(GameObject gameObject) {
            if (gameObject.isEnabled()) {
                for (int i10 = 0; i10 < gameObject.N(); i10++) {
                    Component L10 = gameObject.L(i10);
                    if (L10.isEnabled() && (L10 instanceof ModelRenderer)) {
                        ModelRenderer modelRenderer = (ModelRenderer) L10;
                        Vertex vertex = modelRenderer.getVertex();
                        if (vertex == null) {
                            vertex = this.f100056b.f26938k.get(modelRenderer.getMeshFile());
                        }
                        if (vertex != null && vertex.j1() > 0 && vertex.W0() > 0) {
                            int[] iArr = this.f100057c;
                            iArr[0] = iArr[0] + 1;
                            int[] iArr2 = this.f100058d;
                            iArr2[0] = iArr2[0] + (vertex.j1() * 3);
                            int[] iArr3 = this.f100059e;
                            iArr3[0] = iArr3[0] + (vertex.W0() * 3);
                        }
                    }
                }
                gameObject.z0().forEach(this);
            }
        }
    }

    public class h implements Consumer<GameObject> {

        public final Vg.b f100060b;

        public final NativeFloatBuffer f100061c;

        public final int[] f100062d;

        public final NativeIntBuffer f100063e;

        public final int[] f100064f;

        public final int[] f100065g;

        public h(final Vg.b val$queue, final NativeFloatBuffer val$vertices, final int[] val$verOffset, final NativeIntBuffer val$triangles, final int[] val$executed, final int[] val$total) {
            this.f100060b = val$queue;
            this.f100061c = val$vertices;
            this.f100062d = val$verOffset;
            this.f100063e = val$triangles;
            this.f100064f = val$executed;
            this.f100065g = val$total;
        }

        @Override
        public void accept(GameObject gameObject) {
            if (gameObject.isEnabled()) {
                for (int i10 = 0; i10 < gameObject.N(); i10++) {
                    Component L10 = gameObject.L(i10);
                    if (L10.isEnabled() && (L10 instanceof ModelRenderer)) {
                        ModelRenderer modelRenderer = (ModelRenderer) L10;
                        com.itsmagic.engine.Engines.Engine.Vector.f fVar = new com.itsmagic.engine.Engines.Engine.Vector.f();
                        C13600g.b(gameObject, fVar);
                        Vertex vertex = modelRenderer.getVertex();
                        if (vertex == null) {
                            vertex = this.f100060b.f26938k.get(modelRenderer.getMeshFile());
                        }
                        if (vertex != null && vertex.j1() > 0 && vertex.W0() > 0) {
                            NativeFloatBuffer i12 = vertex.i1();
                            NativeIntBuffer V02 = vertex.V0();
                            for (int i11 = 0; i11 < i12.capacity(); i11 += 3) {
                                Vector3 vector3 = new Vector3(i12.get(i11), i12.get(i11 + 1), i12.get(i11 + 2));
                                fVar.P(vector3, vector3);
                                this.f100061c.put(vector3);
                            }
                            for (int i13 = 0; i13 < V02.capacity(); i13++) {
                                this.f100063e.put(this.f100062d[0] + V02.get(i13));
                            }
                            int[] iArr = this.f100062d;
                            iArr[0] = iArr[0] + vertex.j1();
                            int[] iArr2 = this.f100064f;
                            iArr2[0] = iArr2[0] + 1;
                            int i14 = this.f100065g[0];
                        }
                    }
                }
                gameObject.z0().forEach(this);
            }
        }
    }

    public class i implements Runnable {

        public final Vg.a f100066b;

        public final String f100067c;

        public final Vg.b f100068d;

        public i(final Vg.a val$listener, final String val$text, final Vg.b val$queue) {
            this.f100066b = val$listener;
            this.f100067c = val$text;
            this.f100068d = val$queue;
        }

        @Override
        public void run() {
            Vg.a aVar = this.f100066b;
            if (aVar != null) {
                aVar.a(this.f100067c);
            }
            synchronized (NativeModelImporter.block) {
                try {
                    if (NativeModelImporter.activeQueue == this.f100068d) {
                        Vg.b unused = NativeModelImporter.activeQueue = null;
                    }
                    NativeModelImporter.importing.set(false);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public class j implements Predicate<Timeline> {
        @Override
        public boolean test(Timeline timeline) {
            return timeline == null || timeline.i() == null || timeline.d() == null || timeline.e() == null || timeline.j() == null;
        }
    }

    public class k implements Runnable {
        @Override
        public void run() {
            Vg.a aVar = NativeModelImporter.activeQueue.f26929b;
            File file = NativeModelImporter.activeQueue.f26928a;
            if (!file.exists()) {
                aVar.a("FileNotFoundException:" + file.getAbsolutePath());
                return;
            }
            File y10 = Tc.b.y(file);
            if (!y10.exists()) {
                y10.mkdir();
            }
            float f10 = (C2633l.b(file.getName(), ".fbx") ? 5.0f : C2633l.b(file.getName(), ".dae") ? 10.0f : C2633l.b(file.getName(), ".3mf") ? 0.1f : 1.0f) * 0.5f * NativeModelImporter.activeQueue.f26930c.scale;
            String replace = (y10.getAbsolutePath() + "/").replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
            NativeModelImporter.nativeImportFile(file.getAbsolutePath(), y10.getAbsolutePath() + "/", replace, f10, NativeModelImporter.activeQueue.f26930c.importSkinningData, NativeModelImporter.activeQueue.f26930c.boneCorrectionMode.ordinal(), NativeModelImporter.activeQueue.f26930c.maxBonesPerChunk);
            NativeModelImporter.onFinish();
        }
    }

    public class l implements Predicate<Frame> {

        public final com.itsmagic.engine.Engines.Engine.Animation.c f100069b;

        public l(final com.itsmagic.engine.Engines.Engine.Animation.c val$type) {
            this.f100069b = val$type;
        }

        @Override
        public boolean test(Frame frame) {
            if (frame == null) {
                return true;
            }
            int i10 = m.f100070a[this.f100069b.ordinal()];
            return i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 == 4 && frame.e() == null : frame.l() == null : frame.n() == null : frame.o() == null;
        }
    }

    public static class m {

        public static final int[] f100070a;

        static {
            int[] iArr = new int[com.itsmagic.engine.Engines.Engine.Animation.c.values().length];
            f100070a = iArr;
            try {
                iArr[com.itsmagic.engine.Engines.Engine.Animation.c.VEC3.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f100070a[com.itsmagic.engine.Engines.Engine.Animation.c.VEC2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f100070a[com.itsmagic.engine.Engines.Engine.Animation.c.QUAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f100070a[com.itsmagic.engine.Engines.Engine.Animation.c.COLOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f100070a[com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f100070a[com.itsmagic.engine.Engines.Engine.Animation.c.INT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public class n implements Consumer<C2639s.a<Vertex>> {

        public final List f100071b;

        public n(final List val$vertexList) {
            this.f100071b = val$vertexList;
        }

        @Override
        public void accept(C2639s.a<Vertex> vertexEntry) {
            this.f100071b.add(vertexEntry.c());
        }
    }

    public class o implements Consumer<Vertex> {

        public final Vg.b f100072b;

        public final AtomicInteger f100073c;

        public final AtomicInteger f100074d;

        public final Vg.a f100075e;

        public final AtomicInteger f100076f;

        public final AtomicInteger f100077g;

        public o(final Vg.b val$queue, final AtomicInteger val$executed, final AtomicInteger val$totalExecuted, final Vg.a val$listener, final AtomicInteger val$total, final AtomicInteger val$importTotal) {
            this.f100072b = val$queue;
            this.f100073c = val$executed;
            this.f100074d = val$totalExecuted;
            this.f100075e = val$listener;
            this.f100076f = val$total;
            this.f100077g = val$importTotal;
        }

        @Override
        public void accept(Vertex vertex) {
            try {
                System.out.println("EXPORTING:" + Tc.b.v(this.f100072b.f26935h.get(vertex)));
                vertex.K();
                try {
                    MeshSerializer.p(MeshSerializer.m(this.f100072b.f26935h.get(vertex)), vertex, true);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                try {
                    vertex.Z();
                } catch (Exception unused) {
                }
                this.f100073c.incrementAndGet();
                this.f100074d.incrementAndGet();
                this.f100075e.c(0, "Meshes:" + this.f100073c.get() + "/" + this.f100076f.get(), this.f100074d.get(), this.f100077g.get());
                if (C15377a.f109719g.booleanValue()) {
                    return;
                }
                System.out.println("USED HEAP:" + C14066c.l());
            } catch (OutOfMemoryError e11) {
                e11.printStackTrace();
                TextOutputActivity.h(e11);
            }
        }
    }

    public class p implements Consumer<File> {

        public final File f100078b;

        public final Vg.b f100079c;

        public final Context f100080d;

        public final AtomicInteger f100081e;

        public final AtomicInteger f100082f;

        public final Vg.a f100083g;

        public final AtomicInteger f100084h;

        public final AtomicInteger f100085i;

        public p(final File val$meta, final Vg.b val$queue, final Context val$context, final AtomicInteger val$executed, final AtomicInteger val$totalExecuted, final Vg.a val$listener, final AtomicInteger val$total, final AtomicInteger val$importTotal) {
            this.f100078b = val$meta;
            this.f100079c = val$queue;
            this.f100080d = val$context;
            this.f100081e = val$executed;
            this.f100082f = val$totalExecuted;
            this.f100083g = val$listener;
            this.f100084h = val$total;
            this.f100085i = val$importTotal;
        }

        @Override
        public void accept(File listFile) {
            if (C2633l.b(listFile.getAbsolutePath(), ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm")) {
                String name = listFile.getName();
                File file = new File(this.f100078b, name + ".config");
                if (file.exists()) {
                    return;
                }
                boolean z10 = (name.contains("roughness") || name.contains(JavaCore.NORMAL) || name.contains("specular") || name.contains("metallic") || name.contains("metalness") || name.contains("reflectivity") || name.contains("glossy") || name.contains("ao") || name.contains("alpha")) ? false : true;
                TextureConfig textureConfig = new TextureConfig();
                ImportFilePopup.ImportOptions importOptions = this.f100079c.f26930c;
                textureConfig.maxResolutionID = importOptions.maxResolutionID;
                textureConfig.gammaCorrection = z10;
                textureConfig.j0(importOptions.filter);
                ImportFilePopup.ImportOptions importOptions2 = this.f100079c.f26930c;
                textureConfig.autoGenNormalMap = importOptions2.generateNormalMaps;
                textureConfig.autoGenNormalMapBias = importOptions2.normalMapBias;
                C2636o.e(X7.a.m().toJson(textureConfig), file);
                String P10 = com.itsmagic.engine.Core.Components.ProjectController.a.P(listFile);
                b.d dVar = new b.d();
                try {
                    com.itsmagic.engine.Engines.Engine.Texture.Utils.b.n(this.f100080d, P10, dVar);
                } catch (TextureNeedsImport unused) {
                    if (!C2633l.b(P10, ".ivo")) {
                        com.itsmagic.engine.Engines.Engine.Texture.Utils.b.g(this.f100080d, dVar, new b.C1370b().a(b.c.ONLY_TEXTURE).b(true));
                        C4153a.j(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + P10), com.itsmagic.engine.Core.Components.ProjectController.a.T());
                        Bitmap k10 = com.itsmagic.engine.Engines.Engine.Texture.Utils.b.k(this.f100080d, P10);
                        if (k10 != null && !k10.isRecycled()) {
                            if (textureConfig.autoGenNormalMap) {
                                File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/" + (Tc.b.O(P10) + ".nm"));
                                ab.c.j(k10, NativeModelImporter.toProjectIpp(NativeModelImporter.buildSafeFile(file2.getParentFile(), file2.getName())), (float) textureConfig.b());
                            }
                            k10.recycle();
                            System.gc();
                        }
                    }
                }
                this.f100081e.incrementAndGet();
                this.f100082f.incrementAndGet();
                this.f100083g.c(0, "Textures:" + ((Object) this.f100081e) + "/" + this.f100084h.get(), this.f100082f.get(), this.f100085i.get());
            }
        }
    }

    public class q implements BiConsumer<String, Material> {
        @Override
        public void accept(String ipp, Material material) {
            C2636o.e(material.Z(), new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/" + ipp));
        }
    }

    public class r implements Consumer<C2639s.a<com.itsmagic.engine.Engines.Engine.Animation.d>> {
        @Override
        public void accept(C2639s.a<com.itsmagic.engine.Engines.Engine.Animation.d> animationEntry) {
            com.itsmagic.engine.Engines.Engine.Animation.d c10 = animationEntry.c();
            NativeModelImporter.cleanupAnimation(c10.h());
            if (c10.h().l().isEmpty()) {
                return;
            }
            C2636o.e(c10.h().toJson(), new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/" + c10.f72604b));
        }
    }

    public class s implements Consumer<GameObject> {
        @Override
        public void accept(GameObject gameObject) {
            gameObject.J0().N3(Transform.G.STATIC);
            gameObject.z0().forEach(this);
        }
    }

    public class t implements Runnable {

        public final Vg.a f100086b;

        public t(final Vg.a val$listener) {
            this.f100086b = val$listener;
        }

        @Override
        public void run() {
            this.f100086b.b(null);
        }
    }

    public class u implements Runnable {

        public GameObject f100087b;

        public final File f100088c;

        public final Vg.b f100089d;

        public final File f100090e;

        public final Vg.a f100091f;

        public final CountDownLatch f100092g;

        public class a implements Runnable {

            public class C1907a implements g.b {

                public String f100094a = "";

                public class RunnableC1908a implements Runnable {

                    public final GameObject f100096b;

                    public class RunnableC1909a implements Runnable {

                        public class RunnableC1910a implements Runnable {

                            public class RunnableC1911a implements Runnable {
                                public RunnableC1911a() {
                                }

                                @Override
                                public void run() {
                                    for (File file : u.this.f100090e.listFiles()) {
                                        if (!file.getName().startsWith("iatlas_") && !file.getName().endsWith(".go") && !file.getName().equals("compound_collision.mesh")) {
                                            file.delete();
                                        }
                                    }
                                    u.this.f100092g.countDown();
                                }
                            }

                            public RunnableC1910a() {
                            }

                            @Override
                            public void run() {
                                RunnableC1908a runnableC1908a = RunnableC1908a.this;
                                X7.a.h(u.this.f100088c, runnableC1908a.f100096b.x1().toString());
                                RunnableC1908a.this.f100096b.destroy();
                                K8.a.h(10, new RunnableC1911a());
                            }
                        }

                        public RunnableC1909a() {
                        }

                        @Override
                        public void run() {
                            K8.a.h(2, new RunnableC1910a());
                        }
                    }

                    public RunnableC1908a(final GameObject val$gameObject) {
                        this.f100096b = val$gameObject;
                    }

                    @Override
                    public void run() {
                        this.f100096b.J0().setPosition(0.0f, 0.0f, 0.0f);
                        this.f100096b.J0().G3();
                        this.f100096b.J0().setScale(1.0f);
                        K8.a.h(2, new RunnableC1909a());
                    }
                }

                public C1907a() {
                }

                @Override
                public void a(int executed, int total, float progress, String tda) {
                    u.this.f100091f.c((int) progress, this.f100094a, executed, total);
                }

                @Override
                public void b(String step) {
                    this.f100094a = step;
                    u.this.f100091f.c(0, step, 0, 0);
                }

                @Override
                public void c(GameObject gameObject) {
                    K8.a.I(new RunnableC1908a(gameObject));
                }

                @Override
                public void d() {
                }
            }

            public a() {
            }

            @Override
            public void run() {
                u uVar = u.this;
                org.ITsMagic.Atlas.g gVar = new org.ITsMagic.Atlas.g(uVar.f100087b, uVar.f100089d.f26930c.bakeOptions);
                gVar.t(false);
                gVar.u(u.this.f100090e);
                gVar.p(new C1907a());
            }
        }

        public u(final File val$goFile, final Vg.b val$queue, final File val$meta, final Vg.a val$listener, final CountDownLatch val$latch) {
            this.f100088c = val$goFile;
            this.f100089d = val$queue;
            this.f100090e = val$meta;
            this.f100091f = val$listener;
            this.f100092g = val$latch;
        }

        @Override
        public void run() {
            GameObject T10 = GameObject.T(X7.a.r(this.f100088c.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "")), false, true);
            this.f100087b = T10;
            T10.Q1();
            this.f100087b.S1();
            K8.a.h(5, new a());
        }
    }

    static {
        System.loadLibrary("native-model-importer");
        INVALID_FILENAME_CHARS = new char[]{':', JavaElement.JEM_ESCAPE, '?', '*'};
        block = new Object();
        queueList = new ArrayList();
        importing = new AtomicBoolean();
    }

    public static void _insertBoneMap(int skinnedID, int globalBoneID, int localBoneIndex) {
        ImportFilePopup.ImportOptions importOptions;
        synchronized (block) {
            try {
                Vg.b bVar = activeQueue;
                if (bVar != null && (importOptions = bVar.f26930c) != null && importOptions.importSkinningData) {
                    bVar.f26943p.get(skinnedID).boneGlobalToLocalMap.put(Integer.valueOf(globalBoneID), Integer.valueOf(localBoneIndex));
                }
            } finally {
            }
        }
    }

    public static void _insertIBMToSkinnedModelRendererOf(int skinnedID, int boneIndex, float[] matrix) {
        ImportFilePopup.ImportOptions importOptions;
        synchronized (block) {
            try {
                Vg.b bVar = activeQueue;
                if (bVar != null && (importOptions = bVar.f26930c) != null && importOptions.importSkinningData) {
                    bVar.f26943p.get(skinnedID).inverseBindBoneMatrix.put(Integer.valueOf(boneIndex), matrix);
                }
            } finally {
            }
        }
    }

    public static int _makeAnimation(String name, double mTicksPerSecond, double frameCount) {
        int m10;
        synchronized (block) {
            try {
                AnimationPlayer animationPlayer = (AnimationPlayer) activeQueue.f26931d.c0(Component.e.AnimationPlayer);
                if (animationPlayer == null) {
                    animationPlayer = new AnimationPlayer();
                    activeQueue.f26931d.r(animationPlayer);
                }
                if (name == null) {
                    name = "Animation_" + animationPlayer.getEntriesList().size();
                }
                if (name.equals("mixamo.com")) {
                    name = Tc.b.w(activeQueue.f26928a.getAbsolutePath(), true);
                }
                AnimationData animationData = new AnimationData();
                animationData.fps = (int) mTicksPerSecond;
                String projectIpp = toProjectIpp(buildSafeFile(activeQueue.c(), name + ".anim"));
                com.itsmagic.engine.Engines.Engine.Animation.d dVar = new com.itsmagic.engine.Engines.Engine.Animation.d(animationData, projectIpp);
                animationPlayer.getEntriesList().add(new AnimationEntry(projectIpp));
                m10 = activeQueue.f26944q.m(dVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return m10;
    }

    public static void _makeBone(String name, int boneID, int objectID, float[] bindLocalTransform, float[] inverseBindTransform) {
        ImportFilePopup.ImportOptions importOptions;
        synchronized (block) {
            try {
                Vg.b bVar = activeQueue;
                if (bVar != null && (importOptions = bVar.f26930c) != null && importOptions.importSkinningData) {
                    GameObject gameObject = bVar.f26932e.get(objectID);
                    gameObject.getEditor().i(true);
                    SkinJoint skinJoint = new SkinJoint(boneID, bindLocalTransform, inverseBindTransform);
                    skinJoint.getEditor().i(true);
                    gameObject.r(skinJoint);
                }
            } finally {
            }
        }
    }

    public static int _makeChild(String name) {
        int m10;
        synchronized (block) {
            String easyName = easyName(name);
            GameObject p12 = GameObject.p1(easyName);
            p12.getGuid().n(easyName);
            p12.transform.getEditor().i(true);
            activeQueue.f26931d.p(p12);
            Vg.b bVar = activeQueue;
            p12.f79294k = bVar.f26931d;
            m10 = bVar.f26932e.m(p12);
        }
        return m10;
    }

    public static int _makeChildOf(String name, int parentID) {
        int m10;
        synchronized (block) {
            try {
                String easyName = easyName(name);
                GameObject gameObject = parentID == -1 ? activeQueue.f26931d : activeQueue.f26932e.get(parentID);
                GameObject p12 = GameObject.p1(easyName);
                p12.getGuid().n(easyName);
                p12.transform.getEditor().i(true);
                gameObject.p(p12);
                p12.f79294k = gameObject;
                m10 = activeQueue.f26932e.m(p12);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return m10;
    }

    public static long _makeFloatBuffer(int size, int vertexID, int bufferType) {
        ImportFilePopup.ImportOptions importOptions;
        synchronized (block) {
            try {
                Vg.b bVar = activeQueue;
                if (bVar != null && (importOptions = bVar.f26930c) != null && !importOptions.importSkinningData && (bufferType == 5 || bufferType == 6)) {
                    return 0L;
                }
                Vertex vertex = bVar.f26934g.get(vertexID);
                NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(size);
                if (bufferType == 0) {
                    vertex.q2(nativeFloatBuffer);
                } else if (bufferType == 1) {
                    vertex.Y1(nativeFloatBuffer);
                } else if (bufferType == 2) {
                    vertex.m2(nativeFloatBuffer);
                } else if (bufferType == 3) {
                    vertex.e2(nativeFloatBuffer);
                } else if (bufferType == 5) {
                    vertex.s2(nativeFloatBuffer);
                } else if (bufferType == 6) {
                    vertex.S1(nativeFloatBuffer);
                }
                nativeFloatBuffer.fill(0.0f);
                return nativeFloatBuffer.getCriticalDirectCppPointer();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static long _makeIntBuffer(int size, int vertexID, int bufferType) {
        long criticalDirectCppPointer;
        synchronized (block) {
            Vertex vertex = activeQueue.f26934g.get(vertexID);
            NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(size);
            if (bufferType == 0) {
                vertex.i2(nativeIntBuffer);
            }
            nativeIntBuffer.fill(0);
            criticalDirectCppPointer = nativeIntBuffer.getCriticalDirectCppPointer();
        }
        return criticalDirectCppPointer;
    }

    public static void _makeKeyFramePosition(int animID, String nodeName, double time, float x10, float y10, float z10) {
        synchronized (block) {
            try {
                Timeline orCreateTransformTimeline = getOrCreateTransformTimeline(activeQueue.f26944q.get(animID).h(), easyName(nodeName), com.itsmagic.engine.Engines.Engine.Animation.a.f72594b, com.itsmagic.engine.Engines.Engine.Animation.c.VEC3);
                if (orCreateTransformTimeline == null) {
                    return;
                }
                getOrCreateFrame(orCreateTransformTimeline, (int) time).E(new Vector3(x10, y10, z10));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void _makeKeyFrameRotation(int animID, String nodeName, double time, float w10, float x10, float y10, float z10) {
        synchronized (block) {
            try {
                Timeline orCreateTransformTimeline = getOrCreateTransformTimeline(activeQueue.f26944q.get(animID).h(), easyName(nodeName), com.itsmagic.engine.Engines.Engine.Animation.a.f72595c, com.itsmagic.engine.Engines.Engine.Animation.c.QUAT);
                if (orCreateTransformTimeline == null) {
                    return;
                }
                Frame orCreateFrame = getOrCreateFrame(orCreateTransformTimeline, (int) time);
                Quaternion quaternion = new Quaternion(w10, x10, y10, z10);
                quaternion.l0();
                orCreateFrame.B(quaternion);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void _makeKeyFrameScale(int animID, String nodeName, double time, float x10, float y10, float z10) {
        synchronized (block) {
            try {
                Timeline orCreateTransformTimeline = getOrCreateTransformTimeline(activeQueue.f26944q.get(animID).h(), easyName(nodeName), "s", com.itsmagic.engine.Engines.Engine.Animation.c.VEC3);
                if (orCreateTransformTimeline == null) {
                    return;
                }
                getOrCreateFrame(orCreateTransformTimeline, (int) time).E(new Vector3(x10, y10, z10));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static int _makeLight(String name, int lightType) {
        int findOrRegisterObjectID;
        synchronized (block) {
            if (name == null) {
                name = "";
            }
            try {
                String easyName = easyName(name);
                if (easyName.trim().isEmpty()) {
                    easyName = "Light";
                }
                GameObject findLightTargetObject = findLightTargetObject(easyName);
                if (findLightTargetObject == null) {
                    findLightTargetObject = GameObject.p1(easyName);
                    findLightTargetObject.getGuid().n(easyName);
                    findLightTargetObject.transform.getEditor().i(true);
                    activeQueue.f26931d.p(findLightTargetObject);
                    findLightTargetObject.f79294k = activeQueue.f26931d;
                }
                attachLightComponent(findLightTargetObject, lightType);
                findOrRegisterObjectID = findOrRegisterObjectID(findLightTargetObject);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return findOrRegisterObjectID;
    }

    public static void _makeMaterial(String name, String diffuseTex, String normalTex, String specularTex, String emissiveTex, String heightTex, String displacementTex, String opacityTex, String metallicTex, String baseColorTex, String emissionColorTex, String metalnessTex, String roughnessTex, String aoTex, float diffuseR, float diffuseG, float diffuseB, float diffuseA, int blendMode, boolean doubleSided) {
        Vg.b bVar;
        boolean z10;
        String str;
        String str2 = normalTex;
        String str3 = opacityTex;
        String str4 = aoTex;
        synchronized (block) {
            bVar = activeQueue;
        }
        String replaceAll = name.replaceAll("\\.", ConstantDescs.DEFAULT_NAME);
        String projectIpp = toProjectIpp(buildSafeFile(bVar.c(), replaceAll + ".mat"));
        String str5 = ((diffuseTex != null && !diffuseTex.trim().isEmpty()) || baseColorTex == null || baseColorTex.trim().isEmpty()) ? diffuseTex : baseColorTex;
        if (str5 == null || str5.trim().isEmpty()) {
            str5 = bVar.b() + trySearchTexture(replaceAll, "texture_0", "diffuse", "albedo", "color");
        } else if (str5.startsWith(".\\")) {
            str5 = bVar.b() + str5.substring(2);
        }
        if (str2 == null || normalTex.trim().isEmpty()) {
            str2 = bVar.b() + trySearchTexture(replaceAll, JavaCore.NORMAL);
        } else if (str2.startsWith(".\\")) {
            str2 = bVar.b() + str2.substring(2);
        }
        String str6 = ((specularTex != null && !specularTex.trim().isEmpty()) || roughnessTex == null || roughnessTex.trim().isEmpty()) ? specularTex : roughnessTex;
        if (str6 == null || str6.trim().isEmpty()) {
            str6 = bVar.b() + trySearchTexture(replaceAll, "specular", "roughness");
        } else if (str6.startsWith(".\\")) {
            str6 = bVar.b() + str6.substring(2);
        }
        String str7 = ((emissiveTex != null && !emissiveTex.trim().isEmpty()) || emissionColorTex == null || emissionColorTex.trim().isEmpty()) ? emissiveTex : emissionColorTex;
        if (str7 == null || str7.trim().isEmpty()) {
            str7 = bVar.b() + trySearchTexture(replaceAll, "emissive", "emission");
        } else if (str7.startsWith(".\\")) {
            str7 = bVar.b() + str7.substring(2);
        }
        if (metalnessTex == null || metalnessTex.trim().isEmpty()) {
            z10 = false;
            str = metallicTex;
        } else {
            str = metalnessTex;
            z10 = true;
        }
        if (str == null || str.trim().isEmpty()) {
            str = bVar.b() + trySearchTexture(replaceAll, "emissive", "emission");
        } else {
            if (str.startsWith(".\\")) {
                str = bVar.b() + str.substring(2);
            }
            if (!z10) {
                str.toLowerCase().contains("metalness");
            }
        }
        String str8 = ((heightTex != null && !heightTex.trim().isEmpty()) || displacementTex == null || displacementTex.trim().isEmpty()) ? heightTex : displacementTex;
        if (str8 == null || str8.trim().isEmpty()) {
            str8 = bVar.b() + trySearchTexture(replaceAll, "emissive", "emission");
        } else if (str8.startsWith(".\\")) {
            str8 = bVar.b() + str8.substring(2);
        }
        if (str4 == null || aoTex.trim().isEmpty()) {
            str4 = bVar.b() + trySearchTexture(replaceAll, JavaCore.NORMAL);
        } else if (str4.startsWith(".\\")) {
            str4 = bVar.b() + str4.substring(2);
        }
        if (str3 == null || opacityTex.trim().isEmpty()) {
            str3 = bVar.b() + trySearchTexture(replaceAll, JavaCore.NORMAL);
        } else if (str3.startsWith(".\\")) {
            str3 = bVar.b() + str3.substring(2);
        }
        String finalCheckTexture = finalCheckTexture(str5, bVar);
        String finalCheckTexture2 = finalCheckTexture(str2, bVar);
        String finalCheckTexture3 = finalCheckTexture(str6, bVar);
        String finalCheckTexture4 = finalCheckTexture(str7, bVar);
        String finalCheckTexture5 = finalCheckTexture(str, bVar);
        String finalCheckTexture6 = finalCheckTexture(str8, bVar);
        String finalCheckTexture7 = finalCheckTexture(str4, bVar);
        String finalCheckTexture8 = finalCheckTexture(str3, bVar);
        Material material = new Material();
        material.f78885e = replaceAll;
        material.i0("albedo", finalCheckTexture);
        material.i0("normalMap", finalCheckTexture2);
        material.i0("roughnessMap", finalCheckTexture3);
        material.i0("emissiveMap", finalCheckTexture4);
        material.i0("metallicMap", finalCheckTexture5);
        material.i0("heightMap", finalCheckTexture6);
        material.i0("aoMap", finalCheckTexture7);
        material.i0("opacityMap", finalCheckTexture8);
        material.b0("diffuse", new ColorINT(diffuseA, diffuseR * 0.87f, diffuseG * 0.87f, 0.87f * diffuseB));
        String str9 = "MASKED";
        if (blendMode == 1) {
            str9 = bVar.f26930c.transparencyMode.name();
        } else if (blendMode == 2) {
            str9 = bVar.f26930c.transparencyMode.name();
        }
        material.setString("blendingMode", str9);
        material.setBoolean("doubleSided", doubleSided);
        if (finalCheckTexture3 != null && finalCheckTexture5 != null && finalCheckTexture3.equals(finalCheckTexture5)) {
            material.g0("Lit/ORM");
            material.i0("ormMap", finalCheckTexture5);
        }
        if (finalCheckTexture5 != null && finalCheckTexture7 != null && finalCheckTexture5.equals(finalCheckTexture7)) {
            material.g0("Lit/ORM");
            material.i0("ormMap", finalCheckTexture5);
        }
        if (finalCheckTexture3 != null && finalCheckTexture7 != null && finalCheckTexture3.equals(finalCheckTexture7)) {
            material.g0("Lit/ORM");
            material.i0("ormMap", finalCheckTexture3);
        }
        bVar.f26940m.put(projectIpp, material);
        bVar.f26941n.put(material, projectIpp);
        bVar.f26942o.put(replaceAll, material);
        bVar.f26939l.add(material);
    }

    public static void _makeModelRendererOf(int objectID, int materialIndex, String meshName) {
        synchronized (block) {
            try {
                String replaceAll = meshName.replaceAll("\\.", ConstantDescs.DEFAULT_NAME);
                String str = activeQueue.f26941n.get(activeQueue.f26939l.get(materialIndex));
                ModelRenderer modelRenderer = new ModelRenderer();
                modelRenderer.setModelCritical(activeQueue.f26936i.get(replaceAll));
                modelRenderer.setMeshFileButDontLoad(activeQueue.f26937j.get(replaceAll));
                modelRenderer.setMaterialFileButDontLoad(str);
                modelRenderer.f73747F = activeQueue.f26939l.get(materialIndex);
                (objectID == -1 ? activeQueue.f26931d : activeQueue.f26932e.get(objectID)).r(modelRenderer);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static int _makeSkinnedModelRendererOf(int objectID, int materialIndex, String meshName, int boneCount) {
        ImportFilePopup.ImportOptions importOptions;
        synchronized (block) {
            try {
                Vg.b bVar = activeQueue;
                if (bVar != null && (importOptions = bVar.f26930c) != null && importOptions.importSkinningData) {
                    String replaceAll = meshName.replaceAll("\\.", ConstantDescs.DEFAULT_NAME);
                    GameObject gameObject = objectID == -1 ? activeQueue.f26931d : activeQueue.f26932e.get(objectID);
                    String str = activeQueue.f26941n.get(activeQueue.f26939l.get(materialIndex));
                    SkinnedModelRenderer skinnedModelRenderer = new SkinnedModelRenderer();
                    skinnedModelRenderer.meshFile = activeQueue.f26937j.get(replaceAll);
                    skinnedModelRenderer.materialFile = str;
                    skinnedModelRenderer.inverseBindBoneMatrix = new HashMap<>();
                    gameObject.r(skinnedModelRenderer);
                    return activeQueue.f26943p.m(skinnedModelRenderer);
                }
                _makeModelRendererOf(objectID, materialIndex, meshName);
                return -1;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static int _makeVertex(String name, int materialIndex) {
        int m10;
        synchronized (block) {
            try {
                if (activeQueue.f26936i.get(name) != null) {
                    throw new RuntimeException("Duplicate vertex name:" + name);
                }
                String replaceAll = name.replaceAll("\\.", ConstantDescs.DEFAULT_NAME);
                activeQueue.f26941n.get(activeQueue.f26939l.get(materialIndex));
                String projectIpp = toProjectIpp(buildSafeFileWithMaxBase(activeQueue.c(), replaceAll, ".mesh", Math.min(95, 93)));
                Vertex vertex = new Vertex();
                vertex.f79966b = projectIpp;
                activeQueue.f26935h.put(vertex, projectIpp);
                activeQueue.f26936i.put(replaceAll, vertex);
                activeQueue.f26937j.put(replaceAll, projectIpp);
                activeQueue.f26938k.put(projectIpp, vertex);
                m10 = activeQueue.f26934g.m(vertex);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return m10;
    }

    public static void _onError(String text) {
        Vg.b bVar;
        Vg.a aVar;
        synchronized (block) {
            try {
                bVar = activeQueue;
                aVar = bVar != null ? bVar.f26929b : null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        N7.c.j0(new i(aVar, text, bVar));
    }

    public static void _onStart(int numMeshes, int numMaterials, int numLights, int numCameras, int numTextures, int numAnimations, int numBones) {
        synchronized (block) {
            try {
                Vg.b bVar = activeQueue;
                bVar.f26945r = numMeshes;
                bVar.f26946s = numMaterials;
                bVar.f26947t = numLights;
                bVar.f26948u = numCameras;
                bVar.f26949v = numTextures;
                bVar.f26950w = numAnimations;
                bVar.f26951x = numBones;
                bVar.f26931d.E1(Tc.b.w(bVar.f26928a.getName(), true));
                if (numBones > 0) {
                    activeQueue.f26931d.r(new Armature());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001c A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:19:0x0005, B:7:0x0017, B:8:0x0026, B:9:0x0029, B:17:0x001c), top: B:18:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017 A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:19:0x0005, B:7:0x0017, B:8:0x0026, B:9:0x0029, B:17:0x001c), top: B:18:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void _setName(int objectID, String name) {
        synchronized (block) {
            if (name != null) {
                try {
                    if (name.trim().isEmpty()) {
                    }
                    (objectID != -1 ? activeQueue.f26931d : activeQueue.f26932e.get(objectID)).E1(name);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            name = "Unnamed object";
            (objectID != -1 ? activeQueue.f26931d : activeQueue.f26932e.get(objectID)).E1(name);
        }
    }

    public static void _setTransform(int objectID, float[] matrix4) {
        synchronized (block) {
            try {
                if (objectID == -1) {
                    activeQueue.f26931d.transform.l3(true);
                    activeQueue.f26931d.transform.set(matrix4);
                    return;
                }
                GameObject gameObject = activeQueue.f26932e.get(objectID);
                gameObject.transform.l3(true);
                gameObject.transform.set(matrix4);
                gameObject.transform.b2();
                Vector3 scale = gameObject.transform.getScale();
                float x10 = scale.getX();
                float y10 = scale.getY();
                float z10 = scale.getZ();
                if (Math.abs(x10 - y10) > 0.01f || Math.abs(y10 - z10) > 0.01f) {
                    gameObject.transform.m3(false);
                } else {
                    gameObject.transform.m3(true);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void attachLightComponent(GameObject gameObject, int lightType) {
        if (gameObject == null) {
            return;
        }
        SunLight sunLight = (SunLight) gameObject.d0(SunLight.class);
        SpotLight spotLight = (SpotLight) gameObject.d0(SpotLight.class);
        PointLight pointLight = (PointLight) gameObject.d0(PointLight.class);
        Class cls = lightType != 1 ? lightType != 3 ? PointLight.class : SpotLight.class : SunLight.class;
        if (cls != SunLight.class || sunLight == null) {
            if (cls != SpotLight.class || spotLight == null) {
                if (cls != PointLight.class || pointLight == null) {
                    if (sunLight != null) {
                        gameObject.u1(sunLight);
                    }
                    if (spotLight != null) {
                        gameObject.u1(spotLight);
                    }
                    if (pointLight != null) {
                        gameObject.u1(pointLight);
                    }
                    if (cls == SunLight.class) {
                        gameObject.r(new SunLight());
                    } else if (cls == SpotLight.class) {
                        gameObject.r(new SpotLight());
                    } else {
                        gameObject.r(new PointLight());
                    }
                }
            }
        }
    }

    private static void buildCollision(Vg.b queue) {
        Vg.b bVar = queue;
        try {
            GameObject gameObject = bVar.f26931d;
            int i10 = 0;
            int[] iArr = {0};
            int[] iArr2 = {0};
            int[] iArr3 = {0};
            int[] iArr4 = {0};
            for (int i11 = 0; i11 < gameObject.N(); i11++) {
                Component L10 = gameObject.L(i11);
                if (L10.isEnabled() && (L10 instanceof ModelRenderer)) {
                    ModelRenderer modelRenderer = (ModelRenderer) L10;
                    Vertex vertex = modelRenderer.getVertex();
                    if (vertex == null) {
                        vertex = bVar.f26938k.get(modelRenderer.getMeshFile());
                    }
                    if (vertex != null && vertex.j1() > 0 && vertex.W0() > 0) {
                        iArr[0] = iArr[0] + 1;
                        iArr3[0] = iArr3[0] + (vertex.j1() * 3);
                        iArr4[0] = iArr4[0] + (vertex.W0() * 3);
                    }
                }
            }
            gameObject.z0().forEach(new g(bVar, iArr, iArr3, iArr4));
            if (iArr3[0] != 0 && iArr4[0] != 0) {
                NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(iArr3[0]);
                NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(iArr4[0]);
                nativeFloatBuffer.fill(0.0f);
                nativeIntBuffer.fill(0);
                nativeFloatBuffer.position(0);
                nativeIntBuffer.position(0);
                int[] iArr5 = {0};
                int i12 = 0;
                while (i12 < gameObject.N()) {
                    Component L11 = gameObject.L(i12);
                    if (L11.isEnabled() && (L11 instanceof ModelRenderer)) {
                        ModelRenderer modelRenderer2 = (ModelRenderer) L11;
                        com.itsmagic.engine.Engines.Engine.Vector.f fVar = new com.itsmagic.engine.Engines.Engine.Vector.f();
                        C13600g.b(gameObject, fVar);
                        Vertex vertex2 = modelRenderer2.getVertex();
                        if (vertex2 == null) {
                            vertex2 = bVar.f26938k.get(modelRenderer2.getMeshFile());
                        }
                        if (vertex2 != null && vertex2.j1() > 0 && vertex2.W0() > 0) {
                            NativeFloatBuffer i13 = vertex2.i1();
                            NativeIntBuffer V02 = vertex2.V0();
                            for (int i14 = i10; i14 < i13.capacity(); i14 += 3) {
                                Vector3 vector3 = new Vector3(i13.get(i14), i13.get(i14 + 1), i13.get(i14 + 2));
                                fVar.P(vector3, vector3);
                                nativeFloatBuffer.put(vector3);
                            }
                            for (int i15 = 0; i15 < V02.capacity(); i15++) {
                                nativeIntBuffer.put(iArr5[0] + V02.get(i15));
                            }
                            iArr5[0] = iArr5[0] + vertex2.j1();
                            iArr2[0] = iArr2[0] + 1;
                        }
                    }
                    i12++;
                    bVar = queue;
                    i10 = 0;
                }
                gameObject.z0().forEach(new h(queue, nativeFloatBuffer, iArr5, nativeIntBuffer, iArr2, iArr));
                Vertex vertex3 = new Vertex();
                vertex3.q2(nativeFloatBuffer);
                vertex3.i2(nativeIntBuffer);
                if (vertex3.j1() <= 0 || vertex3.W0() <= 0) {
                    return;
                }
                String str = activeQueue.d() + "compound_collision.mesh";
                MeshSerializer.p(MeshSerializer.m(str), vertex3, false);
                GameObject p12 = GameObject.p1("Collision");
                p12.transform.l3(true);
                p12.r(new Collider(Collider.o.Model, str, true));
                gameObject.q(p12, 0);
                vertex3.Z();
                System.gc();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static File buildSafeFile(File parent, String desiredName) {
        String str;
        String enforceFileNameMaxLength = enforceFileNameMaxLength(desiredName, 100);
        File file = parent == null ? new File(enforceFileNameMaxLength) : new File(parent, enforceFileNameMaxLength);
        if (!file.exists()) {
            return file;
        }
        int lastIndexOf = enforceFileNameMaxLength.lastIndexOf(46);
        if (lastIndexOf > 0) {
            String substring = enforceFileNameMaxLength.substring(0, lastIndexOf);
            str = enforceFileNameMaxLength.substring(lastIndexOf);
            enforceFileNameMaxLength = substring;
        } else {
            str = "";
        }
        int i10 = 1;
        while (true) {
            String valueOf = String.valueOf(i10);
            int length = (100 - str.length()) - valueOf.length();
            if (length < 1) {
                length = 1;
            }
            String str2 = (enforceFileNameMaxLength.length() > length ? enforceFileNameMaxLength.substring(0, length) : enforceFileNameMaxLength) + valueOf + str;
            File file2 = parent == null ? new File(str2) : new File(parent, str2);
            if (!file2.exists()) {
                return file2;
            }
            i10++;
        }
    }

    private static File buildSafeFileWithMaxBase(File parent, String baseName, String extension, int maxBaseLength) {
        File file;
        if (baseName == null) {
            baseName = "";
        }
        if (extension == null) {
            extension = "";
        }
        String sanitizeFileName = sanitizeFileName(baseName);
        String sanitizeFileName2 = sanitizeFileName(extension);
        if (maxBaseLength < 1) {
            maxBaseLength = 1;
        }
        if (sanitizeFileName.length() > maxBaseLength) {
            sanitizeFileName = sanitizeFileName.substring(0, maxBaseLength);
        }
        if (parent == null) {
            file = new File(sanitizeFileName + sanitizeFileName2);
        } else {
            file = new File(parent, sanitizeFileName + sanitizeFileName2);
        }
        if (!file.exists()) {
            return file;
        }
        int i10 = 1;
        while (true) {
            String valueOf = String.valueOf(i10);
            int length = maxBaseLength - valueOf.length();
            if (length < 1) {
                length = 1;
            }
            String str = (sanitizeFileName.length() > length ? sanitizeFileName.substring(0, length) : sanitizeFileName) + valueOf + sanitizeFileName2;
            File file2 = parent == null ? new File(str) : new File(parent, str);
            if (!file2.exists()) {
                return file2;
            }
            i10++;
        }
    }

    private static void calculateSkinnedBoneBoundingRadius(Vg.b queue) {
        C2639s<SkinnedModelRenderer> c2639s;
        HashMap<Integer, Integer> hashMap;
        float[] fArr;
        int round;
        float[] fArr2;
        int i10;
        SkinJoint findSkinJointByGlobalIndex;
        GameObject gameObject;
        Vg.b bVar = queue;
        int i11 = 3;
        int i12 = 1;
        if (bVar == null || (c2639s = bVar.f26943p) == null || c2639s.size() <= 0) {
            return;
        }
        Iterator<C2639s.a<SkinnedModelRenderer>> it = bVar.f26943p.iterator();
        while (it.hasNext()) {
            SkinnedModelRenderer c10 = it.next().c();
            if (c10 != null && (hashMap = c10.boneGlobalToLocalMap) != null) {
                if (!hashMap.isEmpty()) {
                    Vertex vertex = bVar.f26938k.get(c10.meshFile);
                    if (vertex != null && vertex.i1() != null && vertex.m0() != null) {
                        if (vertex.l1() != null) {
                            int capacity = vertex.i1().capacity() / i11;
                            int skinningInfluenceStride = getSkinningInfluenceStride(vertex.m0(), capacity);
                            int skinningInfluenceStride2 = getSkinningInfluenceStride(vertex.l1(), capacity);
                            int min = Math.min(skinningInfluenceStride, skinningInfluenceStride2);
                            if (capacity > 0) {
                                if (min > 0) {
                                    int i13 = 0;
                                    for (Integer num : c10.boneGlobalToLocalMap.values()) {
                                        if (num != null && num.intValue() >= 0) {
                                            i13 = Math.max(i13, num.intValue() + i12);
                                        }
                                    }
                                    if (i13 > 0) {
                                        GameObject findArmatureRoot = findArmatureRoot(c10);
                                        if (findArmatureRoot == null) {
                                            findArmatureRoot = bVar.f26931d;
                                        }
                                        float[] fArr3 = new float[16];
                                        Nc.c.d(C13600g.c(findArmatureRoot, new float[16]), fArr3);
                                        HashMap hashMap2 = new HashMap();
                                        Iterator<Integer> it2 = c10.boneGlobalToLocalMap.o().iterator();
                                        while (it2.hasNext()) {
                                            Integer next = it2.next();
                                            Integer num2 = c10.boneGlobalToLocalMap.get(next);
                                            if (next != null && num2 != null && num2.intValue() >= 0) {
                                                if (num2.intValue() < i13 && (findSkinJointByGlobalIndex = findSkinJointByGlobalIndex(findArmatureRoot, next.intValue())) != null && (gameObject = findSkinJointByGlobalIndex.f79250n) != null) {
                                                    Iterator<Integer> it3 = it2;
                                                    float[] fArr4 = new float[16];
                                                    Nc.c.f(fArr4, fArr3, C13600g.c(gameObject, new float[16]));
                                                    hashMap2.put(num2, new float[]{fArr4[12], fArr4[13], fArr4[14]});
                                                    it2 = it3;
                                                    it = it;
                                                    findArmatureRoot = findArmatureRoot;
                                                }
                                            }
                                        }
                                        Iterator<C2639s.a<SkinnedModelRenderer>> it4 = it;
                                        if (!hashMap2.isEmpty()) {
                                            GameObject gameObject2 = c10.f79250n;
                                            if (gameObject2 == null) {
                                                gameObject2 = bVar.f26931d;
                                            }
                                            float[] fArr5 = new float[16];
                                            Nc.c.f(fArr5, fArr3, C13600g.c(gameObject2, new float[16]));
                                            float[] fArr6 = new float[i13];
                                            NativeFloatBuffer i14 = vertex.i1();
                                            NativeFloatBuffer m02 = vertex.m0();
                                            NativeFloatBuffer l12 = vertex.l1();
                                            int i15 = 0;
                                            while (i15 < capacity) {
                                                int i16 = i15 * 3;
                                                int i17 = i16 + 1;
                                                int i18 = capacity;
                                                SkinnedModelRenderer skinnedModelRenderer = c10;
                                                int i19 = i16 + 2;
                                                float[] fArr7 = fArr6;
                                                float transformPointX = transformPointX(fArr5, i14.get(i16), i14.get(i17), i14.get(i19));
                                                float transformPointY = transformPointY(fArr5, i14.get(i16), i14.get(i17), i14.get(i19));
                                                float transformPointZ = transformPointZ(fArr5, i14.get(i16), i14.get(i17), i14.get(i19));
                                                int i20 = i15 * skinningInfluenceStride;
                                                int i21 = i15 * skinningInfluenceStride2;
                                                int i22 = 0;
                                                boolean z10 = false;
                                                while (i22 < min) {
                                                    NativeFloatBuffer nativeFloatBuffer = i14;
                                                    if (l12.get(i21 + i22) > 0.0f && (round = Math.round(m02.get(i20 + i22))) >= 0 && round < i13) {
                                                        fArr2 = fArr5;
                                                        float[] fArr8 = (float[]) hashMap2.get(Integer.valueOf(round));
                                                        if (fArr8 != null) {
                                                            float f10 = transformPointX - fArr8[0];
                                                            float f11 = transformPointY - fArr8[1];
                                                            float f12 = transformPointZ - fArr8[2];
                                                            float f13 = (f10 * f10) + (f11 * f11) + (f12 * f12);
                                                            if (f13 > fArr7[round]) {
                                                                fArr7[round] = f13;
                                                            }
                                                            i10 = 1;
                                                            z10 = true;
                                                            i22 += i10;
                                                            i14 = nativeFloatBuffer;
                                                            fArr5 = fArr2;
                                                        }
                                                    } else {
                                                        fArr2 = fArr5;
                                                    }
                                                    i10 = 1;
                                                    i22 += i10;
                                                    i14 = nativeFloatBuffer;
                                                    fArr5 = fArr2;
                                                }
                                                NativeFloatBuffer nativeFloatBuffer2 = i14;
                                                float[] fArr9 = fArr5;
                                                if (!z10) {
                                                    int i23 = -1;
                                                    float f14 = Float.MAX_VALUE;
                                                    for (Integer num3 : hashMap2.o()) {
                                                        if (num3 != null && num3.intValue() >= 0 && num3.intValue() < i13 && (fArr = (float[]) hashMap2.get(num3)) != null) {
                                                            float f15 = transformPointX - fArr[0];
                                                            float f16 = transformPointY - fArr[1];
                                                            float f17 = transformPointZ - fArr[2];
                                                            float f18 = (f15 * f15) + (f16 * f16) + (f17 * f17);
                                                            if (f18 < f14) {
                                                                i23 = num3.intValue();
                                                                f14 = f18;
                                                            }
                                                        }
                                                    }
                                                    if (i23 >= 0 && f14 > fArr7[i23]) {
                                                        fArr7[i23] = f14;
                                                    }
                                                }
                                                i15++;
                                                capacity = i18;
                                                c10 = skinnedModelRenderer;
                                                fArr6 = fArr7;
                                                i14 = nativeFloatBuffer2;
                                                fArr5 = fArr9;
                                            }
                                            float[] fArr10 = fArr6;
                                            c10.boneBoundingRadius = new float[i13];
                                            for (int i24 = 0; i24 < i13; i24++) {
                                                c10.boneBoundingRadius[i24] = (((float) Math.sqrt(fArr10[i24])) * SKINNED_BONE_BOUNDING_RADIUS_PADDING) + 0.01f;
                                            }
                                            bVar = queue;
                                        }
                                        it = it4;
                                        i11 = 3;
                                        i12 = 1;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            bVar = queue;
        }
    }

    public static void cleanupAnimation(AnimationData animation) {
        int i10;
        if (animation == null) {
            return;
        }
        List<Timeline> l10 = animation.l();
        l10.removeIf(new j());
        int i11 = 0;
        while (i11 < l10.size()) {
            Timeline timeline = l10.get(i11);
            com.itsmagic.engine.Engines.Engine.Animation.c j10 = timeline.j();
            if (j10 == null) {
                i10 = i11 - 1;
                l10.remove(i11);
            } else {
                List<Frame> f10 = timeline.f();
                f10.removeIf(new l(j10));
                if (f10.isEmpty()) {
                    i10 = i11 - 1;
                    l10.remove(i11);
                } else {
                    i11++;
                }
            }
            i11 = i10;
            i11++;
        }
        animation.m();
    }

    private static boolean deleteInuteis(GameObject parent, boolean exec) {
        if (parent == null) {
            return exec;
        }
        for (GameObject gameObject : new ArrayList(parent.z0())) {
            if (gameObject != null) {
                if (deleteInuteis(gameObject, exec)) {
                    return true;
                }
                if (gameObject.N() == 0 && isIdentityTransform(gameObject.J0())) {
                    for (GameObject gameObject2 : new ArrayList(gameObject.z0())) {
                        if (gameObject2 != null) {
                            gameObject2.f79294k = parent;
                            parent.p(gameObject2);
                        }
                    }
                    gameObject.z0().clear();
                    gameObject.destroy();
                    return true;
                }
            }
        }
        return exec;
    }

    private static void deleteUnusedModelAndTextureFiles(Vg.b queue) {
        File c10;
        File[] listFiles;
        if (queue == null || (c10 = queue.c()) == null || !c10.exists() || (listFiles = c10.listFiles()) == null || listFiles.length == 0) {
            return;
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        new f(new c(hashSet), new e(new d(hashSet2)), queue).accept(queue.f26931d);
        for (File file : listFiles) {
            if (file != null) {
                String name = file.getName();
                if (!"thumb.png".equalsIgnoreCase(name) && !"thumb_manifest.json".equalsIgnoreCase(name)) {
                    String o10 = Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.P(file));
                    if (C2633l.b(file.getAbsolutePath(), ".mesh")) {
                        if (!hashSet.contains(o10)) {
                            file.delete();
                            File file2 = new File(file.getParentFile(), Tc.b.O(name) + WIREFRAME_SUFFIX + ".mwf");
                            if (file2.exists()) {
                                file2.delete();
                            }
                        }
                    } else if (name.endsWith(".mwf")) {
                        String O10 = Tc.b.O(name);
                        if (O10.endsWith(WIREFRAME_SUFFIX)) {
                            O10 = O10.substring(0, O10.length() - 3);
                        }
                        if (!hashSet.contains(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.P(new File(file.getParentFile(), O10 + ".mesh"))))) {
                            file.delete();
                        }
                    } else if (C2633l.b(file.getAbsolutePath(), ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm") && !hashSet2.contains(o10)) {
                        file.delete();
                        File file3 = new File(file.getParentFile(), file.getName() + ".config");
                        if (file3.exists()) {
                            file3.delete();
                        }
                    }
                }
            }
        }
    }

    public static String easyName(String name) {
        if (name.startsWith("mixamorig:")) {
            name = name.substring(10);
        }
        return name.replace("$AssimpFbx$_", "");
    }

    private static String enforceFileNameMaxLength(String name, int maxLength) {
        if (name == null) {
            return "";
        }
        String sanitizeFileName = sanitizeFileName(name);
        if (sanitizeFileName.length() <= maxLength) {
            return sanitizeFileName;
        }
        int lastIndexOf = sanitizeFileName.lastIndexOf(46);
        if (lastIndexOf <= 0 || lastIndexOf >= sanitizeFileName.length() - 1) {
            return sanitizeFileName.substring(0, maxLength);
        }
        String substring = sanitizeFileName.substring(lastIndexOf);
        int length = maxLength - substring.length();
        if (length < 1) {
            return sanitizeFileName.substring(0, maxLength);
        }
        String substring2 = sanitizeFileName.substring(0, lastIndexOf);
        if (substring2.length() > length) {
            substring2 = substring2.substring(0, length);
        }
        return substring2 + substring;
    }

    private static String finalCheckTexture(String file, Vg.b queue) {
        if (!new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + file).exists()) {
            return (file == null || file.trim().isEmpty()) ? file : y.f(com.itsmagic.engine.Core.Components.ProjectController.a.T(), Tc.b.v(file));
        }
        if (file == null || !file.equals(queue.b())) {
            return file;
        }
        return null;
    }

    private static GameObject findArmatureRoot(SkinnedModelRenderer renderer) {
        GameObject gameObject;
        if (renderer == null || (gameObject = renderer.f79250n) == null) {
            return null;
        }
        Component h02 = gameObject.h0(Component.e.Armature);
        if (h02 instanceof Armature) {
            return h02.f79250n;
        }
        return null;
    }

    private static GameObject findLightTargetObject(String name) {
        GameObject gameObject;
        Vg.b bVar = activeQueue;
        if (bVar == null || (gameObject = bVar.f26931d) == null) {
            return null;
        }
        return gameObject.I(name) ? gameObject : gameObject.a0(name, true);
    }

    private static int findOrRegisterObjectID(GameObject gameObject) {
        if (gameObject == null) {
            return -1;
        }
        Vg.b bVar = activeQueue;
        if (gameObject == bVar.f26931d) {
            return -1;
        }
        Iterator<C2639s.a<GameObject>> it = bVar.f26932e.iterator();
        while (it.hasNext()) {
            C2639s.a<GameObject> next = it.next();
            if (next.c() == gameObject) {
                return next.b();
            }
        }
        return activeQueue.f26932e.m(gameObject);
    }

    private static SkinJoint findSkinJointByGlobalIndex(GameObject current, int globalBoneIndex) {
        if (current == null) {
            return null;
        }
        Component c02 = current.c0(Component.e.SkinJoint);
        if (c02 instanceof SkinJoint) {
            SkinJoint skinJoint = (SkinJoint) c02;
            if (skinJoint.index == globalBoneIndex) {
                return skinJoint;
            }
        }
        for (int i10 = 0; i10 < current.D(); i10++) {
            SkinJoint findSkinJointByGlobalIndex = findSkinJointByGlobalIndex(current.C(i10), globalBoneIndex);
            if (findSkinJointByGlobalIndex != null) {
                return findSkinJointByGlobalIndex;
            }
        }
        return null;
    }

    private static Frame getOrCreateFrame(Timeline timeline, int frameTime) {
        if (timeline == null) {
            return null;
        }
        List<Frame> f10 = timeline.f();
        for (int i10 = 0; i10 < f10.size(); i10++) {
            Frame frame = f10.get(i10);
            if (frame != null && frame.i() == frameTime) {
                return frame;
            }
        }
        Frame frame2 = new Frame();
        frame2.x(frameTime);
        f10.add(frame2);
        return frame2;
    }

    private static Timeline getOrCreateTransformTimeline(AnimationData animation, String objectUID, String entryName, com.itsmagic.engine.Engines.Engine.Animation.c type) {
        if (animation == null || objectUID == null || entryName == null || type == null) {
            return null;
        }
        List<Timeline> l10 = animation.l();
        for (int i10 = 0; i10 < l10.size(); i10++) {
            Timeline timeline = l10.get(i10);
            if (timeline != null && timeline.i() != null && timeline.d() != null && timeline.i().toString().equals(objectUID) && timeline.d().W(com.itsmagic.engine.Engines.Engine.Animation.a.f72593a) && entryName.equals(timeline.e())) {
                return timeline;
            }
        }
        Timeline timeline2 = new Timeline();
        timeline2.n(new Ac.b(objectUID));
        timeline2.l(com.itsmagic.engine.Engines.Engine.Animation.a.f72593a);
        timeline2.m(entryName);
        timeline2.o(type);
        l10.add(timeline2);
        return timeline2;
    }

    private static int getSkinningInfluenceStride(NativeFloatBuffer buffer, int vertexCount) {
        if (buffer != null && vertexCount > 0) {
            if (buffer.capacity() >= vertexCount * 4) {
                return 4;
            }
            if (buffer.capacity() >= vertexCount * 3) {
                return 3;
            }
        }
        return 0;
    }

    private static void internalImport() {
        new Thread(new k()).start();
    }

    private static boolean isIdentityTransform(Transform transform) {
        return transform != null && transform.Z0().equally(0.0f) && transform.h1().q(1.0f, 0.0f, 0.0f, 0.0f) && transform.getScale().equally(1.0f, 1.0f, 1.0f);
    }

    public static void lpUpdate() {
        AtomicBoolean atomicBoolean = importing;
        if (atomicBoolean.compareAndSet(false, true)) {
            synchronized (block) {
                try {
                    List<Vg.b> list = queueList;
                    if (list.isEmpty()) {
                        atomicBoolean.set(false);
                        activeQueue = null;
                    } else {
                        activeQueue = list.remove(0);
                        internalImport();
                    }
                } finally {
                }
            }
        }
    }

    public static native void nativeImportFile(String filepath, String metaFolder, String metaFolderIPP, float scale, boolean importSkinningData, int boneCorrectionMode, int maxBonesPerChunk);

    public static void onFinish() {
        Vg.b bVar;
        synchronized (block) {
            bVar = activeQueue;
        }
        Vg.a aVar = bVar.f26929b;
        File file = bVar.f26928a;
        File y10 = Tc.b.y(file);
        if (!y10.exists()) {
            y10.mkdir();
        }
        AtomicInteger atomicInteger = new AtomicInteger(bVar.f26934g.size());
        AtomicInteger atomicInteger2 = new AtomicInteger();
        File[] listFiles = y10.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (C2633l.b(file2.getAbsolutePath(), ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm")) {
                    if (!new File(y10, file2.getName() + ".config").exists()) {
                        atomicInteger.incrementAndGet();
                    }
                }
            }
        }
        activeQueue.f26931d.transform.setPosition(0.0f);
        activeQueue.f26931d.transform.l3(true);
        activeQueue.f26931d.transform.b2();
        activeQueue.f26931d.transform.setScale(1.0f);
        if (activeQueue.f26931d.D() > 0) {
            boolean z10 = false;
            for (int i10 = 0; i10 < activeQueue.f26931d.D(); i10++) {
                if (activeQueue.f26931d.C(i10).transform.getScale().lengthF() <= 0.2f) {
                    z10 = true;
                }
            }
            if (z10) {
                for (int i11 = 0; i11 < activeQueue.f26931d.D(); i11++) {
                    Transform transform = activeQueue.f26931d.C(i11).transform;
                    transform.setScale(transform.getScale().mul(10.0f));
                }
            }
        }
        Vector3 scale = activeQueue.f26931d.transform.getScale();
        float x10 = scale.getX();
        float y11 = scale.getY();
        float z11 = scale.getZ();
        if (Math.abs(x10 - y11) > 0.01f || Math.abs(y11 - z11) > 0.01f) {
            activeQueue.f26931d.transform.m3(false);
        } else {
            activeQueue.f26931d.transform.m3(true);
        }
        if (bVar.f26930c.deleteIdentityObjects) {
            for (boolean z12 = true; z12; z12 = deleteInuteis(activeQueue.f26931d, false)) {
            }
        }
        ImportFilePopup.ImportOptions importOptions = bVar.f26930c;
        if (!importOptions.explodePack && importOptions.generateCollision && bVar.f26951x <= 0) {
            buildCollision(bVar);
        }
        if (bVar.f26930c.allowVertexFiles) {
            AtomicInteger atomicInteger3 = new AtomicInteger(bVar.f26934g.size());
            AtomicInteger atomicInteger4 = new AtomicInteger();
            ArrayList arrayList = new ArrayList();
            bVar.f26934g.forEach(new n(arrayList));
            arrayList.parallelStream().forEach(new o(bVar, atomicInteger4, atomicInteger2, aVar, atomicInteger3, atomicInteger));
            arrayList.clear();
            System.gc();
            bVar.f26934g.clear();
        } else {
            bVar.f26934g.clear();
        }
        if (bVar.f26930c.allowTextureFiles) {
            AtomicInteger atomicInteger5 = new AtomicInteger();
            AtomicInteger atomicInteger6 = new AtomicInteger();
            Context t10 = N7.c.t();
            File[] listFiles2 = y10.listFiles();
            if (listFiles2 != null) {
                for (File file3 : listFiles2) {
                    if (C2633l.b(file3.getAbsolutePath(), ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm")) {
                        if (!new File(y10, file3.getName() + ".config").exists()) {
                            atomicInteger5.incrementAndGet();
                        }
                    }
                }
            }
            aVar.c(0, "Textures:" + atomicInteger6.get() + "/" + atomicInteger5.get(), atomicInteger2.get(), atomicInteger.get());
            if (listFiles2 != null) {
                Arrays.stream(listFiles2).parallel().forEach(new p(y10, bVar, t10, atomicInteger6, atomicInteger2, aVar, atomicInteger5, atomicInteger));
            }
        }
        if (bVar.f26930c.allowMaterialFiles) {
            bVar.f26940m.forEach(new q());
        }
        if (bVar.f26930c.allowAnimFiles) {
            bVar.f26944q.forEach(new r());
        }
        if (bVar.f26930c.setStatic && bVar.f26951x <= 0) {
            bVar.f26931d.J0().N3(Transform.G.STATIC);
            bVar.f26931d.z0().forEach(new s());
        }
        calculateSkinnedBoneBoundingRadius(bVar);
        if (bVar.f26930c.explodePack) {
            GameObject gameObject = bVar.f26931d;
            while (gameObject.D() == 1) {
                gameObject = gameObject.C(0);
            }
            String str = Tc.b.w(file.getName(), true) + " objects";
            for (int i12 = 0; i12 < gameObject.D(); i12++) {
                GameObject C10 = gameObject.C(i12);
                C10.transform.set(C13600g.c(C10, new float[16]));
                File file4 = new File(file.getParentFile().getAbsolutePath() + "/" + str);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(C10.getName().replace(".", ConstantDescs.DEFAULT_NAME));
                sb2.append(".go");
                File buildSafeFile = buildSafeFile(file4, sb2.toString());
                String replace = buildSafeFile.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
                PrefabLink prefabLink = (PrefabLink) C10.c0(Component.e.PrefabLink);
                if (prefabLink != null) {
                    prefabLink.setFile(replace);
                } else {
                    PrefabLink prefabLink2 = new PrefabLink();
                    prefabLink2.setFile(replace);
                    C10.r(prefabLink2);
                }
                C2636o.e(C10.x1().toString(), buildSafeFile);
            }
            N7.c.j0(new t(aVar));
        } else {
            File buildSafeFile2 = buildSafeFile(y10, Tc.b.w(file.getName(), true) + ".go");
            C2636o.e(bVar.f26931d.x1().toString(), buildSafeFile2);
            if (bVar.f26930c.buildAtlas) {
                CountDownLatch countDownLatch = new CountDownLatch(1);
                K8.a.I(new u(buildSafeFile2, bVar, y10, aVar, countDownLatch));
                try {
                    countDownLatch.await();
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
            if (bVar.f26930c.allowObjectFiles) {
                N7.c.j0(new a(aVar, buildSafeFile2));
            } else {
                N7.c.j0(new b(aVar));
            }
        }
        ImportFilePopup.ImportOptions importOptions2 = bVar.f26930c;
        if (!importOptions2.buildAtlas && importOptions2.ignoreUnusedFiles) {
            deleteUnusedModelAndTextureFiles(bVar);
        }
        bVar.e();
        File[] listFiles3 = y10.listFiles();
        if (listFiles3 != null) {
            for (File file5 : listFiles3) {
                if (C2633l.b(file5.getAbsolutePath(), ".mat") && !bVar.f26930c.allowMaterialFiles) {
                    file5.delete();
                } else if (C2633l.b(file5.getAbsolutePath(), ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm") && !bVar.f26930c.allowTextureFiles) {
                    file5.delete();
                } else if (C2633l.b(file5.getAbsolutePath(), ".mesh") && !bVar.f26930c.allowVertexFiles) {
                    file5.delete();
                } else if (C2633l.b(file5.getAbsolutePath(), ".go") && !bVar.f26930c.allowObjectFiles) {
                    file5.delete();
                } else if (C2633l.b(file5.getAbsolutePath(), ".anim") && !bVar.f26930c.allowAnimFiles) {
                    file5.delete();
                }
            }
        }
        synchronized (block) {
            activeQueue = null;
            importing.set(false);
        }
    }

    private static String sanitizeFileName(String name) {
        if (name == null) {
            return "";
        }
        int i10 = 0;
        while (true) {
            char[] cArr = INVALID_FILENAME_CHARS;
            if (i10 >= cArr.length) {
                return name;
            }
            name = name.replace(cArr[i10], '_');
            i10++;
        }
    }

    public static void startImportOf(ImportFilePopup.ImportOptions importOptions, File file, Vg.a listener) {
        if (listener == null) {
            return;
        }
        if (file == null) {
            listener.a("FileNotFoundException:null");
            return;
        }
        if (!file.exists()) {
            listener.a("FileNotFoundException:" + file.getAbsolutePath());
            return;
        }
        if (importOptions == null) {
            importOptions = new ImportFilePopup.ImportOptions();
        }
        Vg.b bVar = new Vg.b();
        bVar.f26928a = file;
        bVar.f26929b = listener;
        bVar.f26930c = importOptions;
        synchronized (block) {
            queueList.add(bVar);
        }
    }

    public static String toProjectIpp(File file) {
        return Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.P(file));
    }

    private static float transformPointX(float[] matrix, float x10, float y10, float z10) {
        return (matrix[0] * x10) + (matrix[4] * y10) + (matrix[8] * z10) + matrix[12];
    }

    private static float transformPointY(float[] matrix, float x10, float y10, float z10) {
        return (matrix[1] * x10) + (matrix[5] * y10) + (matrix[9] * z10) + matrix[13];
    }

    private static float transformPointZ(float[] matrix, float x10, float y10, float z10) {
        return (matrix[2] * x10) + (matrix[6] * y10) + (matrix[10] * z10) + matrix[14];
    }

    private static String trySearchTexture(String name, String... names) {
        File a10 = activeQueue.a();
        File file = new File(a10, "textures");
        if (file.exists()) {
            for (File file2 : file.listFiles()) {
                for (String str : names) {
                    if (file2.getName().startsWith(str) && C2633l.b(file2.getAbsolutePath(), ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm")) {
                        return "textures/" + file2.getName();
                    }
                }
            }
        }
        for (File file3 : a10.listFiles()) {
            for (String str2 : names) {
                if (file3.getName().startsWith(str2) && C2633l.b(file3.getAbsolutePath(), ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm")) {
                    return file3.getName();
                }
            }
        }
        return "";
    }

    public static int _makeLight(String name) {
        return _makeLight(name, 2);
    }
}
