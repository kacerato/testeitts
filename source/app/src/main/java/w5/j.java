package w5;

import Ic.C2630i;
import Ic.C2633l;
import JAVARuntime.Point3;
import JAVARuntime.Runnable;
import Vg.c;
import Z6.c;
import Z6.e;
import Z6.f;
import Z6.g;
import a7.C3586a;
import a8.C3589a;
import ab.C3596a;
import ab.InterfaceC3597b;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.Toast;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.t;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.Cursor3D;
import com.itsmagic.engine.Activities.Editor.Panels.Files.Utils.ImportFilePopup;
import com.itsmagic.engine.Activities.Editor.Panels.Files.Utils.a;
import com.itsmagic.engine.Activities.Editor.Utils.C12740h;
import com.itsmagic.engine.Activities.Editor.Utils.y;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.LuaComponent.LuaComponent;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Path.MeshCurve;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Path.PathPoint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Empty;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.ObjectPool;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.CustomAmbientLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.CustomPostProcessing;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.CustomSkybox;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.ProcessingGraph;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UICustomPostProcessing;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIProcessingGraph;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.SoundPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.StickToTerrain;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.CustomVFXEffect;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.NoCode.Components.NoCodeFileExecutor;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Settings.GameSettings;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Data.MeshSerializer;
import com.itsmagic.engine.Engines.Engine.Vertex.Utils.ConvexHullModel;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Engine.World.a;
import com.itsmagic.engine.Engines.Engine.World.b;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Sound.Imported.AudioConfig;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.jme3.math.Quaternion;
import dd.C12908b;
import gb.C13317e;
import id.C13696a;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.constant.ConstantDescs;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import jd.C13823b;
import md.C14217b;
import n4.C14351c;
import n4.C14352d;
import o8.InterfaceC14487a;
import org.ITsMagic.ModelImporter.NativeModelImporter;
import p8.C14940d;
import q7.C15045a;
import r4.C15147a;
import v5.b;
import vc.p;
import vc.q;
import x4.C16054a;
import yb.C16165b;
import yd.C16181m;
import z8.C16273a;

public class j {

    public static File f126810a;

    public static File f126811b;

    public class A implements dd.d {

        public final String f126812a;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                W7.b.f27309i.f31909a.f31910a.r(new ProcessingGraph(A.this.f126812a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "")));
            }
        }

        public A(final String val$inProjectDirectory) {
            this.f126812a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            if (C13317e.J(W7.b.f27309i.f31909a.f31910a)) {
                K8.a.I(new a());
            } else {
                N7.c.v0(Lang.l(Lang.T.PLEASE_SELECT_ONE_OBJECT));
            }
        }
    }

    public class B implements dd.d {

        public final String f126814a;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                W7.b.f27309i.f31909a.f31910a.r(new UIProcessingGraph(B.this.f126814a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "")));
            }
        }

        public B(final String val$inProjectDirectory) {
            this.f126814a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            if (C13317e.J(W7.b.f27309i.f31909a.f31910a)) {
                K8.a.I(new a());
            } else {
                N7.c.v0(Lang.l(Lang.T.PLEASE_SELECT_ONE_OBJECT));
            }
        }
    }

    public class C implements dd.d {

        public final String f126816a;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                W7.b.f27309i.f31909a.f31910a.r(new NoCodeFileExecutor(C.this.f126816a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "")));
            }
        }

        public C(final String val$inProjectDirectory) {
            this.f126816a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            if (C13317e.J(W7.b.f27309i.f31909a.f31910a)) {
                K8.a.I(new a());
            } else {
                N7.c.v0(Lang.l(Lang.T.PLEASE_SELECT_ONE_OBJECT));
            }
        }
    }

    public class D extends SteppedArrayList<C12908b> {

        public final String f126818b;

        public final Context f126819c;

        public class a implements dd.d {

            public class C2107a implements Runnable {
                public C2107a() {
                }

                @Override
                public void run() {
                    ModelRenderer modelRenderer;
                    try {
                        modelRenderer = (ModelRenderer) W7.b.f27309i.f31909a.f31910a.c0(Component.e.ModelRenderer);
                    } catch (Exception unused) {
                        modelRenderer = null;
                    }
                    if (modelRenderer == null) {
                        N7.c.v0(Lang.l(Lang.T.NO_MODEL_RENDERER_FOUND));
                        return;
                    }
                    modelRenderer.setMeshFile(D.this.f126818b.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(D.this.f126819c) + "/", ""));
                }
            }

            public a() {
            }

            @Override
            public void onSelected(View view) {
                K8.a.I(new C2107a());
            }
        }

        public class b implements dd.d {

            public class a implements Runnable {
                public a() {
                }

                @Override
                public void run() {
                    SkinnedModelRenderer skinnedModelRenderer;
                    try {
                        skinnedModelRenderer = (SkinnedModelRenderer) W7.b.f27309i.f31909a.f31910a.c0(Component.e.SkinnedModelRenderer);
                    } catch (Exception unused) {
                        skinnedModelRenderer = null;
                    }
                    if (skinnedModelRenderer == null) {
                        N7.c.v0(Lang.l(Lang.T.NO_SKINNED_MODEL_RENDERER_FOUND));
                        return;
                    }
                    skinnedModelRenderer.meshFile = D.this.f126818b.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(D.this.f126819c) + "/", "");
                }
            }

            public b() {
            }

            @Override
            public void onSelected(View view) {
                K8.a.I(new a());
            }
        }

        public D(final String val$inProjectDirectory, final Context val$context) {
            this.f126818b = val$inProjectDirectory;
            this.f126819c = val$context;
            add(new C12908b(com.itsmagic.engine2.R.drawable.wo_modelrenderer2, Lang.l(Lang.T.ATTACH_MODEL_RENDERER), new a()));
            add(new C12908b(com.itsmagic.engine2.R.drawable.wo_modelrenderer2, Lang.l(Lang.T.ATTACH_SKINNED_MODEL_RENDERER), new b()));
        }
    }

    public class E implements dd.d {

        public final String f126824a;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                try {
                    Vertex A12 = Vertex.A1(E.this.f126824a);
                    for (int i10 = 0; i10 < A12.W0(); i10++) {
                        com.itsmagic.engine.Engines.Engine.Vector.h I02 = A12.I0(i10);
                        A12.g2(i10, I02.f79905d, I02.f79904c, I02.f79903b);
                    }
                    for (int i11 = 0; i11 < A12.y0(); i11++) {
                        Vector3 v02 = A12.v0(i11);
                        v02.mulLocal(-1.0f);
                        A12.X1(i11, v02);
                    }
                    A12.e2(null);
                    A12.apply();
                    MeshSerializer.o(MeshSerializer.m(E.this.f126824a), A12);
                    N7.c.v0(Lang.l(Lang.T.SUCCESS));
                } catch (Exception e10) {
                    e10.printStackTrace();
                    N7.c.v0(Lang.l(Lang.T.FAILED_PREFIX) + e10.getMessage());
                }
            }
        }

        public E(final String val$inProjectDirectory) {
            this.f126824a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            N7.c.v0(Lang.l(Lang.T.INVERTING));
            O9.b.d(new a());
        }
    }

    public class F implements dd.d {

        public final String f126826a;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                try {
                    Vertex A12 = Vertex.A1(F.this.f126826a);
                    for (int i10 = 0; i10 < A12.y0(); i10++) {
                        Vector3 v02 = A12.v0(i10);
                        v02.mulLocal(-1.0f);
                        A12.X1(i10, v02);
                    }
                    A12.e2(null);
                    A12.apply();
                    MeshSerializer.o(MeshSerializer.m(F.this.f126826a), A12);
                    N7.c.v0(Lang.l(Lang.T.SUCCESS));
                } catch (Exception e10) {
                    e10.printStackTrace();
                    N7.c.v0(Lang.l(Lang.T.FAILED_PREFIX) + e10.getMessage());
                }
            }
        }

        public F(final String val$inProjectDirectory) {
            this.f126826a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            N7.c.v0(Lang.l(Lang.T.INVERTING));
            O9.b.d(new a());
        }
    }

    public class G implements dd.d {

        public final String f126828a;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                try {
                    Vertex A12 = Vertex.A1(G.this.f126828a);
                    A12.Y1(null);
                    A12.e2(null);
                    A12.apply();
                    MeshSerializer.o(MeshSerializer.m(G.this.f126828a), A12);
                    N7.c.v0(Lang.l(Lang.T.SUCCESS));
                } catch (Exception e10) {
                    e10.printStackTrace();
                    N7.c.v0(Lang.l(Lang.T.FAILED_PREFIX) + e10.getMessage());
                }
            }
        }

        public G(final String val$inProjectDirectory) {
            this.f126828a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            N7.c.v0(Lang.l(Lang.T.CALCULATING));
            O9.b.d(new a());
        }
    }

    public class H implements dd.d {

        public final String f126830a;

        public class a implements Runnable {

            public final C15045a f126831b;

            public a(final C15045a val$loading) {
                this.f126831b = val$loading;
            }

            public final void a(BufferedWriter writer, String s10) throws IOException {
                writer.write(s10);
                writer.write(System.lineSeparator());
            }

            @Override
            public void run() {
                try {
                    try {
                        File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + Tc.b.O(H.this.f126830a) + "_converted.obj"));
                        if (file.exists()) {
                            file.delete();
                        }
                        file.createNewFile();
                        Vertex A12 = Vertex.A1(H.this.f126830a);
                        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
                        try {
                            a(bufferedWriter, "# ITsMagic Vision " + W7.b.f27306f.b(N7.c.t()));
                            a(bufferedWriter, "# https://play.google.com/store/apps/details?id=com.itsmagic.vision");
                            bufferedWriter.write(String.format("o %s%n", Tc.b.w(H.this.f126830a, true)));
                            if (A12.i1() != null) {
                                q qVar = new q(A12.i1());
                                for (int i10 = 0; i10 < qVar.d(); i10++) {
                                    Vector3 h10 = qVar.h(i10);
                                    bufferedWriter.write(String.format("v %.6f %.6f %.6f%n", Float.valueOf(h10.getX()), Float.valueOf(h10.getY()), Float.valueOf(h10.getZ())));
                                }
                            }
                            if (A12.a1() != null) {
                                p pVar = new p(A12.a1());
                                for (int i11 = 0; i11 < pVar.b(); i11++) {
                                    Vector2 f10 = pVar.f(i11);
                                    bufferedWriter.write(String.format("vt %.6f %.6f%n", Float.valueOf(f10.getX()), Float.valueOf(f10.getY())));
                                }
                            }
                            if (A12.x0() != null) {
                                q qVar2 = new q(A12.x0());
                                for (int i12 = 0; i12 < qVar2.d(); i12++) {
                                    Vector3 h11 = qVar2.h(i12);
                                    bufferedWriter.write(String.format("vn %.6f %.6f %.6f%n", Float.valueOf(h11.getX()), Float.valueOf(h11.getY()), Float.valueOf(h11.getZ())));
                                }
                            }
                            a(bufferedWriter, "s 1");
                            if (A12.V0() != null) {
                                vc.n nVar = new vc.n(A12.V0());
                                for (int i13 = 0; i13 < nVar.b(); i13++) {
                                    Point3 e10 = nVar.e(i13);
                                    bufferedWriter.write("f");
                                    int x10 = e10.getX() + 1;
                                    bufferedWriter.write(String.format(" %d/%d/%d", Integer.valueOf(x10), Integer.valueOf(x10), Integer.valueOf(x10)));
                                    int y10 = e10.getY() + 1;
                                    bufferedWriter.write(String.format(" %d/%d/%d", Integer.valueOf(y10), Integer.valueOf(y10), Integer.valueOf(y10)));
                                    int z10 = e10.getZ() + 1;
                                    bufferedWriter.write(String.format(" %d/%d/%d", Integer.valueOf(z10), Integer.valueOf(z10), Integer.valueOf(z10)));
                                    bufferedWriter.write(System.lineSeparator());
                                }
                            }
                            bufferedWriter.close();
                            N7.c.v0(Lang.l(Lang.T.SUCCESS));
                        } catch (Throwable th2) {
                            try {
                                bufferedWriter.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                        N7.c.v0(Lang.l(Lang.T.FAILED_PREFIX) + e11.getMessage());
                    }
                    this.f126831b.p1();
                } finally {
                    this.f126831b.p1();
                }
            }
        }

        public H(final String val$inProjectDirectory) {
            this.f126830a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            O9.b.d(new a(C15045a.r1()));
        }
    }

    public class I implements dd.d {

        public final String f126833a;

        public class a implements b.i {

            public final String f126834a;

            public class RunnableC2108a implements Runnable {

                public final String f126836b;

                public final C15045a f126837c;

                public RunnableC2108a(final String val$inProjectPath, final C15045a val$loading) {
                    this.f126836b = val$inProjectPath;
                    this.f126837c = val$loading;
                }

                public final void a(BufferedWriter writer, String s10) throws IOException {
                    writer.write(s10);
                    writer.write(System.lineSeparator());
                }

                @Override
                public void run() {
                    try {
                        try {
                            File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + this.f126836b + "/" + a.this.f126834a + "_convexhull.mesh"));
                            if (file.exists()) {
                                file.delete();
                            }
                            file.createNewFile();
                            MeshSerializer.o(MeshSerializer.l(file), new ConvexHullModel(Vertex.A1(I.this.f126833a)).e());
                            N7.c.v0(Lang.l(Lang.T.SUCCESS));
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            N7.c.v0(Lang.l(Lang.T.FAILED_PREFIX) + e10.getMessage());
                        }
                        this.f126837c.p1();
                    } catch (Throwable th2) {
                        this.f126837c.p1();
                        throw th2;
                    }
                }
            }

            public a(final String val$name) {
                this.f126834a = val$name;
            }

            @Override
            public void a(File file, String inProjectPath) {
                O9.b.d(new RunnableC2108a(inProjectPath, C15045a.r1()));
            }
        }

        public I(final String val$inProjectDirectory) {
            this.f126833a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            v5.b.y1(Tc.b.u(this.f126833a), new a(Tc.b.w(this.f126833a, true)));
        }
    }

    public class J implements dd.d {

        public final String f126839a;

        public class a implements e.i {

            public class C2109a implements b.i {

                public final float f126841a;

                public final String f126842b;

                public class C2110a implements C15045a.d {

                    public final String f126844a;

                    public class RunnableC2111a implements Runnable {

                        public final C15045a f126846b;

                        public RunnableC2111a(final C15045a val$loading) {
                            this.f126846b = val$loading;
                        }

                        @Override
                        public void run() {
                            try {
                                MeshSerializer.o(MeshSerializer.m(C2110a.this.f126844a + "/" + C2109a.this.f126842b + "_d" + Tc.b.q(C2109a.this.f126841a, 2, ConstantDescs.DEFAULT_NAME) + ".mesh"), new Ib.g(Vertex.A1(J.this.f126839a)).D(C2109a.this.f126841a, 10.0d));
                                N7.c.v0(Lang.l(Lang.T.SUCCESS));
                            } catch (Exception e10) {
                                e10.printStackTrace();
                                N7.c.v0(Lang.l(Lang.T.FAILED_PREFIX) + e10.getMessage());
                            } finally {
                                this.f126846b.p1();
                            }
                        }
                    }

                    public C2110a(final String val$inProjectPath) {
                        this.f126844a = val$inProjectPath;
                    }

                    @Override
                    public void a(C15045a loading) {
                        N7.c.v0(Lang.l(Lang.T.STARTING_MAY_TAKE_MINUTES));
                        O9.b.d(new RunnableC2111a(loading));
                    }
                }

                public C2109a(final float val$value, final String val$name) {
                    this.f126841a = val$value;
                    this.f126842b = val$name;
                }

                @Override
                public void a(File file, String inProjectPath) {
                    C15045a.u1(true, new C2110a(inProjectPath));
                }
            }

            public a() {
            }

            @Override
            public void a(float value, boolean canceled) {
                v5.b.y1(Tc.b.u(J.this.f126839a), new C2109a(value, Tc.b.w(J.this.f126839a, true)));
            }
        }

        public J(final String val$inProjectDirectory) {
            this.f126839a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            Z6.e.B1(Lang.l(Lang.T.DECIMATE_PERCENTAGE), 1.0f, 0.0f, 1.0f, new a());
        }
    }

    public class K implements dd.d {

        public final String f126848a;

        public final Context f126849b;

        public class a implements b.g {
            public a() {
            }

            @Override
            public void a(GameObject object) {
                W7.b.f27308h.h(object);
            }

            @Override
            public void b(String t10) {
            }

            @Override
            public void onUpdate() {
            }
        }

        public class b implements Runnable {

            public final C15045a f126851b;

            public b(final C15045a val$loading) {
                this.f126851b = val$loading;
            }

            @Override
            public void run() {
                try {
                    try {
                        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(K.this.f126849b) + "/" + K.this.f126848a);
                        B9.b bVar = (B9.b) X7.a.m().fromJson(X7.a.x(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(K.this.f126849b) + "/" + K.this.f126848a + ".config")), B9.b.class);
                        if (bVar == null) {
                            bVar = new B9.b();
                        }
                        C14217b.d(file, bVar);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        N7.c.v0(e10.getMessage());
                    }
                    this.f126851b.p1();
                } catch (Throwable th2) {
                    this.f126851b.p1();
                    throw th2;
                }
            }
        }

        public K(final String val$inProjectDirectory, final Context val$context) {
            this.f126848a = val$inProjectDirectory;
            this.f126849b = val$context;
        }

        @Override
        public void onSelected(View view) {
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126849b) + "/" + (Tc.b.O(this.f126848a) + ".meta/"));
            int i10 = 0;
            if (file.exists()) {
                try {
                    File[] listFiles = file.listFiles();
                    int length = listFiles.length;
                    int i11 = 0;
                    while (i10 < length) {
                        try {
                            File file2 = listFiles[i10];
                            if (C2633l.b(Tc.b.t(file2.getAbsolutePath()), ".go")) {
                                com.itsmagic.engine.Engines.Engine.World.b.i(com.itsmagic.engine.Core.Components.ProjectController.a.P(file2), true, new a());
                                i11 = 1;
                            }
                            i10++;
                        } catch (Exception unused) {
                        }
                    }
                    i10 = i11;
                } catch (Exception unused2) {
                }
            } else {
                file.mkdirs();
            }
            if (i10 == 0) {
                new Thread(new b(C15045a.r1())).start();
            }
        }
    }

    public class L implements dd.d {

        public final String f126853a;

        public final Context f126854b;

        public final b f126855c;

        public class a implements C15045a.d {

            public class RunnableC2112a implements Runnable {

                public final C15045a f126857b;

                public class C2113a implements z8.b {

                    public class RunnableC2114a implements Runnable {
                        public RunnableC2114a() {
                        }

                        @Override
                        public void run() {
                            w5.b bVar = L.this.f126855c;
                            if (bVar != null) {
                                bVar.a();
                            }
                        }
                    }

                    public class b implements Runnable {
                        public b() {
                        }

                        @Override
                        public void run() {
                            w5.b bVar = L.this.f126855c;
                            if (bVar != null) {
                                bVar.a();
                            }
                            RunnableC2112a.this.f126857b.p1();
                        }
                    }

                    public C2113a() {
                    }

                    @Override
                    public void a() {
                        N7.c.j0(new b());
                    }

                    @Override
                    public void b() {
                        N7.c.j0(new RunnableC2114a());
                    }

                    @Override
                    public void c() {
                    }
                }

                public RunnableC2112a(final C15045a val$loadingBarPanel) {
                    this.f126857b = val$loadingBarPanel;
                }

                @Override
                public void run() {
                    File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(L.this.f126854b) + "/" + (Tc.b.O(L.this.f126853a) + ".meta/"));
                    if (!file.exists()) {
                        this.f126857b.p1();
                    } else if (C16273a.a(file, new C2113a())) {
                        this.f126857b.p1();
                    } else {
                        N7.c.v0("Failed");
                        this.f126857b.p1();
                    }
                }
            }

            public a() {
            }

            @Override
            public void a(C15045a loadingBarPanel) {
                O9.b.d(new RunnableC2112a(loadingBarPanel));
            }
        }

        public L(final String val$inProjectDirectory, final Context val$context, final b val$callbacks) {
            this.f126853a = val$inProjectDirectory;
            this.f126854b = val$context;
            this.f126855c = val$callbacks;
        }

        @Override
        public void onSelected(View view) {
            C15045a.u1(true, new a());
        }
    }

    public class M extends LinkedList<C12908b> {

        public final Context f126862b;

        public final String f126863c;

        public final w5.b f126864d;

        public class a implements dd.d {

            public class C2115a implements w5.l {
                public C2115a() {
                }

                @Override
                public void a() {
                    w5.b bVar = M.this.f126864d;
                    if (bVar != null) {
                        bVar.a();
                    }
                }

                @Override
                public void c(String inProjectPath) {
                    y.c();
                    w5.b bVar = M.this.f126864d;
                    if (bVar != null) {
                        bVar.a();
                    }
                }
            }

            public a() {
            }

            @Override
            public void onSelected(View view) {
                M m10 = M.this;
                w5.c.x(m10.f126862b, m10.f126863c, new C2115a());
            }
        }

        public class b extends LinkedList<C12908b> {

            public class a implements dd.d {

                public class C2116a implements w5.l {
                    public C2116a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public a() {
                }

                @Override
                public void onSelected(View v10) {
                    M m10 = M.this;
                    w5.c.n(m10.f126862b, m10.f126863c, new C2116a());
                }
            }

            public class C2117b implements dd.d {

                public class a implements w5.l {
                    public a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public C2117b() {
                }

                @Override
                public void onSelected(View v10) {
                    M m10 = M.this;
                    w5.c.Q(m10.f126862b, m10.f126863c, new a());
                }
            }

            public class c implements dd.d {

                public class a implements w5.l {
                    public a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public c() {
                }

                @Override
                public void onSelected(View v10) {
                    M m10 = M.this;
                    w5.c.b(m10.f126862b, m10.f126863c, new a());
                }
            }

            public class d extends LinkedList<C12908b> {

                public class a implements dd.d {

                    public class C2118a implements w5.l {
                        public C2118a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                        }
                    }

                    public a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        M m10 = M.this;
                        w5.c.O(m10.f126862b, m10.f126863c, new C2118a());
                    }
                }

                public class C2119b implements dd.d {

                    public class a implements w5.l {
                        public a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                        }
                    }

                    public C2119b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        M m10 = M.this;
                        w5.c.Y(m10.f126862b, m10.f126863c, true, new a());
                    }
                }

                public class c implements dd.d {

                    public class a implements w5.l {
                        public a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                        }
                    }

                    public c() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        M m10 = M.this;
                        w5.c.U(m10.f126862b, m10.f126863c, new a());
                    }
                }

                public d() {
                    Ac.b bVar = Lang.T.POST_PROCESSING;
                    add(new C12908b(Lang.l(bVar), new a()));
                    add(new C12908b(Lang.l(bVar) + " - Graph", new C2119b()));
                    add(new C12908b(Lang.l(Lang.T.UI_POST_PROCESSING), new c()));
                }
            }

            public class e extends LinkedList<C12908b> {

                public class a implements dd.d {

                    public class C2120a implements w5.l {
                        public C2120a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                        }
                    }

                    public a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        M m10 = M.this;
                        w5.c.W(m10.f126862b, m10.f126863c, new C2120a(), "vfx_template.txt", "MyVFXShader", Empty.f74413H);
                    }
                }

                public class C2121b implements dd.d {

                    public class a implements w5.l {
                        public a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                        }
                    }

                    public C2121b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        M m10 = M.this;
                        w5.c.W(m10.f126862b, m10.f126863c, new a(), "vfx_black_hole_template.txt", "BlackHoleVFX", "Black hole example");
                    }
                }

                public class c implements dd.d {

                    public class a implements w5.l {
                        public a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                        }
                    }

                    public c() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        M m10 = M.this;
                        w5.c.W(m10.f126862b, m10.f126863c, new a(), "vfx_shock_wave_template.txt", "ShockWaveVFX", "Shock wave example");
                    }
                }

                public class d implements dd.d {

                    public class a implements w5.l {
                        public a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                        }
                    }

                    public d() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        M m10 = M.this;
                        w5.c.W(m10.f126862b, m10.f126863c, new a(), "vfx_crack_template.txt", "SceneCrackVFX", "Scene crack example");
                    }
                }

                public e() {
                    add(new C12908b(Empty.f74413H, new a()));
                    add(new C12908b("Black hole example", new C2121b()));
                    add(new C12908b("Shock wave example", new c()));
                    add(new C12908b("Scene crack example", new d()));
                }
            }

            public b() {
                add(new C12908b(Lang.l(Lang.T.MATERIAL_SHADER), new a()));
                add(new C12908b(Lang.l(Lang.T.SKYBOX), new C2117b()));
                add(new C12908b(Lang.l(Lang.T.AMBIENT_LIGHT), new c()));
                add(new C12908b(Lang.l(Lang.T.POST_PROCESSING), new d()));
                add(new C12908b("VFX", new e()));
            }
        }

        public class c extends LinkedList<C12908b> {

            public class a implements dd.d {

                public class C2122a implements w5.l {
                    public C2122a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public a() {
                }

                @Override
                public void onSelected(View view) {
                    M m10 = M.this;
                    w5.c.l(m10.f126862b, m10.f126863c, new C2122a());
                }
            }

            public class b implements dd.d {

                public class a implements w5.l {
                    public a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public b() {
                }

                @Override
                public void onSelected(View view) {
                    M m10 = M.this;
                    w5.c.S(m10.f126862b, m10.f126863c, new a());
                }
            }

            public c() {
                add(new C12908b(Lang.l(Lang.T.JSON), new a()));
                add(new C12908b(Lang.l(Lang.T.TXT), new b()));
            }
        }

        public class d extends LinkedList<C12908b> {

            public class a extends LinkedList<C12908b> {

                public class C2123a implements dd.d {

                    public class C2124a implements w5.l {
                        public C2124a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            y.c();
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                            d8.j.v0();
                        }
                    }

                    public C2123a() {
                    }

                    @Override
                    public void onSelected(View view) {
                        M m10 = M.this;
                        w5.c.u(m10.f126862b, m10.f126863c, new C2124a());
                    }
                }

                public class b implements dd.d {

                    public class C2125a implements w5.l {
                        public C2125a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            y.c();
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                            d8.j.v0();
                        }
                    }

                    public b() {
                    }

                    @Override
                    public void onSelected(View view) {
                        M m10 = M.this;
                        w5.c.G(m10.f126862b, m10.f126863c, new C2125a());
                    }
                }

                public class c implements dd.d {

                    public class C2126a implements w5.l {
                        public C2126a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            y.c();
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                            d8.j.v0();
                        }
                    }

                    public c() {
                    }

                    @Override
                    public void onSelected(View view) {
                        M m10 = M.this;
                        w5.c.I(m10.f126862b, m10.f126863c, new C2126a());
                    }
                }

                public class C2127d implements dd.d {

                    public class C2128a implements w5.l {
                        public C2128a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            y.c();
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                            d8.j.v0();
                        }
                    }

                    public C2127d() {
                    }

                    @Override
                    public void onSelected(View view) {
                        M m10 = M.this;
                        w5.c.L(m10.f126862b, m10.f126863c, new C2128a());
                    }
                }

                public a() {
                    add(new C12908b(Lang.l(Lang.T.EMPTY_VIEW_PANEL), new C2123a()));
                    add(new C12908b(Lang.l(Lang.T.SIMPLE_VIEW_PANEL), new b()));
                    add(new C12908b(Lang.l(Lang.T.WEBVIEW_PANEL), new c()));
                    add(new C12908b(Lang.l(Lang.T.XML_LAYOUTS_PANEL), new C2127d()));
                }
            }

            public class b extends LinkedList<C12908b> {

                public class a implements dd.d {

                    public class C2129a implements w5.l {
                        public C2129a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            y.c();
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                            d8.j.v0();
                        }
                    }

                    public a() {
                    }

                    @Override
                    public void onSelected(View view) {
                        M m10 = M.this;
                        w5.c.w(m10.f126862b, m10.f126863c, new C2129a());
                    }
                }

                public class C2130b implements dd.d {

                    public class a implements w5.l {
                        public a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            y.c();
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                            d8.j.v0();
                        }
                    }

                    public C2130b() {
                    }

                    @Override
                    public void onSelected(View view) {
                        M m10 = M.this;
                        w5.c.v(m10.f126862b, m10.f126863c, new a());
                    }
                }

                public class c implements dd.d {

                    public class a implements w5.l {
                        public a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            y.c();
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                            d8.j.v0();
                        }
                    }

                    public c() {
                    }

                    @Override
                    public void onSelected(View view) {
                        M m10 = M.this;
                        w5.c.s(m10.f126862b, m10.f126863c, new a());
                    }
                }

                public class C2131d implements dd.d {

                    public class a implements w5.l {
                        public a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            y.c();
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                            d8.j.v0();
                        }
                    }

                    public C2131d() {
                    }

                    @Override
                    public void onSelected(View view) {
                        M m10 = M.this;
                        w5.c.E(m10.f126862b, m10.f126863c, new a());
                    }
                }

                public class e implements dd.d {

                    public class a implements w5.l {
                        public a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            y.c();
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                            d8.j.v0();
                        }
                    }

                    public e() {
                    }

                    @Override
                    public void onSelected(View view) {
                        M m10 = M.this;
                        w5.c.r(m10.f126862b, m10.f126863c, new a());
                    }
                }

                public b() {
                    add(new C12908b(Lang.l(Lang.T.FILE_MENU), new a()));
                    add(new C12908b(Lang.l(Lang.T.FILE_ICON), new C2130b()));
                    add(new C12908b(Lang.l(Lang.T.DIRECTORY_MENU), new c()));
                    add(new C12908b(Lang.l(Lang.T.OBJECTS_MENU), new C2131d()));
                    add(new C12908b(Lang.l(Lang.T.SCRIPTING_PANEL_EXTENSION), new e()));
                }
            }

            public class c extends LinkedList<C12908b> {

                public class a implements dd.d {

                    public class C2132a implements w5.l {
                        public C2132a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            y.c();
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                            d8.j.v0();
                        }
                    }

                    public a() {
                    }

                    @Override
                    public void onSelected(View view) {
                        M m10 = M.this;
                        w5.c.q(m10.f126862b, m10.f126863c, new C2132a());
                    }
                }

                public c() {
                    add(new C12908b(Lang.l(Lang.T.CLI_EXAMPLE), new a()));
                }
            }

            public d() {
                add(new C12908b(Lang.l(Lang.T.CUSTOM_PANELS), new a()));
                add(new C12908b(Lang.l(Lang.T.EXTENSIONS), new b()));
                add(new C12908b(Lang.l(Lang.T.TERMINAL_CLI), new c()));
            }
        }

        public class e extends SteppedArrayList<C12908b> {

            public class a implements dd.d {

                public class C2133a implements w5.l {
                    public C2133a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        y.c();
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public a() {
                }

                @Override
                public void onSelected(View view) {
                    M m10 = M.this;
                    w5.c.T(m10.f126862b, m10.f126863c, new C2133a(), false);
                }
            }

            public class b implements dd.d {

                public class a implements w5.l {
                    public a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        y.c();
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public b() {
                }

                @Override
                public void onSelected(View view) {
                    M m10 = M.this;
                    w5.c.T(m10.f126862b, m10.f126863c, new a(), true);
                }
            }

            public class c implements dd.d {

                public class a implements w5.l {
                    public a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        y.c();
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public c() {
                }

                @Override
                public void onSelected(View view) {
                    M m10 = M.this;
                    w5.c.N(m10.f126862b, m10.f126863c, new a());
                }
            }

            public e() {
                add(new C12908b(Lang.l(Lang.T.WHITE), new a()));
                add(new C12908b(Lang.l(Lang.T.GRID), new b()));
                add(new C12908b(Lang.l(Lang.T.NOISE), new c()));
            }
        }

        public class f extends SteppedArrayList<C12908b> {

            public class a implements dd.d {

                public class C2134a implements w5.l {
                    public C2134a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        y.c();
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public a() {
                }

                @Override
                public void onSelected(View view) {
                    M m10 = M.this;
                    w5.c.o(m10.f126862b, m10.f126863c, new C2134a());
                }
            }

            public class b implements dd.d {

                public class a implements w5.l {
                    public a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        y.c();
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public b() {
                }

                @Override
                public void onSelected(View view) {
                    M m10 = M.this;
                    w5.c.R(m10.f126862b, m10.f126863c, new a());
                }
            }

            public f() {
                add(new C12908b(Lang.l(Lang.T.NAVMESH_BAKE), new a()));
                add(new C12908b(Lang.l(Lang.T.TERRAIN_DATA), new b()));
            }
        }

        public class g extends SteppedArrayList<C12908b> {

            public class a implements dd.d {

                public class C2135a implements w5.l {
                    public C2135a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        y.c();
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public a() {
                }

                @Override
                public void onSelected(View view) {
                    M m10 = M.this;
                    w5.c.X(m10.f126862b, m10.f126863c, new C2135a());
                }
            }

            public g() {
                add(new C12908b(Lang.l(Lang.T.VIDEO_OUTPUT), new a()));
            }
        }

        public class h extends LinkedList<C12908b> {

            public class a implements dd.d {

                public class C2136a implements w5.l {
                    public C2136a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public a() {
                }

                @Override
                public void onSelected(View v10) {
                    M m10 = M.this;
                    w5.c.M(m10.f126862b, m10.f126863c, new C2136a());
                }
            }

            public class b implements dd.d {

                public class a implements Runnable {
                    public a() {
                    }

                    @Override
                    public void run() {
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public b() {
                }

                @Override
                public void onSelected(View v10) {
                    com.itsmagic.engine.Activities.Editor.Panels.Files.Utils.b.h(v10, M.this.f126863c, new a());
                }
            }

            public class c implements dd.d {

                public class a implements w5.l {
                    public a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        y.c();
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public c() {
                }

                @Override
                public void onSelected(View view) {
                    M m10 = M.this;
                    w5.c.C(m10.f126862b, m10.f126863c, new a());
                }
            }

            public class d extends LinkedList<C12908b> {

                public class a implements dd.d {

                    public class C2137a implements w5.l {
                        public C2137a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            y.c();
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                            d8.j.v0();
                        }
                    }

                    public a() {
                    }

                    @Override
                    public void onSelected(View view) {
                        M m10 = M.this;
                        w5.c.t(m10.f126862b, m10.f126863c, new C2137a());
                    }
                }

                public class b implements dd.d {

                    public class a implements w5.l {
                        public a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            y.c();
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                            d8.j.v0();
                        }
                    }

                    public b() {
                    }

                    @Override
                    public void onSelected(View view) {
                        M m10 = M.this;
                        w5.c.F(m10.f126862b, m10.f126863c, new a());
                    }
                }

                public class c implements dd.d {

                    public class a implements w5.l {
                        public a() {
                        }

                        @Override
                        public void a() {
                        }

                        @Override
                        public void c(String inProjectPath) {
                            y.c();
                            w5.b bVar = M.this.f126864d;
                            if (bVar != null) {
                                bVar.a();
                            }
                            d8.j.v0();
                        }
                    }

                    public c() {
                    }

                    @Override
                    public void onSelected(View view) {
                        M m10 = M.this;
                        w5.c.K(m10.f126862b, m10.f126863c, new a());
                    }
                }

                public d() {
                    add(new C12908b(Lang.l(Lang.T.EMPTY_INSPECTOR), new a()));
                    add(new C12908b(Lang.l(Lang.T.SIMPLE_VIEW_INSPECTOR), new b()));
                    add(new C12908b(Lang.l(Lang.T.XML_LAYOUTS_INSPECTOR), new c()));
                }
            }

            public h() {
                add(new C12908b("NoCode Graph (NEW)", new a()));
                add(new C12908b(Lang.l(Lang.T.JAVA_RECOMMENDED), new b()));
                add(new C12908b(Lang.l(Lang.T.LUA), new c()));
                add(new C12908b(Lang.l(Lang.T.COMPONENT_INSPECTOR), new d()));
            }
        }

        public class i extends LinkedList<C12908b> {

            public class a implements dd.d {

                public final Vertex.v f126949a;

                public final String f126950b;

                public class C2138a implements w5.l {
                    public C2138a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        y.c();
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public a(final Vertex.v val$primitive, final String val$defaultText) {
                    this.f126949a = val$primitive;
                    this.f126950b = val$defaultText;
                }

                @Override
                public void onSelected(View view) {
                    M m10 = M.this;
                    w5.c.H(m10.f126862b, m10.f126863c, this.f126949a, this.f126950b, new C2138a());
                }
            }

            public i() {
                for (Vertex.v vVar : Vertex.v.values()) {
                    String replace = Tc.b.d(Lang.m(new Ac.b(vVar.toString())).toLowerCase(Locale.ROOT)).replace(ConstantDescs.DEFAULT_NAME, " ");
                    add(new C12908b(replace, new a(vVar, Lang.l(Lang.T.MY_PREFIX) + replace)));
                }
            }
        }

        public class C2139j extends LinkedList<C12908b> {

            public class a implements dd.d {

                public class C2140a implements w5.l {
                    public C2140a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        y.c();
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public a() {
                }

                @Override
                public void onSelected(View view) {
                    M m10 = M.this;
                    w5.c.J(m10.f126862b, m10.f126863c, new C2140a());
                }
            }

            public C2139j() {
                add(new C12908b(Lang.l(Lang.T.WORLD), new a()));
            }
        }

        public class k implements dd.d {

            public class a implements w5.l {
                public a() {
                }

                @Override
                public void a() {
                }

                @Override
                public void c(String inProjectPath) {
                    y.c();
                    w5.b bVar = M.this.f126864d;
                    if (bVar != null) {
                        bVar.a();
                    }
                }
            }

            public k() {
            }

            @Override
            public void onSelected(View view) {
                M m10 = M.this;
                w5.c.d(m10.f126862b, m10.f126863c, new a());
            }
        }

        public class l implements dd.d {

            public class a implements w5.l {
                public a() {
                }

                @Override
                public void a() {
                }

                @Override
                public void c(String inProjectPath) {
                    y.c();
                    w5.b bVar = M.this.f126864d;
                    if (bVar != null) {
                        bVar.a();
                    }
                }
            }

            public l() {
            }

            @Override
            public void onSelected(View view) {
                M m10 = M.this;
                w5.c.m(m10.f126862b, m10.f126863c, new a());
            }
        }

        public class m implements dd.d {

            public class a implements w5.l {
                public a() {
                }

                @Override
                public void a() {
                }

                @Override
                public void c(String inProjectPath) {
                    y.c();
                    w5.b bVar = M.this.f126864d;
                    if (bVar != null) {
                        bVar.a();
                    }
                }
            }

            public m() {
            }

            @Override
            public void onSelected(View view) {
                M m10 = M.this;
                w5.c.P(m10.f126862b, m10.f126863c, new a());
            }
        }

        public class n extends LinkedList<C12908b> {

            public class a implements dd.d {

                public class C2141a implements w5.l {
                    public C2141a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        y.c();
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public a() {
                }

                @Override
                public void onSelected(View view) {
                    M m10 = M.this;
                    w5.c.e(m10.f126862b, m10.f126863c, new C2141a());
                }
            }

            public class b implements dd.d {

                public class a implements w5.l {
                    public a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        y.c();
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public b() {
                }

                @Override
                public void onSelected(View view) {
                    M m10 = M.this;
                    w5.c.g(m10.f126862b, m10.f126863c, new a());
                }
            }

            public n() {
                add(new C12908b(Lang.l(Lang.T.FROM_PANORAMA), new a()));
                add(new C12908b(Lang.l(Lang.T.EMPTY), new b()));
            }
        }

        public class o extends LinkedList<C12908b> {

            public class a implements dd.d {

                public class C2142a implements w5.l {
                    public C2142a() {
                    }

                    @Override
                    public void a() {
                    }

                    @Override
                    public void c(String inProjectPath) {
                        y.c();
                        w5.b bVar = M.this.f126864d;
                        if (bVar != null) {
                            bVar.a();
                        }
                    }
                }

                public a() {
                }

                @Override
                public void onSelected(View view) {
                    M m10 = M.this;
                    w5.c.V(m10.f126862b, m10.f126863c, new C2142a());
                }
            }

            public o() {
                add(new C12908b(Lang.l(Lang.T.STYLE), new a()));
            }
        }

        public M(final Context val$context, final String val$folderPath, final w5.b val$callbacks) {
            this.f126862b = val$context;
            this.f126863c = val$folderPath;
            this.f126864d = val$callbacks;
            add(new C12908b(Lang.l(Lang.T.FOLDER), new a()));
            add(new C12908b(Lang.l(Lang.T.SCRIPT), new h()));
            add(new C12908b(Lang.l(Lang.T.VERTEX), new i()));
            add(new C12908b("Environment", new C2139j()));
            add(new C12908b(Lang.l(Lang.T.ANIMATION), new k()));
            add(new C12908b(Lang.l(Lang.T.MATERIAL), new l()));
            add(new C12908b(Lang.l(Lang.T.RENDER_TEXTURE), new m()));
            add(new C12908b(Lang.l(Lang.T.CUBEMAP), new n()));
            add(new C12908b(Lang.l(Lang.T.UI), new o()));
            add(new C12908b(Lang.l(Lang.T.SHADER), new b()));
            add(new C12908b(Lang.l(Lang.T.TEXT_FILES), new c()));
            add(new C12908b(Lang.l(Lang.T.PLUGINS), new d()));
            add(new C12908b(Lang.l(Lang.T.TEXTURES), new e()));
            add(new C12908b(Lang.l(Lang.T.DATA), new f()));
            add(new C12908b(Lang.l(Lang.T.VIDEO), new g()));
        }
    }

    public class N implements dd.d {

        public final Context f126970a;

        public final C13823b f126971b;

        public final b f126972c;

        public final String f126973d;

        public class a extends c.h {

            public final String f126974a;

            public class RunnableC2143a implements Runnable {

                public final C15045a f126976b;

                public class RunnableC2144a implements Runnable {
                    public RunnableC2144a() {
                    }

                    @Override
                    public void run() {
                        y.c();
                        b bVar = N.this.f126972c;
                        if (bVar != null) {
                            bVar.a();
                        }
                        if (C2633l.b(Tc.b.t(N.this.f126973d), ".java")) {
                            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N.this.f126970a) + "/" + N.this.f126973d.replace(".java", ".meta/"));
                            if (file.exists() && C16273a.a(file, null)) {
                                try {
                                    file.delete();
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                            d8.j.v0();
                        }
                        Vc.e.f();
                        RunnableC2143a.this.f126976b.p1();
                    }
                }

                public RunnableC2143a(final C15045a val$loadingBarPanel) {
                    this.f126976b = val$loadingBarPanel;
                }

                @Override
                public void run() {
                    File file = new File(a.this.f126974a);
                    File y10 = Tc.b.y(file);
                    C13696a.g(file);
                    if (y10 != null && y10.exists()) {
                        C13696a.g(y10);
                    }
                    N7.c.j0(new RunnableC2144a());
                }
            }

            public a(final String val$path) {
                this.f126974a = val$path;
            }

            @Override
            public void a(c.g dialog) {
                super.a(dialog);
                new Thread(new RunnableC2143a(C15045a.r1())).start();
            }
        }

        public N(final Context val$context, final C13823b val$o, final b val$callbacks, final String val$inProjectDirectory) {
            this.f126970a = val$context;
            this.f126971b = val$o;
            this.f126972c = val$callbacks;
            this.f126973d = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126970a) + "/" + this.f126971b.f92878a;
            Z6.c.z1(Lang.l(Lang.T.DELETE_QUESTION), Tc.b.v(str), new a(str));
        }
    }

    public class O implements dd.d {

        public final Context f126979a;

        public final C13823b f126980b;

        public final b f126981c;

        public class a implements f.g {

            public final File f126982a;

            public class C2145a implements K3.a {

                public final C15045a f126984a;

                public C2145a(final C15045a val$loading) {
                    this.f126984a = val$loading;
                }

                @Override
                public void a() {
                    this.f126984a.p1();
                    N7.c.v0(Lang.l(Lang.T.SOMETHING_WENT_WRONG));
                }

                @Override
                public void onSuccess() {
                    try {
                        y.c();
                        b bVar = O.this.f126981c;
                        if (bVar != null) {
                            bVar.a();
                        }
                        d8.j.v0();
                        this.f126984a.p1();
                    } catch (Throwable th2) {
                        this.f126984a.p1();
                        throw th2;
                    }
                }
            }

            public a(final File val$file) {
                this.f126982a = val$file;
            }

            @Override
            public void c(String text) {
                K3.e.e(this.f126982a, text, new C2145a(C15045a.r1()));
            }

            @Override
            public void onCancel() {
            }
        }

        public O(final Context val$context, final C13823b val$o, final b val$callbacks) {
            this.f126979a = val$context;
            this.f126980b = val$o;
            this.f126981c = val$callbacks;
        }

        @Override
        public void onSelected(View view) {
            String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f126979a) + "/" + this.f126980b.f92878a;
            Z6.f.x1(Lang.l(Lang.T.RENAME), Tc.b.v(str), new a(new File(str)));
        }
    }

    public class P extends LinkedList<C12908b> {

        public final String f126986b;

        public class a implements dd.d {

            public AtomicInteger f126987a;

            public AtomicInteger f126988b;

            public AtomicInteger f126989c;

            public boolean f126990d = true;

            public Z6.g f126991e;

            public class C2146a implements g.c {

                public final View f126993a;

                public class RunnableC2147a implements Runnable {
                    public RunnableC2147a() {
                    }

                    @Override
                    public void run() {
                        File[] listFiles;
                        a.this.f126987a = new AtomicInteger();
                        a.this.f126988b = new AtomicInteger();
                        a.this.f126989c = new AtomicInteger();
                        File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + P.this.f126986b));
                        if (file.exists() && (listFiles = file.listFiles()) != null) {
                            for (File file2 : listFiles) {
                                a.this.a(file2);
                            }
                            for (File file3 : listFiles) {
                                C2146a c2146a = C2146a.this;
                                a.this.b(c2146a.f126993a, file3);
                            }
                        }
                        N7.c.v0(a.this.f126989c.get() + " " + Lang.l(Lang.T.IMPORTED_OF) + " " + ((Object) a.this.f126987a) + " " + Lang.l(Lang.T.TOTAL_EXCLAMATION));
                        a.this.f126991e.q1();
                        y.c();
                    }
                }

                public C2146a(final View val$view) {
                    this.f126993a = val$view;
                }

                @Override
                public void a(Z6.g popup, FloatingPanelArea area) {
                    a.this.f126991e = popup;
                    new Thread(new RunnableC2147a()).start();
                }
            }

            public class b implements Vg.a {

                public final File f126996a;

                public b(final File val$ioFile) {
                    this.f126996a = val$ioFile;
                }

                @Override
                public void a(String error) {
                    Z6.i.y1(Lang.l(Lang.T.OPS), error);
                    a.this.f126991e.q1();
                }

                @Override
                public void b(File gameObjectFile) {
                    if (a.this.f126990d && gameObjectFile != null && gameObjectFile.getAbsolutePath().startsWith(com.itsmagic.engine.Core.Components.ProjectController.a.R())) {
                        Lb.k.r(gameObjectFile);
                    }
                    a.this.f126989c.incrementAndGet();
                    a.this.f126991e.q1();
                }

                @Override
                public void c(int percentage, String message, int executed, int total) {
                    a.this.f126991e.f1(a.this.f126988b.get() + "/" + a.this.f126987a.get() + "\n" + Tc.b.w(this.f126996a.getName(), true) + ": " + percentage + ve.j.f121589a);
                }
            }

            public a() {
            }

            public void a(File ioFile) {
                if (!ioFile.isDirectory()) {
                    if (C2633l.b(Tc.b.t(ioFile.getAbsolutePath()), ".obj|.fbx|.gltf|.glb|.stl|.dae|.blend|.3ds|.ply|.3mf")) {
                        this.f126988b.incrementAndGet();
                        return;
                    }
                    return;
                }
                File[] listFiles = ioFile.listFiles();
                if (listFiles != null) {
                    for (File file : listFiles) {
                        a(file);
                    }
                }
            }

            public void b(View view, File ioFile) {
                if (ioFile.isDirectory()) {
                    File[] listFiles = ioFile.listFiles();
                    if (listFiles != null) {
                        for (File file : listFiles) {
                            b(view, file);
                        }
                        return;
                    }
                    return;
                }
                if (C2633l.b(Tc.b.t(ioFile.getAbsolutePath()), ".obj|.fbx|.gltf|.glb|.stl|.dae|.blend|.3ds|.ply|.3mf")) {
                    this.f126987a.incrementAndGet();
                    this.f126991e.f1(this.f126988b.get() + "/" + this.f126987a.get() + "\n" + Tc.b.w(ioFile.getName(), true));
                    NativeModelImporter.startImportOf(null, ioFile, new b(ioFile));
                }
            }

            @Override
            public void onSelected(View view) {
                Z6.g.s1(Lang.l(Lang.T.IMPORTING), new C2146a(view));
            }
        }

        public class b implements dd.d {

            public AtomicInteger f126998a;

            public AtomicInteger f126999b;

            public AtomicInteger f127000c;

            public boolean f127001d = false;

            public Z6.g f127002e;

            public class a implements g.c {

                public class RunnableC2148a implements Runnable {
                    public RunnableC2148a() {
                    }

                    @Override
                    public void run() {
                        File[] listFiles;
                        b.this.f126998a = new AtomicInteger();
                        b.this.f126999b = new AtomicInteger();
                        b.this.f127000c = new AtomicInteger();
                        File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + P.this.f126986b));
                        if (file.exists() && (listFiles = file.listFiles()) != null) {
                            for (File file2 : listFiles) {
                                b.this.a(file2);
                            }
                            for (File file3 : listFiles) {
                                b.this.b(file3);
                            }
                        }
                        N7.c.v0(b.this.f127000c.get() + " " + Lang.l(Lang.T.IMPORTED_OF) + " " + ((Object) b.this.f126998a) + " " + Lang.l(Lang.T.TOTAL_EXCLAMATION));
                        b.this.f127002e.q1();
                        y.c();
                    }
                }

                public a() {
                }

                @Override
                public void a(Z6.g popup, FloatingPanelArea area) {
                    b.this.f127002e = popup;
                    new Thread(new RunnableC2148a()).start();
                }
            }

            public class C2149b implements Vg.a {

                public final File f127006a;

                public C2149b(final File val$ioFile) {
                    this.f127006a = val$ioFile;
                }

                @Override
                public void a(String error) {
                    Z6.i.y1(Lang.l(Lang.T.OPS), error);
                    b.this.f127002e.q1();
                }

                @Override
                public void b(File gameObjectFile) {
                    if (b.this.f127001d && gameObjectFile != null && gameObjectFile.getAbsolutePath().startsWith(com.itsmagic.engine.Core.Components.ProjectController.a.R())) {
                        Lb.k.r(gameObjectFile);
                    }
                    b.this.f127000c.incrementAndGet();
                    b.this.f127002e.q1();
                }

                @Override
                public void c(int percentage, String message, int executed, int total) {
                    b.this.f127002e.f1(b.this.f126999b.get() + "/" + b.this.f126998a.get() + "\n" + Tc.b.w(this.f127006a.getName(), true) + ": " + percentage + ve.j.f121589a);
                }
            }

            public b() {
            }

            public void a(File ioFile) {
                if (!ioFile.isDirectory()) {
                    if (C2633l.b(Tc.b.t(ioFile.getAbsolutePath()), ".obj|.fbx|.gltf|.glb|.stl|.dae|.blend|.3ds|.ply|.3mf")) {
                        this.f126999b.incrementAndGet();
                        return;
                    }
                    return;
                }
                File[] listFiles = ioFile.listFiles();
                if (listFiles != null) {
                    for (File file : listFiles) {
                        a(file);
                    }
                }
            }

            public void b(File ioFile) {
                if (!ioFile.isDirectory()) {
                    if (C2633l.b(Tc.b.t(ioFile.getAbsolutePath()), ".obj|.fbx|.gltf|.glb|.stl|.dae|.blend|.3ds|.ply|.3mf")) {
                        this.f126998a.incrementAndGet();
                        NativeModelImporter.startImportOf(null, ioFile, new C2149b(ioFile));
                        return;
                    }
                    return;
                }
                File[] listFiles = ioFile.listFiles();
                if (listFiles != null) {
                    for (File file : listFiles) {
                        b(file);
                    }
                }
            }

            @Override
            public void onSelected(View view) {
                Z6.g.s1(Lang.l(Lang.T.IMPORTING), new a());
            }
        }

        public P(final String val$inProjectDirectory) {
            this.f126986b = val$inProjectDirectory;
            add(new C12908b(Lang.l(Lang.T.COPY_TO_WORLD_ALL_MODELS), new a()));
            add(new C12908b(Lang.l(Lang.T.IMPORT_ALL_MODELS), new b()));
        }
    }

    public class Q extends LinkedList<C12908b> {

        public final Activity f127008b;

        public final String f127009c;

        public final Context f127010d;

        public final w5.b f127011e;

        public class a implements dd.d {

            public class C2150a implements l {
                public C2150a() {
                }

                @Override
                public void a() {
                    Toast.makeText(Q.this.f127010d, Lang.l(Lang.T.UNKNOWN_ERROR), 0).show();
                }

                @Override
                public void c(String inProjectPath) {
                    y.c();
                    Toast.makeText(Q.this.f127010d, Lang.l(Lang.T.SUCCESS), 0).show();
                }
            }

            public a() {
            }

            @Override
            public void onSelected(View view) {
                Q q10 = Q.this;
                w5.c.a(q10.f127008b, q10.f127009c.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(q10.f127010d), ""), false, new C2150a());
            }
        }

        public class b implements dd.d {

            public class a implements l {
                public a() {
                }

                @Override
                public void a() {
                    Toast.makeText(Q.this.f127010d, Lang.l(Lang.T.FAILED_TO_ZIP_PACKAGE), 0).show();
                }

                @Override
                public void c(String inProjectPath) {
                    y.c();
                    w5.b bVar = Q.this.f127011e;
                    if (bVar != null) {
                        bVar.a();
                    }
                    Toast.makeText(Q.this.f127010d, Lang.l(Lang.T.SUCCESS), 0).show();
                }
            }

            public b() {
            }

            @Override
            public void onSelected(View view) {
                Q q10 = Q.this;
                w5.c.Z(q10.f127008b, q10.f127009c, true, new a());
            }
        }

        public class c implements dd.d {

            public class a implements l {
                public a() {
                }

                @Override
                public void a() {
                    Toast.makeText(Q.this.f127010d, Lang.l(Lang.T.FAILED_TO_ZIP_PACKAGE), 0).show();
                }

                @Override
                public void c(String inProjectPath) {
                    y.c();
                    w5.b bVar = Q.this.f127011e;
                    if (bVar != null) {
                        bVar.a();
                    }
                    Toast.makeText(Q.this.f127010d, Lang.l(Lang.T.SUCCESS), 0).show();
                }
            }

            public c() {
            }

            @Override
            public void onSelected(View view) {
                Q q10 = Q.this;
                w5.c.Z(q10.f127008b, q10.f127009c, false, new a());
            }
        }

        public Q(final Activity val$activity, final String val$folderPath, final Context val$context, final w5.b val$callbacks) {
            this.f127008b = val$activity;
            this.f127009c = val$folderPath;
            this.f127010d = val$context;
            this.f127011e = val$callbacks;
            add(new C12908b(Lang.l(Lang.T.CREATE_IT_JAR), new a()));
            add(new C12908b(Lang.l(Lang.T.ZIP_FOLDER), new b()));
            add(new C12908b(Lang.l(Lang.T.ZIP_FILES), new c()));
        }
    }

    public class R implements b.g {
        @Override
        public void a(GameObject object) {
            W7.b.f27308h.h(object);
        }

        @Override
        public void b(String t10) {
        }

        @Override
        public void onUpdate() {
        }
    }

    public class S implements dd.d {

        public final String f127018a;

        public final Context f127019b;

        public S(final String val$folderPath, final Context val$context) {
            this.f127018a = val$folderPath;
            this.f127019b = val$context;
        }

        @Override
        public void onSelected(View view) {
            com.itsmagic.engine.Core.Components.ProjectController.a.i0(this.f127018a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127019b) + "/", ""));
        }
    }

    public class T extends SteppedArrayList<C12908b> {

        public final Context f127020b;

        public final C13823b f127021c;

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View view) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                steppedArrayList.add(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(T.this.f127020b) + "/" + T.this.f127021c.f92878a).getAbsolutePath());
                t.h(com.itsmagic.engine.Core.Components.ProjectController.a.S(T.this.f127020b), T.this.f127021c.e(), steppedArrayList);
            }
        }

        public T(final Context val$context, final C13823b val$o) {
            this.f127020b = val$context;
            this.f127021c = val$o;
            add(new C12908b(com.itsmagic.engine2.R.drawable.store, Lang.l(Lang.T.STORE_GITHUB_SHARE_MENU), new a()));
        }
    }

    public class U implements dd.d {

        public final C13823b f127023a;

        public final Context f127024b;

        public final b f127025c;

        public class a implements f.g {

            public final String f127026a;

            public final String f127027b;

            public class RunnableC2151a implements Runnable {
                public RunnableC2151a() {
                }

                @Override
                public void run() {
                    b bVar = U.this.f127025c;
                    if (bVar != null) {
                        bVar.a();
                    }
                }
            }

            public a(final String val$finalFolder, final String val$animationFile) {
                this.f127026a = val$finalFolder;
                this.f127027b = val$animationFile;
            }

            @Override
            public void c(String text) {
                String i10;
                String trim = text != null ? text.trim() : "";
                if (trim.isEmpty()) {
                    N7.c.v0("Mask name can't be empty");
                    return;
                }
                if (!C2633l.b(trim, ".amask")) {
                    trim = trim + ".amask";
                }
                if (this.f127026a.isEmpty()) {
                    i10 = j.i(trim);
                } else {
                    i10 = j.i(Tc.b.o(this.f127026a + "/" + trim));
                }
                if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(U.this.f127024b) + "/" + i10).exists()) {
                    N7.c.v0("Animation mask already exists");
                } else {
                    C16054a.F1(this.f127027b, i10, new RunnableC2151a());
                }
            }

            @Override
            public void onCancel() {
            }
        }

        public U(final C13823b val$o, final Context val$context, final b val$callbacks) {
            this.f127023a = val$o;
            this.f127024b = val$context;
            this.f127025c = val$callbacks;
        }

        @Override
        public void onSelected(View view) {
            String i10 = j.i(this.f127023a.f92878a);
            String u10 = Tc.b.u(i10);
            if (u10 == null || u10.equals(i10)) {
                u10 = "";
            }
            Z6.f.x1("Create new mask file", Tc.b.w(Tc.b.O(i10), true) + "_mask", new a(u10, i10));
        }
    }

    public class V implements dd.d {

        public final Context f127030a;

        public final C13823b f127031b;

        public final b f127032c;

        public class a implements f.g {

            public final File f127033a;

            public class C2152a implements K3.a {

                public final C15045a f127035a;

                public C2152a(final C15045a val$loading) {
                    this.f127035a = val$loading;
                }

                @Override
                public void a() {
                    this.f127035a.p1();
                    N7.c.v0(Lang.l(Lang.T.SOMETHING_WENT_WRONG));
                }

                @Override
                public void onSuccess() {
                    try {
                        y.c();
                        b bVar = V.this.f127032c;
                        if (bVar != null) {
                            bVar.a();
                        }
                        d8.j.v0();
                        this.f127035a.p1();
                    } catch (Throwable th2) {
                        this.f127035a.p1();
                        throw th2;
                    }
                }
            }

            public a(final File val$file) {
                this.f127033a = val$file;
            }

            @Override
            public void c(String text) {
                K3.e.e(this.f127033a, text, new C2152a(C15045a.r1()));
            }

            @Override
            public void onCancel() {
            }
        }

        public V(final Context val$context, final C13823b val$o, final b val$callbacks) {
            this.f127030a = val$context;
            this.f127031b = val$o;
            this.f127032c = val$callbacks;
        }

        @Override
        public void onSelected(View view) {
            String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127030a) + "/" + this.f127031b.f92878a;
            Z6.f.x1(Lang.l(Lang.T.RENAME), Tc.b.v(str), new a(new File(str)));
        }
    }

    public class W implements dd.d {

        public final Context f127037a;

        public final C13823b f127038b;

        public final b f127039c;

        public final String f127040d;

        public class a extends c.h {

            public final String f127041a;

            public class RunnableC2153a implements Runnable {

                public final C15045a f127043b;

                public class RunnableC2154a implements Runnable {
                    public RunnableC2154a() {
                    }

                    @Override
                    public void run() {
                        y.c();
                        b bVar = W.this.f127039c;
                        if (bVar != null) {
                            bVar.a();
                        }
                        if (C2633l.b(Tc.b.t(W.this.f127040d), ".java")) {
                            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(W.this.f127037a) + "/" + W.this.f127040d.replace(".java", ".meta/"));
                            if (file.exists() && C16273a.a(file, null)) {
                                try {
                                    file.delete();
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                            d8.j.v0();
                        }
                        Vc.e.f();
                        RunnableC2153a.this.f127043b.p1();
                    }
                }

                public RunnableC2153a(final C15045a val$loadingBarPanel) {
                    this.f127043b = val$loadingBarPanel;
                }

                @Override
                public void run() {
                    File file = new File(a.this.f127041a);
                    File y10 = Tc.b.y(file);
                    C13696a.g(file);
                    if (y10 != null && y10.exists()) {
                        C13696a.g(y10);
                    }
                    N7.c.j0(new RunnableC2154a());
                }
            }

            public a(final String val$path) {
                this.f127041a = val$path;
            }

            @Override
            public void a(c.g dialog) {
                super.a(dialog);
                new Thread(new RunnableC2153a(C15045a.r1())).start();
            }
        }

        public W(final Context val$context, final C13823b val$o, final b val$callbacks, final String val$inProjectDirectory) {
            this.f127037a = val$context;
            this.f127038b = val$o;
            this.f127039c = val$callbacks;
            this.f127040d = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127037a) + "/" + this.f127038b.f92878a;
            Z6.c.z1(Lang.l(Lang.T.DELETE_QUESTION), Tc.b.v(str), new a(str));
        }
    }

    public class X implements dd.d {

        public final Context f127046a;

        public final C13823b f127047b;

        public class a implements l {
            public a() {
            }

            @Override
            public void a() {
                N7.c.v0(Lang.l(Lang.T.FAILED));
            }

            @Override
            public void c(String inProjectPath) {
                y.c();
                N7.c.v0(Lang.l(Lang.T.SUCCESS));
            }
        }

        public X(final Context val$context, final C13823b val$o) {
            this.f127046a = val$context;
            this.f127047b = val$o;
        }

        @Override
        public void onSelected(View view) {
            c.h(this.f127046a, com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127046a) + "/" + this.f127047b.f92878a, new a());
        }
    }

    public class Y implements dd.d {

        public final Context f127049a;

        public final C13823b f127050b;

        public Y(final Context val$context, final C13823b val$o) {
            this.f127049a = val$context;
            this.f127050b = val$o;
        }

        @Override
        public void onSelected(View view) {
            j.f126811b = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127049a) + "/" + this.f127050b.f92878a);
            j.f126810a = null;
        }
    }

    public class Z implements dd.d {

        public final Context f127051a;

        public final C13823b f127052b;

        public Z(final Context val$context, final C13823b val$o) {
            this.f127051a = val$context;
            this.f127052b = val$o;
        }

        @Override
        public void onSelected(View view) {
            String str = com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127051a) + "/" + this.f127052b.f92878a;
            j.f126811b = null;
            j.f126810a = new File(str);
        }
    }

    public class C15945a implements dd.d {

        public final String f127053a;

        public final Context f127054b;

        public class C2155a implements g.c {

            public final File f127055a;

            public final String f127056b;

            public class RunnableC2156a implements Runnable {

                public final Z6.g f127058b;

                public class C2157a implements MeshSerializer.b {
                    public C2157a() {
                    }

                    @Override
                    public void setProgress(float v10) {
                    }
                }

                public class b implements Runnable {

                    public final float f127061b;

                    public b(final float val$p) {
                        this.f127061b = val$p;
                    }

                    @Override
                    public void run() {
                        RunnableC2156a.this.f127058b.f1(Lang.l(Lang.T.LOADING) + " " + ((int) (this.f127061b * 100.0f)) + ve.j.f121589a);
                    }
                }

                public class c implements Runnable {

                    public final float f127063b;

                    public c(final float val$p) {
                        this.f127063b = val$p;
                    }

                    @Override
                    public void run() {
                        RunnableC2156a.this.f127058b.f1(Lang.l(Lang.T.BUILDING) + " " + ((int) (this.f127063b * 100.0f)) + ve.j.f121589a);
                    }
                }

                public RunnableC2156a(final Z6.g val$progress) {
                    this.f127058b = val$progress;
                }

                @Override
                public void run() {
                    Vertex h10;
                    try {
                        Vertex vertex = new Vertex();
                        SteppedArrayList<Vertex> steppedArrayList = new SteppedArrayList();
                        int i10 = 0;
                        for (File file : C2155a.this.f127055a.listFiles()) {
                            if (file.getName().endsWith(".mesh")) {
                                i10++;
                            }
                        }
                        int i11 = 0;
                        for (File file2 : C2155a.this.f127055a.listFiles()) {
                            if (file2.getName().endsWith(".mesh") && (h10 = MeshSerializer.h(file2, new Fb.a().a(false).b(false), new C2157a())) != null) {
                                if (h10.j1() > 0 && h10.W0() > 0) {
                                    steppedArrayList.add(h10);
                                }
                                i11++;
                                N7.c.j0(new b(i11 / i10));
                            }
                        }
                        int i12 = 0;
                        int i13 = 0;
                        for (Vertex vertex2 : steppedArrayList) {
                            i12 += vertex2.j1() * 3;
                            i13 += vertex2.W0() * 3;
                        }
                        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(i12);
                        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(i13);
                        nativeFloatBuffer.position(0);
                        nativeIntBuffer.position(0);
                        int i14 = 0;
                        int i15 = 0;
                        for (Vertex vertex3 : steppedArrayList) {
                            NativeFloatBuffer i16 = vertex3.i1();
                            NativeIntBuffer V02 = vertex3.V0();
                            for (int i17 = 0; i17 < i16.capacity(); i17++) {
                                nativeFloatBuffer.put(i16.get(i17));
                            }
                            for (int i18 = 0; i18 < V02.capacity(); i18++) {
                                nativeIntBuffer.put(V02.get(i18) + i15);
                            }
                            i15 += vertex3.j1();
                            i14++;
                            N7.c.j0(new c(i14 / i10));
                        }
                        vertex.q2(nativeFloatBuffer);
                        vertex.i2(nativeIntBuffer);
                        String str = C2155a.this.f127056b + "collision_vertex.mesh";
                        MeshSerializer.o(MeshSerializer.m(str), vertex);
                        GameObject gameObject = new GameObject();
                        gameObject.E1(Tc.b.w(C15945a.this.f127053a, true) + "_collision");
                        ModelRenderer modelRenderer = new ModelRenderer();
                        gameObject.r(modelRenderer);
                        modelRenderer.setMeshFile(str);
                        modelRenderer.setMaterialFile(com.itsmagic.engine.Core.Components.ProjectController.a.q());
                        gameObject.Q1();
                        Z6.g gVar = this.f127058b;
                        Objects.requireNonNull(gVar);
                        N7.c.j0(new i(gVar));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        N7.c.v0(Lang.l(Lang.T.ERROR_PREFIX) + e10.getMessage());
                        Z6.g gVar2 = this.f127058b;
                        Objects.requireNonNull(gVar2);
                        N7.c.j0(new i(gVar2));
                    }
                }
            }

            public C2155a(final File val$metaFF, final String val$metaFolder) {
                this.f127055a = val$metaFF;
                this.f127056b = val$metaFolder;
            }

            @Override
            public void a(Z6.g progress, FloatingPanelArea area) {
                O9.b.d(new RunnableC2156a(progress));
            }
        }

        public C15945a(final String val$inProjectDirectory, final Context val$context) {
            this.f127053a = val$inProjectDirectory;
            this.f127054b = val$context;
        }

        @Override
        public void onSelected(View view) {
            String str = Tc.b.O(this.f127053a) + ".meta/";
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127054b) + "/" + str);
            if (file.exists()) {
                Z6.g.s1(Lang.l(Lang.T.IMPORTING), new C2155a(file, str));
            } else {
                N7.c.v0(Lang.l(Lang.T.PLEASE_IMPORT_FIRST));
            }
        }
    }

    public class a0 implements dd.d {

        public final C13823b f127065a;

        public a0(final C13823b val$o) {
            this.f127065a = val$o;
        }

        @Override
        public void onSelected(View view) {
            d.y1(this.f127065a.f92878a);
        }
    }

    public class C15946b implements dd.d {

        public final String f127066a;

        public final Context f127067b;

        public class a implements c.e {

            public final File f127068a;

            public a(final File val$metaFF) {
                this.f127068a = val$metaFF;
            }

            @Override
            public void a() {
                if (this.f127068a.exists()) {
                    try {
                        for (File file : this.f127068a.listFiles()) {
                            if (C2633l.b(Tc.b.t(file.getAbsolutePath()), ".anim")) {
                                C13696a.a(file, new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15946b.this.f127067b) + "/" + Tc.b.u(C15946b.this.f127066a) + "/" + file.getName()));
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            }

            @Override
            public void b(ImportFilePopup.ImportOptions importOptions) {
                importOptions.allowTextureFiles = false;
                importOptions.allowVertexFiles = false;
                importOptions.allowMaterialFiles = false;
                importOptions.allowObjectFiles = false;
            }
        }

        public C15946b(final String val$inProjectDirectory, final Context val$context) {
            this.f127066a = val$inProjectDirectory;
            this.f127067b = val$context;
        }

        /* JADX WARN: Removed duplicated region for block: B:5:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:8:? A[RETURN, SYNTHETIC] */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onSelected(View view) {
            boolean z10;
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127067b) + "/" + (Tc.b.O(this.f127066a) + ".meta/"));
            if (file.exists()) {
                try {
                    z10 = false;
                    for (File file2 : file.listFiles()) {
                        try {
                            if (C2633l.b(Tc.b.t(file2.getAbsolutePath()), ".anim")) {
                                C13696a.a(file2, new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127067b) + "/" + Tc.b.u(this.f127066a) + "/" + file2.getName()));
                                z10 = true;
                            }
                        } catch (Exception unused) {
                        }
                    }
                } catch (Exception unused2) {
                }
                if (z10) {
                    Vg.c.b(view, new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127067b) + "/" + this.f127066a), false, new a(file));
                    return;
                }
                return;
            }
            z10 = false;
            if (z10) {
            }
        }
    }

    public class b0 implements dd.d {

        public final Context f127070a;

        public final C13823b f127071b;

        public final b f127072c;

        public class a implements C2630i.e {

            public final File f127073a;

            public final long f127074b;

            public a(final File val$file, final long val$lastModified) {
                this.f127073a = val$file;
                this.f127074b = val$lastModified;
            }

            @Override
            public void onResume() {
                if (this.f127073a.exists() && this.f127073a.lastModified() != this.f127074b) {
                    y.c();
                    Vc.e.f();
                    b bVar = b0.this.f127072c;
                    if (bVar != null) {
                        bVar.a();
                    }
                    if (C2633l.b(Tc.b.t(b0.this.f127071b.f92878a), ".java")) {
                        d8.j.v0();
                    }
                }
            }
        }

        public b0(final Context val$context, final C13823b val$o, final b val$callbacks) {
            this.f127070a = val$context;
            this.f127071b = val$o;
            this.f127072c = val$callbacks;
        }

        @Override
        public void onSelected(View view) {
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127070a) + "/" + this.f127071b.f92878a);
            if (!file.exists()) {
                N7.c.v0(Lang.l(Lang.T.UNKNOWN_ERROR));
            } else {
                C2630i.i(file, Lang.l(Lang.T.OPEN_WITH), new a(file, file.lastModified()));
            }
        }
    }

    public class C15947c implements dd.d {

        public final Context f127076a;

        public final String f127077b;

        public class a implements Runnable {

            public final C15045a f127078b;

            public class C2158a implements Runnable {
                public C2158a() {
                }

                @Override
                public void run() {
                    a.this.f127078b.p1();
                }
            }

            public a(final C15045a val$loading) {
                this.f127078b = val$loading;
            }

            @Override
            public void run() {
                C15947c c15947c = C15947c.this;
                j.f(c15947c.f127076a, c15947c.f127077b);
                N7.c.j0(new C2158a());
            }
        }

        public C15947c(final Context val$context, final String val$inProjectDirectory) {
            this.f127076a = val$context;
            this.f127077b = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            O9.b.d(new a(C15045a.r1()));
        }
    }

    public class c0 implements b.g {
        @Override
        public void a(GameObject object) {
            W7.b.f27308h.h(object);
        }

        @Override
        public void b(String t10) {
        }

        @Override
        public void onUpdate() {
        }
    }

    public class C15948d implements dd.d {

        public final C13823b f127081a;

        public final String f127082b;

        public class a implements b.g {
            public a() {
            }

            @Override
            public void a(GameObject object) {
                W7.b.f27308h.h(object);
            }

            @Override
            public void b(String t10) {
            }

            @Override
            public void onUpdate() {
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                String w10 = Tc.b.w(C15948d.this.f127082b, true);
                String str = C15948d.this.f127082b;
                SoundPlayer soundPlayer = new SoundPlayer();
                soundPlayer.file = str;
                GameObject gameObject = new GameObject(w10);
                gameObject.r(soundPlayer);
                gameObject.Q1();
            }
        }

        public C15948d(final C13823b val$o, final String val$inProjectDirectory) {
            this.f127081a = val$o;
            this.f127082b = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            C13823b.a aVar = this.f127081a.f92880c;
            if (aVar == C13823b.a.Object) {
                com.itsmagic.engine.Engines.Engine.World.b.i(this.f127082b, true, new a());
                return;
            }
            if (aVar == C13823b.a.Mesh) {
                Lb.k.q(Tc.b.w(this.f127082b, true), this.f127082b);
            } else if (aVar == C13823b.a.Sound || aVar == C13823b.a.ImportedAudio) {
                K8.a.I(new b());
            }
        }
    }

    public class d0 implements a.c {

        public final File f127085a;

        public class a implements Runnable {

            public final AudioConfig f127086b;

            public final C15045a f127087c;

            public a(final AudioConfig val$audioConfig, final C15045a val$loading) {
                this.f127086b = val$audioConfig;
                this.f127087c = val$loading;
            }

            @Override
            public void run() {
                try {
                    try {
                        AudioConfig.g(d0.this.f127085a, this.f127086b);
                        com.itsmagic.engine.Engines.Sound.Imported.d.l(d0.this.f127085a);
                        Hc.c.i(d0.this.f127085a);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        N7.c.v0(e10.getMessage());
                    }
                } finally {
                    this.f127087c.p1();
                }
            }
        }

        public d0(final File val$editableAudioFile) {
            this.f127085a = val$editableAudioFile;
        }

        @Override
        public void a(AudioConfig audioConfig) {
            new Thread(new a(audioConfig, C15045a.r1())).start();
        }

        @Override
        public void onCancel() {
        }
    }

    public class C15949e implements dd.d {

        public final View f127089a;

        public final File f127090b;

        public class a implements a.c {

            public class RunnableC2159a implements Runnable {

                public final AudioConfig f127092b;

                public final C15045a f127093c;

                public RunnableC2159a(final AudioConfig val$audioConfig, final C15045a val$loading) {
                    this.f127092b = val$audioConfig;
                    this.f127093c = val$loading;
                }

                @Override
                public void run() {
                    try {
                        try {
                            AudioConfig.g(C15949e.this.f127090b, this.f127092b);
                            com.itsmagic.engine.Engines.Sound.Imported.d.l(C15949e.this.f127090b);
                            Hc.c.i(C15949e.this.f127090b);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            N7.c.v0(e10.getMessage());
                        }
                    } finally {
                        this.f127093c.p1();
                    }
                }
            }

            public a() {
            }

            @Override
            public void a(AudioConfig audioConfig) {
                new Thread(new RunnableC2159a(audioConfig, C15045a.r1())).start();
            }

            @Override
            public void onCancel() {
            }
        }

        public C15949e(final View val$originalView, final File val$editableAudioFile) {
            this.f127089a = val$originalView;
            this.f127090b = val$editableAudioFile;
        }

        @Override
        public void onSelected(View view) {
            if (view == null) {
                view = this.f127089a;
            }
            com.itsmagic.engine.Activities.Editor.Panels.Files.Utils.a.d(view, this.f127090b, new a());
        }
    }

    public class e0 extends SteppedArrayList<C12908b> {

        public final Context f127095b;

        public final C13823b f127096c;

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View view) {
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(e0.this.f127095b) + "/" + e0.this.f127096c.f92878a);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Lang.l(Lang.T.EXPORT));
                sb2.append(Tc.b.w(e0.this.f127096c.f92878a, true));
                C2630i.t(file, sb2.toString(), Tc.b.t(e0.this.f127096c.f92878a));
            }
        }

        public class b implements dd.d {
            public b() {
            }

            @Override
            public void onSelected(View view) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                steppedArrayList.add(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(e0.this.f127095b) + "/" + e0.this.f127096c.f92878a).getAbsolutePath());
                t.h(com.itsmagic.engine.Core.Components.ProjectController.a.S(e0.this.f127095b), e0.this.f127096c.e(), steppedArrayList);
            }
        }

        public e0(final Context val$context, final C13823b val$o) {
            this.f127095b = val$context;
            this.f127096c = val$o;
            add(new C12908b(com.itsmagic.engine2.R.drawable.share, Lang.l(Lang.T.SHARE_TO_ANDROID), new a()));
            add(new C12908b(com.itsmagic.engine2.R.drawable.store, Lang.l(Lang.T.STORE_GITHUB_SHARE_MENU), new b()));
        }
    }

    public class C15950f implements dd.d {

        public final String f127099a;

        public final Context f127100b;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + C15950f.this.f127099a);
                String w10 = Tc.b.w(C15950f.this.f127099a, true);
                String str = C15950f.this.f127099a;
                SoundPlayer soundPlayer = new SoundPlayer();
                soundPlayer.file = str;
                soundPlayer.setDestroyOnFinish(true);
                GameObject gameObject = new GameObject(w10);
                gameObject.r(soundPlayer);
                X7.a.e(Tc.b.u(C15950f.this.f127099a), w10 + ".go", gameObject.x1().toString(), C15950f.this.f127100b);
            }
        }

        public C15950f(final String val$inProjectDirectory, final Context val$context) {
            this.f127099a = val$inProjectDirectory;
            this.f127100b = val$context;
        }

        @Override
        public void onSelected(View view) {
            O9.b.d(new a());
        }
    }

    public class f0 implements dd.d {

        public final Context f127102a;

        public final C13823b f127103b;

        public f0(final Context val$context, final C13823b val$o) {
            this.f127102a = val$context;
            this.f127103b = val$o;
        }

        @Override
        public void onSelected(View view) {
            C3586a.z1(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127102a) + "/" + this.f127103b.f92878a);
        }
    }

    public class C15951g implements dd.d {

        public final C13823b f127104a;

        public final String f127105b;

        public class a implements Runnable {

            public final GameObject f127106b;

            public a(final GameObject val$pool) {
                this.f127106b = val$pool;
            }

            @Override
            public void run() {
                W7.b.f27308h.h(this.f127106b);
            }
        }

        public C15951g(final C13823b val$o, final String val$inProjectDirectory) {
            this.f127104a = val$o;
            this.f127105b = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            if (this.f127104a.f92880c == C13823b.a.Object) {
                GameObject gameObject = new GameObject("Pool-" + Tc.b.w(this.f127105b, true));
                gameObject.r(new ObjectPool());
                try {
                    gameObject.transform.p3(Cursor3D.f71511K.m1249clone());
                } catch (Exception unused) {
                }
                GameObject T10 = GameObject.T(X7.a.r(this.f127105b), false, true);
                T10.transform.setPosition(0.0f);
                T10.transform.z3(Quaternion.IDENTITY);
                gameObject.p(T10);
                gameObject.Q1();
                K8.a.B(new a(gameObject));
            }
        }
    }

    public class g0 implements dd.d {

        public final Context f127108a;

        public final C13823b f127109b;

        public final b f127110c;

        public g0(final Context val$context, final C13823b val$o, final b val$callbacks) {
            this.f127108a = val$context;
            this.f127109b = val$o;
            this.f127110c = val$callbacks;
        }

        @Override
        public void onSelected(View view) {
            String absolutePath = Tc.b.y(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127108a) + "/" + this.f127109b.f92878a)).getAbsolutePath();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127108a));
            sb2.append("/");
            String replace = absolutePath.replace(sb2.toString(), "");
            b bVar = this.f127110c;
            if (bVar != null) {
                bVar.f(replace);
            } else {
                N7.c.D().B0(new k(replace));
            }
        }
    }

    public class C15952h implements dd.d {

        public final C13823b f127111a;

        public final String f127112b;

        public class a implements Runnable {

            public final GameObject f127113b;

            public a(final GameObject val$curve) {
                this.f127113b = val$curve;
            }

            @Override
            public void run() {
                W7.b.f27308h.h(this.f127113b);
            }
        }

        public C15952h(final C13823b val$o, final String val$inProjectDirectory) {
            this.f127111a = val$o;
            this.f127112b = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            if (this.f127111a.f92880c == C13823b.a.Object) {
                String str = "MeshCurve-" + Tc.b.w(this.f127112b, true);
                String u10 = com.itsmagic.engine.Core.Components.ProjectController.a.u(com.itsmagic.engine.Core.Components.ProjectController.a.I(), com.itsmagic.engine.Core.Components.ProjectController.a.L());
                GameObject gameObject = new GameObject(str, new Transform());
                gameObject.transform.N3(Transform.G.STATIC);
                gameObject.r(new MeshCurve());
                gameObject.r(new ModelRenderer(null, u10));
                GameObject gameObject2 = new GameObject("Mesh", new Transform());
                GameObject gameObject3 = new GameObject("Points", new Transform());
                gameObject.p(gameObject2);
                gameObject.p(gameObject3);
                try {
                    gameObject.transform.p3(Cursor3D.f71511K.m1249clone());
                } catch (Exception unused) {
                }
                GameObject T10 = GameObject.T(X7.a.r(this.f127112b), false, true);
                T10.transform.setPosition(0.0f);
                T10.transform.z3(Quaternion.IDENTITY);
                gameObject2.p(T10);
                GameObject gameObject4 = new GameObject("Point 0", new Transform(new Vector3(0.0f, 0.0f, 0.0f)));
                gameObject4.r(new PathPoint());
                gameObject4.r(new StickToTerrain());
                gameObject3.p(gameObject4);
                GameObject gameObject5 = new GameObject("Point 1", new Transform(new Vector3(0.0f, 0.0f, 10.0f)));
                gameObject5.r(new PathPoint());
                gameObject5.r(new StickToTerrain());
                gameObject3.p(gameObject5);
                gameObject.Q1();
                K8.a.B(new a(gameObject));
            }
        }
    }

    public class h0 implements Runnable {

        public final String f127115b;

        public final String f127116c;

        public class a implements a.k {
            public a() {
            }

            @Override
            public World onFailed() {
                return null;
            }

            @Override
            public void onSuccess() {
            }
        }

        public h0(final String val$folder, final String val$name) {
            this.f127115b = val$folder;
            this.f127116c = val$name;
        }

        @Override
        public void run() {
            try {
                com.itsmagic.engine.Engines.Engine.World.a.I(this.f127115b, this.f127116c, true, new a());
            } catch (Exception e10) {
                e10.printStackTrace();
                j.k(this.f127115b, this.f127116c);
            }
        }
    }

    public class C15953i implements dd.d {

        public final Context f127118a;

        public final C13823b f127119b;

        public C15953i(final Context val$context, final C13823b val$o) {
            this.f127118a = val$context;
            this.f127119b = val$o;
        }

        @Override
        public void onSelected(View view) {
            Context context = this.f127118a;
            String str = this.f127119b.f92878a;
            c.a0(context, str, str.substring(str.lastIndexOf("/") + 1));
        }
    }

    public class i0 implements Yc.d {
        @Override
        public boolean a(File file) {
            String replace = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
            if (!file.isDirectory() || replace.equals(Context.STORAGE_SERVICE)) {
                return false;
            }
            if (!C2633l.b(file.getName(), ".meta")) {
                return true;
            }
            File k10 = Tc.b.k(file);
            return (k10 == null || C2633l.b(".java", k10.getAbsolutePath()) || C2633l.b(".go", k10.getAbsolutePath()) || C2633l.b(".mat", k10.getAbsolutePath()) || C2633l.b(".mesh", k10.getAbsolutePath())) ? false : true;
        }
    }

    public class C2160j implements dd.d {

        public final String f127120a;

        public class a extends c.h {

            public final String f127121a;

            public final String f127122b;

            public class RunnableC2161a implements Runnable {
                public RunnableC2161a() {
                }

                @Override
                public void run() {
                    try {
                        a aVar = a.this;
                        if (nd.e.n(aVar.f127121a, aVar.f127122b)) {
                            N7.c.v0(Lang.l(Lang.T.FILE_UNZIPPED_SUCCESSFULLY) + " " + Tc.b.v(C2160j.this.f127120a));
                        } else {
                            N7.c.v0(Lang.l(Lang.T.FILE_UNZIPPED_WITH_ERRORS) + " " + Tc.b.v(C2160j.this.f127120a));
                        }
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                }
            }

            public a(final String val$zip, final String val$folder) {
                this.f127121a = val$zip;
                this.f127122b = val$folder;
            }

            @Override
            public void a(c.g dialog) {
                super.a(dialog);
                new Thread(new RunnableC2161a()).start();
            }
        }

        public C2160j(final String val$inProjectDirectory) {
            this.f127120a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            String str = com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + this.f127120a;
            String u10 = Tc.b.u(str);
            C15147a.e eVar = C15147a.e.Right;
            String str2 = Lang.l(Lang.T.EXTRACT_ALL_FILES_FROM) + " " + Tc.b.v(this.f127120a) + "?";
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Lang.l(Lang.T.TO_FOLDER));
            sb2.append(" ");
            sb2.append(u10.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
            sb2.append(" ?");
            Z6.c.w1(view, eVar, str2, sb2.toString(), new a(str, u10));
        }
    }

    public class j0 implements dd.d {

        public final String f127125a;

        public j0(final String val$inProjectDirectory) {
            this.f127125a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View v10) {
            j.l(v10, this.f127125a);
        }
    }

    public class C15954k implements b8.g {

        public final C13823b f127126a;

        public final Activity f127127b;

        public C15954k(final C13823b val$pfile, final Activity val$activity) {
            this.f127126a = val$pfile;
            this.f127127b = val$activity;
        }

        @Override
        public void a(Activity act) {
            if (com.itsmagic.engine.Engines.Engine.World.a.A()) {
                N7.c.v0(Lang.l(Lang.T.PLEASE_WAIT_FOR_WORLD_TO_FINISH_LOADING));
                return;
            }
            String str = "/" + this.f127126a.f92878a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127127b) + "/", "");
            String substring = str.substring(0, str.lastIndexOf("/") + 1);
            String replace = str.replace(substring, "");
            Toast.makeText(act, Lang.l(Lang.T.LOADING_WORLD_MESSAGE), 0).show();
            j.k(substring, replace);
        }

        @Override
        public void b(Activity act) {
            Toast.makeText(act, Lang.l(Lang.T.FAILED_TO_SAVE_CURRENT_WORLD), 0).show();
        }
    }

    public class k0 implements dd.d {

        public final String f127128a;

        public final Context f127129b;

        public class a implements b.g {
            public a() {
            }

            @Override
            public void a(GameObject object) {
                W7.b.f27308h.h(object);
            }

            @Override
            public void b(String t10) {
            }

            @Override
            public void onUpdate() {
            }
        }

        public k0(final String val$inProjectDirectory, final Context val$context) {
            this.f127128a = val$inProjectDirectory;
            this.f127129b = val$context;
        }

        @Override
        public void onSelected(View view) {
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127129b) + "/" + (Tc.b.O(this.f127128a) + ".meta/"));
            int i10 = 0;
            if (file.exists()) {
                try {
                    File[] listFiles = file.listFiles();
                    int length = listFiles.length;
                    int i11 = 0;
                    while (i10 < length) {
                        try {
                            File file2 = listFiles[i10];
                            if (C2633l.b(Tc.b.t(file2.getAbsolutePath()), ".go")) {
                                com.itsmagic.engine.Engines.Engine.World.b.i(com.itsmagic.engine.Core.Components.ProjectController.a.P(file2), true, new a());
                                i11 = 1;
                            }
                            i10++;
                        } catch (Exception unused) {
                        }
                    }
                    i10 = i11;
                } catch (Exception unused2) {
                }
            }
            if (i10 == 0) {
                Vg.c.d(view, new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127129b) + "/" + this.f127128a), true);
            }
        }
    }

    public class C15955l implements dd.d {

        public final String f127131a;

        public class a extends c.h {

            public final String f127132a;

            public final String f127133b;

            public class RunnableC2162a implements Runnable {
                public RunnableC2162a() {
                }

                @Override
                public void run() {
                    try {
                        a aVar = a.this;
                        if (nd.e.n(aVar.f127132a, aVar.f127133b)) {
                            N7.c.v0(Lang.l(Lang.T.FILE_UNZIPPED_SUCCESSFULLY) + " " + Tc.b.v(C15955l.this.f127131a));
                        } else {
                            N7.c.v0(Lang.l(Lang.T.FILE_UNZIPPED_WITH_ERRORS) + " " + Tc.b.v(C15955l.this.f127131a));
                        }
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                }
            }

            public a(final String val$zip, final String val$folder) {
                this.f127132a = val$zip;
                this.f127133b = val$folder;
            }

            @Override
            public void a(c.g dialog) {
                super.a(dialog);
                new Thread(new RunnableC2162a()).start();
            }
        }

        public C15955l(final String val$inProjectDirectory) {
            this.f127131a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            String str = com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + this.f127131a;
            String str2 = Tc.b.O(str) + "/";
            C15147a.e eVar = C15147a.e.Right;
            String str3 = Lang.l(Lang.T.EXTRACT_ALL_FILES_FROM) + " " + Tc.b.v(this.f127131a) + "?";
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Lang.l(Lang.T.TO_FOLDER));
            sb2.append(" ");
            sb2.append(str2.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
            sb2.append(" ?");
            Z6.c.w1(view, eVar, str3, sb2.toString(), new a(str, str2));
        }
    }

    public class l0 implements dd.d {

        public final String f127136a;

        public final Context f127137b;

        public final b f127138c;

        public class a implements C15045a.d {

            public class RunnableC2163a implements Runnable {

                public final C15045a f127140b;

                public class C2164a implements z8.b {

                    public class RunnableC2165a implements Runnable {
                        public RunnableC2165a() {
                        }

                        @Override
                        public void run() {
                            Vc.e.f();
                            w5.b bVar = l0.this.f127138c;
                            if (bVar != null) {
                                bVar.a();
                            }
                            RunnableC2163a.this.f127140b.p1();
                        }
                    }

                    public C2164a() {
                    }

                    @Override
                    public void a() {
                        N7.c.j0(new RunnableC2165a());
                    }

                    @Override
                    public void b() {
                    }

                    @Override
                    public void c() {
                    }
                }

                public class b implements Runnable {
                    public b() {
                    }

                    @Override
                    public void run() {
                        Vc.e.f();
                        w5.b bVar = l0.this.f127138c;
                        if (bVar != null) {
                            bVar.a();
                        }
                        RunnableC2163a.this.f127140b.p1();
                    }
                }

                public RunnableC2163a(final C15045a val$loadingBarPanel) {
                    this.f127140b = val$loadingBarPanel;
                }

                @Override
                public void run() {
                    File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(l0.this.f127137b) + "/" + (Tc.b.O(l0.this.f127136a) + ".meta/"));
                    if (!file.exists()) {
                        this.f127140b.p1();
                    } else if (C16273a.a(file, new C2164a())) {
                        N7.c.j0(new b());
                    } else {
                        N7.c.v0("Failed");
                        this.f127140b.p1();
                    }
                }
            }

            public a() {
            }

            @Override
            public void a(C15045a loadingBarPanel) {
                O9.b.d(new RunnableC2163a(loadingBarPanel));
            }
        }

        public l0(final String val$inProjectDirectory, final Context val$context, final b val$callbacks) {
            this.f127136a = val$inProjectDirectory;
            this.f127137b = val$context;
            this.f127138c = val$callbacks;
        }

        @Override
        public void onSelected(View view) {
            C15045a.u1(true, new a());
        }
    }

    public class C15956m implements dd.d {

        public final String f127145a;

        public final Context f127146b;

        public C15956m(final String val$inProjectDirectory, final Context val$context) {
            this.f127145a = val$inProjectDirectory;
            this.f127146b = val$context;
        }

        @Override
        public void onSelected(View v10) {
            String replace = this.f127145a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127146b) + "/", "");
            if (C2633l.b(replace, ".nse")) {
                P6.a.G1(v10, C15147a.e.Right, replace);
            } else {
                P6.c.b2(v10, C15147a.e.Right, replace);
            }
        }
    }

    public enum m0 {
        Component,
        Interface,
        Class
    }

    public class C15957n extends SteppedArrayList<C12908b> {

        public final String f127147b;

        public final Context f127148c;

        public final Activity f127149d;

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View view) {
                ModelRenderer modelRenderer;
                try {
                    modelRenderer = (ModelRenderer) W7.b.f27309i.f31909a.f31910a.c0(Component.e.ModelRenderer);
                } catch (Exception unused) {
                    modelRenderer = null;
                }
                if (modelRenderer == null) {
                    Toast.makeText(C15957n.this.f127149d, Lang.l(Lang.T.NO_MODEL_RENDERER_FOUND), 0).show();
                    return;
                }
                Material material = modelRenderer.f73747F;
                if (material == null) {
                    Toast.makeText(C15957n.this.f127149d, Lang.l(Lang.T.NO_MATERIAL_IN_MODEL_RENDERER_FOUND), 0).show();
                    return;
                }
                try {
                    material.i0(SerializableShaderEntry.f81152f, C15957n.this.f127147b.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15957n.this.f127148c) + "/", ""));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public class b implements dd.d {
            public b() {
            }

            @Override
            public void onSelected(View view) {
                SkinnedModelRenderer skinnedModelRenderer;
                try {
                    skinnedModelRenderer = (SkinnedModelRenderer) W7.b.f27309i.f31909a.f31910a.c0(Component.e.SkinnedModelRenderer);
                } catch (Exception unused) {
                    skinnedModelRenderer = null;
                }
                if (skinnedModelRenderer == null) {
                    Toast.makeText(C15957n.this.f127149d, Lang.l(Lang.T.NO_SKINNED_MODEL_RENDERER_FOUND), 0).show();
                    return;
                }
                if (skinnedModelRenderer.getMaterial() == null) {
                    Toast.makeText(C15957n.this.f127149d, Lang.l(Lang.T.NO_MATERIAL_IN_SKINNED_MODEL_RENDERER_FOUND), 0).show();
                    return;
                }
                try {
                    skinnedModelRenderer.getMaterial().i0(SerializableShaderEntry.f81152f, C15957n.this.f127147b.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15957n.this.f127148c) + "/", ""));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public C15957n(final String val$inProjectDirectory, final Context val$context, final Activity val$activity) {
            this.f127147b = val$inProjectDirectory;
            this.f127148c = val$context;
            this.f127149d = val$activity;
            add(new C12908b(com.itsmagic.engine2.R.drawable.wo_modelrenderer2, Lang.l(Lang.T.ATTACH_MODEL_RENDERER), new a()));
            add(new C12908b(com.itsmagic.engine2.R.drawable.wo_modelrenderer2, Lang.l(Lang.T.ATTACH_TO_SKINNED_MODEL_RENDERER), new b()));
        }
    }

    public class C15958o implements dd.d {

        public final String f127152a;

        public class a implements f.g {

            public class RunnableC2166a implements Runnable {

                public final float f127154b;

                public final C15045a f127155c;

                public class C2167a implements InterfaceC3597b {
                    public C2167a() {
                    }

                    @Override
                    public void a(Object userData, ub.p original, String path) {
                        N7.c.v0(Lang.l(Lang.T.SUCCESS_GENERATING_NORMAL_MAP) + " (" + Tc.b.v(path) + ")");
                        RunnableC2166a.this.f127155c.p1();
                    }
                }

                public RunnableC2166a(final float val$strength, final C15045a val$progress) {
                    this.f127154b = val$strength;
                    this.f127155c = val$progress;
                }

                @Override
                public void run() {
                    ub.g u10 = C16165b.u(C15958o.this.f127152a);
                    if (u10 == null) {
                        N7.c.v0(Lang.l(Lang.T.FAILED_TO_LOAD_TEXTURE) + " " + C15958o.this.f127152a);
                        this.f127155c.p1();
                        return;
                    }
                    ab.c.i(new C3596a(this.f127154b, u10, Tc.b.w(C15958o.this.f127152a, true) + "_normal_" + this.f127154b + ".jpg", new C2167a()));
                }
            }

            public a() {
            }

            @Override
            public void c(String text) {
                float v12 = Nc.b.v1(text, -1.0f);
                if (v12 > 0.0f) {
                    new Thread(new RunnableC2166a(v12, C15045a.r1())).start();
                } else {
                    N7.c.v0(Lang.l(Lang.T.INVALID_STRENGTH));
                }
            }

            @Override
            public void onCancel() {
            }
        }

        public C15958o(final String val$inProjectDirectory) {
            this.f127152a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            Z6.f.x1(Lang.l(Lang.T.STRENGTH), "80", new a());
        }
    }

    public class C15959p implements dd.d {

        public final Context f127158a;

        public final String f127159b;

        public final b f127160c;

        public class a implements l {
            public a() {
            }

            @Override
            public void a() {
            }

            @Override
            public void c(String inProjectPath) {
                y.c();
                b bVar = C15959p.this.f127160c;
                if (bVar != null) {
                    bVar.a();
                }
            }
        }

        public C15959p(final Context val$context, final String val$inProjectDirectory, final b val$callbacks) {
            this.f127158a = val$context;
            this.f127159b = val$inProjectDirectory;
            this.f127160c = val$callbacks;
        }

        @Override
        public void onSelected(View view) {
            c.f(this.f127158a, this.f127159b, new a());
        }
    }

    public class C15960q implements dd.d {

        public final String f127162a;

        public final Context f127163b;

        public C15960q(final String val$inProjectDirectory, final Context val$context) {
            this.f127162a = val$inProjectDirectory;
            this.f127163b = val$context;
        }

        @Override
        public void onSelected(View v10) {
            L4.a.J1(v10, C15147a.e.Right, this.f127162a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127163b) + "/", ""));
        }
    }

    public class C15961r implements dd.d {

        public final String f127164a;

        public final Context f127165b;

        public C15961r(final String val$inProjectDirectory, final Context val$context) {
            this.f127164a = val$inProjectDirectory;
            this.f127165b = val$context;
        }

        @Override
        public void onSelected(View v10) {
            Q6.a.I1(v10, C15147a.e.Right, this.f127164a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127165b) + "/", ""));
        }
    }

    public class C15962s implements dd.d {

        public final C13823b f127166a;

        public final String f127167b;

        public final Activity f127168c;

        public final Context f127169d;

        public class a implements InterfaceC14487a {

            public class RunnableC2168a implements Runnable {

                public final String f127171b;

                public class C2169a implements SweetAlertDialog.OnSweetClickListener {

                    public final SweetAlertDialog f127173a;

                    public C2169a(final SweetAlertDialog val$dialog) {
                        this.f127173a = val$dialog;
                    }

                    @Override
                    public void onClick(SweetAlertDialog sweetAlertDialog) {
                        this.f127173a.dismissWithAnimation();
                    }
                }

                public RunnableC2168a(final String val$error) {
                    this.f127171b = val$error;
                }

                @Override
                public void run() {
                    SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(C15962s.this.f127168c, 1);
                    sweetAlertDialog.setTitle(Lang.l(Lang.T.OPS));
                    sweetAlertDialog.setContentText(this.f127171b);
                    sweetAlertDialog.setConfirmText(Lang.l(Lang.T.OK));
                    sweetAlertDialog.setConfirmClickListener(new C2169a(sweetAlertDialog));
                    sweetAlertDialog.show();
                }
            }

            public a() {
            }

            @Override
            public void onError(String error) {
                C15962s.this.f127168c.runOnUiThread(new RunnableC2168a(error));
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                W7.b.f27309i.f31909a.f31910a.r(new LuaComponent(C15962s.this.f127167b.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "")));
            }
        }

        public class c implements Runnable {

            public final ModelRenderer f127176b;

            public c(final ModelRenderer val$finalModelRenderer) {
                this.f127176b = val$finalModelRenderer;
            }

            @Override
            public void run() {
                this.f127176b.setMaterialFile(C15962s.this.f127167b.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(C15962s.this.f127169d) + "/", ""));
            }
        }

        public C15962s(final C13823b val$o, final String val$inProjectDirectory, final Activity val$activity, final Context val$context) {
            this.f127166a = val$o;
            this.f127167b = val$inProjectDirectory;
            this.f127168c = val$activity;
            this.f127169d = val$context;
        }

        @Override
        public void onSelected(View view) {
            C3589a c3589a = W7.b.f27309i;
            if (!C13317e.J(c3589a.f31909a.f31910a)) {
                N7.c.v0(Lang.l(Lang.T.PLEASE_SELECT_ONE_OBJECT));
                return;
            }
            C13823b.a aVar = this.f127166a.f92880c;
            if (aVar == C13823b.a.Java) {
                d8.j.F0(c3589a.f31909a.f31910a, Tc.b.w(this.f127167b, true), new a());
                return;
            }
            if (aVar == C13823b.a.Lua) {
                K8.a.I(new b());
                return;
            }
            ModelRenderer modelRenderer = null;
            if (aVar != C13823b.a.Texture) {
                if (aVar == C13823b.a.Material) {
                    try {
                        modelRenderer = (ModelRenderer) c3589a.f31909a.f31910a.c0(Component.e.ModelRenderer);
                    } catch (Exception unused) {
                    }
                    if (modelRenderer != null) {
                        K8.a.I(new c(modelRenderer));
                        return;
                    } else {
                        Toast.makeText(this.f127168c, Lang.l(Lang.T.NO_MODEL_RENDERER_FOUND), 0).show();
                        return;
                    }
                }
                return;
            }
            try {
                modelRenderer = (ModelRenderer) c3589a.f31909a.f31910a.c0(Component.e.ModelRenderer);
            } catch (Exception unused2) {
            }
            if (modelRenderer == null) {
                Toast.makeText(this.f127168c, Lang.l(Lang.T.NO_MODEL_RENDERER_FOUND), 0).show();
                return;
            }
            Material material = modelRenderer.f73747F;
            if (material == null) {
                Toast.makeText(this.f127168c, Lang.l(Lang.T.NO_MATERIAL_IN_MODEL_RENDERER_FOUND), 0).show();
                return;
            }
            try {
                material.i0(SerializableShaderEntry.f81152f, this.f127167b.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127169d) + "/", ""));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class C15963t implements dd.d {

        public final String f127178a;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                W7.b.f27309i.f31909a.f31910a.r(new CustomPostProcessing(C15963t.this.f127178a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "")));
            }
        }

        public C15963t(final String val$inProjectDirectory) {
            this.f127178a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            if (C13317e.J(W7.b.f27309i.f31909a.f31910a)) {
                K8.a.I(new a());
            } else {
                N7.c.v0(Lang.l(Lang.T.PLEASE_SELECT_ONE_OBJECT));
            }
        }
    }

    public class C15964u implements dd.d {

        public final String f127180a;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                W7.b.f27309i.f31909a.f31910a.r(new UICustomPostProcessing(C15964u.this.f127180a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "")));
            }
        }

        public C15964u(final String val$inProjectDirectory) {
            this.f127180a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            if (C13317e.J(W7.b.f27309i.f31909a.f31910a)) {
                K8.a.I(new a());
            } else {
                N7.c.v0(Lang.l(Lang.T.PLEASE_SELECT_ONE_OBJECT));
            }
        }
    }

    public class C15965v implements b.g {
        @Override
        public void a(GameObject object) {
            W7.b.f27308h.h(object);
        }

        @Override
        public void b(String t10) {
        }

        @Override
        public void onUpdate() {
        }
    }

    public class RunnableC15966w implements Runnable {

        public final Activity f127182b;

        public final String f127183c;

        public final C15045a f127184d;

        public class a implements Runnable {

            public class C2170a implements b.g {
                public C2170a() {
                }

                @Override
                public void a(GameObject object) {
                    W7.b.f27308h.h(object);
                }

                @Override
                public void b(String t10) {
                }

                @Override
                public void onUpdate() {
                }
            }

            public a() {
            }

            @Override
            public void run() {
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(RunnableC15966w.this.f127182b) + "/" + (Tc.b.O(RunnableC15966w.this.f127183c) + ".meta/"));
                if (file.exists()) {
                    try {
                        for (File file2 : file.listFiles()) {
                            if (C2633l.b(Tc.b.t(file2.getAbsolutePath()), ".go")) {
                                com.itsmagic.engine.Engines.Engine.World.b.i(com.itsmagic.engine.Core.Components.ProjectController.a.P(file2), true, new C2170a());
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }

        public RunnableC15966w(final Activity val$context, final String val$finalInProjectFile1, final C15045a val$loading) {
            this.f127182b = val$context;
            this.f127183c = val$finalInProjectFile1;
            this.f127184d = val$loading;
        }

        @Override
        public void run() {
            try {
                try {
                    File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127182b) + "/" + this.f127183c);
                    B9.b bVar = (B9.b) X7.a.m().fromJson(X7.a.x(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f127182b) + "/" + this.f127183c + ".config")), B9.b.class);
                    if (bVar == null) {
                        bVar = new B9.b();
                    }
                    C14217b.d(file, bVar);
                    K8.a.I(new a());
                } catch (Exception e10) {
                    e10.printStackTrace();
                    N7.c.v0(e10.getMessage());
                }
                this.f127184d.p1();
            } catch (Throwable th2) {
                this.f127184d.p1();
                throw th2;
            }
        }
    }

    public class C15967x implements dd.d {

        public final String f127187a;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                W7.b.f27309i.f31909a.f31910a.r(new CustomVFXEffect(C15967x.this.f127187a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "")));
            }
        }

        public C15967x(final String val$inProjectDirectory) {
            this.f127187a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            if (C13317e.J(W7.b.f27309i.f31909a.f31910a)) {
                K8.a.I(new a());
            } else {
                N7.c.v0(Lang.l(Lang.T.PLEASE_SELECT_ONE_OBJECT));
            }
        }
    }

    public class C15968y implements dd.d {

        public final String f127189a;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                W7.b.f27309i.f31909a.f31910a.r(new CustomSkybox(C15968y.this.f127189a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "")));
            }
        }

        public C15968y(final String val$inProjectDirectory) {
            this.f127189a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            if (C13317e.J(W7.b.f27309i.f31909a.f31910a)) {
                K8.a.I(new a());
            } else {
                N7.c.v0(Lang.l(Lang.T.PLEASE_SELECT_ONE_OBJECT));
            }
        }
    }

    public class C15969z implements dd.d {

        public final String f127191a;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                W7.b.f27309i.f31909a.f31910a.r(new CustomAmbientLight(C15969z.this.f127191a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "")));
            }
        }

        public C15969z(final String val$inProjectDirectory) {
            this.f127191a = val$inProjectDirectory;
        }

        @Override
        public void onSelected(View view) {
            if (C13317e.J(W7.b.f27309i.f31909a.f31910a)) {
                K8.a.I(new a());
            } else {
                N7.c.v0(Lang.l(Lang.T.PLEASE_SELECT_ONE_OBJECT));
            }
        }
    }

    public static void a(Activity activity, Context context, int pixelX, int pixelY, C13823b o10, String inProjectDirectory, boolean destructiveActions, b callbacks) {
        Y6.a.C1(pixelX, pixelY, g(activity, context, o10, inProjectDirectory, callbacks, o10.f92878a + "/", null, pixelX, pixelY, destructiveActions), context);
    }

    public static void b(Activity activity, Context context, View view, C13823b o10, String inProjectDirectory, boolean destructiveActions, b callbacks) {
        Y6.a.F1(view, C15147a.e.Below, g(activity, context, o10, inProjectDirectory, callbacks, o10.f92878a + "/", view, -1, -1, destructiveActions));
    }

    public static void f(Context context, String inProjectDirectory) {
        if (context == null || inProjectDirectory == null || inProjectDirectory.isEmpty()) {
            return;
        }
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + (Tc.b.O(inProjectDirectory) + ".meta/"));
        if (file.exists()) {
            C12740h.b bVar = new C12740h.b();
            bVar.f72131a = true;
            bVar.f72132b = true;
            C12740h.c n10 = C12740h.n(context, bVar);
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file2 : listFiles) {
                if (file2 != null) {
                    String name = file2.getName();
                    if (!"thumb.png".equalsIgnoreCase(name) && !"thumb_manifest.json".equalsIgnoreCase(name)) {
                        String o10 = Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.P(file2));
                        if (C2633l.b(file2.getAbsolutePath(), ".mesh")) {
                            if (!n10.e(o10)) {
                                file2.delete();
                                File file3 = new File(file2.getParentFile(), Tc.b.O(name) + "_wf.mwf");
                                if (file3.exists()) {
                                    file3.delete();
                                }
                            }
                        } else if (name.endsWith(".mwf")) {
                            String O10 = Tc.b.O(name);
                            if (O10.endsWith("_wf")) {
                                O10 = O10.substring(0, O10.length() - 3);
                            }
                            if (!n10.e(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.P(new File(file2.getParentFile(), O10 + ".mesh"))))) {
                                file2.delete();
                            }
                        } else if (C2633l.b(file2.getAbsolutePath(), ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm") && !n10.e(o10)) {
                            file2.delete();
                            File file4 = new File(file2.getParentFile(), file2.getName() + ".config");
                            if (file4.exists()) {
                                file4.delete();
                            }
                        }
                    }
                }
            }
        }
    }

    public static List<C12908b> g(Activity activity, Context context, C13823b o10, String inProjectDirectory, b callbacks, String folderPath, View originalView, int pixelX, int pixelY, boolean destructiveActions) {
        C12908b b10;
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C12908b(C12908b.EnumC1575b.Tittle, Tc.b.v(o10.f())));
        linkedList.add(new C12908b());
        if (o10.f92880c != C13823b.a.Directory) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.edit_script_2, Lang.l(Lang.T.OPEN), new j0(inProjectDirectory)));
        }
        if (o10.f92880c == C13823b.a.Model3D) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.world_3, Lang.l(Lang.T.COPY_TO_WORLD), new k0(inProjectDirectory, context)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.clean, Lang.l(Lang.T.CLEAR_IMPORTED_DATA), new l0(inProjectDirectory, context, callbacks)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.compound, Lang.l(Lang.T.BUILD_COLLISION_VTX), new C15945a(inProjectDirectory, context)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.walk, Lang.l(Lang.T.EXTRACT_ANIMATION), new C15946b(inProjectDirectory, context)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.search_store_icon_v2, Lang.l(Lang.T.DELETE_UNUSED_FILES), new C15947c(context, inProjectDirectory)));
        }
        C13823b.a aVar = o10.f92880c;
        C13823b.a aVar2 = C13823b.a.Object;
        if (aVar == aVar2 || aVar == C13823b.a.Mesh || aVar == C13823b.a.Sound || aVar == C13823b.a.ImportedAudio) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.world_3, Lang.l(Lang.T.COPY_TO_WORLD), new C15948d(o10, inProjectDirectory)));
        }
        C13823b.a aVar3 = o10.f92880c;
        if (aVar3 == C13823b.a.Sound || aVar3 == C13823b.a.VideoSound || aVar3 == C13823b.a.ImportedAudio) {
            File f10 = AudioConfig.f(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + inProjectDirectory));
            if (f10 != null) {
                linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.edit_script_2, Lang.l(Lang.T.EDIT), new C15949e(originalView, f10)));
            }
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.world_3, Lang.l(Lang.T.CREATE_PREFAB), new C15950f(inProjectDirectory, context)));
        }
        if (o10.f92880c == aVar2) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.wo_hpop, Lang.l(Lang.T.CREATE_POOL), new C15951g(o10, inProjectDirectory)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.wo_modelrender, Lang.l(Lang.T.CREATE_CURVE_OF), new C15952h(o10, inProjectDirectory)));
        }
        if (o10.f92880c == C13823b.a.Plugin) {
            linkedList.add(new C12908b(Lang.l(Lang.T.INSTALL_PLUGIN), new C15953i(context, o10)));
        }
        if (o10.f92880c == C13823b.a.Zip) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.extract_zip, Lang.l(Lang.T.EXTRACT_HERE), new C2160j(inProjectDirectory)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.folder_v5_white, Lang.l(Lang.T.EXTRACT_TO_FOLDER), new C15955l(inProjectDirectory)));
        }
        if (o10.f92880c == C13823b.a.Texture) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.edit_script_2, Lang.l(Lang.T.EDIT), new C15956m(inProjectDirectory, context)));
            linkedList.add(new C12908b(Lang.l(Lang.T.ATTACH), new C15957n(inProjectDirectory, context, activity)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.normal_map, Lang.l(Lang.T.GENERATE_NORMAL_MAP), new C15958o(inProjectDirectory)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.cubemap_v3, Lang.l(Lang.T.GENERATE_CUBEMAP), new C15959p(context, inProjectDirectory, callbacks)));
        }
        if (o10.f92880c == C13823b.a.Cubemap) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.edit_script_2, Lang.l(Lang.T.EDIT), new C15960q(inProjectDirectory, context)));
        }
        if (o10.f92880c == C13823b.a.UIStyle) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.edit_script_2, Lang.l(Lang.T.EDIT), new C15961r(inProjectDirectory, context)));
        }
        C13823b.a aVar4 = o10.f92880c;
        if (aVar4 == C13823b.a.Java || aVar4 == C13823b.a.Material || aVar4 == C13823b.a.Lua) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.attach, Lang.l(Lang.T.ATTACH_SELECTED), new C15962s(o10, inProjectDirectory, activity, context)));
        }
        if (o10.f92880c == C13823b.a.PostProcessingShader) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.attach, Lang.l(Lang.T.ATTACH_SELECTED), new C15963t(inProjectDirectory)));
        }
        if (o10.f92880c == C13823b.a.UIPostProcessingShader) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.attach, Lang.l(Lang.T.ATTACH_SELECTED), new C15964u(inProjectDirectory)));
        }
        if (o10.f92880c == C13823b.a.VFXShader) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.attach, Lang.l(Lang.T.ATTACH_SELECTED), new C15967x(inProjectDirectory)));
        }
        if (o10.f92880c == C13823b.a.SkyboxShader) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.attach, Lang.l(Lang.T.ATTACH_SELECTED), new C15968y(inProjectDirectory)));
        }
        if (o10.f92880c == C13823b.a.AmbientLightShader) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.attach, Lang.l(Lang.T.ATTACH_SELECTED), new C15969z(inProjectDirectory)));
        }
        if (o10.f92880c == C13823b.a.VulkanGraph) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.attach, "Attach as post processing", new A(inProjectDirectory)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.attach, "Attach as UI post processing", new B(inProjectDirectory)));
        }
        if (o10.f92880c == C13823b.a.NoCodeGraph) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.attach, Lang.l(Lang.T.ATTACH_SELECTED), new C(inProjectDirectory)));
        }
        if (o10.f92880c == C13823b.a.Mesh) {
            linkedList.add(new C12908b(Lang.l(Lang.T.ATTACH), new D(inProjectDirectory, context)));
            linkedList.add(new C12908b());
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.vector, Lang.l(Lang.T.INVERT_FACE_ORIENTATION), new E(inProjectDirectory)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.vector, Lang.l(Lang.T.INVERT_NORMALS), new F(inProjectDirectory)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.vector, Lang.l(Lang.T.RECALCULATE_NORMALS), new G(inProjectDirectory)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.obj_icon, Lang.l(Lang.T.CONVERT_TO_OBJ), new H(inProjectDirectory)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.convex_hull, Lang.l(Lang.T.BUILD_CONVEX_HULL), new I(inProjectDirectory)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.convex_hull, Lang.l(Lang.T.BUILD_DECIMATE), new J(inProjectDirectory)));
        }
        if (o10.f92880c == C13823b.a.Video) {
            String l10 = Lang.l(Lang.T.COPY_TO_WORLD);
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + (Tc.b.O(inProjectDirectory) + ".meta/"));
            if (file.exists()) {
                try {
                    for (File file2 : file.listFiles()) {
                        if (C2633l.b(Tc.b.t(file2.getAbsolutePath()), ".go")) {
                            break;
                        }
                    }
                } catch (Exception unused) {
                }
            }
            l10 = Lang.l(Lang.T.IMPORT);
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.world_3, l10, new K(inProjectDirectory, context)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.clean, Lang.l(Lang.T.CLEAR_IMPORTED_DATA), new L(inProjectDirectory, context, callbacks)));
        }
        if (o10.f92880c == C13823b.a.Directory) {
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.add_media_v2, Lang.l(Lang.T.NEW), new M(context, folderPath, callbacks)));
            if (destructiveActions) {
                linkedList.add(new C12908b());
                linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.bin_nopadding_v2, Lang.l(Lang.T.DELETE), new N(context, o10, callbacks, inProjectDirectory)));
                linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.rename, Lang.l(Lang.T.RENAME), new O(context, o10, callbacks)));
            }
            linkedList.add(new C12908b());
            linkedList.add(new C12908b(Lang.l(Lang.T.BATCH), new P(inProjectDirectory)));
            linkedList.add(new C12908b(Lang.l(Lang.T.EXPORT), new Q(activity, folderPath, context, callbacks)));
            linkedList.add(new C12908b(Lang.l(Lang.T.IMPORT_FILES), new S(folderPath, context)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.share, Lang.l(Lang.T.STORE_GITHUB_SHARE_GROUP), new T(context, o10)));
            C12908b c12908b = new C12908b(C12908b.EnumC1575b.Folder, "");
            File file3 = new File((com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + inProjectDirectory).replace("//", "/"));
            for (int i10 = 0; i10 < C14940d.n(); i10++) {
                C12908b a10 = C14940d.m(i10).a(file3);
                if (a10 != null) {
                    if (c12908b.f84530c != null) {
                        int i11 = 0;
                        while (true) {
                            if (i11 >= c12908b.f84530c.size()) {
                                c12908b.f84530c.add(a10);
                                break;
                            }
                            C12908b c12908b2 = c12908b.f84530c.get(i11);
                            String str = c12908b2.f84529b;
                            if (str != null && str.equals(a10.f84529b) && c12908b2.f84528a == a10.f84528a) {
                                c12908b2.c(a10.f84530c);
                                break;
                            }
                            i11++;
                        }
                    } else {
                        LinkedList linkedList2 = new LinkedList();
                        c12908b.f84530c = linkedList2;
                        linkedList2.add(a10);
                    }
                }
            }
            List<C12908b> list = c12908b.f84530c;
            if (list != null) {
                linkedList.addAll(list);
            }
        } else {
            linkedList.add(new C12908b());
            if (o10.f92880c == C13823b.a.Animation) {
                linkedList.add(new C12908b("Create new mask file", new U(o10, context, callbacks)));
                linkedList.add(new C12908b());
            }
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.rename, Lang.l(Lang.T.RENAME), new V(context, o10, callbacks)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.bin_nopadding_v2, Lang.l(Lang.T.DELETE), new W(context, o10, callbacks, inProjectDirectory)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.paste, Lang.l(Lang.T.DUPLICATE), new X(context, o10)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.move_file, Lang.l(Lang.T.MOVE), new Y(context, o10)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.copy_file, Lang.l(Lang.T.COPY), new Z(context, o10)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.search_store_icon_v2, Lang.l(Lang.T.FIND_USAGES), new a0(o10)));
            linkedList.add(new C12908b());
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.open_doc, Lang.l(Lang.T.OPEN_WITH), new b0(context, o10, callbacks)));
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.share, Lang.l(Lang.T.STORE_GITHUB_SHARE_GROUP), new e0(context, o10)));
            GameSettings l11 = K8.a.l();
            if (l11 != null && l11.h().enableVCS) {
                linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.vcs, Lang.l(Lang.T.VCS), new f0(context, o10)));
            }
            linkedList.add(new C12908b());
            linkedList.add(new C12908b(com.itsmagic.engine2.R.drawable.extract_zip, Lang.l(Lang.T.EXPLORE_META_FILES), new g0(context, o10, callbacks)));
            C12908b c12908b3 = new C12908b(C12908b.EnumC1575b.Folder, "");
            File file4 = new File((com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + inProjectDirectory).replace("//", "/"));
            for (int i12 = 0; i12 < C14940d.l(); i12++) {
                h k10 = C14940d.k(i12);
                if (k10.a(Tc.b.t(o10.f92878a)) && (b10 = k10.b(file4)) != null) {
                    if (c12908b3.f84530c != null) {
                        int i13 = 0;
                        while (true) {
                            if (i13 >= c12908b3.f84530c.size()) {
                                c12908b3.f84530c.add(b10);
                                break;
                            }
                            C12908b c12908b4 = c12908b3.f84530c.get(i13);
                            String str2 = c12908b4.f84529b;
                            if (str2 != null && str2.equals(b10.f84529b) && c12908b4.f84528a == b10.f84528a) {
                                c12908b4.c(b10.f84530c);
                                break;
                            }
                            i13++;
                        }
                    } else {
                        LinkedList linkedList3 = new LinkedList();
                        c12908b3.f84530c = linkedList3;
                        linkedList3.add(b10);
                    }
                }
            }
            List<C12908b> list2 = c12908b3.f84530c;
            if (list2 != null) {
                linkedList.addAll(list2);
            }
        }
        return linkedList;
    }

    public static Yc.d h() {
        return new i0();
    }

    public static String i(String path) {
        if (path == null) {
            return null;
        }
        String replace = Tc.b.o(path).replace(C16181m.f130232i, "/");
        String S10 = com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t());
        if (S10 == null) {
            return replace;
        }
        String replace2 = S10.replace(C16181m.f130232i, "/");
        if (replace.equals(replace2)) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(replace2);
        sb2.append("/");
        return replace.startsWith(sb2.toString()) ? replace.substring(replace2.length() + 1) : replace;
    }

    public static boolean j(View v10, C13823b pfile, Activity activity) {
        String str = "/" + pfile.f92878a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(activity) + "/", "");
        C13823b.a aVar = pfile.f92880c;
        if (aVar == C13823b.a.World || aVar == C13823b.a.Area) {
            if (!com.itsmagic.engine.Engines.Engine.World.a.A()) {
                W7.b.f27308h.f(activity, new C15954k(pfile, activity));
                return true;
            }
            N7.c.v0(Lang.l(Lang.T.PLEASE_WAIT_FOR_WORLD_TO_FINISH_LOADING));
        }
        C13823b.a aVar2 = pfile.f92880c;
        if (aVar2 == C13823b.a.Texture) {
            if (C2633l.b(pfile.f92878a, ".nse")) {
                P6.a.G1(v10, C15147a.e.Right, pfile.f92878a);
            } else {
                P6.c.b2(v10, C15147a.e.Right, pfile.f92878a);
            }
            return true;
        }
        if (aVar2 == C13823b.a.Cubemap) {
            L4.a.J1(v10, C15147a.e.Right, pfile.f92878a);
            return true;
        }
        if (aVar2 == C13823b.a.UIStyle) {
            Q6.a.I1(v10, C15147a.e.Right, pfile.f92878a);
            return true;
        }
        if (aVar2 == C13823b.a.VulkanGraph) {
            N7.c.D().B0(new n4.e(pfile.f92878a));
            return true;
        }
        if (aVar2 == C13823b.a.NoCodeGraph) {
            N7.c.D().B0(new C14352d(pfile.f92878a));
            return true;
        }
        int i10 = 0;
        if (aVar2 == C13823b.a.Video) {
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(activity) + "/" + (Tc.b.O(str) + ".meta/"));
            if (file.exists()) {
                try {
                    File[] listFiles = file.listFiles();
                    int length = listFiles.length;
                    int i11 = 0;
                    while (i10 < length) {
                        try {
                            File file2 = listFiles[i10];
                            if (C2633l.b(Tc.b.t(file2.getAbsolutePath()), ".go")) {
                                com.itsmagic.engine.Engines.Engine.World.b.i(com.itsmagic.engine.Core.Components.ProjectController.a.P(file2), true, new C15965v());
                                i11 = 1;
                            }
                            i10++;
                        } catch (Exception unused) {
                        }
                    }
                    i10 = i11;
                } catch (Exception unused2) {
                }
            }
            if (i10 == 0) {
                new Thread(new RunnableC15966w(activity, str, C15045a.r1())).start();
            }
            return true;
        }
        if (aVar2 != C13823b.a.Model3D) {
            if (aVar2 == C13823b.a.Object) {
                com.itsmagic.engine.Engines.Engine.World.b.i(str, true, new c0());
                return true;
            }
            if (aVar2 == C13823b.a.Mesh) {
                Lb.k.q(Tc.b.w(str, true), str);
                return true;
            }
            if (aVar2 != C13823b.a.Sound && aVar2 != C13823b.a.VideoSound && aVar2 != C13823b.a.ImportedAudio) {
                return false;
            }
            File f10 = AudioConfig.f(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(activity) + "/" + str));
            if (f10 == null) {
                return false;
            }
            com.itsmagic.engine.Activities.Editor.Panels.Files.Utils.a.d(v10, f10, new d0(f10));
            return true;
        }
        File file3 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(activity) + "/" + (Tc.b.O(str) + ".meta/"));
        if (file3.exists()) {
            try {
                File[] listFiles2 = file3.listFiles();
                int length2 = listFiles2.length;
                int i12 = 0;
                while (i10 < length2) {
                    try {
                        File file4 = listFiles2[i10];
                        if (C2633l.b(Tc.b.t(file4.getAbsolutePath()), ".go")) {
                            com.itsmagic.engine.Engines.Engine.World.b.i(com.itsmagic.engine.Core.Components.ProjectController.a.P(file4), true, new R());
                            i12 = 1;
                        }
                        i10++;
                    } catch (Exception unused3) {
                    }
                }
                i10 = i12;
            } catch (Exception unused4) {
            }
        }
        if (i10 == 0) {
            Vg.c.d(v10, new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(activity) + "/" + str), true);
        }
        return true;
    }

    public static void k(String folder, String name) {
        K8.a.B(new h0(folder, name));
    }

    public static void l(View v10, String inProjectPath) {
        String replace = inProjectPath.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/", "");
        if (j(v10, new C13823b(replace, Tc.b.v(replace)), N7.c.o())) {
            return;
        }
        N7.c.D().B0(new C14351c(replace));
    }
}
