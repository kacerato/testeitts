package com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer;

import C5.b;
import Fb.c;
import Ic.C2629h;
import Ic.C2632k;
import Ic.C2633l;
import Ic.J;
import JAVARuntime.Color;
import JAVARuntime.Gizmo;
import JAVARuntime.GizmoElement;
import JAVARuntime.GizmoObject;
import JAVARuntime.GizmoObjectMatrix;
import JAVARuntime.Random;
import JAVARuntime.Runnable;
import JAVARuntime.Vertex;
import Jb.e;
import M7.c;
import aa.C3593a;
import aa.C3595c;
import android.content.Context;
import android.opengl.Matrix;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.filament.Box;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.TransformManager;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.App;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Data.MeshSerializer;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import d9.C12886a;
import da.C12894h;
import da.InterfaceC12890d;
import da.InterfaceC12893g;
import dd.C12908b;
import ec.EnumC13053a;
import f5.C13189d;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import ib.InterfaceC13601h;
import java.io.File;
import java.io.Serializable;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import l.C14040a;

public class ModelRenderer extends Component implements Serializable {

    public static final int f73742D0 = 4096;

    public static final String f73743b1 = "ModelRenderer";

    public static final Class f73744i1 = ModelRenderer.class;

    public static int f73745m1;

    public C12886a f73746E;

    public Material f73747F;

    public Material f73748G;

    public String f73749H;

    public String f73750I;

    public final float[] f73751J;

    public int f73752K;

    public final GizmoObjectMatrix f73753L;

    public Vertex f73754M;

    public volatile boolean f73755N;

    public volatile boolean f73756O;

    public float f73757P;

    public boolean f73758Q;

    public Rb.c f73759R;

    public FilamentRenderable f73760S;

    public boolean f73761T;

    public boolean f73762U;

    public boolean f73763V;

    public final InterfaceC12890d f73764W;

    public final Cb.a f73765X;

    public final InterfaceC13601h f73766Y;

    public InspectorEditor f73767Z;

    @Expose
    public boolean billboard;

    @Expose
    private boolean castShadow;

    @Expose
    private boolean enableOutline;

    @Expose
    private String materialFile;

    @Expose
    private String meshFile;

    @Expose
    @eb.f
    private ColorINT outlineColor;

    @Expose
    @eb.f
    private float outlineScale;

    @Expose
    @eb.f
    public int priority;

    public final c9.g f73768q0;

    @Expose
    private boolean receiveShadow;

    @Expose
    private y tab;

    public JAVARuntime.Component f73769v0;

    @Expose
    public char version;

    @Expose
    public boolean zAlign;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            if (ModelRenderer.this.getMaterialFile() == null) {
                return new Variable("", "");
            }
            return new Variable("temp", ModelRenderer.this.getMaterialFile() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ModelRenderer.this.setMaterialFile(variable.str_value);
            }
        }
    }

    public class b implements InterfaceC12893g {

        public class a implements Runnable {

            public class RunnableC1207a implements Runnable {
                public RunnableC1207a() {
                }

                @Override
                public void run() {
                    File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + ModelRenderer.this.getMaterialFile()));
                    if (file.exists()) {
                        D7.c.c(file, null);
                    }
                    A5.a.x1(ModelRenderer.this);
                }
            }

            public a() {
            }

            @Override
            public void run() {
                N7.c.j0(new RunnableC1207a());
            }
        }

        public b() {
        }

        @Override
        public void a() {
            K8.a.B(new a());
        }

        @Override
        public Component b() {
            return ModelRenderer.this;
        }

        @Override
        public String c() {
            return ModelRenderer.this.getGuid().j();
        }

        @Override
        public String d() {
            GameObject gameObject = ModelRenderer.this.f79250n;
            return gameObject != null ? gameObject.getGuid().j() : "";
        }
    }

    public class c implements D5.h {

        public class a implements Runnable {

            public final Variable f73775b;

            public a(final Variable val$variable) {
                this.f73775b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("ModelRenderer - set cast shadow") : null;
                try {
                    ModelRenderer.this.setCastShadow(this.f73775b.booolean_value.booleanValue());
                    ModelRenderer.this.reloadInspector();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", ModelRenderer.this.castShadow + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class d implements D5.h {

        public class a implements Runnable {

            public final Variable f73778b;

            public a(final Variable val$variable) {
                this.f73778b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("ModelRenderer - set receive shadow") : null;
                try {
                    ModelRenderer.this.setReceiveShadow(this.f73778b.booolean_value.booleanValue());
                    ModelRenderer.this.reloadInspector();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", ModelRenderer.this.receiveShadow + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", ModelRenderer.this.priority + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ModelRenderer.this.priority = variable.int_value;
            }
        }
    }

    public class f extends SteppedArrayList<C12908b> {

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                if (ModelRenderer.this.f79250n != null) {
                    SkinnedModelRenderer skinnedModelRenderer = new SkinnedModelRenderer();
                    skinnedModelRenderer.meshFile = ModelRenderer.this.getMeshFile();
                    skinnedModelRenderer.materialFile = ModelRenderer.this.getMaterialFile();
                    ModelRenderer.this.f79250n.r(skinnedModelRenderer);
                    ModelRenderer.this.destroyComponent();
                }
            }
        }

        public f() {
            add(new C12908b("Convert to skinned mr", new a()));
        }
    }

    public class g implements c.g {

        public final z f73783a;

        public g(final z val$listener) {
            this.f73783a = val$listener;
        }

        @Override
        public void setProgress(float v10) {
            this.f73783a.setProgress(v10);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override
        public void run() {
            Material material;
            t6.e S12 = t6.j.J1() ? t6.j.S1("ModelRenderer - update material on engine") : null;
            try {
                if (ModelRenderer.this.f73759R != null && (material = ModelRenderer.this.f73747F) != null && material.I()) {
                    FilamentMaterial z10 = ModelRenderer.this.f73747F.z();
                    if (ModelRenderer.this.f73748G != null && ModelRenderer.this.f73748G.I()) {
                        z10 = ModelRenderer.this.f73748G.z();
                    }
                    ModelRenderer.this.f73760S.setMaterialInstanceAt(0, z10);
                    ModelRenderer.this.f73760S.setPriority(ModelRenderer.this.f73747F.isDrawInFront() ? 7 : 1);
                    ModelRenderer.this.applyTransparentBlendOrderPolicy((ModelRenderer.this.f73748G == null || !ModelRenderer.this.f73748G.I()) ? ModelRenderer.this.f73747F : ModelRenderer.this.f73748G);
                } else if (!ModelRenderer.this.f73762U) {
                    ModelRenderer.this.destroyRenderable();
                    ModelRenderer.this.buildRenderable();
                }
                t6.j.P1(S12);
            } catch (Throwable th2) {
                t6.j.P1(S12);
                throw th2;
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override
        public void run() {
            t6.e S12 = t6.j.J1() ? t6.j.S1("ModelRenderer - update vertex renderables") : null;
            try {
                if (ModelRenderer.this.f73759R != null) {
                    Vertex vertex = ModelRenderer.this.getVertex();
                    if (vertex.x1()) {
                        Box k02 = vertex.k0();
                        ModelRenderer.this.f73760S.setGeometryAt(0, RenderableManager.b.TRIANGLES, vertex.f1(), vertex.l0());
                        ModelRenderer.this.f73760S.setBounding(k02);
                    }
                } else if (!ModelRenderer.this.f73762U) {
                    ModelRenderer.this.buildRenderable();
                }
                t6.j.P1(S12);
            } catch (Throwable th2) {
                t6.j.P1(S12);
                throw th2;
            }
        }
    }

    public class j implements MousePicker.l.b {

        public int f73787a;

        public j() {
        }

        @Override
        public boolean a(GizmoObject gizmoObject) {
            t6.e S12 = t6.j.J1() ? t6.j.S1("ModelRenderer - gizmo draw") : null;
            try {
                Gizmo.draw(gizmoObject);
                int i10 = this.f73787a + 1;
                this.f73787a = i10;
                if (i10 < 150) {
                    return true;
                }
                t6.j.P1(S12);
                return false;
            } finally {
                t6.j.P1(S12);
            }
        }
    }

    public class k extends AbstractC13203c {
        @Override
        public Class b() {
            return ModelRenderer.f73744i1;
        }

        @Override
        public String c() {
            return ModelRenderer.f73743b1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.MODEL_RENDERERS);
        }

        @Override
        public String f() {
            return ModelRenderer.f73743b1;
        }
    }

    public class l implements MousePicker.l.b {

        public int f73789a;

        public l() {
        }

        @Override
        public boolean a(GizmoObject gizmoObject) {
            t6.e S12 = t6.j.J1() ? t6.j.S1("ModelRenderer - gizmo draw") : null;
            try {
                Gizmo.draw(gizmoObject);
                int i10 = this.f73789a + 1;
                this.f73789a = i10;
                if (i10 < 150) {
                    return true;
                }
                t6.j.P1(S12);
                return false;
            } finally {
                t6.j.P1(S12);
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override
        public void run() {
            if (ModelRenderer.this.f73759R == null) {
                if (ModelRenderer.this.f73762U) {
                    return;
                }
                ModelRenderer.this.buildRenderable();
            } else if (ModelRenderer.this.getVertex() != null) {
                ModelRenderer.this.onVertexChangedRenderables();
            } else {
                ModelRenderer.this.destroyRenderable();
            }
        }
    }

    public class n implements z {

        public final Lb.a f73792a;

        public n(final Lb.a val$listener) {
            this.f73792a = val$listener;
        }

        @Override
        public void setProgress(float v10) {
            this.f73792a.d(v10);
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override
        public void run() {
            ModelRenderer.this.destroyRenderable();
            ModelRenderer.this.buildRenderable();
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override
        public void run() {
            ModelRenderer.this.destroyRenderable();
            ModelRenderer.this.buildRenderable();
        }
    }

    public class q implements InterfaceC12890d {
        public q() {
        }

        @Override
        public void a(FilamentMaterial filamentMaterial) {
            if (C13317e.J(ModelRenderer.this.f79250n)) {
                ModelRenderer.this.onMaterialChanged();
            }
        }
    }

    public class r implements Cb.a {
        public r() {
        }

        @Override
        public void a() {
            if (C13317e.J(ModelRenderer.this.f79250n)) {
                ModelRenderer.this.onVertexChangedRenderables();
            }
        }
    }

    public class s implements InterfaceC13601h {
        public s() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            Qb.a.d();
            ModelRenderer modelRenderer = ModelRenderer.this;
            modelRenderer.f73752K = modelRenderer.f79250n.transform.x4(null, modelRenderer.f73752K);
            if (ModelRenderer.this.f73759R != null) {
                globalMatrix.o(ModelRenderer.this.f73751J);
                TransformManager i10 = Qb.a.i();
                i10.u(i10.h(ModelRenderer.this.f73759R.getId()), ModelRenderer.this.f73751J);
            }
        }
    }

    public class t implements D5.e {

        public static final int f73799f = 2;

        public LinearLayout f73800a;

        public final List<M7.g> f73801b = new LinkedList();

        public LayoutInflater f73802c;

        public final Context f73803d;

        public class a implements M7.r {
            public a() {
            }

            @Override
            public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
                if (value) {
                    y yVar = ModelRenderer.this.tab;
                    y yVar2 = y.Model;
                    if (yVar != yVar2) {
                        ModelRenderer.this.tab = yVar2;
                        ModelRenderer.this.reloadInspector();
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
                    y yVar = ModelRenderer.this.tab;
                    y yVar2 = y.Material;
                    if (yVar != yVar2) {
                        ModelRenderer.this.tab = yVar2;
                        ModelRenderer.this.reloadInspector();
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
                    y yVar = ModelRenderer.this.tab;
                    y yVar2 = y.Data;
                    if (yVar != yVar2) {
                        ModelRenderer.this.tab = yVar2;
                        ModelRenderer.this.reloadInspector();
                    }
                }
            }
        }

        public t(final Context val$context) {
            this.f73803d = val$context;
        }

        private void c() {
            this.f73800a.removeAllViews();
            for (int i10 = 0; i10 < this.f73801b.size(); i10++) {
                d(this.f73801b.get(i10));
            }
        }

        private void d(M7.g element) {
            element.a(this.f73800a, this.f73803d, this.f73802c);
            element.n(f(this.f73800a).e());
        }

        private M7.k f(LinearLayout parent) {
            return e(this.f73803d, parent, this.f73802c);
        }

        public M7.k e(Context context, LinearLayout parent, LayoutInflater layoutInflater) {
            M7.k kVar = new M7.k(Nc.b.l0(2.0f, context));
            kVar.a(parent, context, layoutInflater);
            return kVar;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.content);
            this.f73800a = linearLayout;
            linearLayout.removeAllViews();
            this.f73802c = LayoutInflater.from(context);
            this.f73801b.clear();
            M7.o oVar = new M7.o(R.drawable.cube_v2, new a(), c.b.Left, context);
            Ac.b bVar = Theme.T.PRIMARY_DARK;
            M7.o B02 = oVar.B0(bVar);
            M7.o B03 = new M7.o(R.drawable.cubemap_v3, new b(), c.b.Middle, context).B0(bVar);
            M7.o B04 = new M7.o(R.drawable.wrench, new c(), c.b.Right, context).B0(bVar);
            B02.W(true);
            B03.W(true);
            B04.W(true);
            M7.p pVar = new M7.p(context);
            pVar.s(B02);
            pVar.s(B03);
            pVar.s(B04);
            y[] values = y.values();
            int i10 = 0;
            while (true) {
                if (i10 >= values.length) {
                    break;
                }
                if (values[i10] == ModelRenderer.this.tab) {
                    pVar.z(i10, false);
                    break;
                }
                i10++;
            }
            this.f73801b.add(pVar);
            c();
        }
    }

    public class u implements D5.e {
        public u() {
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            ImageView imageView = (ImageView) view.findViewById(R.id.imageView);
            Vc.e.U((ImageView) view.findViewById(R.id.background), R.drawable.thumb_background_v2);
            U.h u10 = new U.h().y().u(R.drawable.cube_v2);
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_EDITOR/thumbs/" + Tc.b.w(ModelRenderer.this.getMeshFile(), true) + ".png");
            if (!file.exists() || ModelRenderer.this.getMeshFile() == null || ModelRenderer.this.getMeshFile().isEmpty() || ModelRenderer.this.getVertex() == null) {
                D7.d.c(Tc.b.w(ModelRenderer.this.getMeshFile(), true), ModelRenderer.this.getVertex(), imageView);
                Vc.e.U(imageView, R.drawable.cube_v2);
            } else {
                Vc.e.L(imageView, file.getAbsolutePath(), N7.c.t(), u10, com.bumptech.glide.load.engine.i.f59186b);
            }
            view.findViewById(R.id.contextMenu).setVisibility(8);
        }
    }

    public class v implements D5.e {
        public v() {
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            ImageView imageView = (ImageView) view.findViewById(R.id.imageView);
            Vc.e.U((ImageView) view.findViewById(R.id.background), R.drawable.thumb_background_v2);
            String str = Tc.b.O(ModelRenderer.this.getMeshFile()) + ".meta/thumb.png";
            U.h u10 = new U.h().y().u(R.drawable.cube_v2);
            E7.f.a(ModelRenderer.this.getMeshFile());
            File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + str));
            if (!file.exists() || ModelRenderer.this.getMeshFile() == null || ModelRenderer.this.getMeshFile().isEmpty()) {
                D7.f.c(new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + ModelRenderer.this.getMeshFile())), imageView);
                Vc.e.U(imageView, R.drawable.cube_v2);
            } else {
                Vc.e.L(imageView, file.getAbsolutePath(), N7.c.t(), u10, com.bumptech.glide.load.engine.i.f59186b);
            }
            view.findViewById(R.id.contextMenu).setVisibility(8);
        }
    }

    public class w implements D5.h {
        public w() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", ModelRenderer.this.getMeshFile() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ModelRenderer.this.setMeshFile(variable.str_value);
            }
        }
    }

    public class x implements D5.e {
        public x() {
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            ImageView imageView = (ImageView) view.findViewById(R.id.imageView);
            Vc.e.U((ImageView) view.findViewById(R.id.background), R.drawable.thumb_background_v2);
            String str = Tc.b.O(ModelRenderer.this.getMaterialFile()) + ".meta/thumb.png";
            U.h u10 = new U.h().y().u(R.drawable.cubemap_v3);
            E7.f.a(ModelRenderer.this.getMaterialFile());
            File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + str));
            if (!file.exists() || ModelRenderer.this.getMaterialFile() == null || ModelRenderer.this.getMaterialFile().isEmpty()) {
                File file2 = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + ModelRenderer.this.getMaterialFile()));
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

    public enum y {
        Model,
        Material,
        Data
    }

    public interface z {
        void setProgress(float v10);
    }

    static {
        C13201a.b(new k());
        f73745m1 = 0;
    }

    public ModelRenderer() {
        super(f73743b1);
        this.version = (char) 0;
        this.meshFile = null;
        this.castShadow = true;
        this.receiveShadow = true;
        this.billboard = false;
        this.zAlign = false;
        this.tab = y.Model;
        this.priority = 0;
        this.outlineColor = new ColorINT(255, 0, 0);
        this.enableOutline = false;
        this.outlineScale = 0.05f;
        this.f73750I = null;
        this.f73751J = new float[16];
        this.f73752K = -1;
        this.f73753L = new GizmoObjectMatrix();
        this.f73755N = false;
        this.f73756O = false;
        this.f73757P = 0.0f;
        this.f73758Q = true;
        this.f73761T = false;
        this.f73762U = false;
        this.f73763V = false;
        this.f73764W = new q();
        this.f73765X = new r();
        this.f73766Y = new s();
        this.f73768q0 = new c9.g(this);
    }

    private void addToGraphics() {
        if (this.f73763V) {
            return;
        }
        if (this.f73759R == null) {
            buildRenderable();
        } else {
            getEffectiveScene().j(this.f73759R);
            this.f73763V = true;
        }
    }

    public void applyTransparentBlendOrderPolicy(Material sourceMaterial) {
        if (this.f73760S == null) {
            return;
        }
        if (!isTransparentBlend(sourceMaterial)) {
            this.f73760S.setGlobalBlendOrderEnabledAt(0, false);
        } else {
            this.f73760S.setGlobalBlendOrderEnabledAt(0, true);
            this.f73760S.setBlendOrderAt(0, 4096);
        }
    }

    public void buildRenderable() {
        this.f73762U = false;
        if (this.f73761T) {
            destroyRenderable();
            return;
        }
        if (this.f73759R != null || getVertex() == null) {
            return;
        }
        Vertex vertex = getVertex();
        Material material = this.f73747F;
        if (vertex == null || !vertex.x1() || material == null || !material.I()) {
            return;
        }
        p6.g L12 = p6.d.E1() ? p6.d.L1("build renderable") : null;
        this.f73759R = new Rb.c();
        Box k02 = vertex.k0();
        FilamentMaterial z10 = material.z();
        Material material2 = this.f73748G;
        if (material2 != null && material2.I()) {
            z10 = this.f73748G.z();
        }
        FilamentRenderable filamentRenderable = new FilamentRenderable(new RenderableManager.a(1).d(this.castShadow).y(this.receiveShadow), z10, this.f73759R, vertex.f1(), vertex.l0(), RenderableManager.b.TRIANGLES, k02);
        this.f73760S = filamentRenderable;
        filamentRenderable.setPriority(material.isDrawInFront() ? 7 : 1);
        Material material3 = this.f73748G;
        if (material3 != null && material3.I()) {
            material = this.f73748G;
        }
        applyTransparentBlendOrderPolicy(material);
        if (isHierarchyActive()) {
            getEffectiveScene().j(this.f73759R);
            this.f73763V = true;
        } else {
            this.f73763V = false;
        }
        TransformManager i10 = Qb.a.i();
        i10.b(this.f73759R.getId());
        this.f79250n.transform.r0(this.f73751J);
        i10.u(i10.h(this.f73759R.getId()), this.f73751J);
        this.f73752K = this.f79250n.transform.x4(null, this.f73752K);
        p6.d.J1(L12);
    }

    private void destroyRenderable(FilamentScene scene, boolean destroyIfCan) {
        if (this.f73759R != null) {
            FilamentRenderable filamentRenderable = this.f73760S;
            if (filamentRenderable != null) {
                filamentRenderable.destroyImmediate();
                this.f73760S = null;
            }
            if (scene == null || !scene.l(this.f73759R)) {
                scene = FilamentScene.m(this.f73759R);
            }
            if (scene != null) {
                scene.s(this.f73759R);
            }
            if (destroyIfCan) {
                this.f73759R.f();
            } else {
                this.f73759R.destroyImmediate();
            }
            this.f73759R = null;
            this.f73763V = false;
        }
    }

    private void emitMeshChangedEvent() {
        GameObject gameObject = this.f79250n;
        if (gameObject != null) {
            gameObject.Y(this.f73768q0);
        }
    }

    private boolean isTransparentBlend(Material sourceMaterial) {
        if (sourceMaterial == null) {
            return false;
        }
        try {
            String u10 = sourceMaterial.u("blendingMode");
            if (u10 != null && !u10.isEmpty()) {
                EnumC13053a valueOf = EnumC13053a.valueOf(u10.trim().toUpperCase());
                if (valueOf != EnumC13053a.TRANSPARENT && valueOf != EnumC13053a.FADE && valueOf != EnumC13053a.ADD) {
                    if (valueOf != EnumC13053a.MULTIPLY) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public void lambda$loadWireframeVertexForGizmoLowTask$0(FilamentVertexBuffer filamentVertexBuffer, Rb.d dVar, Box box) {
        try {
            Vertex vertex = new Vertex();
            vertex.a2(filamentVertexBuffer, dVar, box);
            if (shouldAcceptBuiltWireframe()) {
                this.f73754M = vertex;
            } else {
                vertex.Z();
            }
        } finally {
            this.f73756O = false;
            this.f73755N = false;
        }
    }

    public void loadWireframeVertexForGizmoLowTask() {
        GameObject gameObject;
        try {
            try {
                gameObject = this.f79250n;
            } catch (Throwable th2) {
                if (!this.f73756O) {
                    this.f73755N = false;
                }
                throw th2;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            if (this.f73756O) {
                return;
            }
        }
        if (gameObject == null) {
            if (this.f73756O) {
                return;
            }
            this.f73755N = false;
            return;
        }
        if (!gameObject.b1()) {
            if (this.f73756O) {
                return;
            }
            this.f73755N = false;
            return;
        }
        if (!EditorSettings.a().selectionWireframeGizmo) {
            if (this.f73756O) {
                return;
            }
            this.f73755N = false;
            return;
        }
        if (this.f73754M != null) {
            if (this.f73756O) {
                return;
            }
            this.f73755N = false;
            return;
        }
        if (this.f73756O) {
            if (this.f73756O) {
                return;
            }
            this.f73755N = false;
            return;
        }
        if (f73745m1 == K8.a.k()) {
            if (this.f73756O) {
                return;
            }
            this.f73755N = false;
            return;
        }
        Vertex vertex = getVertex();
        if (vertex == null) {
            if (this.f73756O) {
                return;
            }
            this.f73755N = false;
            return;
        }
        f73745m1 = K8.a.k();
        Vertex vertex2 = null;
        if (getMeshFile() != null) {
            if (getMeshFile().startsWith("@@ASSET@@")) {
                Jb.e eVar = new Jb.e(vertex.i1(), vertex.V0());
                this.f73756O = true;
                eVar.b(new e.a() {
                    @Override
                    public final void a(FilamentVertexBuffer filamentVertexBuffer, Rb.d dVar, Box box) {
                        ModelRenderer.this.lambda$loadWireframeVertexForGizmoLowTask$0(filamentVertexBuffer, dVar, box);
                    }
                });
                if (this.f73756O) {
                    return;
                }
                this.f73755N = false;
                return;
            }
            String str = Tc.b.O(getMeshFile()) + "_wf.mwf";
            try {
                vertex2 = Fb.c.p(str, false, false, null);
                if (vertex2 == null) {
                    vertex2 = Ib.k.j(vertex);
                    MeshSerializer.o(MeshSerializer.m(str), vertex2);
                    vertex2.apply();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        this.f73754M = vertex2;
        if (this.f73756O) {
            return;
        }
        this.f73755N = false;
    }

    public void onMaterialChanged() {
        Material material;
        if (this.f79250n != null) {
            if (!K8.a.r()) {
                K8.a.I(new h());
                return;
            }
            if (this.f73759R == null || (material = this.f73747F) == null || !material.I()) {
                if (this.f73762U) {
                    return;
                }
                destroyRenderable();
                buildRenderable();
                return;
            }
            FilamentMaterial z10 = this.f73747F.z();
            Material material2 = this.f73748G;
            if (material2 != null && material2.I()) {
                z10 = this.f73748G.z();
            }
            this.f73760S.setMaterialInstanceAt(0, z10);
            this.f73760S.setPriority(this.f73747F.isDrawInFront() ? 7 : 1);
            Material material3 = this.f73748G;
            applyTransparentBlendOrderPolicy((material3 == null || !material3.I()) ? this.f73747F : this.f73748G);
        }
    }

    private void requestWireframeVertexLoadTask() {
        if (this.f73755N || this.f73756O) {
            return;
        }
        this.f73755N = true;
        ca.c.D(new Runnable() {
            @Override
            public final void run() {
                ModelRenderer.this.loadWireframeVertexForGizmoLowTask();
            }
        });
    }

    private void setModelInternal(C12886a model, boolean dispatchMeshFileIfNull) {
        C12886a c12886a = this.f73746E;
        if (c12886a != null && model != null && c12886a.c() && model.c() && this.f73746E.b() == model.b()) {
            return;
        }
        C12886a c12886a2 = this.f73746E;
        if (c12886a2 != null && c12886a2.b() != null) {
            this.f73746E.b().L1(this.f73765X);
        }
        if (model == null || !model.c()) {
            if (dispatchMeshFileIfNull) {
                this.meshFile = null;
            }
            this.f73746E = null;
            this.f73749H = null;
        } else {
            this.f73746E = model;
            this.f73749H = getMeshFile();
            model.b().v(this.f73765X);
            if (!Fb.c.g(model.b())) {
                Fb.c.d(Tc.b.L(), model.b());
            }
        }
        this.f73754M = null;
        emitMeshChangedEvent();
        GameObject gameObject = this.f79250n;
        if (gameObject != null) {
            gameObject.l1();
            if (!K8.a.r()) {
                K8.a.I(new m());
            } else if (this.f73759R != null) {
                if (getVertex() != null) {
                    onVertexChangedRenderables();
                } else {
                    destroyRenderable();
                }
            } else if (!this.f73762U) {
                buildRenderable();
            }
            reloadInspector();
        }
    }

    private boolean shouldAcceptBuiltWireframe() {
        GameObject gameObject = this.f79250n;
        return gameObject != null && gameObject.b1() && EditorSettings.a().selectionWireframeGizmo && this.f73754M == null;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateMaterial(boolean preventMaterialLoad) {
        p6.g L12 = p6.d.E1() ? p6.d.L1("update material") : null;
        String str = this.materialFile;
        if (str != null) {
            if (str.startsWith(Context.STORAGE_SERVICE)) {
                str = "/" + str;
            }
            if (str.startsWith("/storage")) {
                try {
                    str = str.substring(str.indexOf(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/"));
                } catch (Exception e10) {
                    e10.printStackTrace();
                    try {
                        str = str.substring(str.indexOf("Files/"));
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
            }
        }
        this.materialFile = str;
        Material material = this.f73747F;
        boolean z10 = true;
        boolean z11 = false;
        if (str != null && !str.isEmpty()) {
            String str2 = this.f73750I;
            if (str2 == null || !str2.equals(this.materialFile)) {
                try {
                    Material t10 = C12894h.t(this.materialFile);
                    this.f73747F = t10;
                    if (t10 != null) {
                        t10.f78883c = preventMaterialLoad;
                        t10.f(this);
                        this.f73747F.j(this.f73764W);
                    }
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
                this.f73750I = this.materialFile;
                if (material == this.f73747F || material == null) {
                    z10 = false;
                } else {
                    material.U(this);
                    material.X(this.f73764W);
                }
                if (this.f73747F != null) {
                    reloadInspector();
                }
            }
            if (z11) {
                onMaterialChanged();
            }
            p6.d.J1(L12);
        }
        Material material2 = this.f73747F;
        if (material2 != null) {
            material2.U(this);
            this.f73747F.X(this.f73764W);
        } else {
            z10 = false;
        }
        this.f73747F = null;
        z11 = z10;
        if (z11) {
        }
        p6.d.J1(L12);
    }

    private void updateMesh(z listener) {
        boolean z10;
        p6.g L12 = p6.d.E1() ? p6.d.L1("update mesh") : null;
        String str = this.meshFile;
        if (str != null && !str.isEmpty()) {
            String str2 = this.f73749H;
            if (str2 == null || !str2.equals(this.meshFile)) {
                this.f73749H = this.meshFile;
                g gVar = listener != null ? new g(listener) : null;
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
                        setModelInternal(new C12886a(Fb.c.n(str3, z10, t10, false, gVar)), false);
                    } catch (Error | Exception e10) {
                        e10.printStackTrace();
                    }
                } else if (z10 && C2633l.b(str3, ".obj")) {
                    try {
                        setModelInternal(new C12886a(Vertex.B1(str3, null)), false);
                    } catch (Error | Exception e11) {
                        e11.printStackTrace();
                    }
                } else {
                    setModelInternal(null, false);
                }
            }
        } else if (this.f73749H != null) {
            setModelInternal(null, false);
            this.f73749H = null;
        }
        p6.d.J1(L12);
    }

    @Override
    public int animEntriesCount() {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73747F;
        return (material == null || (y10 = material.y()) == null || (k10 = y10.k()) == null) ? super.animEntriesCount() : k10.e() + super.animEntriesCount();
    }

    @Override
    public String animEntryAt(int index) {
        int i10;
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73747F;
        if (material == null || (y10 = material.y()) == null || (k10 = y10.k()) == null) {
            i10 = 0;
        } else {
            i10 = k10.e();
            if (i10 > index) {
                return k10.f(index);
            }
        }
        return super.animEntryAt(index - i10);
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.Animation.c animEntryTypeAt(int index) {
        int i10;
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73747F;
        if (material == null || (y10 = material.y()) == null || (k10 = y10.k()) == null) {
            i10 = 0;
        } else {
            i10 = k10.e();
            if (i10 > index) {
                return k10.g(index);
            }
        }
        return super.animEntryTypeAt(index - i10);
    }

    @Override
    public int countAsync() {
        return 2;
    }

    public void drawGizmo() {
        GameObject gameObject = this.f79250n;
        if (gameObject != null && gameObject.b1() && EditorSettings.a().selectionWireframeGizmo) {
            this.f73757P = 0.0f;
            if (getVertex() != null && getVertex().x2() != this.f73753L.getVertex()) {
                if (this.f73754M == null) {
                    requestWireframeVertexLoadTask();
                }
                Vertex vertex = this.f73754M;
                if (vertex != null) {
                    this.f73753L.setVertex(vertex.x2());
                }
            }
            this.f73753L.setMatrix(getRenderMatrix());
            C14040a.a(this.f73753L.getColor().instance);
            this.f73753L.setRenderMode(GizmoElement.RenderMode.WireFrame);
            this.f73753L.setWireFrameWidth(1);
            Ub.a.a(this.f73753L);
        }
    }

    @Override
    public void exposeAnimationEntries(GameObject gameObject, List<C5.b> entries) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73747F;
        if (material != null && (y10 = material.y()) != null && (k10 = y10.k()) != null) {
            k10.q(gameObject, this, entries);
        }
        super.exposeAnimationEntries(gameObject, entries);
    }

    @Override
    public ColorINT getColorFromAnimation(String entryName) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73747F;
        if (material != null && (y10 = material.y()) != null && (k10 = y10.k()) != null) {
            try {
                ColorINT B10 = k10.B(entryName);
                if (B10 != null) {
                    return B10;
                }
            } catch (RuntimeException unused) {
            }
        }
        return super.getColorFromAnimation(entryName);
    }

    public List<C5.b> getDataEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        c cVar = new c();
        String l10 = Lang.l(Lang.T.CAST_SHADOWS);
        b.a aVar = b.a.SLBoolean;
        linkedList.add(new C5.b(cVar, l10, aVar));
        linkedList.add(new C5.b(new d(), "Receive shadows", aVar));
        linkedList.add(new C5.b(new e(), "Priority", b.a.SLInt).d(this.f79250n, this, "priority", com.itsmagic.engine.Engines.Engine.Animation.c.INT));
        return linkedList;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        String str = this.meshFile;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.meshFile);
        }
        String str2 = this.materialFile;
        if (str2 != null && !str2.isEmpty()) {
            c2632k.f9114a.add(this.materialFile);
        }
        return c2632k;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.MODEL_RENDERER);
    }

    @Override
    public float getFloatFromAnimation(String entryName) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73747F;
        if (material != null && (y10 = material.y()) != null && (k10 = y10.k()) != null) {
            try {
                return k10.E(entryName);
            } catch (RuntimeException unused) {
            }
        }
        return super.getFloatFromAnimation(entryName);
    }

    @Override
    public int getIconResource() {
        return R.drawable.wo_modelrenderer2;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_meshrenderer;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (this.tab == null) {
            this.tab = y.Model;
        }
        linkedList.add(new C5.b(new t(context), R.layout.inspector_component_terrain_tabs, (Object) null));
        int ordinal = this.tab.ordinal();
        if (ordinal == 0) {
            linkedList.addAll(getModelEntries(context));
        } else if (ordinal == 1) {
            linkedList.addAll(getMaterialEntries(context));
        } else if (ordinal == 2) {
            linkedList.addAll(getDataEntries(context));
        }
        return linkedList;
    }

    @Override
    public int getIntFromAnimation(String entryName) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73747F;
        if (material != null && (y10 = material.y()) != null && (k10 = y10.k()) != null) {
            try {
                return k10.I(entryName);
            } catch (RuntimeException unused) {
            }
        }
        return super.getIntFromAnimation(entryName);
    }

    @Override
    public List<C12908b> getLongTapMenu() {
        return new f();
    }

    public Material getMaterial() {
        return this.f73747F;
    }

    public List<C5.b> getMaterialEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new x(), R.layout.inspector_thumb, (Object) null));
        linkedList.add(new C5.b(new a(), (String) null, b.a.InputFile, ".mat"));
        Material material = this.f73747F;
        if (material != null) {
            linkedList.addAll(material.A(context, new b()));
        }
        return linkedList;
    }

    public String getMaterialFile() {
        return this.materialFile;
    }

    @Override
    public List<Material> getMaterialsForAsyncLoad() {
        return Collections.singletonList(this.f73747F);
    }

    public String getMeshFile() {
        return this.meshFile;
    }

    public C12886a getModel() {
        if (this.f73746E == null) {
            this.f73746E = new C12886a();
        }
        return this.f73746E;
    }

    public List<C5.b> getModelEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (getMeshFile() == null || !getMeshFile().startsWith("@@ASSET@@")) {
            linkedList.add(new C5.b(new v(), R.layout.inspector_thumb, (Object) null));
        } else {
            linkedList.add(new C5.b(new u(), R.layout.inspector_thumb, (Object) null));
        }
        linkedList.add(new C5.b(new w(), (String) null, b.a.InputFile, ".mesh"));
        return linkedList;
    }

    public ColorINT getOutlineColor() {
        return this.outlineColor;
    }

    public float getOutlineScale() {
        return this.outlineScale;
    }

    @Override
    public Quaternion getQuatFromAnimation(String entryName) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73747F;
        if (material != null && (y10 = material.y()) != null && (k10 = y10.k()) != null) {
            try {
                Quaternion L10 = k10.L(entryName);
                if (L10 != null) {
                    return L10;
                }
            } catch (RuntimeException unused) {
            }
        }
        return super.getQuatFromAnimation(entryName);
    }

    @Override
    public float getRenderBounding() {
        AABB d02;
        if (this.f73761T || getVertex() == null || this.f73747F == null || (d02 = getVertex().d0()) == null) {
            return 0.0f;
        }
        return d02.getRadius();
    }

    @Override
    public AABB getRenderBoundingBox() {
        AABB d02;
        if (this.f73761T || getVertex() == null || this.f73747F == null || (d02 = getVertex().d0()) == null) {
            return null;
        }
        return d02;
    }

    @Override
    public Vector3 getRenderCenter() {
        AABB d02;
        if (this.f73761T || getVertex() == null || this.f73747F == null || (d02 = getVertex().d0()) == null) {
            return null;
        }
        return d02.m();
    }

    public float[] getRenderMatrix() {
        return this.f73751J;
    }

    @Override
    public String getTitle() {
        return f73743b1;
    }

    @Override
    public Component.e getType() {
        return Component.e.ModelRenderer;
    }

    @Override
    public Vector2 getVec2FromAnimation(String entryName) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73747F;
        if (material != null && (y10 = material.y()) != null && (k10 = y10.k()) != null) {
            try {
                Vector2 N10 = k10.N(entryName);
                if (N10 != null) {
                    return N10;
                }
            } catch (RuntimeException unused) {
            }
        }
        return super.getVec2FromAnimation(entryName);
    }

    @Override
    public Vector3 getVec3FromAnimation(String entryName) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73747F;
        if (material != null && (y10 = material.y()) != null && (k10 = y10.k()) != null) {
            try {
                Vector3 O10 = k10.O(entryName);
                if (O10 != null) {
                    return O10;
                }
            } catch (RuntimeException unused) {
            }
        }
        return super.getVec3FromAnimation(entryName);
    }

    public Vertex getVertex() {
        if (getModel().c()) {
            return getModel().b();
        }
        return null;
    }

    @Override
    public boolean hasMaterialForAsyncLoad() {
        return this.f73747F != null;
    }

    public boolean hasModel() {
        return getModel().c();
    }

    @Override
    public boolean hasRenderBounding() {
        return (this.f73761T || getVertex() == null || this.f73747F == null) ? false : true;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    public boolean isCastShadow() {
        return this.castShadow;
    }

    public boolean isDrawWireframeGizmo() {
        return this.f73758Q;
    }

    public boolean isEnableOutline() {
        return this.enableOutline;
    }

    public boolean isReceiveShadow() {
        return this.receiveShadow;
    }

    public boolean isSuppressRender() {
        return this.f73761T;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        this.f73762U = true;
        try {
            if (getMeshFile() != null && !getMeshFile().isEmpty()) {
                listener.b("(" + this.f79250n.getName() + "),(ModelRenderer),(Loading),(" + getMeshFile() + ")");
                updateMesh(new n(listener));
            }
            listener.e();
            if (getMaterialFile() != null && !getMaterialFile().isEmpty()) {
                listener.b("(" + this.f79250n.getName() + "),(ModelRenderer),(Loading),(" + getMaterialFile() + ")");
                listener.d(0.0f);
                updateMaterial(true);
                listener.d(1.0f);
            }
            if (this.f73759R != null) {
                this.f73762U = false;
            }
            listener.e();
        } catch (Throwable th2) {
            if (this.f73759R != null) {
                this.f73762U = false;
            }
            throw th2;
        }
    }

    @Override
    public void mousePick(C3595c ray, MousePicker.k listener) {
        GizmoObject gizmoObject;
        GizmoObject gizmoObject2;
        Vertex vertex = getVertex();
        if (vertex != null) {
            GameObject gameObject = this.f79250n;
            Transform transform = gameObject.transform;
            MousePicker.g b10 = listener.b();
            MousePicker.h config = listener.getConfig();
            Vector3 vector3 = b10.f71441a;
            Vector3 vector32 = b10.f71442b;
            float[] fArr = b10.f71443c;
            Vertex vertex2 = b10.f71444d;
            boolean z10 = config.f71445a;
            AABB d02 = getVertex().d0();
            if (d02 == null || !listener.getCamera().isVisible(vertex, transform)) {
                return;
            }
            AABB d10 = d02.d(transform.x1());
            vector3.setX(d10.o());
            vector3.setY(d10.p());
            vector3.setZ(d10.q());
            vector32.setX(d10.j() * 2.0f);
            vector32.setY(d10.k() * 2.0f);
            vector32.setZ(d10.l() * 2.0f);
            Vector3 h10 = ray.h();
            if (h10.getX() < vector3.getX() - vector32.getX() || h10.getX() > vector3.getX() + vector32.getX() || h10.getY() < vector3.getY() - vector32.getY() || h10.getY() > vector3.getY() + vector32.getY() || h10.getZ() < vector3.getZ() - vector32.getZ() || h10.getZ() > vector3.getZ() + vector32.getZ()) {
                Matrix.setIdentityM(fArr, 0);
                Matrix.translateM(fArr, 0, vector3.getX(), vector3.getY(), vector3.getZ());
                Nc.c.q(fArr, vector32);
                if (z10) {
                    gizmoObject = new GizmoObject(vertex2.x2());
                    gizmoObject.setPosition(vector3.toJAVARuntime().copy());
                    gizmoObject.setScale(vector32.toJAVARuntime().copy());
                    gizmoObject.setColor(new Color(Random.range(0.0f, 0.9f), 0.0f, Random.range(0.0f, 0.1f)));
                } else {
                    gizmoObject = null;
                }
                C3593a I22 = vertex2.I2(fArr, ray, Vertex.RayMode.ClosestPoint, true);
                if (I22 != null) {
                    I22.setGameObject(gameObject);
                    listener.c(new MousePicker.j(I22, gizmoObject, this));
                }
                if (z10) {
                    MousePicker.l lVar = new MousePicker.l(gizmoObject, new l());
                    listener.a(lVar);
                    K8.a.J(lVar);
                    return;
                }
                return;
            }
            if (z10) {
                gizmoObject2 = new GizmoObject(vertex2.x2());
                Vector3 vector33 = (Vector3) JP.acquire(Vector3.class);
                Quaternion quaternion = (Quaternion) JP.acquire(Quaternion.class);
                transform.u0(vector33);
                gizmoObject2.setPosition(vector33.toJAVARuntime());
                transform.C0(quaternion);
                gizmoObject2.setRotation(quaternion.N0());
                transform.K0(vector33);
                gizmoObject2.setScale(vector33.toJAVARuntime());
                JP.release(vector33);
                JP.release(quaternion);
                gizmoObject2.setColor(new Color(Random.range(0.0f, 0.9f), 0.0f, Random.range(0.0f, 0.1f)));
            } else {
                gizmoObject2 = null;
            }
            C3593a G22 = vertex.G2(transform.o0(), ray, Vertex.RayMode.ClosestPoint, true);
            if (G22 != null) {
                G22.setGameObject(gameObject);
                listener.c(new MousePicker.j(G22, gizmoObject2, this));
            }
            if (z10) {
                MousePicker.l lVar2 = new MousePicker.l(gizmoObject2, new j());
                listener.a(lVar2);
                K8.a.J(lVar2);
            }
        }
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f79250n.transform.u(this.f73766Y);
        updateMesh(null);
        updateMaterial(false);
        if (isHierarchyActive()) {
            buildRenderable();
        }
    }

    @Override
    public void onDetach() {
        Transform transform;
        if (this.f73759R != null) {
            destroyRenderable();
        }
        C12886a c12886a = this.f73746E;
        if (c12886a != null && c12886a.b() != null) {
            this.f73746E.b().L1(this.f73765X);
        }
        this.f73746E = null;
        Material material = this.f73747F;
        if (material != null) {
            material.U(this);
            this.f73747F.X(this.f73764W);
        }
        this.f73747F = null;
        this.f73750I = null;
        this.f73749H = null;
        this.f73753L.setVertex(null);
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f73766Y);
        }
        super.onDetach();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (enabled) {
            addToGraphics();
            return;
        }
        removeFromGraphics();
        this.f73754M = null;
        this.f73753L.setVertex(null);
    }

    @Override
    public void onSceneChanged(FilamentScene oldScene) {
        super.onSceneChanged(oldScene);
        if (this.f73759R == null) {
            return;
        }
        destroyRenderable(oldScene, true);
        if (isHierarchyActive()) {
            buildRenderable();
        }
    }

    public void onVertexChangedRenderables() {
        emitMeshChangedEvent();
        if (this.f73761T) {
            destroyRenderable();
            return;
        }
        if (!K8.a.r()) {
            K8.a.I(new i());
            return;
        }
        if (this.f73759R == null) {
            if (this.f73762U) {
                return;
            }
            buildRenderable();
        } else {
            com.itsmagic.engine.Engines.Engine.Vertex.Vertex vertex = getVertex();
            if (vertex.x1()) {
                Box k02 = vertex.k0();
                this.f73760S.setGeometryAt(0, RenderableManager.b.TRIANGLES, vertex.f1(), vertex.l0());
                this.f73760S.setBounding(k02);
            }
        }
    }

    @Override
    public void propagateEditorViewModes(List<C13189d> viewModes) {
        super.propagateEditorViewModes(viewModes);
        App.a();
        App.c cVar = App.c.Engine;
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof J) {
            this.f73748G = ((J) event).f9032a;
            onMaterialChanged();
        }
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10;
        BuildDicFile f11;
        String str = this.meshFile;
        if (str != null && !str.isEmpty() && !this.meshFile.startsWith("@@ASSET@@") && (f11 = dictionary.f(this.meshFile)) != null) {
            dictionary.h("MeshRenderer: REPLACING " + this.meshFile + " TO " + f11.b());
            this.meshFile = f11.b();
        }
        String str2 = this.materialFile;
        if (str2 == null || str2.isEmpty() || (f10 = dictionary.f(this.materialFile)) == null) {
            return;
        }
        dictionary.h("MeshRenderer: REPLACING " + this.materialFile + " TO " + f10.b());
        this.materialFile = f10.b();
    }

    public void removeFromGraphics() {
        if (this.f73763V) {
            if (this.f73759R != null) {
                getEffectiveScene().s(this.f73759R);
            }
            this.f73763V = false;
        }
    }

    public void setCastShadow(boolean castShadow) {
        if (this.castShadow != castShadow) {
            K8.a.B(new o());
        }
        this.castShadow = castShadow;
    }

    @Override
    public void setColorFromAnimation(String entryName, ColorINT value) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73747F;
        if (material != null && (y10 = material.y()) != null && (k10 = y10.k()) != null) {
            try {
                k10.f0(entryName, value);
                return;
            } catch (RuntimeException unused) {
            }
        }
        super.setColorFromAnimation(entryName, value);
    }

    public void setDrawWireframeGizmo(boolean drawWireframeGizmo) {
        this.f73758Q = drawWireframeGizmo;
    }

    public void setEnableOutline(boolean enableOutline) {
        this.enableOutline = enableOutline;
    }

    @Override
    public void setFloatFromAnimation(String entryName, float value) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73747F;
        if (material != null && (y10 = material.y()) != null && (k10 = y10.k()) != null) {
            try {
                k10.j0(entryName, value);
                return;
            } catch (RuntimeException unused) {
            }
        }
        super.setFloatFromAnimation(entryName, value);
    }

    @Override
    public void setIntFromAnimation(String entryName, int value) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73747F;
        if (material != null && (y10 = material.y()) != null && (k10 = y10.k()) != null) {
            try {
                k10.m0(entryName, value);
                return;
            } catch (RuntimeException unused) {
            }
        }
        super.setIntFromAnimation(entryName, value);
    }

    public void setMaterial(Material material) {
        Material material2 = this.f73747F;
        if (material2 != material) {
            if (material2 != null) {
                material2.U(this);
                this.f73747F.X(this.f73764W);
            }
            this.f73747F = material;
            if (material != null) {
                material.f(this);
                this.f73747F.j(this.f73764W);
                this.f73750I = material.getFile();
                setMaterialFile(material.getFile());
                if (!material.f78896r) {
                    C12894h.d(material);
                }
            }
            GameObject gameObject = this.f79250n;
            if (gameObject != null) {
                gameObject.l1();
            }
        }
    }

    public void setMaterialFile(String materialFile) {
        this.materialFile = materialFile;
        updateMaterial(false);
    }

    public void setMaterialFileButDontLoad(String materialFile) {
        this.materialFile = materialFile;
        this.f73750I = materialFile;
    }

    public void setMeshFile(String meshFile) {
        this.meshFile = meshFile;
        updateMesh(null);
    }

    public void setMeshFileButDontLoad(String meshFile) {
        this.meshFile = meshFile;
        this.f73749H = meshFile;
    }

    public void setModel(com.itsmagic.engine.Engines.Engine.Vertex.Vertex vertex) {
        setModel(new C12886a(vertex));
    }

    public void setModelCritical(com.itsmagic.engine.Engines.Engine.Vertex.Vertex vertex) {
        this.f73746E = new C12886a(vertex);
    }

    public void setOutlineColor(ColorINT outlineColor) {
        this.outlineColor = outlineColor;
    }

    public void setOutlineScale(float outlineScale) {
        this.outlineScale = outlineScale;
    }

    @Override
    public void setQuatFromAnimation(String entryName, Quaternion value) {
        super.setQuatFromAnimation(entryName, value);
    }

    public void setReceiveShadow(boolean receiveShadow) {
        if (this.receiveShadow != receiveShadow) {
            K8.a.B(new p());
        }
        this.receiveShadow = receiveShadow;
    }

    public void setRenderMatrix(float[] renderMatrix) {
        Nc.c.b(renderMatrix, this.f73751J);
        this.f73752K = Nc.d.j(-999999, 999999);
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73769v0 = run;
    }

    public void setSuppressRender(boolean suppressRender) {
        if (this.f73761T != suppressRender) {
            this.f73761T = suppressRender;
            if (suppressRender) {
                destroyRenderable();
            } else {
                buildRenderable();
            }
        }
    }

    @Override
    public void setVec2FromAnimation(String entryName, Vector2 value) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73747F;
        if (material != null && (y10 = material.y()) != null && (k10 = y10.k()) != null) {
            try {
                k10.u0(entryName, value);
                return;
            } catch (RuntimeException unused) {
            }
        }
        super.setVec2FromAnimation(entryName, value);
    }

    @Override
    public void setVec3FromAnimation(String entryName, Vector3 value) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73747F;
        if (material != null && (y10 = material.y()) != null && (k10 = y10.k()) != null) {
            try {
                k10.v0(entryName, value);
                return;
            } catch (RuntimeException unused) {
            }
        }
        super.setVec3FromAnimation(entryName, value);
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f73769v0;
        if (component != null) {
            return component;
        }
        JAVARuntime.ModelRenderer modelRenderer = new JAVARuntime.ModelRenderer(this);
        this.f73769v0 = modelRenderer;
        return modelRenderer;
    }

    @Override
    public void updateForThumb(GameObject gameObject, E7.e sceneData) {
        super.updateForThumb(gameObject, sceneData);
        destroyRenderable();
        buildRenderable();
    }

    @Override
    public void updateOnSelectedHierarchy() {
        super.updateOnSelectedHierarchy();
        if (this.f73758Q) {
            p6.g L12 = p6.d.E1() ? p6.d.L1("drawGizmo") : null;
            drawGizmo();
            p6.d.J1(L12);
        }
    }

    @Override
    public void updateOnUnselectedHierarchy() {
        super.updateOnUnselectedHierarchy();
        if (this.f73754M != null) {
            this.f73754M = null;
            this.f73753L.setVertex(null);
        }
        this.f73755N = false;
        this.f73756O = false;
    }

    @Override
    public Component mo1248clone() {
        ModelRenderer modelRenderer = new ModelRenderer();
        modelRenderer.version = this.version;
        modelRenderer.setMeshFile(this.meshFile);
        modelRenderer.setMaterialFile(this.materialFile);
        modelRenderer.castShadow = this.castShadow;
        modelRenderer.receiveShadow = this.receiveShadow;
        modelRenderer.zAlign = this.zAlign;
        modelRenderer.billboard = this.billboard;
        modelRenderer.priority = this.priority;
        return modelRenderer;
    }

    public void setModel(C12886a model) {
        setModelInternal(model, false);
    }

    public void destroyRenderable() {
        destroyRenderable(getEffectiveScene(), true);
    }

    public ModelRenderer(String meshFile) {
        this(meshFile, null);
    }

    public ModelRenderer(String meshFile, String materialFile) {
        super(f73743b1);
        this.version = (char) 0;
        this.meshFile = null;
        this.castShadow = true;
        this.receiveShadow = true;
        this.billboard = false;
        this.zAlign = false;
        this.tab = y.Model;
        this.priority = 0;
        this.outlineColor = new ColorINT(255, 0, 0);
        this.enableOutline = false;
        this.outlineScale = 0.05f;
        this.f73750I = null;
        this.f73751J = new float[16];
        this.f73752K = -1;
        this.f73753L = new GizmoObjectMatrix();
        this.f73755N = false;
        this.f73756O = false;
        this.f73757P = 0.0f;
        this.f73758Q = true;
        this.f73761T = false;
        this.f73762U = false;
        this.f73763V = false;
        this.f73764W = new q();
        this.f73765X = new r();
        this.f73766Y = new s();
        this.f73768q0 = new c9.g(this);
        this.meshFile = meshFile;
        this.materialFile = materialFile;
    }

    @Deprecated
    public ModelRenderer(String meshFile, Boolean meshFileFromAssets, String materialFile) {
        super(f73743b1);
        this.version = (char) 0;
        this.meshFile = null;
        this.castShadow = true;
        this.receiveShadow = true;
        this.billboard = false;
        this.zAlign = false;
        this.tab = y.Model;
        this.priority = 0;
        this.outlineColor = new ColorINT(255, 0, 0);
        this.enableOutline = false;
        this.outlineScale = 0.05f;
        this.f73750I = null;
        this.f73751J = new float[16];
        this.f73752K = -1;
        this.f73753L = new GizmoObjectMatrix();
        this.f73755N = false;
        this.f73756O = false;
        this.f73757P = 0.0f;
        this.f73758Q = true;
        this.f73761T = false;
        this.f73762U = false;
        this.f73763V = false;
        this.f73764W = new q();
        this.f73765X = new r();
        this.f73766Y = new s();
        this.f73768q0 = new c9.g(this);
        setMeshFile(meshFile);
        if (getMeshFile() != null && meshFileFromAssets.booleanValue() && !getMeshFile().startsWith("@@ASSET@@")) {
            setMeshFile("@@ASSET@@" + meshFile);
        }
        setMaterialFile(materialFile);
    }

    @Deprecated
    public ModelRenderer(String meshFile, Boolean meshFileFromAssets, String materialFile, boolean allowRender, boolean castShadow) {
        super(f73743b1);
        this.version = (char) 0;
        this.meshFile = null;
        this.castShadow = true;
        this.receiveShadow = true;
        this.billboard = false;
        this.zAlign = false;
        this.tab = y.Model;
        this.priority = 0;
        this.outlineColor = new ColorINT(255, 0, 0);
        this.enableOutline = false;
        this.outlineScale = 0.05f;
        this.f73750I = null;
        this.f73751J = new float[16];
        this.f73752K = -1;
        this.f73753L = new GizmoObjectMatrix();
        this.f73755N = false;
        this.f73756O = false;
        this.f73757P = 0.0f;
        this.f73758Q = true;
        this.f73761T = false;
        this.f73762U = false;
        this.f73763V = false;
        this.f73764W = new q();
        this.f73765X = new r();
        this.f73766Y = new s();
        this.f73768q0 = new c9.g(this);
        this.castShadow = castShadow;
        if (meshFile != null && meshFileFromAssets.booleanValue() && !meshFile.startsWith("@@ASSET@@")) {
            setMeshFile("@@ASSET@@" + meshFile);
        } else {
            setMeshFile(meshFile);
        }
        setMaterialFile(materialFile);
    }
}
