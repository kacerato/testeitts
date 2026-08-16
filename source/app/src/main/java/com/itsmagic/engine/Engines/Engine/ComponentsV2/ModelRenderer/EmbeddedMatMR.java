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
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.EmbeddedMatMR;
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

public class EmbeddedMatMR extends Component implements Serializable {

    public static int f73677D0 = 0;

    public static final int f73678Z = 4096;

    public static final String f73679q0 = "EmbeddedMatMR";

    public static final Class f73680v0 = EmbeddedMatMR.class;

    public C12886a f73681E;

    public Material f73682F;

    public Material f73683G;

    public String f73684H;

    public String f73685I;

    public final float[] f73686J;

    public int f73687K;

    public final GizmoObjectMatrix f73688L;

    public Vertex f73689M;

    public volatile boolean f73690N;

    public volatile boolean f73691O;

    public float f73692P;

    public Rb.c f73693Q;

    public FilamentRenderable f73694R;

    public boolean f73695S;

    public boolean f73696T;

    public final InterfaceC12890d f73697U;

    public final Cb.a f73698V;

    public final InterfaceC13601h f73699W;

    public InspectorEditor f73700X;

    public JAVARuntime.Component f73701Y;

    @Expose
    public boolean billboard;

    @Expose
    private boolean castShadow;

    @Expose
    private Material embeddedMat;

    @Expose
    private boolean enableOutline;

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

    @Expose
    private boolean receiveShadow;

    @Expose
    private w tab;

    @Expose
    public char version;

    @Expose
    public boolean zAlign;

    public class a implements D5.h {

        public class C1205a implements Runnable {

            public final Variable f73703b;

            public C1205a(final Variable val$variable) {
                this.f73703b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("EmbeddedMatMR - set cast shadow") : null;
                try {
                    EmbeddedMatMR.this.setCastShadow(this.f73703b.booolean_value.booleanValue());
                    EmbeddedMatMR.this.reloadInspector();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", EmbeddedMatMR.this.castShadow + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new C1205a(variable));
            }
        }
    }

    public class b implements D5.h {

        public class a implements Runnable {

            public final Variable f73706b;

            public a(final Variable val$variable) {
                this.f73706b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("EmbeddedMatMR - set receive shadow") : null;
                try {
                    EmbeddedMatMR.this.setReceiveShadow(this.f73706b.booolean_value.booleanValue());
                    EmbeddedMatMR.this.reloadInspector();
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", EmbeddedMatMR.this.receiveShadow + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", EmbeddedMatMR.this.priority + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EmbeddedMatMR.this.priority = variable.int_value;
            }
        }
    }

    public class d extends SteppedArrayList<C12908b> {

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                if (EmbeddedMatMR.this.f79250n != null) {
                    SkinnedModelRenderer skinnedModelRenderer = new SkinnedModelRenderer();
                    skinnedModelRenderer.meshFile = EmbeddedMatMR.this.getMeshFile();
                    skinnedModelRenderer.setMaterial(EmbeddedMatMR.createOwnedMaterial(EmbeddedMatMR.this.getMaterial()));
                    EmbeddedMatMR.this.f79250n.r(skinnedModelRenderer);
                    EmbeddedMatMR.this.destroyComponent();
                }
            }
        }

        public d() {
            add(new C12908b("Convert to skinned mr", new a()));
        }
    }

    public class e implements c.g {

        public final x f73711a;

        public e(final x val$listener) {
            this.f73711a = val$listener;
        }

        @Override
        public void setProgress(float v10) {
            this.f73711a.setProgress(v10);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override
        public void run() {
            Material material;
            t6.e S12 = t6.j.J1() ? t6.j.S1("EmbeddedMatMR - update material on engine") : null;
            try {
                if (EmbeddedMatMR.this.f73693Q == null || (material = EmbeddedMatMR.this.f73682F) == null || !material.I()) {
                    EmbeddedMatMR.this.destroyRenderable();
                    EmbeddedMatMR.this.buildRenderable();
                } else {
                    FilamentMaterial z10 = EmbeddedMatMR.this.f73682F.z();
                    if (EmbeddedMatMR.this.f73683G != null && EmbeddedMatMR.this.f73683G.I()) {
                        z10 = EmbeddedMatMR.this.f73683G.z();
                    }
                    EmbeddedMatMR.this.f73694R.setMaterialInstanceAt(0, z10);
                    EmbeddedMatMR.this.f73694R.setPriority(EmbeddedMatMR.this.f73682F.isDrawInFront() ? 7 : 1);
                    EmbeddedMatMR.this.applyTransparentBlendOrderPolicy((EmbeddedMatMR.this.f73683G == null || !EmbeddedMatMR.this.f73683G.I()) ? EmbeddedMatMR.this.f73682F : EmbeddedMatMR.this.f73683G);
                }
                t6.j.P1(S12);
            } catch (Throwable th2) {
                t6.j.P1(S12);
                throw th2;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override
        public void run() {
            t6.e S12 = t6.j.J1() ? t6.j.S1("EmbeddedMatMR - update vertex renderables") : null;
            try {
                if (EmbeddedMatMR.this.f73693Q != null) {
                    Vertex vertex = EmbeddedMatMR.this.getVertex();
                    if (vertex.x1()) {
                        Box k02 = vertex.k0();
                        EmbeddedMatMR.this.f73694R.setGeometryAt(0, RenderableManager.b.TRIANGLES, vertex.f1(), vertex.l0());
                        EmbeddedMatMR.this.f73694R.setBounding(k02);
                    }
                } else {
                    EmbeddedMatMR.this.buildRenderable();
                }
                t6.j.P1(S12);
            } catch (Throwable th2) {
                t6.j.P1(S12);
                throw th2;
            }
        }
    }

    public class h implements MousePicker.l.b {

        public int f73715a;

        public h() {
        }

        @Override
        public boolean a(GizmoObject gizmoObject) {
            t6.e S12 = t6.j.J1() ? t6.j.S1("EmbeddedMatMR - gizmo draw") : null;
            try {
                Gizmo.draw(gizmoObject);
                int i10 = this.f73715a + 1;
                this.f73715a = i10;
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

    public class i implements MousePicker.l.b {

        public int f73717a;

        public i() {
        }

        @Override
        public boolean a(GizmoObject gizmoObject) {
            t6.e S12 = t6.j.J1() ? t6.j.S1("EmbeddedMatMR - gizmo draw") : null;
            try {
                Gizmo.draw(gizmoObject);
                int i10 = this.f73717a + 1;
                this.f73717a = i10;
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

    public class j implements Runnable {
        public j() {
        }

        @Override
        public void run() {
            if (EmbeddedMatMR.this.f73693Q == null) {
                EmbeddedMatMR.this.buildRenderable();
            } else if (EmbeddedMatMR.this.getVertex() != null) {
                EmbeddedMatMR.this.onVertexChangedRenderables();
            } else {
                EmbeddedMatMR.this.destroyRenderable();
            }
        }
    }

    public class k extends AbstractC13203c {
        @Override
        public Class b() {
            return EmbeddedMatMR.f73680v0;
        }

        @Override
        public String c() {
            return EmbeddedMatMR.f73679q0;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.MODEL_RENDERERS);
        }

        @Override
        public String f() {
            return "Embedded Mat MR";
        }
    }

    public class l implements x {

        public final Lb.a f73720a;

        public l(final Lb.a val$listener) {
            this.f73720a = val$listener;
        }

        @Override
        public void setProgress(float v10) {
            this.f73720a.d(v10);
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override
        public void run() {
            EmbeddedMatMR.this.destroyRenderable();
            EmbeddedMatMR.this.buildRenderable();
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override
        public void run() {
            EmbeddedMatMR.this.destroyRenderable();
            EmbeddedMatMR.this.buildRenderable();
        }
    }

    public class o implements InterfaceC12890d {
        public o() {
        }

        @Override
        public void a(FilamentMaterial filamentMaterial) {
            if (C13317e.J(EmbeddedMatMR.this.f79250n)) {
                EmbeddedMatMR.this.onMaterialChanged();
            }
        }
    }

    public class p implements Cb.a {
        public p() {
        }

        @Override
        public void a() {
            if (C13317e.J(EmbeddedMatMR.this.f79250n)) {
                EmbeddedMatMR.this.onVertexChangedRenderables();
            }
        }
    }

    public class q implements InterfaceC13601h {
        public q() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            Qb.a.d();
            EmbeddedMatMR embeddedMatMR = EmbeddedMatMR.this;
            embeddedMatMR.f73687K = embeddedMatMR.f79250n.transform.x4(null, embeddedMatMR.f73687K);
            if (EmbeddedMatMR.this.f73693Q != null) {
                globalMatrix.o(EmbeddedMatMR.this.f73686J);
                TransformManager i10 = Qb.a.i();
                i10.u(i10.h(EmbeddedMatMR.this.f73693Q.getId()), EmbeddedMatMR.this.f73686J);
            }
        }
    }

    public class r implements D5.e {

        public static final int f73727f = 2;

        public LinearLayout f73728a;

        public final List<M7.g> f73729b = new LinkedList();

        public LayoutInflater f73730c;

        public final Context f73731d;

        public class a implements M7.r {
            public a() {
            }

            @Override
            public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
                if (value) {
                    w wVar = EmbeddedMatMR.this.tab;
                    w wVar2 = w.Model;
                    if (wVar != wVar2) {
                        EmbeddedMatMR.this.tab = wVar2;
                        EmbeddedMatMR.this.reloadInspector();
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
                    w wVar = EmbeddedMatMR.this.tab;
                    w wVar2 = w.Material;
                    if (wVar != wVar2) {
                        EmbeddedMatMR.this.tab = wVar2;
                        EmbeddedMatMR.this.reloadInspector();
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
                    w wVar = EmbeddedMatMR.this.tab;
                    w wVar2 = w.Data;
                    if (wVar != wVar2) {
                        EmbeddedMatMR.this.tab = wVar2;
                        EmbeddedMatMR.this.reloadInspector();
                    }
                }
            }
        }

        public r(final Context val$context) {
            this.f73731d = val$context;
        }

        private void c() {
            this.f73728a.removeAllViews();
            for (int i10 = 0; i10 < this.f73729b.size(); i10++) {
                d(this.f73729b.get(i10));
            }
        }

        private void d(M7.g element) {
            element.a(this.f73728a, this.f73731d, this.f73730c);
            element.n(f(this.f73728a).e());
        }

        private M7.k f(LinearLayout parent) {
            return e(this.f73731d, parent, this.f73730c);
        }

        public M7.k e(Context context, LinearLayout parent, LayoutInflater layoutInflater) {
            M7.k kVar = new M7.k(Nc.b.l0(2.0f, context));
            kVar.a(parent, context, layoutInflater);
            return kVar;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.content);
            this.f73728a = linearLayout;
            linearLayout.removeAllViews();
            this.f73730c = LayoutInflater.from(context);
            this.f73729b.clear();
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
            w[] values = w.values();
            int i10 = 0;
            while (true) {
                if (i10 >= values.length) {
                    break;
                }
                if (values[i10] == EmbeddedMatMR.this.tab) {
                    pVar.z(i10, false);
                    break;
                }
                i10++;
            }
            this.f73729b.add(pVar);
            c();
        }
    }

    public class s implements D5.e {
        public s() {
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            ImageView imageView = (ImageView) view.findViewById(R.id.imageView);
            Vc.e.U((ImageView) view.findViewById(R.id.background), R.drawable.thumb_background_v2);
            U.h u10 = new U.h().y().u(R.drawable.cube_v2);
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_EDITOR/thumbs/" + Tc.b.w(EmbeddedMatMR.this.getMeshFile(), true) + ".png");
            if (!file.exists() || EmbeddedMatMR.this.getMeshFile() == null || EmbeddedMatMR.this.getMeshFile().isEmpty() || EmbeddedMatMR.this.getVertex() == null) {
                D7.d.c(Tc.b.w(EmbeddedMatMR.this.getMeshFile(), true), EmbeddedMatMR.this.getVertex(), imageView);
                Vc.e.U(imageView, R.drawable.cube_v2);
            } else {
                Vc.e.L(imageView, file.getAbsolutePath(), N7.c.t(), u10, com.bumptech.glide.load.engine.i.f59186b);
            }
            view.findViewById(R.id.contextMenu).setVisibility(8);
        }
    }

    public class t implements D5.e {
        public t() {
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            ImageView imageView = (ImageView) view.findViewById(R.id.imageView);
            Vc.e.U((ImageView) view.findViewById(R.id.background), R.drawable.thumb_background_v2);
            String str = Tc.b.O(EmbeddedMatMR.this.getMeshFile()) + ".meta/thumb.png";
            U.h u10 = new U.h().y().u(R.drawable.cube_v2);
            E7.f.a(EmbeddedMatMR.this.getMeshFile());
            File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + str));
            if (!file.exists() || EmbeddedMatMR.this.getMeshFile() == null || EmbeddedMatMR.this.getMeshFile().isEmpty()) {
                D7.f.c(new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + EmbeddedMatMR.this.getMeshFile())), imageView);
                Vc.e.U(imageView, R.drawable.cube_v2);
            } else {
                Vc.e.L(imageView, file.getAbsolutePath(), N7.c.t(), u10, com.bumptech.glide.load.engine.i.f59186b);
            }
            view.findViewById(R.id.contextMenu).setVisibility(8);
        }
    }

    public class u implements D5.h {
        public u() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", EmbeddedMatMR.this.getMeshFile() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EmbeddedMatMR.this.setMeshFile(variable.str_value);
            }
        }
    }

    public class v implements InterfaceC12893g {

        public class a implements Runnable {

            public class RunnableC1206a implements Runnable {
                public RunnableC1206a() {
                }

                @Override
                public void run() {
                    A5.a.x1(EmbeddedMatMR.this);
                }
            }

            public a() {
            }

            @Override
            public void run() {
                N7.c.j0(new RunnableC1206a());
            }
        }

        public v() {
        }

        @Override
        public void a() {
            K8.a.B(new a());
        }

        @Override
        public Component b() {
            return EmbeddedMatMR.this;
        }

        @Override
        public String c() {
            return EmbeddedMatMR.this.getGuid().j();
        }

        @Override
        public String d() {
            GameObject gameObject = EmbeddedMatMR.this.f79250n;
            return gameObject != null ? gameObject.getGuid().j() : "";
        }
    }

    public enum w {
        Model,
        Material,
        Data
    }

    public interface x {
        void setProgress(float v10);
    }

    static {
        C13201a.b(new k());
        f73677D0 = 0;
    }

    public EmbeddedMatMR() {
        super(f73679q0);
        this.version = (char) 0;
        this.meshFile = null;
        this.embeddedMat = createOwnedMaterial(null);
        this.castShadow = true;
        this.receiveShadow = true;
        this.billboard = false;
        this.zAlign = false;
        this.tab = w.Model;
        this.priority = 0;
        this.outlineColor = new ColorINT(255, 0, 0);
        this.enableOutline = false;
        this.outlineScale = 0.05f;
        this.f73685I = null;
        this.f73686J = new float[16];
        this.f73687K = -1;
        this.f73688L = new GizmoObjectMatrix();
        this.f73690N = false;
        this.f73691O = false;
        this.f73692P = 0.0f;
        this.f73695S = false;
        this.f73696T = false;
        this.f73697U = new o();
        this.f73698V = new p();
        this.f73699W = new q();
    }

    private void addToGraphics() {
        if (this.f73696T || this.f73693Q == null) {
            return;
        }
        getEffectiveScene().j(this.f73693Q);
        this.f73696T = true;
    }

    public void applyTransparentBlendOrderPolicy(Material sourceMaterial) {
        if (this.f73694R == null) {
            return;
        }
        if (!isTransparentBlend(sourceMaterial)) {
            this.f73694R.setGlobalBlendOrderEnabledAt(0, false);
        } else {
            this.f73694R.setGlobalBlendOrderEnabledAt(0, true);
            this.f73694R.setBlendOrderAt(0, 4096);
        }
    }

    public void buildRenderable() {
        if (this.f73695S) {
            destroyRenderable();
            return;
        }
        if (this.f73693Q != null || getVertex() == null) {
            return;
        }
        Vertex vertex = getVertex();
        Material material = this.f73682F;
        if (vertex == null || !vertex.x1() || material == null || !material.I()) {
            return;
        }
        p6.g L12 = p6.d.E1() ? p6.d.L1("build renderable") : null;
        this.f73693Q = new Rb.c();
        Box k02 = vertex.k0();
        FilamentMaterial z10 = material.z();
        Material material2 = this.f73683G;
        if (material2 != null && material2.I()) {
            z10 = this.f73683G.z();
        }
        FilamentRenderable filamentRenderable = new FilamentRenderable(new RenderableManager.a(1).d(this.castShadow).y(this.receiveShadow), z10, this.f73693Q, vertex.f1(), vertex.l0(), RenderableManager.b.TRIANGLES, k02);
        this.f73694R = filamentRenderable;
        filamentRenderable.setPriority(material.isDrawInFront() ? 7 : 1);
        Material material3 = this.f73683G;
        if (material3 != null && material3.I()) {
            material = this.f73683G;
        }
        applyTransparentBlendOrderPolicy(material);
        getEffectiveScene().j(this.f73693Q);
        this.f73696T = true;
        TransformManager i10 = Qb.a.i();
        i10.b(this.f73693Q.getId());
        this.f79250n.transform.r0(this.f73686J);
        i10.u(i10.h(this.f73693Q.getId()), this.f73686J);
        this.f73687K = this.f79250n.transform.x4(null, this.f73687K);
        p6.d.J1(L12);
    }

    public static Material createOwnedMaterial(Material source) {
        Material n10;
        if (source == null) {
            n10 = new Material();
        } else {
            n10 = Material.n(source.serialize(null).toString());
            if (n10 == null) {
                n10 = new Material();
            }
        }
        n10.setFile("EmbeddedMatMR_" + Tc.b.L());
        n10.f78896r = false;
        return n10;
    }

    private void destroyRenderable(FilamentScene scene, boolean destroyIfCan) {
        if (this.f73693Q != null) {
            FilamentRenderable filamentRenderable = this.f73694R;
            if (filamentRenderable != null) {
                filamentRenderable.destroyImmediate();
                this.f73694R = null;
            }
            if (scene == null || !scene.l(this.f73693Q)) {
                scene = FilamentScene.m(this.f73693Q);
            }
            if (scene != null) {
                scene.s(this.f73693Q);
            }
            if (destroyIfCan) {
                this.f73693Q.f();
            } else {
                this.f73693Q.destroyImmediate();
            }
            this.f73693Q = null;
            this.f73696T = false;
        }
    }

    private Material ensureEmbeddedMat() {
        if (this.embeddedMat == null) {
            this.embeddedMat = createOwnedMaterial(null);
        }
        if (this.embeddedMat.getFile() == null || this.embeddedMat.getFile().isEmpty()) {
            this.embeddedMat.setFile("EmbeddedMatMR_" + Tc.b.L());
            this.embeddedMat.f78896r = false;
        }
        if (this.f73682F == null) {
            this.f73682F = this.embeddedMat;
        }
        return this.embeddedMat;
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
                this.f73689M = vertex;
            } else {
                vertex.Z();
            }
        } finally {
            this.f73691O = false;
            this.f73690N = false;
        }
    }

    public void loadWireframeVertexForGizmoLowTask() {
        GameObject gameObject;
        try {
            try {
                gameObject = this.f79250n;
            } catch (Throwable th2) {
                if (!this.f73691O) {
                    this.f73690N = false;
                }
                throw th2;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            if (this.f73691O) {
                return;
            }
        }
        if (gameObject == null) {
            if (this.f73691O) {
                return;
            }
            this.f73690N = false;
            return;
        }
        if (!gameObject.b1()) {
            if (this.f73691O) {
                return;
            }
            this.f73690N = false;
            return;
        }
        if (!EditorSettings.a().selectionWireframeGizmo) {
            if (this.f73691O) {
                return;
            }
            this.f73690N = false;
            return;
        }
        if (this.f73689M != null) {
            if (this.f73691O) {
                return;
            }
            this.f73690N = false;
            return;
        }
        if (this.f73691O) {
            if (this.f73691O) {
                return;
            }
            this.f73690N = false;
            return;
        }
        if (f73677D0 == K8.a.k()) {
            if (this.f73691O) {
                return;
            }
            this.f73690N = false;
            return;
        }
        Vertex vertex = getVertex();
        if (vertex == null) {
            if (this.f73691O) {
                return;
            }
            this.f73690N = false;
            return;
        }
        f73677D0 = K8.a.k();
        Vertex vertex2 = null;
        if (getMeshFile() != null) {
            if (getMeshFile().startsWith("@@ASSET@@")) {
                Jb.e eVar = new Jb.e(vertex.i1(), vertex.V0());
                this.f73691O = true;
                eVar.b(new e.a() {
                    @Override
                    public final void a(FilamentVertexBuffer filamentVertexBuffer, Rb.d dVar, Box box) {
                        EmbeddedMatMR.this.lambda$loadWireframeVertexForGizmoLowTask$0(filamentVertexBuffer, dVar, box);
                    }
                });
                if (this.f73691O) {
                    return;
                }
                this.f73690N = false;
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
        this.f73689M = vertex2;
        if (this.f73691O) {
            return;
        }
        this.f73690N = false;
    }

    public void onMaterialChanged() {
        Material material;
        if (this.f79250n != null) {
            if (!K8.a.r()) {
                K8.a.I(new f());
                return;
            }
            if (this.f73693Q == null || (material = this.f73682F) == null || !material.I()) {
                destroyRenderable();
                buildRenderable();
                return;
            }
            FilamentMaterial z10 = this.f73682F.z();
            Material material2 = this.f73683G;
            if (material2 != null && material2.I()) {
                z10 = this.f73683G.z();
            }
            this.f73694R.setMaterialInstanceAt(0, z10);
            this.f73694R.setPriority(this.f73682F.isDrawInFront() ? 7 : 1);
            Material material3 = this.f73683G;
            applyTransparentBlendOrderPolicy((material3 == null || !material3.I()) ? this.f73682F : this.f73683G);
        }
    }

    private void requestWireframeVertexLoadTask() {
        if (this.f73690N || this.f73691O) {
            return;
        }
        this.f73690N = true;
        ca.c.D(new Runnable() {
            @Override
            public final void run() {
                EmbeddedMatMR.this.loadWireframeVertexForGizmoLowTask();
            }
        });
    }

    private void setModelInternal(C12886a model, boolean dispatchMeshFileIfNull) {
        C12886a c12886a = this.f73681E;
        if (c12886a != null && model != null && c12886a.c() && model.c() && this.f73681E.b() == model.b()) {
            return;
        }
        C12886a c12886a2 = this.f73681E;
        if (c12886a2 != null && c12886a2.b() != null) {
            this.f73681E.b().L1(this.f73698V);
        }
        if (model == null || !model.c()) {
            if (dispatchMeshFileIfNull) {
                this.meshFile = null;
            }
            this.f73681E = null;
            this.f73684H = null;
        } else {
            this.f73681E = model;
            this.f73684H = getMeshFile();
            model.b().v(this.f73698V);
            if (!Fb.c.g(model.b())) {
                Fb.c.d(Tc.b.L(), model.b());
            }
        }
        this.f73689M = null;
        if (this.f79250n != null) {
            if (!K8.a.r()) {
                K8.a.I(new j());
            } else if (this.f73693Q == null) {
                buildRenderable();
            } else if (getVertex() != null) {
                onVertexChangedRenderables();
            } else {
                destroyRenderable();
            }
            reloadInspector();
        }
    }

    private boolean shouldAcceptBuiltWireframe() {
        GameObject gameObject = this.f79250n;
        return gameObject != null && gameObject.b1() && EditorSettings.a().selectionWireframeGizmo && this.f73689M == null;
    }

    private void updateMaterial(boolean preventMaterialLoad) {
        p6.g L12 = p6.d.E1() ? p6.d.L1("update material") : null;
        Material material = this.f73682F;
        Material ensureEmbeddedMat = ensureEmbeddedMat();
        if (material != ensureEmbeddedMat && material != null) {
            material.W(this);
            material.X(this.f73697U);
        }
        this.f73682F = ensureEmbeddedMat;
        ensureEmbeddedMat.f78883c = preventMaterialLoad;
        ensureEmbeddedMat.i(this);
        this.f73682F.j(this.f73697U);
        this.f73685I = this.f73682F.getFile();
        Material material2 = this.f73682F;
        if (!material2.f78896r) {
            C12894h.d(material2);
        }
        if (!this.f73682F.I()) {
            this.f73682F.S();
        }
        if (material != this.f73682F) {
            onMaterialChanged();
        }
        p6.d.J1(L12);
    }

    private void updateMesh(x listener) {
        boolean z10;
        p6.g L12 = p6.d.E1() ? p6.d.L1("update mesh") : null;
        String str = this.meshFile;
        if (str != null && !str.isEmpty()) {
            String str2 = this.f73684H;
            if (str2 == null || !str2.equals(this.meshFile)) {
                this.f73684H = this.meshFile;
                e eVar = listener != null ? new e(listener) : null;
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
                        setModelInternal(new C12886a(Fb.c.n(str3, z10, t10, false, eVar)), false);
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
        } else if (this.f73684H != null) {
            setModelInternal(null, false);
            this.f73684H = null;
        }
        p6.d.J1(L12);
    }

    @Override
    public int animEntriesCount() {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73682F;
        return (material == null || (y10 = material.y()) == null || (k10 = y10.k()) == null) ? super.animEntriesCount() : k10.e() + super.animEntriesCount();
    }

    @Override
    public String animEntryAt(int index) {
        int i10;
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73682F;
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
        Material material = this.f73682F;
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
            this.f73692P = 0.0f;
            if (getVertex() != null && getVertex().x2() != this.f73688L.getVertex()) {
                if (this.f73689M == null) {
                    requestWireframeVertexLoadTask();
                }
                Vertex vertex = this.f73689M;
                if (vertex != null) {
                    this.f73688L.setVertex(vertex.x2());
                }
            }
            this.f73688L.setMatrix(getRenderMatrix());
            C14040a.a(this.f73688L.getColor().instance);
            this.f73688L.setRenderMode(GizmoElement.RenderMode.WireFrame);
            this.f73688L.setWireFrameWidth(1);
            Ub.a.a(this.f73688L);
        }
    }

    @Override
    public void exposeAnimationEntries(GameObject gameObject, List<C5.b> entries) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73682F;
        if (material != null && (y10 = material.y()) != null && (k10 = y10.k()) != null) {
            k10.p(gameObject, this, entries);
        }
        super.exposeAnimationEntries(gameObject, entries);
    }

    @Override
    public ColorINT getColorFromAnimation(String entryName) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73682F;
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
        a aVar = new a();
        String l10 = Lang.l(Lang.T.CAST_SHADOWS);
        b.a aVar2 = b.a.SLBoolean;
        linkedList.add(new C5.b(aVar, l10, aVar2));
        linkedList.add(new C5.b(new b(), "Receive shadows", aVar2));
        linkedList.add(new C5.b(new c(), "Priority", b.a.SLInt).d(this.f79250n, this, "priority", com.itsmagic.engine.Engines.Engine.Animation.c.INT));
        return linkedList;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        List<String> list;
        C2632k c2632k = new C2632k();
        String str = this.meshFile;
        if (str != null && !str.isEmpty()) {
            c2632k.f9114a.add(this.meshFile);
        }
        C2632k dependencyFiles = ensureEmbeddedMat().getDependencyFiles(dependencyRequest);
        if (dependencyFiles != null && (list = dependencyFiles.f9114a) != null) {
            c2632k.f9114a.addAll(list);
        }
        return c2632k;
    }

    @Override
    public String getDisplayableTitle() {
        return "Embedded Mat MR";
    }

    @Override
    public float getFloatFromAnimation(String entryName) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73682F;
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
            this.tab = w.Model;
        }
        linkedList.add(new C5.b(new r(context), R.layout.inspector_component_terrain_tabs, (Object) null));
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
        Material material = this.f73682F;
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
        return new d();
    }

    public Material getMaterial() {
        Material material = this.f73682F;
        return material != null ? material : ensureEmbeddedMat();
    }

    public List<C5.b> getMaterialEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        ensureEmbeddedMat();
        Material material = this.f73682F;
        if (material != null) {
            linkedList.addAll(material.A(context, new v()));
        }
        return linkedList;
    }

    public String getMaterialFile() {
        return null;
    }

    @Override
    public List<Material> getMaterialsForAsyncLoad() {
        return Collections.singletonList(this.f73682F);
    }

    public String getMeshFile() {
        return this.meshFile;
    }

    public C12886a getModel() {
        if (this.f73681E == null) {
            this.f73681E = new C12886a();
        }
        return this.f73681E;
    }

    public List<C5.b> getModelEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (getMeshFile() == null || !getMeshFile().startsWith("@@ASSET@@")) {
            linkedList.add(new C5.b(new t(), R.layout.inspector_thumb, (Object) null));
        } else {
            linkedList.add(new C5.b(new s(), R.layout.inspector_thumb, (Object) null));
        }
        linkedList.add(new C5.b(new u(), (String) null, b.a.InputFile, ".mesh"));
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
        Material material = this.f73682F;
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
        if (this.f73695S || getVertex() == null || this.f73682F == null || (d02 = getVertex().d0()) == null) {
            return 0.0f;
        }
        return d02.getRadius();
    }

    @Override
    public Vector3 getRenderCenter() {
        AABB d02;
        if (this.f73695S || getVertex() == null || this.f73682F == null || (d02 = getVertex().d0()) == null) {
            return null;
        }
        return d02.m();
    }

    public float[] getRenderMatrix(Camera camera, float[] editableMatrix) {
        if (this.billboard) {
            return com.itsmagic.engine.Engines.Engine.Vector.a.d(this.f73686J, editableMatrix, camera, this.zAlign);
        }
        return this.f73686J;
    }

    @Override
    public String getTitle() {
        return "Embedded Mat MR";
    }

    @Override
    public Component.e getType() {
        return Component.e.ModelRenderer;
    }

    @Override
    public Vector2 getVec2FromAnimation(String entryName) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73682F;
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
        Material material = this.f73682F;
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
        return this.f73682F != null;
    }

    public boolean hasModel() {
        return getModel().c();
    }

    @Override
    public boolean hasRenderBounding() {
        return (this.f73695S || getVertex() == null || this.f73682F == null) ? false : true;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    public boolean isCastShadow() {
        return this.castShadow;
    }

    public boolean isEnableOutline() {
        return this.enableOutline;
    }

    public boolean isReceiveShadow() {
        return this.receiveShadow;
    }

    public boolean isSuppressRender() {
        return this.f73695S;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        if (getMeshFile() != null && !getMeshFile().isEmpty()) {
            listener.b("(" + this.f79250n.getName() + "),(EmbeddedMatMR),(Loading),(" + getMeshFile() + ")");
            updateMesh(new l(listener));
        }
        listener.e();
        listener.b("(" + this.f79250n.getName() + "),(EmbeddedMatMR),(Loading),(embedded material)");
        listener.d(0.0f);
        updateMaterial(true);
        listener.d(1.0f);
        listener.e();
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
                    MousePicker.l lVar = new MousePicker.l(gizmoObject, new i());
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
                MousePicker.l lVar2 = new MousePicker.l(gizmoObject2, new h());
                listener.a(lVar2);
                K8.a.J(lVar2);
            }
        }
    }

    @Override
    public void onAttach() {
        super.onAttach();
        this.f79250n.transform.u(this.f73699W);
        updateMesh(null);
        updateMaterial(false);
        buildRenderable();
    }

    @Override
    public void onDetach() {
        Transform transform;
        if (this.f73693Q != null) {
            destroyRenderable();
        }
        C12886a c12886a = this.f73681E;
        if (c12886a != null && c12886a.b() != null) {
            this.f73681E.b().L1(this.f73698V);
        }
        this.f73681E = null;
        Material material = this.f73682F;
        if (material != null) {
            material.W(this);
            this.f73682F.X(this.f73697U);
        }
        this.f73682F = null;
        this.f73685I = null;
        this.f73684H = null;
        this.f73688L.setVertex(null);
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f73699W);
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
        this.f73689M = null;
        this.f73688L.setVertex(null);
    }

    @Override
    public void onSceneChanged(FilamentScene oldScene) {
        super.onSceneChanged(oldScene);
        if (this.f73693Q == null) {
            return;
        }
        destroyRenderable(oldScene, true);
        if (isHierarchyActive()) {
            buildRenderable();
        }
    }

    public void onVertexChangedRenderables() {
        if (this.f73695S) {
            destroyRenderable();
            return;
        }
        if (!K8.a.r()) {
            K8.a.I(new g());
            return;
        }
        if (this.f73693Q == null) {
            buildRenderable();
            return;
        }
        com.itsmagic.engine.Engines.Engine.Vertex.Vertex vertex = getVertex();
        if (vertex.x1()) {
            Box k02 = vertex.k0();
            this.f73694R.setGeometryAt(0, RenderableManager.b.TRIANGLES, vertex.f1(), vertex.l0());
            this.f73694R.setBounding(k02);
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
            this.f73683G = ((J) event).f9032a;
            onMaterialChanged();
        }
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10;
        String str = this.meshFile;
        if (str != null && !str.isEmpty() && !this.meshFile.startsWith("@@ASSET@@") && (f10 = dictionary.f(this.meshFile)) != null) {
            dictionary.h("MeshRenderer: REPLACING " + this.meshFile + " TO " + f10.b());
            this.meshFile = f10.b();
        }
        ensureEmbeddedMat().reloadFilesPaths(dictionary);
    }

    public void removeFromGraphics() {
        if (this.f73696T) {
            if (this.f73693Q != null) {
                getEffectiveScene().s(this.f73693Q);
            }
            this.f73696T = false;
        }
    }

    public void setCastShadow(boolean castShadow) {
        if (this.castShadow != castShadow) {
            K8.a.B(new m());
        }
        this.castShadow = castShadow;
    }

    @Override
    public void setColorFromAnimation(String entryName, ColorINT value) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73682F;
        if (material != null && (y10 = material.y()) != null && (k10 = y10.k()) != null) {
            try {
                k10.f0(entryName, value);
                return;
            } catch (RuntimeException unused) {
            }
        }
        super.setColorFromAnimation(entryName, value);
    }

    public void setEnableOutline(boolean enableOutline) {
        this.enableOutline = enableOutline;
    }

    @Override
    public void setFloatFromAnimation(String entryName, float value) {
        dc.k y10;
        ShaderBinder k10;
        Material material = this.f73682F;
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
        Material material = this.f73682F;
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
        Material material2 = this.f73682F;
        if (material2 != null) {
            material2.W(this);
            this.f73682F.X(this.f73697U);
        }
        this.embeddedMat = createOwnedMaterial(material);
        this.f73682F = null;
        this.f73685I = null;
        updateMaterial(false);
        reloadInspector();
    }

    public void setMaterialFile(String materialFile) {
    }

    public void setMaterialFileButDontLoad(String materialFile) {
    }

    public void setMeshFile(String meshFile) {
        this.meshFile = meshFile;
        updateMesh(null);
    }

    public void setMeshFileButDontLoad(String meshFile) {
        this.meshFile = meshFile;
        this.f73684H = meshFile;
    }

    public void setModel(com.itsmagic.engine.Engines.Engine.Vertex.Vertex vertex) {
        setModel(new C12886a(vertex));
    }

    public void setModelCritical(com.itsmagic.engine.Engines.Engine.Vertex.Vertex vertex) {
        this.f73681E = new C12886a(vertex);
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
            K8.a.B(new n());
        }
        this.receiveShadow = receiveShadow;
    }

    public void setRenderMatrix(float[] renderMatrix) {
        Nc.c.b(renderMatrix, this.f73686J);
        this.f73687K = Nc.d.j(-999999, 999999);
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73701Y = run;
    }

    public void setSuppressRender(boolean suppressRender) {
        if (this.f73695S != suppressRender) {
            this.f73695S = suppressRender;
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
        Material material = this.f73682F;
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
        Material material = this.f73682F;
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
        JAVARuntime.Component component = this.f73701Y;
        if (component != null) {
            return component;
        }
        JAVARuntime.EmbeddedMatMR embeddedMatMR = new JAVARuntime.EmbeddedMatMR(this);
        this.f73701Y = embeddedMatMR;
        return embeddedMatMR;
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
        p6.g L12 = p6.d.E1() ? p6.d.L1("drawGizmo") : null;
        drawGizmo();
        p6.d.J1(L12);
    }

    @Override
    public void updateOnUnselectedHierarchy() {
        super.updateOnUnselectedHierarchy();
        if (this.f73689M != null) {
            this.f73689M = null;
            this.f73688L.setVertex(null);
        }
        this.f73690N = false;
        this.f73691O = false;
    }

    @Override
    public Component mo1248clone() {
        EmbeddedMatMR embeddedMatMR = new EmbeddedMatMR();
        embeddedMatMR.version = this.version;
        embeddedMatMR.setMeshFile(this.meshFile);
        embeddedMatMR.setMaterial(createOwnedMaterial(ensureEmbeddedMat()));
        embeddedMatMR.castShadow = this.castShadow;
        embeddedMatMR.receiveShadow = this.receiveShadow;
        embeddedMatMR.zAlign = this.zAlign;
        embeddedMatMR.billboard = this.billboard;
        embeddedMatMR.priority = this.priority;
        return embeddedMatMR;
    }

    public void setModel(C12886a model) {
        setModelInternal(model, false);
    }

    public float[] getRenderMatrix() {
        return this.f73686J;
    }

    public void destroyRenderable() {
        destroyRenderable(getEffectiveScene(), true);
    }

    public EmbeddedMatMR(String meshFile) {
        this(meshFile, null);
    }

    public EmbeddedMatMR(String meshFile, Material material) {
        super(f73679q0);
        this.version = (char) 0;
        this.meshFile = null;
        this.embeddedMat = createOwnedMaterial(null);
        this.castShadow = true;
        this.receiveShadow = true;
        this.billboard = false;
        this.zAlign = false;
        this.tab = w.Model;
        this.priority = 0;
        this.outlineColor = new ColorINT(255, 0, 0);
        this.enableOutline = false;
        this.outlineScale = 0.05f;
        this.f73685I = null;
        this.f73686J = new float[16];
        this.f73687K = -1;
        this.f73688L = new GizmoObjectMatrix();
        this.f73690N = false;
        this.f73691O = false;
        this.f73692P = 0.0f;
        this.f73695S = false;
        this.f73696T = false;
        this.f73697U = new o();
        this.f73698V = new p();
        this.f73699W = new q();
        this.meshFile = meshFile;
        if (material != null) {
            this.embeddedMat = createOwnedMaterial(material);
        }
    }

    @Deprecated
    public EmbeddedMatMR(String meshFile, Boolean meshFileFromAssets, Material material) {
        super(f73679q0);
        this.version = (char) 0;
        this.meshFile = null;
        this.embeddedMat = createOwnedMaterial(null);
        this.castShadow = true;
        this.receiveShadow = true;
        this.billboard = false;
        this.zAlign = false;
        this.tab = w.Model;
        this.priority = 0;
        this.outlineColor = new ColorINT(255, 0, 0);
        this.enableOutline = false;
        this.outlineScale = 0.05f;
        this.f73685I = null;
        this.f73686J = new float[16];
        this.f73687K = -1;
        this.f73688L = new GizmoObjectMatrix();
        this.f73690N = false;
        this.f73691O = false;
        this.f73692P = 0.0f;
        this.f73695S = false;
        this.f73696T = false;
        this.f73697U = new o();
        this.f73698V = new p();
        this.f73699W = new q();
        setMeshFile(meshFile);
        if (getMeshFile() != null && meshFileFromAssets.booleanValue() && !getMeshFile().startsWith("@@ASSET@@")) {
            setMeshFile("@@ASSET@@" + meshFile);
        }
        if (material != null) {
            this.embeddedMat = createOwnedMaterial(material);
        }
    }

    @Deprecated
    public EmbeddedMatMR(String meshFile, Boolean meshFileFromAssets, Material material, boolean allowRender, boolean castShadow) {
        super(f73679q0);
        this.version = (char) 0;
        this.meshFile = null;
        this.embeddedMat = createOwnedMaterial(null);
        this.castShadow = true;
        this.receiveShadow = true;
        this.billboard = false;
        this.zAlign = false;
        this.tab = w.Model;
        this.priority = 0;
        this.outlineColor = new ColorINT(255, 0, 0);
        this.enableOutline = false;
        this.outlineScale = 0.05f;
        this.f73685I = null;
        this.f73686J = new float[16];
        this.f73687K = -1;
        this.f73688L = new GizmoObjectMatrix();
        this.f73690N = false;
        this.f73691O = false;
        this.f73692P = 0.0f;
        this.f73695S = false;
        this.f73696T = false;
        this.f73697U = new o();
        this.f73698V = new p();
        this.f73699W = new q();
        this.castShadow = castShadow;
        if (meshFile != null && meshFileFromAssets.booleanValue() && !meshFile.startsWith("@@ASSET@@")) {
            setMeshFile("@@ASSET@@" + meshFile);
        } else {
            setMeshFile(meshFile);
        }
        if (material != null) {
            this.embeddedMat = createOwnedMaterial(material);
        }
    }
}
