package com.itsmagic.engine.Engines.Engine.ComponentsV2.SoftBody;

import C5.b;
import Fb.c;
import Ic.C2633l;
import JAVARuntime.Runnable;
import M7.c;
import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.filament.Box;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.TransformManager;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Utils.Freeze;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.jme3.bullet.PhysicsSpace;
import com.jme3.bullet.SoftBodyWorldInfo;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import com.jme3.bullet.objects.PhysicsSoftBody;
import com.jme3.bullet.objects.infos.Sbcp;
import com.jme3.bullet.objects.infos.SoftBodyConfig;
import com.jme3.bullet.util.NativeSoftBodyUtil;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import d9.C12886a;
import da.C12894h;
import da.InterfaceC12890d;
import da.InterfaceC12893g;
import dd.C12908b;
import h9.InterfaceC13435a;
import ib.InterfaceC13601h;
import j9.C13813a;
import j9.C13814b;
import java.io.File;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import r9.C15154a;
import uc.C15593a;

public class SoftBodyRenderer extends Component implements InterfaceC13435a {

    public static final String f76508i2 = "SoftBodyRenderer";

    public static final Class f76509m2 = SoftBodyRenderer.class;

    public Vertex f76510D0;

    public boolean f76511E;

    public volatile boolean f76512F;

    public final float[] f76513F1;

    public C12886a f76514G;

    public boolean f76515H;

    public final C13814b f76516H1;

    public VertexDeduplicator f76517I;

    public Material f76518J;

    public String f76519K;

    public String f76520L;

    public final InterfaceC12890d f76521L1;

    public int f76522M;

    public final InterfaceC13601h f76523M1;

    public boolean f76524N;

    public boolean f76525O;

    public vc.q f76526P;

    public vc.q f76527Q;

    public vc.q f76528R;

    public final Vector3f f76529R1;

    public vc.q f76530S;

    public final Object f76531T;

    public int f76532U;

    public int f76533V;

    public final Quaternion f76534V1;

    public PhysicsSoftBody f76535W;

    public SoftBodyWorldInfo f76536X;

    public Mesh f76537Y;

    public float f76538Z;

    public Vertex f76539b1;

    public InspectorEditor f76540b2;

    @Expose
    public boolean castShadow;

    @Expose
    public Freeze freeze;

    public Rb.c f76541i1;

    @Expose
    @eb.f
    private float inflation;

    public FilamentRenderable f76542m1;

    @Expose
    @eb.f
    private float mass;

    @Expose
    public String materialFile;

    @Expose
    public String meshFile;

    @Expose
    @eb.f
    private float pressure;

    public float f76543q0;

    public boolean f76544q1;

    @Expose
    @eb.f
    private float rigidity;

    @Expose
    private t tab;

    public float f76545v0;

    public boolean f76546v1;

    public s f76547y1;

    public class a implements D5.e {
        public a() {
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            String str;
            ImageView imageView = (ImageView) view.findViewById(R.id.imageView);
            Vc.e.U((ImageView) view.findViewById(R.id.background), R.drawable.thumb_background_v2);
            U.h u10 = new U.h().y().u(R.drawable.cube_v2);
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_EDITOR/thumbs/" + Tc.b.w(SoftBodyRenderer.this.meshFile, true) + ".png");
            if (!file.exists() || (str = SoftBodyRenderer.this.meshFile) == null || str.isEmpty() || SoftBodyRenderer.this.getVertex() == null) {
                D7.d.c(Tc.b.w(SoftBodyRenderer.this.meshFile, true), SoftBodyRenderer.this.getVertex(), imageView);
                Vc.e.U(imageView, R.drawable.cube_v2);
            } else {
                Vc.e.L(imageView, file.getAbsolutePath(), N7.c.t(), u10, com.bumptech.glide.load.engine.i.f59186b);
            }
            view.findViewById(R.id.contextMenu).setVisibility(8);
        }
    }

    public class b implements D5.e {
        public b() {
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            String str;
            ImageView imageView = (ImageView) view.findViewById(R.id.imageView);
            Vc.e.U((ImageView) view.findViewById(R.id.background), R.drawable.thumb_background_v2);
            String str2 = Tc.b.O(SoftBodyRenderer.this.meshFile) + ".meta/thumb.png";
            U.h u10 = new U.h().y().u(R.drawable.cube_v2);
            E7.f.a(SoftBodyRenderer.this.meshFile);
            File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + str2));
            if (!file.exists() || (str = SoftBodyRenderer.this.meshFile) == null || str.isEmpty()) {
                D7.f.c(new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + SoftBodyRenderer.this.meshFile)), imageView);
                Vc.e.U(imageView, R.drawable.cube_v2);
            } else {
                Vc.e.L(imageView, file.getAbsolutePath(), N7.c.t(), u10, com.bumptech.glide.load.engine.i.f59186b);
            }
            view.findViewById(R.id.contextMenu).setVisibility(8);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", SoftBodyRenderer.this.meshFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SoftBodyRenderer.this.meshFile = variable.str_value;
            }
        }
    }

    public class d implements D5.e {
        public d() {
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            String str;
            ImageView imageView = (ImageView) view.findViewById(R.id.imageView);
            Vc.e.U((ImageView) view.findViewById(R.id.background), R.drawable.thumb_background_v2);
            String str2 = Tc.b.O(SoftBodyRenderer.this.materialFile) + ".meta/thumb.png";
            U.h u10 = new U.h().y().u(R.drawable.cubemap_v3);
            E7.f.a(SoftBodyRenderer.this.materialFile);
            File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + str2));
            if (!file.exists() || (str = SoftBodyRenderer.this.materialFile) == null || str.isEmpty()) {
                File file2 = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + SoftBodyRenderer.this.materialFile));
                if (file2.exists()) {
                    D7.c.c(file2, imageView);
                }
                Vc.e.U(imageView, R.drawable.cubemap_v3);
            } else {
                Vc.e.L(imageView, file.getAbsolutePath(), N7.c.t(), u10, com.bumptech.glide.load.engine.i.f59186b);
            }
            view.findViewById(R.id.contextMenu).setVisibility(8);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            if (SoftBodyRenderer.this.materialFile == null) {
                return new Variable("", "");
            }
            return new Variable("temp", SoftBodyRenderer.this.materialFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SoftBodyRenderer.this.materialFile = variable.str_value;
            }
        }
    }

    public class f implements InterfaceC12893g {

        public class a implements Runnable {

            public class RunnableC1251a implements Runnable {
                public RunnableC1251a() {
                }

                @Override
                public void run() {
                    File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + SoftBodyRenderer.this.materialFile));
                    if (file.exists()) {
                        D7.c.c(file, null);
                    }
                    SoftBodyRenderer.this.reloadInspector();
                }
            }

            public a() {
            }

            @Override
            public void run() {
                N7.c.j0(new RunnableC1251a());
            }
        }

        public f() {
        }

        @Override
        public void a() {
            K8.a.B(new a());
        }

        @Override
        public Component b() {
            return SoftBodyRenderer.this;
        }

        @Override
        public String c() {
            return SoftBodyRenderer.this.getGuid().j();
        }

        @Override
        public String d() {
            GameObject gameObject = SoftBodyRenderer.this.f79250n;
            return gameObject != null ? gameObject.getGuid().j() : "";
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", SoftBodyRenderer.this.castShadow + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SoftBodyRenderer.this.castShadow = variable.booolean_value.booleanValue();
                SoftBodyRenderer.this.reloadInspector();
            }
        }
    }

    public class h extends SteppedArrayList<C12908b> {

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                if (SoftBodyRenderer.this.f79250n != null) {
                    ModelRenderer modelRenderer = new ModelRenderer();
                    modelRenderer.setMeshFile(SoftBodyRenderer.this.meshFile);
                    modelRenderer.setMaterialFile(SoftBodyRenderer.this.materialFile);
                    SoftBodyRenderer.this.f79250n.r(modelRenderer);
                    SoftBodyRenderer.this.destroyComponent();
                }
            }
        }

        public h() {
            add(new C12908b("Convert to mr", new a()));
        }
    }

    public class i implements c.g {

        public final u f76559a;

        public i(final u val$listener) {
            this.f76559a = val$listener;
        }

        @Override
        public void setProgress(float v10) {
            this.f76559a.setProgress(v10);
        }
    }

    public class j implements InterfaceC12890d {
        public j() {
        }

        @Override
        public void a(FilamentMaterial filamentMaterial) {
            SoftBodyRenderer.this.onMaterialChanged();
        }
    }

    public class k implements InterfaceC13601h {
        public k() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            if (SoftBodyRenderer.this.f76541i1 == null) {
                return;
            }
            Qb.a.d();
            globalMatrix.o(SoftBodyRenderer.this.f76513F1);
            TransformManager i10 = Qb.a.i();
            i10.u(i10.h(SoftBodyRenderer.this.f76541i1.getId()), SoftBodyRenderer.this.f76513F1);
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override
        public void run() {
            SoftBodyRenderer.this.applyMaterialChange();
        }
    }

    public class m implements Runnable {

        public final s f76564b;

        public class a implements Runnable {

            public class RunnableC1252a implements Runnable {
                public RunnableC1252a() {
                }

                @Override
                public void run() {
                    m mVar = m.this;
                    SoftBodyRenderer.this.completeRenderableUpload(mVar.f76564b);
                }
            }

            public a() {
            }

            @Override
            public void run() {
                NativeFloatBuffer nativeFloatBuffer;
                s sVar = m.this.f76564b;
                if (sVar.f76585d && (nativeFloatBuffer = sVar.f76584c) != null) {
                    nativeFloatBuffer.destroyImmediate();
                }
                NativeShortBuffer nativeShortBuffer = m.this.f76564b.f76586e;
                if (nativeShortBuffer != null) {
                    nativeShortBuffer.destroyImmediate();
                }
                NativeFloatBuffer nativeFloatBuffer2 = m.this.f76564b.f76587f;
                if (nativeFloatBuffer2 != null) {
                    nativeFloatBuffer2.destroyImmediate();
                }
                K8.a.I(new RunnableC1252a());
            }
        }

        public m(final s val$upload) {
            this.f76564b = val$upload;
        }

        @Override
        public void run() {
            boolean z10;
            try {
                if (SoftBodyRenderer.this.f76547y1 == this.f76564b) {
                    Vertex vertex = SoftBodyRenderer.this.f76510D0;
                    Vertex vertex2 = this.f76564b.f76582a;
                    if (vertex == vertex2 && vertex2.f1() != null) {
                        this.f76564b.f76582a.f1().m(0, this.f76564b.f76582a.i1());
                        z10 = true;
                        this.f76564b.f76582a.f1().m(1, this.f76564b.f76584c);
                        s sVar = this.f76564b;
                        if (sVar.f76586e != null) {
                            sVar.f76582a.f1().o(2, this.f76564b.f76586e);
                        }
                        this.f76564b.f76582a.f1().n(3, this.f76564b.f76587f, new a());
                        try {
                            if (SoftBodyRenderer.this.f76542m1 != null) {
                                SoftBodyRenderer.this.f76542m1.setBounding(this.f76564b.f76588g);
                                return;
                            } else {
                                SoftBodyRenderer.this.buildRenderable();
                                return;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (!z10 && SoftBodyRenderer.this.f76547y1 == this.f76564b) {
                                SoftBodyRenderer.this.f76546v1 = false;
                                SoftBodyRenderer.this.f76547y1 = null;
                            }
                            throw th;
                        }
                    }
                }
                if (SoftBodyRenderer.this.f76547y1 == this.f76564b) {
                    SoftBodyRenderer.this.f76546v1 = false;
                    SoftBodyRenderer.this.f76547y1 = null;
                }
            } catch (Throwable th3) {
                th = th3;
                z10 = false;
            }
        }
    }

    public class n implements D5.e {

        public static final int f76568f = 2;

        public LinearLayout f76569a;

        public final List<M7.g> f76570b = new LinkedList();

        public LayoutInflater f76571c;

        public final Context f76572d;

        public class a implements M7.r {
            public a() {
            }

            @Override
            public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
                if (value) {
                    t tVar = SoftBodyRenderer.this.tab;
                    t tVar2 = t.Physics;
                    if (tVar != tVar2) {
                        SoftBodyRenderer.this.tab = tVar2;
                        SoftBodyRenderer.this.reloadInspector();
                    }
                }
            }
        }

        public class b implements M7.r {
            public b() {
            }

            @Override
            public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
                if (value) {
                    t tVar = SoftBodyRenderer.this.tab;
                    t tVar2 = t.Model;
                    if (tVar != tVar2) {
                        SoftBodyRenderer.this.tab = tVar2;
                        SoftBodyRenderer.this.reloadInspector();
                    }
                }
            }
        }

        public class c implements M7.r {
            public c() {
            }

            @Override
            public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
                if (value) {
                    t tVar = SoftBodyRenderer.this.tab;
                    t tVar2 = t.Material;
                    if (tVar != tVar2) {
                        SoftBodyRenderer.this.tab = tVar2;
                        SoftBodyRenderer.this.reloadInspector();
                    }
                }
            }
        }

        public class d implements M7.r {
            public d() {
            }

            @Override
            public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
                if (value) {
                    t tVar = SoftBodyRenderer.this.tab;
                    t tVar2 = t.Data;
                    if (tVar != tVar2) {
                        SoftBodyRenderer.this.tab = tVar2;
                        SoftBodyRenderer.this.reloadInspector();
                    }
                }
            }
        }

        public n(final Context val$context) {
            this.f76572d = val$context;
        }

        private void c() {
            this.f76569a.removeAllViews();
            for (int i10 = 0; i10 < this.f76570b.size(); i10++) {
                d(this.f76570b.get(i10));
            }
        }

        private void d(M7.g element) {
            element.a(this.f76569a, this.f76572d, this.f76571c);
            element.n(f(this.f76569a).e());
        }

        private M7.k f(LinearLayout parent) {
            return e(this.f76572d, parent, this.f76571c);
        }

        public M7.k e(Context context, LinearLayout parent, LayoutInflater layoutInflater) {
            M7.k kVar = new M7.k(Nc.b.l0(2.0f, context));
            kVar.a(parent, context, layoutInflater);
            return kVar;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.content);
            this.f76569a = linearLayout;
            linearLayout.removeAllViews();
            this.f76571c = LayoutInflater.from(context);
            this.f76570b.clear();
            M7.o oVar = new M7.o(R.drawable.shock2, new a(), c.b.Left, context);
            Ac.b bVar = Theme.T.PRIMARY_DARK;
            M7.o B02 = oVar.B0(bVar);
            b bVar2 = new b();
            c.b bVar3 = c.b.Middle;
            M7.o B03 = new M7.o(R.drawable.cube_v2, bVar2, bVar3, context).B0(bVar);
            M7.o B04 = new M7.o(R.drawable.cubemap_v3, new c(), bVar3, context).B0(bVar);
            M7.o B05 = new M7.o(R.drawable.wrench, new d(), c.b.Right, context).B0(bVar);
            B02.W(true);
            B03.W(true);
            B04.W(true);
            B05.W(true);
            M7.p pVar = new M7.p(context);
            pVar.s(B02);
            pVar.s(B03);
            pVar.s(B04);
            pVar.s(B05);
            t[] values = t.values();
            int i10 = 0;
            while (true) {
                if (i10 >= values.length) {
                    break;
                }
                if (values[i10] == SoftBodyRenderer.this.tab) {
                    pVar.z(i10, false);
                    break;
                }
                i10++;
            }
            this.f76570b.add(pVar);
            c();
        }
    }

    public class o implements D5.h {
        public o() {
        }

        @Override
        public Variable get() {
            return new Variable("", SoftBodyRenderer.this.mass + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SoftBodyRenderer.this.mass = variable.float_value;
            }
        }
    }

    public class p implements D5.h {
        public p() {
        }

        @Override
        public Variable get() {
            return new Variable("", SoftBodyRenderer.this.rigidity + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SoftBodyRenderer.this.rigidity = variable.float_value;
            }
        }
    }

    public class q implements D5.h {
        public q() {
        }

        @Override
        public Variable get() {
            return new Variable("", SoftBodyRenderer.this.inflation + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SoftBodyRenderer.this.inflation = variable.float_value;
            }
        }
    }

    public class r implements D5.h {
        public r() {
        }

        @Override
        public Variable get() {
            return new Variable("", SoftBodyRenderer.this.pressure + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SoftBodyRenderer.this.pressure = variable.float_value;
            }
        }
    }

    public static class s {

        public final Vertex f76582a;

        public final int f76583b;

        public final NativeFloatBuffer f76584c;

        public final boolean f76585d;

        public final NativeShortBuffer f76586e;

        public final NativeFloatBuffer f76587f;

        public final Box f76588g;

        public s(Vertex vertex, int version, NativeFloatBuffer uvs, boolean destroyUvsAfterUpload, NativeShortBuffer tangents, NativeFloatBuffer bounds, Box box) {
            this.f76582a = vertex;
            this.f76583b = version;
            this.f76584c = uvs;
            this.f76585d = destroyUvsAfterUpload;
            this.f76586e = tangents;
            this.f76587f = bounds;
            this.f76588g = box;
        }
    }

    public enum t {
        Physics,
        Model,
        Material,
        Data
    }

    public interface u {
        void setProgress(float v10);
    }

    public SoftBodyRenderer() {
        super(f76508i2, true);
        this.meshFile = null;
        this.tab = t.Physics;
        this.castShadow = true;
        this.freeze = new Freeze();
        this.mass = 1.0f;
        this.pressure = 1.0f;
        this.rigidity = 0.5f;
        this.inflation = 0.0f;
        this.f76520L = null;
        this.f76524N = true;
        this.f76531T = new Object();
        this.f76538Z = -1.0f;
        this.f76543q0 = -1.0f;
        this.f76545v0 = -1.0f;
        this.f76513F1 = new float[16];
        this.f76516H1 = new C13814b(this);
        this.f76521L1 = new j();
        this.f76523M1 = new k();
        this.f76529R1 = new Vector3f();
        this.f76534V1 = new Quaternion();
    }

    private void addToGraphics() {
        if (this.f76544q1) {
            return;
        }
        if (this.f76541i1 == null) {
            buildRenderable();
        } else {
            getEffectiveScene().j(this.f76541i1);
            this.f76544q1 = true;
        }
    }

    private void addToPhysics() {
        if (isPhysicsThread()) {
            Vertex b10 = this.f76514G.b();
            this.f76517I = new VertexDeduplicator(b10);
            synchronized (this.f76531T) {
                try {
                    this.f76526P = new vc.q(b10.j1());
                    this.f76527Q = new vc.q(b10.j1());
                    this.f76528R = new vc.q(b10.j1());
                    this.f76530S = new vc.q(b10.j1());
                    copyVector3Buffer(b10.k1(), this.f76526P);
                    copyVector3Buffer(b10.k1(), this.f76528R);
                    if (b10.x0() != null) {
                        copyVector3Buffer(b10.z0(), this.f76527Q);
                        copyVector3Buffer(b10.z0(), this.f76530S);
                    }
                    this.f76532U = 0;
                    this.f76533V = 0;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            synchronized (Cc.c.f2503k) {
                PhysicsSoftBody physicsSoftBody = new PhysicsSoftBody();
                this.f76535W = physicsSoftBody;
                physicsSoftBody.setUserObject(this);
                Mesh mesh = new Mesh();
                this.f76537Y = mesh;
                VertexBuffer.Type type = VertexBuffer.Type.Position;
                mesh.setBuffer(type, 3, this.f76517I.e().toFloatBuffer());
                this.f76537Y.setBuffer(VertexBuffer.Type.Index, 3, this.f76517I.d().toIntBuffer());
                this.f76537Y.updateBound();
                NativeSoftBodyUtil.appendFromTriMesh(this.f76537Y, this.f76535W);
                C15154a.a(this.f76535W);
                this.f76525O = this.f76535W.countTetras() > 0;
                applyMass();
                this.f76535W.setPose(true, true);
                K8.a.f10984o.f2506c.add(this.f76535W);
                this.f76536X = this.f76535W.getWorldInfo();
                updateConfigs();
                this.f76543q0 = this.rigidity;
                this.f76545v0 = this.inflation;
                int countNodes = this.f76535W.countNodes();
                Math.max(1, Math.min(countNodes - 1, Math.round(countNodes / 24.0f)));
                this.f76535W.generateClusters(4, 8192);
                System.out.println("Num clusters:" + this.f76535W.countClusters());
                updateClusters();
                this.f76537Y.setBuffer(type, 3, C15593a.c(this.f76535W.countNodes() * 3));
                this.f76537Y.setBuffer(VertexBuffer.Type.Normal, 3, C15593a.c(this.f76535W.countNodes() * 3));
                this.f76537Y.updateBound();
                this.f76535W.setGravity(new Vector3f(0.0f, -9.81f, 0.0f));
                this.f76535W.setMargin(0.3f);
                this.f76511E = true;
            }
        }
    }

    private void applyMass() {
        PhysicsSoftBody physicsSoftBody = this.f76535W;
        if (physicsSoftBody == null) {
            return;
        }
        float f10 = this.mass * 0.1f;
        if (this.f76525O) {
            physicsSoftBody.setVolumeMass(f10);
        } else {
            physicsSoftBody.setMass(f10);
        }
        this.f76538Z = this.mass;
    }

    public void applyMaterialChange() {
        Material material;
        if (this.f76542m1 == null || (material = this.f76518J) == null || !material.I()) {
            destroyRenderable();
            buildRenderable();
        } else {
            this.f76542m1.setMaterialInstanceAt(0, this.f76518J.z());
            this.f76542m1.setPriority(this.f76518J.isDrawInFront() ? 7 : 1);
        }
    }

    private void applySoftPreset(PhysicsSoftBody sb2, boolean hasTetra, float rigidity, float inflation, boolean log) {
        float I10 = Nc.b.I(rigidity);
        float I11 = Nc.b.I(inflation);
        float f10 = hasTetra ? I11 : 0.0f;
        float f11 = (I10 * 0.5f) + 0.5f;
        sb2.getSoftMaterial().setLinearStiffness(f11);
        sb2.getSoftMaterial().setAngularStiffness(f11);
        sb2.getSoftMaterial().setVolumeStiffness(f11);
        SoftBodyConfig softConfig = sb2.getSoftConfig();
        float clamp = clamp((0.35f * I10) + 0.45f + (f10 * 0.2f), 0.0f, 0.9f);
        float f12 = 0.02f * f10;
        softConfig.set(Sbcp.Damping, clamp);
        softConfig.set(Sbcp.Drag, f12);
        float f13 = 0.4f * I10;
        float clamp2 = clamp(f13 + 0.5f, 0.0f, 0.9f);
        softConfig.set(Sbcp.DynamicFriction, clamp2);
        float f14 = f13 + 0.6f;
        float f15 = (0.6f * I10) + 0.2f;
        softConfig.set(Sbcp.RigidHardness, f14);
        softConfig.set(Sbcp.SoftHardness, f14);
        softConfig.set(Sbcp.KineticHardness, f15);
        float f16 = f10 * f10 * 10.0f;
        float clamp3 = clamp((0.8f * f10) + (I10 * 1.0f), 0.0f, 1.0f);
        float f17 = (0.15f * f10) + 1.05f;
        softConfig.set(Sbcp.Pressure, f16);
        softConfig.set(Sbcp.VolumeConservation, clamp3);
        softConfig.set(Sbcp.MaxVolumeRatio, f17);
        float clamp4 = clamp((0.7f * I10 * (1.0f - (0.5f * f10))) + 0.2f, 0.0f, 0.95f);
        softConfig.set(Sbcp.PoseMatching, clamp4);
        softConfig.set(Sbcp.VelocityCorrection, 1.0f);
        softConfig.set(Sbcp.TimeScale, 1.0f);
        softConfig.set(Sbcp.Lift, 0.0f);
        int round = Math.round(20.0f * I10) + 40;
        softConfig.setPositionIterations(round);
        softConfig.setVelocityIterations(round);
        softConfig.setDriftIterations(50);
        if (log) {
            StringBuilder sb3 = new StringBuilder(256);
            sb3.append("[SoftPreset]\n");
            sb3.append("hasTetra=");
            sb3.append(hasTetra);
            sb3.append('\n');
            sb3.append("R=");
            sb3.append(f(I10));
            sb3.append("  I=");
            sb3.append(f(I11));
            sb3.append("  Ieff=");
            sb3.append(f(f10));
            sb3.append('\n');
            sb3.append("Material.k=");
            sb3.append(f(f11));
            sb3.append('\n');
            sb3.append("Damping=");
            sb3.append(f(clamp));
            sb3.append("  Drag=");
            sb3.append(f(f12));
            sb3.append('\n');
            sb3.append("DynamicFriction=");
            sb3.append(f(clamp2));
            sb3.append('\n');
            sb3.append("RigidHardness=");
            sb3.append(f(f14));
            sb3.append("  KineticHardness=");
            sb3.append(f(f15));
            sb3.append('\n');
            sb3.append("Pressure=");
            sb3.append(f(f16));
            sb3.append("  VolumeConservation=");
            sb3.append(f(clamp3));
            sb3.append("  MaxVolumeRatio=");
            sb3.append(f(f17));
            sb3.append('\n');
            sb3.append("PoseMatching=");
            sb3.append(f(clamp4));
            sb3.append('\n');
            sb3.append("Pos/Vel Iterations=");
            sb3.append(round);
            sb3.append("  DriftIterations=");
            sb3.append(50);
            Log.e("Soft Preset", sb3.toString());
        }
    }

    public void buildRenderable() {
        Vertex currentRenderableVertex;
        Material material;
        if (this.f76541i1 == null && (currentRenderableVertex = getCurrentRenderableVertex()) != null && currentRenderableVertex.x1() && (material = this.f76518J) != null && material.I()) {
            this.f76541i1 = new Rb.c();
            FilamentRenderable filamentRenderable = new FilamentRenderable(new RenderableManager.a(1).d(this.castShadow).y(true), this.f76518J.z(), this.f76541i1, currentRenderableVertex.f1(), currentRenderableVertex.l0(), RenderableManager.b.TRIANGLES, currentRenderableVertex.k0());
            this.f76542m1 = filamentRenderable;
            this.f76539b1 = currentRenderableVertex;
            filamentRenderable.setPriority(this.f76518J.isDrawInFront() ? 7 : 1);
            if (isHierarchyActive()) {
                getEffectiveScene().j(this.f76541i1);
                this.f76544q1 = true;
            } else {
                this.f76544q1 = false;
            }
            TransformManager i10 = Qb.a.i();
            i10.b(this.f76541i1.getId());
            GameObject gameObject = this.f79250n;
            if (gameObject != null) {
                gameObject.transform.r0(this.f76513F1);
                i10.u(i10.h(this.f76541i1.getId()), this.f76513F1);
            }
        }
    }

    private float clamp(float v10, float a10, float b10) {
        return Math.max(a10, Math.min(b10, v10));
    }

    private void clearPhysicsRenderableVertex() {
        this.f76510D0 = null;
        this.f76528R = null;
        this.f76530S = null;
        this.f76547y1 = null;
        this.f76546v1 = false;
        this.f76533V = 0;
    }

    public void completeRenderableUpload(s upload) {
        if (this.f76547y1 != upload) {
            return;
        }
        if (this.f76510D0 != upload.f76582a) {
            this.f76546v1 = false;
            this.f76547y1 = null;
        } else {
            this.f76533V = upload.f76583b;
            this.f76546v1 = false;
            this.f76547y1 = null;
        }
    }

    private void copyVector3Buffer(vc.q source, vc.q target) {
        if (source == null || target == null) {
            return;
        }
        int min = Math.min(source.d(), target.d());
        for (int i10 = 0; i10 < min; i10++) {
            target.A(i10, source.m(i10), source.n(i10), source.o(i10));
        }
    }

    private void destroyRenderable() {
        destroyRenderable(getEffectiveScene(), true);
    }

    private void ensureRenderBuffers(int vertexCount, Vertex source) {
        boolean z10 = (source == null || source.x0() == null) ? false : true;
        synchronized (this.f76531T) {
            try {
                vc.q qVar = this.f76526P;
                if (qVar == null || this.f76527Q == null || this.f76528R == null || this.f76530S == null || qVar.d() != vertexCount || this.f76527Q.d() != vertexCount || this.f76528R.d() != vertexCount || this.f76530S.d() != vertexCount) {
                    this.f76526P = new vc.q(vertexCount);
                    this.f76527Q = new vc.q(vertexCount);
                    this.f76528R = new vc.q(vertexCount);
                    this.f76530S = new vc.q(vertexCount);
                    if (source != null) {
                        copyVector3Buffer(source.k1(), this.f76526P);
                        copyVector3Buffer(source.k1(), this.f76528R);
                        if (z10) {
                            copyVector3Buffer(source.z0(), this.f76527Q);
                            copyVector3Buffer(source.z0(), this.f76530S);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private NativeFloatBuffer ensureRenderableUVBuffer(Vertex vertex) {
        int j12 = vertex.j1();
        NativeFloatBuffer a12 = vertex.a1();
        if (a12 != null && a12.capacity() >= j12 * 2) {
            return a12;
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(j12 * 2);
        NativeFloatBuffer i12 = vertex.i1();
        for (int i10 = 0; i10 < j12; i10++) {
            if (a12 == null || a12.capacity() < (i10 + 1) * 2) {
                int i11 = i10 * 3;
                nativeFloatBuffer.put(i12.get(i11));
                nativeFloatBuffer.put(i12.get(i11 + 2));
            } else {
                int i13 = i10 * 2;
                nativeFloatBuffer.put(a12.get(i13));
                nativeFloatBuffer.put(a12.get(i13 + 1));
            }
        }
        nativeFloatBuffer.position(0);
        return nativeFloatBuffer;
    }

    private String f(float v10) {
        return String.format(Locale.US, "%.3f", Float.valueOf(v10));
    }

    private Vertex getCurrentRenderableVertex() {
        Vertex vertex = this.f76510D0;
        return (vertex == null || !vertex.x1()) ? getVertex() : this.f76510D0;
    }

    private boolean isPhysicsThread() {
        return Thread.currentThread() == K8.a.f10964L.b();
    }

    public void onMaterialChanged() {
        if (this.f79250n == null) {
            return;
        }
        if (K8.a.r()) {
            applyMaterialChange();
        } else {
            K8.a.I(new l());
        }
    }

    private void removeFromGraphics() {
        if (this.f76544q1) {
            if (this.f76541i1 != null) {
                getEffectiveScene().s(this.f76541i1);
            }
            this.f76544q1 = false;
        }
    }

    private void removeFromPhysics() {
        if (isPhysicsThread()) {
            removeFromPhysicsInternal();
        } else {
            this.f76512F = true;
        }
    }

    private void removeFromPhysicsInternal() {
        PhysicsSoftBody physicsSoftBody;
        if (isPhysicsThread()) {
            if (!this.f76511E) {
                this.f76512F = false;
                return;
            }
            synchronized (Cc.c.f2503k) {
                try {
                    PhysicsSpace physicsSpace = K8.a.f10984o.f2506c;
                    if (physicsSpace != null && (physicsSoftBody = this.f76535W) != null) {
                        physicsSpace.remove(physicsSoftBody);
                    }
                    this.f76535W = null;
                    this.f76536X = null;
                    this.f76537Y = null;
                    VertexDeduplicator vertexDeduplicator = this.f76517I;
                    if (vertexDeduplicator != null) {
                        vertexDeduplicator.a();
                    }
                    this.f76517I = null;
                    synchronized (this.f76531T) {
                        this.f76526P = null;
                        this.f76527Q = null;
                        this.f76528R = null;
                        this.f76530S = null;
                        this.f76532U = 0;
                        this.f76533V = 0;
                    }
                    this.f76547y1 = null;
                    this.f76546v1 = false;
                    this.f76511E = false;
                    this.f76512F = false;
                    this.f76538Z = -1.0f;
                    this.f76543q0 = -1.0f;
                    this.f76545v0 = -1.0f;
                    this.f76515H = false;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private void setModelInternal(C12886a model) {
        C12886a c12886a = this.f76514G;
        if (c12886a != null && model != null && c12886a.c() && model.c() && this.f76514G.b() == model.b()) {
            return;
        }
        if (model == null || !model.c()) {
            this.meshFile = null;
            this.f76514G = null;
            this.f76519K = null;
        } else {
            this.f76514G = model;
            this.f76519K = this.meshFile;
            if (model.b() != null) {
                this.f76522M = model.b().f0();
            }
            if (!Fb.c.g(model.b())) {
                Fb.c.d(Tc.b.L(), model.b());
            }
        }
        clearPhysicsRenderableVertex();
        this.f76539b1 = null;
        destroyRenderable();
        reloadInspector();
        this.f76515H = true;
        if (this.f79250n == null || !isHierarchyActive()) {
            return;
        }
        buildRenderable();
    }

    private void updateClusters() {
        updateClusters(this.f76535W, this.f76525O, this.rigidity, this.inflation, true);
    }

    private void updateConfigs() {
        applySoftPreset(this.f76535W, this.f76525O, this.rigidity, this.inflation, true);
    }

    private void updateMaterial(boolean preventMaterialLoad) {
        String str = this.materialFile;
        if (str != null) {
            if (str.startsWith(Context.STORAGE_SERVICE)) {
                this.materialFile = "/" + this.materialFile;
            }
            if (this.materialFile.startsWith("/storage")) {
                try {
                    String str2 = this.materialFile;
                    this.materialFile = str2.substring(str2.indexOf(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/"));
                } catch (Exception e10) {
                    e10.printStackTrace();
                    try {
                        String str3 = this.materialFile;
                        this.materialFile = str3.substring(str3.indexOf("Files/"));
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
            }
        }
        Material material = this.f76518J;
        String str4 = this.materialFile;
        if (str4 == null || str4.isEmpty()) {
            Material material2 = this.f76518J;
            if (material2 != null) {
                material2.W(this);
                this.f76518J.X(this.f76521L1);
                this.f76518J = null;
                onMaterialChanged();
            }
            this.f76520L = null;
            return;
        }
        String str5 = this.f76520L;
        if (str5 == null || !str5.equals(this.materialFile)) {
            try {
                Material t10 = C12894h.t(this.materialFile);
                this.f76518J = t10;
                if (t10 != null) {
                    t10.f78883c = preventMaterialLoad;
                    t10.i(this);
                    this.f76518J.j(this.f76521L1);
                }
            } catch (Exception e12) {
                e12.printStackTrace();
            }
            this.f76520L = this.materialFile;
            if (material != this.f76518J && material != null) {
                material.W(this);
                material.X(this.f76521L1);
            }
            if (this.f76518J != null) {
                reloadInspector();
            }
            onMaterialChanged();
        }
    }

    private void updateMesh(u listener) {
        boolean z10;
        String str = this.meshFile;
        if (str == null || str.isEmpty()) {
            if (this.f76519K != null) {
                setModelInternal(null);
                this.f76519K = null;
                return;
            }
            return;
        }
        String str2 = this.f76519K;
        if (str2 == null || !str2.equals(this.meshFile)) {
            this.f76519K = this.meshFile;
            i iVar = listener != null ? new i(listener) : null;
            Context t10 = N7.c.t();
            String str3 = this.meshFile;
            if (str3.startsWith("@@ASSET@@")) {
                str3 = str3.replace("@@ASSET@@", "");
                z10 = true;
            } else {
                z10 = false;
            }
            if (C2633l.b(str3, ".mesh")) {
                try {
                    setModelInternal(new C12886a(Fb.c.n(str3, z10, t10, false, iVar)));
                    return;
                } catch (Error | Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            if (!z10 || !C2633l.b(str3, ".obj")) {
                setModelInternal(null);
                return;
            }
            try {
                setModelInternal(new C12886a(Vertex.B1(str3, null)));
            } catch (Error | Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    private void updatePhysicsMesh() {
        PhysicsSoftBody physicsSoftBody;
        Mesh mesh;
        float f10;
        float f11;
        float f12;
        if (Thread.currentThread() != K8.a.f10964L.b() || (physicsSoftBody = this.f76535W) == null || (mesh = this.f76537Y) == null || this.f76517I == null) {
            return;
        }
        NativeSoftBodyUtil.updateMesh(physicsSoftBody, (IntBuffer) null, mesh, false, true, (Transform) null);
        this.f76537Y.updateBound();
        FloatBuffer floatBuffer = this.f76537Y.getFloatBuffer(VertexBuffer.Type.Position);
        FloatBuffer floatBuffer2 = this.f76537Y.getFloatBuffer(VertexBuffer.Type.Normal);
        floatBuffer.rewind();
        if (floatBuffer2 != null) {
            floatBuffer2.rewind();
        }
        synchronized (this.f76531T) {
            for (int i10 = 0; i10 < this.f76517I.f(); i10++) {
                try {
                    float f13 = floatBuffer.get();
                    float f14 = floatBuffer.get();
                    float f15 = floatBuffer.get();
                    if (Float.isNaN(f13)) {
                        System.out.println("Node X NAN");
                    }
                    if (Float.isNaN(f14)) {
                        System.out.println("Node Y NAN");
                    }
                    if (Float.isNaN(f15)) {
                        System.out.println("Node Z NAN");
                    }
                    if (floatBuffer2 != null) {
                        f10 = floatBuffer2.get();
                        f11 = floatBuffer2.get();
                        f12 = floatBuffer2.get();
                    } else {
                        f10 = 0.0f;
                        f11 = 1.0f;
                        f12 = 0.0f;
                    }
                    List<Integer> b10 = this.f76517I.b(i10);
                    if (b10 != null) {
                        Iterator<Integer> it = b10.iterator();
                        while (it.hasNext()) {
                            this.f76526P.A(it.next().intValue(), f13, f14, f15);
                        }
                        if (floatBuffer2 != null) {
                            Iterator<Integer> it2 = b10.iterator();
                            while (it2.hasNext()) {
                                this.f76527Q.A(it2.next().intValue(), f10, f11, f12);
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f76532U++;
        }
    }

    private void updateRenderableFromPhysics() {
        C12886a c12886a;
        Vertex b10;
        vc.q qVar;
        if (this.f76546v1 || (c12886a = this.f76514G) == null || !c12886a.c() || (b10 = this.f76514G.b()) == null || this.f76526P == null || this.f76528R == null) {
            return;
        }
        ensureRenderBuffers(b10.j1(), b10);
        synchronized (this.f76531T) {
            try {
                vc.q qVar2 = this.f76526P;
                if (qVar2 != null && this.f76527Q != null && (qVar = this.f76528R) != null && this.f76530S != null) {
                    if (this.f76532U == this.f76533V) {
                        return;
                    }
                    copyVector3Buffer(qVar2, qVar);
                    copyVector3Buffer(this.f76527Q, this.f76530S);
                    int i10 = this.f76532U;
                    Vertex vertex = this.f76510D0;
                    if (vertex == null || vertex.j1() != b10.j1()) {
                        Vertex vertex2 = new Vertex();
                        this.f76510D0 = vertex2;
                        vertex2.r2(this.f76528R);
                        this.f76510D0.Z1(this.f76530S);
                        this.f76510D0.i2(b10.V0());
                        this.f76510D0.m2(b10.a1());
                        this.f76510D0.e2(b10.F0());
                        this.f76510D0.apply();
                        this.f76533V = i10;
                        return;
                    }
                    this.f76510D0.r2(this.f76528R);
                    this.f76510D0.Z1(this.f76530S);
                    this.f76510D0.H1();
                    if (!this.f76510D0.x1()) {
                        this.f76510D0.apply();
                        this.f76533V = i10;
                        return;
                    }
                    Vertex vertex3 = this.f76539b1;
                    Vertex vertex4 = this.f76510D0;
                    if (vertex3 != vertex4) {
                        updateRenderableGeometry(vertex4);
                    }
                    uploadRenderableVertexBuffers(i10);
                }
            } finally {
            }
        }
    }

    private void updateRenderableGeometry(Vertex vertex) {
        if (this.f76542m1 == null || vertex == null || !vertex.x1()) {
            buildRenderable();
            return;
        }
        this.f76542m1.setGeometryAt(0, RenderableManager.b.TRIANGLES, vertex.f1(), vertex.l0());
        this.f76542m1.setBounding(vertex.k0());
        this.f76539b1 = vertex;
    }

    private void updateSoftBodyPhysicsProperties() {
        if (this.f76535W == null) {
            return;
        }
        if (this.f76538Z != this.mass) {
            applyMass();
        }
        if (this.f76543q0 != this.rigidity || this.f76545v0 != this.inflation) {
            updateConfigs();
            updateClusters();
            this.f76543q0 = this.rigidity;
            this.f76545v0 = this.inflation;
        }
        this.f76535W.setGravity(new Vector3f(0.0f, -9.81f, 0.0f));
        this.f76535W.setMargin(0.3f);
    }

    private void uploadRenderableVertexBuffers(int uploadVersion) {
        Vertex vertex;
        if (this.f76546v1 || (vertex = this.f76510D0) == null || !vertex.x1()) {
            return;
        }
        int j12 = vertex.j1();
        NativeFloatBuffer ensureRenderableUVBuffer = ensureRenderableUVBuffer(vertex);
        s sVar = new s(vertex, uploadVersion, ensureRenderableUVBuffer, ensureRenderableUVBuffer != vertex.a1(), new Jb.g(vertex.i1(), ensureRenderableUVBuffer, vertex.x0(), vertex.V0()).b(), Vertex.O(vertex.d0(), j12), vertex.k0());
        this.f76547y1 = sVar;
        this.f76546v1 = true;
        K8.a.I(new m(sVar));
    }

    private void useModelRenderable() {
        if (this.f76542m1 == null) {
            buildRenderable();
            if (this.f76542m1 == null) {
                return;
            }
        }
        Vertex vertex = this.f76510D0;
        if (vertex != null && vertex.x1()) {
            updateRenderableGeometry(this.f76510D0);
            return;
        }
        Vertex vertex2 = getVertex();
        if (vertex2 == null || !vertex2.x1()) {
            return;
        }
        updateRenderableGeometry(vertex2);
    }

    @Override
    public void addCollision(C13813a collision) {
        this.f76516H1.a(collision);
    }

    @Override
    public void beforeCollisionEvents() {
        updatePhysicsMesh();
        this.f76516H1.j(this.f79250n);
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        removeFromPhysics();
        destroyRenderable();
    }

    @Override
    public void disabledUpdatePhysics() {
        removeFromPhysicsInternal();
    }

    @Override
    public boolean enableCollisionEvents() {
        return true;
    }

    @Override
    public Collider findColliderFromHash(int hash) {
        return null;
    }

    @Override
    public C13813a findCollision(GameObject other) {
        return this.f76516H1.f(other);
    }

    @Override
    public CompoundCollisionShape getBulletShape() {
        return null;
    }

    @Override
    public ChildCollisionShape[] getBulletShapeChildren() {
        return InterfaceC13435a.f90466J4;
    }

    public List<C5.b> getDataEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new g(), Lang.l(Lang.T.CAST_SHADOWS), b.a.SLBoolean));
        return linkedList;
    }

    @Override
    public GameObject getGameObjectForPhysics() {
        return this.f79250n;
    }

    @Override
    public int getIconResource() {
        return R.drawable.shock2;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_meshrenderer;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new n(context), R.layout.inspector_component_terrain_tabs, (Object) null));
        int ordinal = this.tab.ordinal();
        if (ordinal == 0) {
            linkedList.addAll(getPhysicsEntries(context));
        } else if (ordinal == 1) {
            linkedList.addAll(getModelEntries(context));
        } else if (ordinal == 2) {
            linkedList.addAll(getMaterialEntries(context));
        } else if (ordinal == 3) {
            linkedList.addAll(getDataEntries(context));
        }
        return linkedList;
    }

    @Override
    public List<C12908b> getLongTapMenu() {
        return new h();
    }

    public List<C5.b> getMaterialEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new d(), R.layout.inspector_thumb, (Object) null));
        linkedList.add(new C5.b(new e(), (String) null, b.a.InputFile, ".mat"));
        Material material = this.f76518J;
        if (material != null) {
            linkedList.addAll(material.A(context, new f()));
        }
        return linkedList;
    }

    public C12886a getModel() {
        if (this.f76514G == null) {
            this.f76514G = new C12886a();
        }
        return this.f76514G;
    }

    public List<C5.b> getModelEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        String str = this.meshFile;
        if (str == null || !str.startsWith("@@ASSET@@")) {
            linkedList.add(new C5.b(new b(), R.layout.inspector_thumb, (Object) null));
        } else {
            linkedList.add(new C5.b(new a(), R.layout.inspector_thumb, (Object) null));
        }
        linkedList.add(new C5.b(new c(), (String) null, b.a.InputFile, ".mesh"));
        return linkedList;
    }

    public List<C5.b> getPhysicsEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        o oVar = new o();
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b(oVar, "Mass", aVar);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar.d(gameObject, this, "mass", cVar));
        p pVar = new p();
        b.a aVar2 = b.a.SLFloatSlider;
        linkedList.add(new C5.b(pVar, "Rigidity", aVar2, 0.0f, 1.0f, 0.0f).d(this.f79250n, this, "rigidity", cVar));
        linkedList.add(new C5.b(new q(), "Inflation", aVar2, 0.0f, 1.0f, 0.0f).d(this.f79250n, this, "inflation", cVar));
        linkedList.add(new C5.b(new r(), "Pressure", aVar).d(this.f79250n, this, "pressure", cVar));
        return linkedList;
    }

    @Override
    public String getTitle() {
        return f76508i2;
    }

    @Override
    public Component.e getType() {
        return Component.e.SoftBodyRenderer;
    }

    public Vertex getVertex() {
        if (getModel().c()) {
            return getModel().b();
        }
        return null;
    }

    public boolean hasModel() {
        return getModel().c();
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void invalidateBulletShapeChildrenCache() {
    }

    @Override
    public boolean isActiveForPhysics() {
        return isHierarchyActive() || this.f76512F;
    }

    public void makeScheduledChanges() {
        updateMesh(null);
        updateMaterial(false);
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f79250n.transform.u(this.f76523M1);
        updateMesh(null);
        updateMaterial(false);
        if (isHierarchyActive()) {
            buildRenderable();
        }
    }

    @Override
    public void onDetach() {
        com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform transform;
        removeFromPhysics();
        destroyRenderable();
        clearPhysicsRenderableVertex();
        this.f76539b1 = null;
        Material material = this.f76518J;
        if (material != null) {
            material.W(this);
            this.f76518J.X(this.f76521L1);
        }
        this.f76518J = null;
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f76523M1);
        }
        super.onDetach();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (enabled) {
            addToGraphics();
        } else {
            removeFromGraphics();
        }
    }

    @Override
    public void onPhysicsGetTransformations() {
        this.f76516H1.h(this.f79250n);
    }

    @Override
    public void onSceneChanged(FilamentScene oldScene) {
        super.onSceneChanged(oldScene);
        if (this.f76541i1 == null) {
            return;
        }
        destroyRenderable(oldScene, true);
        if (isHierarchyActive()) {
            buildRenderable();
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        C12886a c12886a;
        super.preUpdate(gameObject, isEditor);
        makeScheduledChanges();
        boolean z10 = hasModel() && this.f76518J != null;
        this.f76524N = z10;
        if (z10) {
            buildRenderable();
        } else {
            destroyRenderable();
        }
        if (!c8.b.k()) {
            if (this.f76524N) {
                useModelRenderable();
            }
        } else {
            if (K8.a.f10992w < 1 || (c12886a = this.f76514G) == null || !c12886a.c() || !this.f76511E || this.f76515H || !this.f76524N) {
                return;
            }
            updateRenderableFromPhysics();
        }
    }

    @Override
    public void resyncOnFrame() {
        this.f76516H1.i(this.f79250n);
    }

    public void setModel(Vertex vertex) {
        setModel(new C12886a(vertex));
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public void updatePhysics() {
        C12886a c12886a;
        C12886a c12886a2;
        if (this.f76512F) {
            removeFromPhysicsInternal();
            if (!isHierarchyActive() || !c8.b.k() || K8.a.f10992w < 1 || (c12886a2 = this.f76514G) == null || !c12886a2.c()) {
                return;
            }
        }
        if (this.f76515H) {
            removeFromPhysicsInternal();
            this.f76515H = false;
        }
        if (!c8.b.k() || !isHierarchyActive() || K8.a.f10992w < 1 || (c12886a = this.f76514G) == null || !c12886a.c()) {
            if (this.f76511E) {
                removeFromPhysics();
            }
        } else {
            if (!this.f76511E) {
                addToPhysics();
            }
            if (this.f76511E) {
                this.f79250n.prePhysics();
                updateSoftBodyPhysicsProperties();
            }
        }
    }

    private void destroyRenderable(FilamentScene scene, boolean destroyIfCan) {
        if (this.f76541i1 == null) {
            return;
        }
        FilamentRenderable filamentRenderable = this.f76542m1;
        if (filamentRenderable != null) {
            filamentRenderable.destroyImmediate();
            this.f76542m1 = null;
        }
        if (scene == null || !scene.l(this.f76541i1)) {
            scene = FilamentScene.m(this.f76541i1);
        }
        if (scene != null) {
            scene.s(this.f76541i1);
        }
        if (destroyIfCan) {
            this.f76541i1.f();
        } else {
            this.f76541i1.destroyImmediate();
        }
        this.f76541i1 = null;
        this.f76539b1 = null;
        this.f76544q1 = false;
    }

    private void updateClusters(PhysicsSoftBody sb2, boolean hasTetra, float rigidity, float inflation, boolean log) {
        float I10 = Nc.b.I(rigidity);
        Nc.b.I(inflation);
        SoftBodyConfig softConfig = sb2.getSoftConfig();
        boolean z10 = I10 > 0.35f;
        int round = z10 ? Math.round(16.0f * I10) + 16 : 0;
        float f10 = (I10 * 0.3f) + 0.7f;
        softConfig.set(Sbcp.ClusterRigidHardness, f10);
        softConfig.set(Sbcp.ClusterSoftHardness, f10);
        softConfig.set(Sbcp.ClusterKineticHardness, f10);
        softConfig.setClusterIterations(round);
        if (log) {
            StringBuilder sb3 = new StringBuilder(256);
            sb3.append("[SoftPreset Clusters]\n");
            sb3.append("NumClusters=");
            sb3.append(sb2.countClusters());
            sb3.append('\n');
            sb3.append("useClusters=");
            sb3.append(z10);
            sb3.append("  ClusterHardness=");
            sb3.append(f(f10));
            sb3.append("  ClusterIterations=");
            sb3.append(round);
            sb3.append('\n');
            Log.e("Soft Preset Clusters", sb3.toString());
        }
    }

    @Override
    public Component mo1248clone() {
        SoftBodyRenderer softBodyRenderer = new SoftBodyRenderer();
        softBodyRenderer.meshFile = this.meshFile;
        softBodyRenderer.materialFile = this.materialFile;
        softBodyRenderer.castShadow = this.castShadow;
        softBodyRenderer.pressure = this.pressure;
        softBodyRenderer.mass = this.mass;
        softBodyRenderer.rigidity = this.rigidity;
        softBodyRenderer.inflation = this.inflation;
        return softBodyRenderer;
    }

    public void setModel(C12886a model) {
        C12886a c12886a = this.f76514G;
        if (c12886a != null && model != null && c12886a.c() && model.c() && this.f76514G.b() == model.b()) {
            return;
        }
        if (model != null && model.c()) {
            this.meshFile = model.b().f79966b;
            this.f76519K = model.b().f79966b;
            this.f76514G = model;
            if (!Fb.c.g(model.b())) {
                Fb.c.d(Tc.b.L(), model.b());
            }
        } else {
            this.meshFile = null;
            this.f76514G = null;
            this.f76519K = null;
        }
        clearPhysicsRenderableVertex();
        this.f76539b1 = null;
        destroyRenderable();
        this.f76515H = true;
        if (this.f79250n == null || !isHierarchyActive()) {
            return;
        }
        buildRenderable();
    }
}
