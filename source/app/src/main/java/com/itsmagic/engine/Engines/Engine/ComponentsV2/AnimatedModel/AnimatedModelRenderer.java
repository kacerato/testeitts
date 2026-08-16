package com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel;

import C5.b;
import Fb.c;
import Ic.C2629h;
import Ic.C2632k;
import Ic.C2633l;
import Ic.J;
import JAVARuntime.Runnable;
import M7.c;
import android.content.Context;
import android.opengl.Matrix;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.filament.Box;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.TransformManager;
import com.google.gson.JsonElement;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import da.C12894h;
import da.InterfaceC12890d;
import da.InterfaceC12893g;
import dd.C12908b;
import ec.EnumC13053a;
import fb.AbstractC13203c;
import fb.C13201a;
import ib.InterfaceC13601h;
import java.io.File;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class AnimatedModelRenderer extends Component implements Serializable {

    public static final Class f72849D2;

    public static final int f72850i2 = 4096;

    public static final float[] f72851m2;

    public static final com.itsmagic.engine.Engines.Engine.Vector.f f72852q2;

    public static final String f72853v2 = "AnimatedModelRenderer";

    public transient int f72854D0;

    public Vertex f72855E;

    public Material f72856F;

    public transient String f72857F1;

    public Material f72858G;

    public int f72859H;

    public transient HashMap<Long, S8.d> f72860H1;

    public String f72861I;

    public String f72862J;

    public boolean f72863K;

    public final float[] f72864L;

    public transient int f72865L1;

    public int f72866M;

    public final InterfaceC13601h f72867M1;

    public boolean f72868N;

    public Camera f72869O;

    public transient Rb.c f72870P;

    public transient FilamentRenderable f72871Q;

    public transient FilamentMaterial f72872R;

    public final InterfaceC12890d f72873R1;

    public transient boolean f72874S;

    public transient int[] f72875T;

    public transient float[] f72876U;

    public transient float[][] f72877V;

    public final Cb.a f72878V1;

    public transient S8.a f72879W;

    public transient BakedArmature f72880X;

    public transient BakedArmature f72881Y;

    public transient HashMap<Integer, Integer> f72882Z;

    public transient Box f72883b1;

    public JAVARuntime.Component f72884b2;

    @Expose
    public float[] boneBoundingRadius;

    @Expose
    public HashMap<Integer, Integer> boneGlobalToLocalMap;

    @Expose
    public boolean castShadow;

    @Expose
    public boolean dualFaceRenderer;

    public transient Vector3 f72885i1;

    @Expose
    @eb.f
    public HashMap<Integer, float[]> inverseBindBoneMatrix;

    public transient float f72886m1;

    @Expose
    public String materialFile;

    @Expose
    private String meshFile;

    @Expose
    public boolean meshFileFromAssets;

    public transient HashMap<Integer, float[]> f72887q0;

    public transient boolean f72888q1;

    @Expose
    public boolean receiveShadow;

    @Expose
    public boolean showSkinBonesGizmo;

    @Expose
    private r tab;

    public transient int f72889v0;

    public transient boolean f72890v1;

    public transient long f72891y1;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            if (AnimatedModelRenderer.this.getMaterialFile() == null) {
                return new Variable("", "");
            }
            return new Variable("temp", AnimatedModelRenderer.this.getMaterialFile() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AnimatedModelRenderer.this.setMaterialFile(variable.str_value);
            }
        }
    }

    public class b implements InterfaceC12893g {

        public class a implements Runnable {

            public class RunnableC1185a implements Runnable {
                public RunnableC1185a() {
                }

                @Override
                public void run() {
                    File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + AnimatedModelRenderer.this.getMaterialFile()));
                    if (file.exists()) {
                        D7.c.c(file, null);
                    }
                    A5.a.x1(AnimatedModelRenderer.this);
                }
            }

            public a() {
            }

            @Override
            public void run() {
                N7.c.j0(new RunnableC1185a());
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
            return AnimatedModelRenderer.this;
        }

        @Override
        public String c() {
            return AnimatedModelRenderer.this.getGuid().j();
        }

        @Override
        public String d() {
            GameObject gameObject = AnimatedModelRenderer.this.f79250n;
            return gameObject != null ? gameObject.getGuid().j() : "";
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", AnimatedModelRenderer.this.castShadow + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AnimatedModelRenderer.this.castShadow = variable.booolean_value.booleanValue();
            }
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", AnimatedModelRenderer.this.receiveShadow + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AnimatedModelRenderer.this.receiveShadow = variable.booolean_value.booleanValue();
                AnimatedModelRenderer.this.reloadInspector();
            }
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("", AnimatedModelRenderer.this.showSkinBonesGizmo + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                AnimatedModelRenderer.this.showSkinBonesGizmo = variable.booolean_value.booleanValue();
            }
        }
    }

    public class f extends SteppedArrayList<C12908b> {

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                if (AnimatedModelRenderer.this.f79250n != null) {
                    ModelRenderer modelRenderer = new ModelRenderer();
                    modelRenderer.setMeshFile(AnimatedModelRenderer.this.meshFile);
                    modelRenderer.setMaterialFile(AnimatedModelRenderer.this.materialFile);
                    AnimatedModelRenderer.this.f79250n.r(modelRenderer);
                    AnimatedModelRenderer.this.destroyComponent();
                }
            }
        }

        public f() {
            add(new C12908b("Convert to mr", new a()));
        }
    }

    public class g implements c.g {

        public final s f72901a;

        public g(final s val$listener) {
            this.f72901a = val$listener;
        }

        @Override
        public void setProgress(float v10) {
            this.f72901a.setProgress(v10);
        }
    }

    public class h implements s {

        public final Lb.a f72903a;

        public h(final Lb.a val$listener) {
            this.f72903a = val$listener;
        }

        @Override
        public void setProgress(float v10) {
            this.f72903a.d(v10);
        }
    }

    public class i extends AbstractC13203c {
        @Override
        public Class b() {
            return AnimatedModelRenderer.f72849D2;
        }

        @Override
        public String c() {
            return AnimatedModelRenderer.f72853v2;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.MODEL_RENDERERS);
        }

        @Override
        public String f() {
            return AnimatedModelRenderer.f72853v2;
        }
    }

    public class j implements InterfaceC13601h {
        public j() {
        }

        @Override
        public void a(com.itsmagic.engine.Engines.Engine.Vector.f globalMatrix) {
            Transform transform;
            Qb.a.d();
            AnimatedModelRenderer animatedModelRenderer = AnimatedModelRenderer.this;
            GameObject gameObject = animatedModelRenderer.f79250n;
            if (gameObject != null && (transform = gameObject.transform) != null) {
                animatedModelRenderer.f72866M = transform.x4(null, animatedModelRenderer.f72866M);
            }
            if (AnimatedModelRenderer.this.f72870P != null) {
                globalMatrix.o(AnimatedModelRenderer.this.f72864L);
                TransformManager i10 = Qb.a.i();
                i10.u(i10.h(AnimatedModelRenderer.this.f72870P.getId()), AnimatedModelRenderer.this.f72864L);
            }
        }
    }

    public class k implements InterfaceC12890d {
        public k() {
        }

        @Override
        public void a(FilamentMaterial filamentMaterial) {
            AnimatedModelRenderer.this.onMaterialChanged();
        }
    }

    public class l implements Cb.a {
        public l() {
        }

        @Override
        public void a() {
            AnimatedModelRenderer.this.onVertexChangedRenderable();
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override
        public void run() {
            AnimatedModelRenderer.this.applyMaterialChanged();
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override
        public void run() {
            AnimatedModelRenderer.this.applyVertexChangedRenderable();
        }
    }

    public class o implements D5.e {

        public static final int f72910f = 2;

        public LinearLayout f72911a;

        public final List<M7.g> f72912b = new LinkedList();

        public LayoutInflater f72913c;

        public final Context f72914d;

        public class a implements M7.r {
            public a() {
            }

            @Override
            public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
                if (value) {
                    r rVar = AnimatedModelRenderer.this.tab;
                    r rVar2 = r.Model;
                    if (rVar != rVar2) {
                        AnimatedModelRenderer.this.tab = rVar2;
                        AnimatedModelRenderer.this.reloadInspector();
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
                    r rVar = AnimatedModelRenderer.this.tab;
                    r rVar2 = r.Material;
                    if (rVar != rVar2) {
                        AnimatedModelRenderer.this.tab = rVar2;
                        AnimatedModelRenderer.this.reloadInspector();
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
                    r rVar = AnimatedModelRenderer.this.tab;
                    r rVar2 = r.Data;
                    if (rVar != rVar2) {
                        AnimatedModelRenderer.this.tab = rVar2;
                        AnimatedModelRenderer.this.reloadInspector();
                    }
                }
            }
        }

        public o(final Context val$context) {
            this.f72914d = val$context;
        }

        public final void c() {
            this.f72911a.removeAllViews();
            for (int i10 = 0; i10 < this.f72912b.size(); i10++) {
                d(this.f72912b.get(i10));
            }
        }

        public final void d(M7.g element) {
            element.a(this.f72911a, this.f72914d, this.f72913c);
            element.n(f(this.f72911a).e());
        }

        public M7.k e(Context context, LinearLayout parent, LayoutInflater layoutInflater) {
            M7.k kVar = new M7.k(Nc.b.l0(2.0f, context));
            kVar.a(parent, context, layoutInflater);
            return kVar;
        }

        public final M7.k f(LinearLayout parent) {
            return e(this.f72914d, parent, this.f72913c);
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.content);
            this.f72911a = linearLayout;
            linearLayout.removeAllViews();
            this.f72913c = LayoutInflater.from(context);
            this.f72912b.clear();
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
            r[] values = r.values();
            int i10 = 0;
            while (true) {
                if (i10 >= values.length) {
                    break;
                }
                if (values[i10] == AnimatedModelRenderer.this.tab) {
                    pVar.z(i10, false);
                    break;
                }
                i10++;
            }
            this.f72912b.add(pVar);
            c();
        }
    }

    public class p implements D5.h {

        public class a implements Runnable {

            public final Variable f72920b;

            public a(final Variable val$variable) {
                this.f72920b = val$variable;
            }

            @Override
            public void run() {
                AnimatedModelRenderer.this.setMeshFile(this.f72920b.str_value, false);
            }
        }

        public p() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", AnimatedModelRenderer.this.meshFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class q implements D5.e {
        public q() {
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            ImageView imageView = (ImageView) view.findViewById(R.id.imageView);
            Vc.e.U((ImageView) view.findViewById(R.id.background), R.drawable.thumb_background_v2);
            String str = Tc.b.O(AnimatedModelRenderer.this.getMaterialFile()) + ".meta/thumb.png";
            U.h u10 = new U.h().y().u(R.drawable.cubemap_v3);
            E7.f.a(AnimatedModelRenderer.this.getMaterialFile());
            File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + str));
            if (!file.exists() || AnimatedModelRenderer.this.getMaterialFile() == null || AnimatedModelRenderer.this.getMaterialFile().isEmpty()) {
                File file2 = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + AnimatedModelRenderer.this.getMaterialFile()));
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

    public enum r {
        Model,
        Material,
        Data
    }

    public interface s {
        void setProgress(float v10);
    }

    static {
        float[] fArr = new float[16];
        f72851m2 = fArr;
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = new com.itsmagic.engine.Engines.Engine.Vector.f();
        f72852q2 = fVar;
        f72849D2 = AnimatedModelRenderer.class;
        C13201a.b(new i());
        fVar.G();
        fVar.o(fArr);
    }

    public AnimatedModelRenderer() {
        super(f72853v2);
        this.meshFile = "";
        this.castShadow = true;
        this.receiveShadow = true;
        this.showSkinBonesGizmo = false;
        this.tab = r.Model;
        this.dualFaceRenderer = false;
        this.inverseBindBoneMatrix = null;
        this.boneGlobalToLocalMap = new HashMap<>();
        this.boneBoundingRadius = null;
        this.f72859H = -1;
        this.f72863K = true;
        this.f72864L = new float[16];
        this.f72866M = -1;
        this.f72868N = false;
        this.f72869O = null;
        this.f72874S = false;
        this.f72889v0 = -1;
        this.f72854D0 = -1;
        this.f72890v1 = true;
        this.f72891y1 = Long.MIN_VALUE;
        this.f72865L1 = Integer.MIN_VALUE;
        this.f72867M1 = new j();
        this.f72873R1 = new k();
        this.f72878V1 = new l();
    }

    private void addToGraphics() {
        if (this.f72874S) {
            return;
        }
        if (this.f72870P == null) {
            buildRenderable();
        } else {
            getEffectiveScene().j(this.f72870P);
            this.f72874S = true;
        }
    }

    private void applyInstantToLocalPoses(L8.b instant, S8.a skeleton, S8.b[] localPoses) {
        int b10;
        if (instant == null) {
            return;
        }
        List<L8.c> a10 = instant.a();
        for (int i10 = 0; i10 < a10.size(); i10++) {
            L8.c cVar = a10.get(i10);
            Ac.b e10 = cVar.e();
            Ac.b l10 = cVar.l();
            if (e10 != null && l10 != null && e10.W(com.itsmagic.engine.Engines.Engine.Animation.a.f72593a) && (b10 = skeleton.b(l10)) >= 0 && b10 < localPoses.length) {
                S8.b bVar = localPoses[b10];
                String f10 = cVar.f();
                if (com.itsmagic.engine.Engines.Engine.Animation.a.f72594b.equals(f10) && cVar.r() != null) {
                    bVar.f22996a.set(cVar.r());
                } else if (com.itsmagic.engine.Engines.Engine.Animation.a.f72595c.equals(f10) && cVar.n() != null) {
                    bVar.f22997b.u0(cVar.n());
                } else if ("s".equals(f10) && cVar.r() != null) {
                    bVar.f22998c.set(cVar.r());
                }
            }
        }
    }

    public void applyMaterialChanged() {
        Material material;
        this.f72863K = hasModel() && this.f72856F != null;
        if (this.f72871Q == null || (material = this.f72856F) == null || !material.I()) {
            destroyFilamentRenderable();
            buildRenderable();
            return;
        }
        FilamentMaterial z10 = this.f72856F.z();
        Material material2 = this.f72858G;
        if (material2 != null && material2.I()) {
            z10 = this.f72858G.z();
        }
        this.f72871Q.setMaterialInstanceAt(0, z10);
        this.f72871Q.setPriority(this.f72856F.isDrawInFront() ? 7 : 1);
        Material material3 = this.f72858G;
        applyTransparentBlendOrderPolicy((material3 == null || !material3.I()) ? this.f72856F : this.f72858G);
        this.f72872R = z10;
        uploadCurrentPose();
    }

    private void applyTransparentBlendOrderPolicy(Material sourceMaterial) {
        if (this.f72871Q == null) {
            return;
        }
        if (!isTransparentBlend(sourceMaterial)) {
            this.f72871Q.setGlobalBlendOrderEnabledAt(0, false);
        } else {
            this.f72871Q.setGlobalBlendOrderEnabledAt(0, true);
            this.f72871Q.setBlendOrderAt(0, 4096);
        }
    }

    public void applyVertexChangedRenderable() {
        updateJointQuantity();
        invalidateSkinningRuntimeState();
        destroyFilamentRenderable();
        buildRenderable();
    }

    private S8.d buildPosePalette(BakedArmature armature) {
        int i10;
        float[] fArr;
        int i11;
        float[] fArr2;
        float[] fArr3;
        boolean z10;
        S8.d dVar = new S8.d(this.f72859H, f72851m2);
        S8.a aVar = this.f72879W;
        if (aVar == null || aVar.e() == 0) {
            dVar.j(new S8.c());
            dVar.a();
            return dVar;
        }
        S8.b[] a10 = aVar.a();
        com.itsmagic.engine.Engines.Engine.Animation.d currentAnimation = armature.getCurrentAnimation();
        if (currentAnimation != null && currentAnimation.h() != null) {
            L8.b k10 = L8.a.k(currentAnimation.h(), armature.getPoseFrame());
            try {
                applyInstantToLocalPoses(k10, aVar, a10);
            } finally {
                k10.c();
            }
        }
        S8.c cVar = new S8.c();
        int e10 = aVar.e();
        int i12 = e10 * 16;
        float[] fArr4 = new float[i12];
        float[] fArr5 = new float[i12];
        int i13 = 16;
        float[] fArr6 = new float[16];
        int i14 = 0;
        while (i14 < e10) {
            int i15 = i14 * 16;
            S8.b bVar = a10[i14];
            int i16 = i14;
            writeTransformMatrix(bVar.f22996a, bVar.f22998c, bVar.f22997b, fArr4, i15);
            int i17 = aVar.f22992b[i16];
            if (i17 >= 0) {
                fArr = fArr6;
                i11 = i13;
                fArr2 = fArr5;
                fArr3 = fArr4;
                Matrix.multiplyMM(fArr6, 0, fArr5, i17 * 16, fArr3, i15);
                i10 = i15;
                z10 = false;
                System.arraycopy(fArr, 0, fArr2, i10, i11);
            } else {
                i10 = i15;
                fArr = fArr6;
                i11 = i13;
                fArr2 = fArr5;
                fArr3 = fArr4;
                z10 = false;
                System.arraycopy(fArr3, i10, fArr2, i10, i11);
            }
            int i18 = aVar.f22995e[i16];
            if (i18 >= 0 && i18 < this.f72859H) {
                float[] fArr7 = this.f72877V[i18];
                if (fArr7 != null) {
                    Matrix.multiplyMM(fArr, 0, fArr2, i10, fArr7, 0);
                    dVar.h(i18, fArr);
                } else {
                    dVar.i(i18, fArr2, i10);
                }
                cVar.h(fArr2, i10, this.f72876U[i18]);
            }
            fArr5 = fArr2;
            fArr6 = fArr;
            i13 = i11;
            fArr4 = fArr3;
            i14 = i16 + 1;
        }
        dVar.j(cVar);
        dVar.a();
        return dVar;
    }

    private void buildRenderable() {
        Transform transform;
        boolean z10 = hasModel() && this.f72856F != null;
        this.f72863K = z10;
        if (z10 && this.f72859H > 0 && this.f72870P == null) {
            Vertex vertex = getVertex();
            Material material = this.f72856F;
            if (vertex == null || !vertex.x1() || material == null || !material.I()) {
                return;
            }
            FilamentMaterial z11 = material.z();
            Material material2 = this.f72858G;
            if (material2 != null && material2.I()) {
                z11 = this.f72858G.z();
            }
            FilamentMaterial filamentMaterial = z11;
            this.f72872R = filamentMaterial;
            this.f72866M = -1;
            this.f72870P = new Rb.c();
            FilamentRenderable filamentRenderable = new FilamentRenderable(new RenderableManager.a(1).d(this.castShadow).y(this.receiveShadow), filamentMaterial, this.f72870P, vertex.f1(), vertex.l0(), RenderableManager.b.TRIANGLES, this.f72859H, vertex.k0());
            this.f72871Q = filamentRenderable;
            filamentRenderable.setPriority(material.isDrawInFront() ? 7 : 1);
            Material material3 = this.f72858G;
            if (material3 != null && material3.I()) {
                material = this.f72858G;
            }
            applyTransparentBlendOrderPolicy(material);
            TransformManager i10 = Qb.a.i();
            if (i10.h(this.f72870P.getId()) == 0) {
                i10.b(this.f72870P.getId());
            }
            GameObject gameObject = this.f79250n;
            if (gameObject != null && (transform = gameObject.transform) != null) {
                transform.r0(this.f72864L);
                i10.u(i10.h(this.f72870P.getId()), this.f72864L);
                this.f72866M = this.f79250n.transform.x4(null, this.f72866M);
            }
            if (isHierarchyActive()) {
                getEffectiveScene().j(this.f72870P);
                this.f72874S = true;
            } else {
                this.f72874S = false;
            }
            uploadCurrentPose();
        }
    }

    private void cacheRendererBones() {
        HashMap<Integer, Integer> hashMap = this.boneGlobalToLocalMap;
        if (hashMap == null) {
            return;
        }
        for (Integer num : hashMap.o()) {
            Integer num2 = this.boneGlobalToLocalMap.get(num);
            if (num != null && num2 != null && num2.intValue() >= 0) {
                int intValue = num2.intValue();
                int[] iArr = this.f72875T;
                if (intValue < iArr.length) {
                    iArr[num2.intValue()] = num.intValue();
                    HashMap<Integer, float[]> hashMap2 = this.inverseBindBoneMatrix;
                    float[] fArr = hashMap2 != null ? hashMap2.get(num) : null;
                    if (fArr != null) {
                        float[] fArr2 = new float[16];
                        Nc.c.b(fArr, fArr2);
                        this.f72877V[num2.intValue()] = fArr2;
                    }
                    if (this.boneBoundingRadius != null && num2.intValue() < this.boneBoundingRadius.length) {
                        this.f72876U[num2.intValue()] = this.boneBoundingRadius[num2.intValue()];
                    }
                }
            }
        }
    }

    private void destroyFilamentRenderable() {
        Rb.c cVar = this.f72870P;
        FilamentRenderable filamentRenderable = this.f72871Q;
        if (cVar != null) {
            removeEntityFromOwnerScene(cVar, getEffectiveScene());
        }
        this.f72870P = null;
        this.f72871Q = null;
        this.f72872R = null;
        this.f72874S = false;
        this.f72883b1 = null;
        this.f72885i1 = null;
        this.f72886m1 = 0.0f;
        this.f72888q1 = false;
        if (filamentRenderable != null) {
            filamentRenderable.destroyImmediate();
        }
        if (cVar != null) {
            cVar.destroyImmediate();
        }
    }

    private void ensureSkeletonCache(BakedArmature armature) {
        int[] iArr;
        float[] fArr;
        float[][] fArr2;
        int i10 = this.f72859H;
        if (i10 <= 0 || armature == null) {
            return;
        }
        if (!this.f72890v1 && (iArr = this.f72875T) != null && (fArr = this.f72876U) != null && (fArr2 = this.f72877V) != null && iArr.length == i10 && fArr.length == i10 && fArr2.length == i10 && this.f72881Y == armature) {
            HashMap<?, ?> hashMap = this.f72882Z;
            HashMap<?, ?> hashMap2 = this.boneGlobalToLocalMap;
            if (hashMap == hashMap2 && this.f72887q0 == this.inverseBindBoneMatrix && this.f72889v0 == getMapSize(hashMap2) && this.f72854D0 == getMapSize(this.inverseBindBoneMatrix)) {
                return;
            }
        }
        int i11 = this.f72859H;
        this.f72875T = new int[i11];
        this.f72876U = new float[i11];
        this.f72877V = new float[i11];
        this.f72881Y = armature;
        HashMap<Integer, Integer> hashMap3 = this.boneGlobalToLocalMap;
        this.f72882Z = hashMap3;
        this.f72887q0 = this.inverseBindBoneMatrix;
        this.f72889v0 = getMapSize(hashMap3);
        this.f72854D0 = getMapSize(this.inverseBindBoneMatrix);
        for (int i12 = 0; i12 < this.f72859H; i12++) {
            this.f72875T[i12] = -1;
            this.f72876U[i12] = 0.5f;
        }
        cacheRendererBones();
        this.f72879W = new S8.a(armature.getBoneList(), this.boneGlobalToLocalMap);
        this.f72891y1 = Long.MIN_VALUE;
        this.f72857F1 = null;
        this.f72860H1 = null;
        this.f72865L1 = Integer.MIN_VALUE;
        this.f72890v1 = false;
    }

    private void ensureSkinningRuntimePrepared(BakedArmature armature) {
        ensureSkeletonCache(armature);
    }

    private List<C5.b> getDataEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        c cVar = new c();
        String l10 = Lang.l(Lang.T.CAST_SHADOWS);
        b.a aVar = b.a.SLBoolean;
        linkedList.add(new C5.b(cVar, l10, aVar));
        linkedList.add(new C5.b(new d(), "Receive shadows", aVar));
        linkedList.add(new C5.b(new e(), Lang.l(Lang.T.SHOW_GIZMO), aVar));
        linkedList.add(new C5.b(this.f72859H + " " + Lang.l(Lang.T.CONNECTED_JOINTS), 12));
        try {
            BakedArmature bakedArmature = this.f72880X;
            if (bakedArmature != null) {
                linkedList.add(new C5.b(S8.e.f(bakedArmature.getArmatureID(), getPosePaletteCacheKey()) + " baked poses", 12));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return linkedList;
    }

    private int getMapSize(HashMap<?, ?> map) {
        if (map != null) {
            return map.size();
        }
        return -1;
    }

    private List<C5.b> getMaterialEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new q(), R.layout.inspector_thumb, (Object) null));
        linkedList.add(new C5.b(new a(), (String) null, b.a.InputFile, ".mat"));
        Material material = this.f72856F;
        if (material != null) {
            linkedList.addAll(material.A(context, new b()));
        }
        return linkedList;
    }

    private List<C5.b> getModelEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new p(), Lang.l(Lang.T.MODEL), b.a.InputFile, ".mesh"));
        return linkedList;
    }

    private String getPosePaletteCacheKey() {
        return this.meshFile + "#jq=" + this.f72859H;
    }

    private void invalidateSkinningRuntimeState() {
        this.f72875T = null;
        this.f72876U = null;
        this.f72877V = null;
        this.f72879W = null;
        this.f72880X = null;
        this.f72881Y = null;
        this.f72882Z = null;
        this.f72887q0 = null;
        this.f72889v0 = -1;
        this.f72854D0 = -1;
        this.f72883b1 = null;
        this.f72885i1 = null;
        this.f72886m1 = 0.0f;
        this.f72888q1 = false;
        this.f72890v1 = true;
        this.f72891y1 = Long.MIN_VALUE;
        this.f72857F1 = null;
        this.f72860H1 = null;
        this.f72865L1 = Integer.MIN_VALUE;
    }

    private boolean isLastUploadedMeshFile() {
        String str = this.meshFile;
        return str == null ? this.f72857F1 == null : str.equals(this.f72857F1);
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

    public void onMaterialChanged() {
        if (K8.a.r()) {
            applyMaterialChanged();
        } else {
            K8.a.I(new m());
        }
    }

    public void onVertexChangedRenderable() {
        if (K8.a.r()) {
            applyVertexChangedRenderable();
        } else {
            K8.a.I(new n());
        }
    }

    private void removeEntityFromOwnerScene(Rb.c entity, FilamentScene preferredScene) {
        if (entity == null) {
            return;
        }
        if (preferredScene == null || !preferredScene.l(entity)) {
            preferredScene = FilamentScene.m(entity);
        }
        if (preferredScene != null) {
            preferredScene.s(entity);
        }
    }

    private BakedArmature resolveArmatureComponent() {
        BakedArmature bakedArmature = this.f72880X;
        if (bakedArmature != null && bakedArmature.f79250n != null) {
            return bakedArmature;
        }
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            this.f72880X = null;
            return null;
        }
        BakedArmature bakedArmature2 = (BakedArmature) gameObject.i0(BakedArmature.class);
        this.f72880X = bakedArmature2;
        return bakedArmature2;
    }

    private HashMap<Long, S8.d> resolveCachedPaletteGroup(int armatureID) {
        int d10 = S8.e.d();
        HashMap<Long, S8.d> hashMap = this.f72860H1;
        if (hashMap != null && this.f72865L1 == d10) {
            return hashMap;
        }
        HashMap<Long, S8.d> e10 = S8.e.e(armatureID, getPosePaletteCacheKey());
        this.f72860H1 = e10;
        this.f72865L1 = d10;
        return e10;
    }

    private S8.d resolvePosePalette(int armatureID, long poseID, BakedArmature armature) {
        try {
            if (this.f72859H > 0 && armature != null) {
                ensureSkinningRuntimePrepared(armature);
                if (poseID == this.f72891y1 && isLastUploadedMeshFile()) {
                    return null;
                }
                HashMap<Long, S8.d> resolveCachedPaletteGroup = resolveCachedPaletteGroup(armatureID);
                S8.d dVar = resolveCachedPaletteGroup != null ? resolveCachedPaletteGroup.get(Long.valueOf(poseID)) : null;
                if (dVar == null || dVar.b() != this.f72859H) {
                    dVar = buildPosePalette(armature);
                    if (resolveCachedPaletteGroup != null) {
                        resolveCachedPaletteGroup.put(Long.valueOf(poseID), dVar);
                    }
                }
                this.f72891y1 = poseID;
                this.f72857F1 = this.meshFile;
                return dVar;
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void updateJointQuantity() {
        int i10 = this.f72859H;
        this.f72859H = 1;
        for (Integer num : this.boneGlobalToLocalMap.values()) {
            if (num != null) {
                this.f72859H = Nc.b.U0(this.f72859H, num.intValue() + 1);
            }
        }
        if (i10 != this.f72859H) {
            invalidateSkinningRuntimeState();
        }
    }

    private void updateMaterial(boolean preventMaterialLoad) {
        String str = this.materialFile;
        if (str == null || str.isEmpty()) {
            setMaterial(null);
            this.f72862J = null;
            return;
        }
        String str2 = this.f72862J;
        if (str2 == null || !str2.equals(this.materialFile)) {
            Material t10 = C12894h.t(this.materialFile);
            if (t10 != null) {
                t10.f78883c = preventMaterialLoad;
            }
            setMaterial(t10);
            this.f72862J = this.materialFile;
            reloadInspector();
        }
    }

    private void updateMesh(s listener) {
        boolean z10;
        String str = this.meshFile;
        if (str == null || str.isEmpty()) {
            if (this.f72861I == null && this.f72855E == null) {
                return;
            }
            this.f72861I = null;
            setVertex(null);
            return;
        }
        String str2 = this.f72861I;
        if (str2 == null || !str2.equals(this.meshFile)) {
            this.f72861I = this.meshFile;
            g gVar = listener != null ? new g(listener) : null;
            String str3 = this.meshFile;
            if (str3.startsWith("@@ASSET@@")) {
                str3 = str3.replace("@@ASSET@@", "");
                z10 = true;
            } else {
                z10 = false;
            }
            if (!C2633l.b(str3, ".mesh")) {
                setVertex(null);
                return;
            }
            try {
                setVertex(Fb.c.p(str3, z10, false, gVar));
            } catch (OutOfMemoryError e10) {
                e10.printStackTrace();
            }
        }
    }

    private void uploadCurrentPose() {
        BakedArmature resolveArmatureComponent = resolveArmatureComponent();
        if (resolveArmatureComponent != null) {
            uploadPose(resolveArmatureComponent.getArmatureID(), resolveArmatureComponent.getPoseID(), resolveArmatureComponent);
        }
    }

    private void uploadPose(int armatureID, long poseID, BakedArmature armature) {
        S8.d resolvePosePalette;
        if (!this.f72863K || this.f72871Q == null || armature == null || (resolvePosePalette = resolvePosePalette(armatureID, poseID, armature)) == null) {
            return;
        }
        uploadToSkinningBuffer(resolvePosePalette);
    }

    private void uploadToSkinningBuffer(S8.d posePalette) {
        FilamentRenderable filamentRenderable = this.f72871Q;
        if (filamentRenderable == null || posePalette == null || this.f72859H <= 0) {
            return;
        }
        filamentRenderable.setSkinningBuffer(posePalette.f());
        this.f72883b1 = posePalette.e();
        this.f72885i1 = posePalette.c();
        this.f72886m1 = posePalette.d();
        this.f72888q1 = posePalette.g();
        this.f72871Q.setBounding(this.f72883b1);
    }

    private void writeTransformMatrix(Vector3 position, Vector3 scale, Quaternion rotation, float[] out, int offset) {
        float j02 = rotation.j0();
        float f10 = j02 != 1.0f ? j02 > 0.0f ? 2.0f / j02 : 0.0f : 2.0f;
        float x10 = rotation.getX() * f10;
        float y10 = rotation.getY() * f10;
        float z10 = rotation.getZ() * f10;
        float x11 = rotation.getX() * x10;
        float x12 = rotation.getX() * y10;
        float x13 = rotation.getX() * z10;
        float I10 = rotation.I() * x10;
        float y11 = rotation.getY() * y10;
        float y12 = rotation.getY() * z10;
        float I11 = rotation.I() * y10;
        float z11 = rotation.getZ() * z10;
        float I12 = rotation.I() * z10;
        out[offset] = scale.getX() * (1.0f - (y11 + z11));
        out[offset + 1] = scale.getX() * (x12 + I12);
        out[offset + 2] = scale.getX() * (x13 - I11);
        out[offset + 3] = 0.0f;
        out[offset + 4] = scale.getY() * (x12 - I12);
        out[offset + 5] = scale.getY() * (1.0f - (z11 + x11));
        out[offset + 6] = scale.getY() * (y12 + I10);
        out[offset + 7] = 0.0f;
        out[offset + 8] = scale.getZ() * (x13 + I11);
        out[offset + 9] = scale.getZ() * (y12 - I10);
        out[offset + 10] = scale.getZ() * (1.0f - (x11 + y11));
        out[offset + 11] = 0.0f;
        out[offset + 12] = position.getX();
        out[offset + 13] = position.getY();
        out[offset + 14] = position.getZ();
        out[offset + 15] = 1.0f;
    }

    @Override
    public int countAsync() {
        return 2;
    }

    public BakedArmature getBakedArmature() {
        return resolveArmatureComponent();
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        String str;
        C2632k c2632k = new C2632k();
        if (!this.meshFileFromAssets && (str = this.meshFile) != null && !str.isEmpty()) {
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
        return f72853v2;
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
        if (context == null) {
            return linkedList;
        }
        if (this.tab == null) {
            this.tab = r.Model;
        }
        linkedList.add(new C5.b(new o(context), R.layout.inspector_component_terrain_tabs, (Object) null));
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

    public int getJointQuantity() {
        return this.f72859H;
    }

    @Override
    public List<C12908b> getLongTapMenu() {
        return new f();
    }

    public Material getMaterial() {
        return this.f72856F;
    }

    public String getMaterialFile() {
        return this.materialFile;
    }

    @Override
    public List<Material> getMaterialsForAsyncLoad() {
        return Collections.singletonList(this.f72856F);
    }

    public String getMeshFile() {
        return this.meshFile;
    }

    @Override
    public float getRenderBounding() {
        AABB d02;
        if (this.f72888q1) {
            return this.f72886m1;
        }
        if (getVertex() == null || this.f72856F == null || (d02 = getVertex().d0()) == null) {
            return 0.0f;
        }
        return d02.getRadius();
    }

    @Override
    public AABB getRenderBoundingBox() {
        AABB d02;
        Box box;
        if (!this.f72888q1) {
            if (getVertex() == null || this.f72856F == null || (d02 = getVertex().d0()) == null) {
                return null;
            }
            return d02;
        }
        if (this.f72885i1 == null || (box = this.f72883b1) == null) {
            return null;
        }
        float[] b10 = box.b();
        float x10 = this.f72885i1.getX();
        float y10 = this.f72885i1.getY();
        float z10 = this.f72885i1.getZ();
        AABB aabb = new AABB();
        aabb.L(this.f72885i1);
        aabb.Q(new Vector3(x10 - b10[0], y10 - b10[1], z10 - b10[2]));
        aabb.P(new Vector3(x10 + b10[0], y10 + b10[1], z10 + b10[2]));
        aabb.setRadius(this.f72886m1);
        return aabb;
    }

    @Override
    public Vector3 getRenderCenter() {
        AABB d02;
        if (this.f72888q1) {
            if (this.f72885i1 != null) {
                return new Vector3(this.f72885i1);
            }
            return null;
        }
        if (getVertex() == null || this.f72856F == null || (d02 = getVertex().d0()) == null) {
            return null;
        }
        return d02.m();
    }

    public float[] getRenderMatrix() {
        return this.f72864L;
    }

    @Override
    public String getTitle() {
        return f72853v2;
    }

    public Vertex getVertex() {
        return this.f72855E;
    }

    @Override
    public boolean hasMaterialForAsyncLoad() {
        return this.f72856F != null;
    }

    public boolean hasModel() {
        return this.f72855E != null;
    }

    @Override
    public boolean hasRenderBounding() {
        if (this.f72888q1) {
            return true;
        }
        return (getVertex() == null || this.f72856F == null || getVertex().d0() == null) ? false : true;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        String str = this.meshFile;
        if (str != null && !str.isEmpty()) {
            listener.b("(" + this.f79250n.getName() + "),(AnimatedModelRenderer),(Loading Model),(" + this.meshFile + ")");
            updateMesh(new h(listener));
        }
        listener.e();
        String str2 = this.materialFile;
        if (str2 != null && !str2.isEmpty()) {
            listener.b("(" + this.f79250n.getName() + "),(AnimatedModelRenderer),(Loading Material),(" + this.materialFile + ")");
            listener.d(0.0f);
            updateMaterial(true);
            listener.d(1.0f);
        }
        listener.e();
    }

    @Override
    public void onAttach() {
        Transform transform;
        super.onAttach();
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.u(this.f72867M1);
        }
        updateJointQuantity();
        resolveArmatureComponent();
        updateMesh(null);
        updateMaterial(false);
        if (isHierarchyActive()) {
            buildRenderable();
        }
    }

    @Override
    public void onDetach() {
        Transform transform;
        destroyFilamentRenderable();
        invalidateSkinningRuntimeState();
        GameObject gameObject = this.f79250n;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f72867M1);
        }
        Vertex vertex = this.f72855E;
        if (vertex != null) {
            vertex.L1(this.f72878V1);
        }
        Material material = this.f72856F;
        if (material != null) {
            material.W(this);
            this.f72856F.X(this.f72873R1);
        }
        this.f72855E = null;
        this.f72856F = null;
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
    public void onParentChanged() {
        super.onParentChanged();
        invalidateSkinningRuntimeState();
        resolveArmatureComponent();
        uploadCurrentPose();
    }

    public void onPoseChanged(int armatureID, long poseID, BakedArmature armature) {
        uploadPose(armatureID, poseID, armature);
    }

    @Override
    public void onSceneChanged(FilamentScene oldScene) {
        super.onSceneChanged(oldScene);
        Rb.c cVar = this.f72870P;
        if (cVar == null) {
            return;
        }
        removeEntityFromOwnerScene(cVar, oldScene);
        this.f72874S = false;
        if (isHierarchyActive()) {
            addToGraphics();
        }
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof J) {
            this.f72858G = ((J) event).f9032a;
            onMaterialChanged();
        }
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10;
        BuildDicFile f11;
        if (!this.meshFileFromAssets && (f11 = dictionary.f(this.meshFile)) != null) {
            dictionary.h("AnimatedModelRenderer: REPLACING " + this.meshFile + " TO " + f11.b());
            this.meshFile = f11.b();
        }
        String str = this.materialFile;
        if (str == null || str.isEmpty() || (f10 = dictionary.f(this.materialFile)) == null) {
            return;
        }
        dictionary.h("AnimatedModelRenderer: REPLACING " + this.materialFile + " TO " + f10.b());
        this.materialFile = f10.b();
    }

    public void removeFromGraphics() {
        if (this.f72874S) {
            Rb.c cVar = this.f72870P;
            if (cVar != null) {
                removeEntityFromOwnerScene(cVar, getEffectiveScene());
            }
            this.f72874S = false;
        }
    }

    @Override
    public JsonElement serialize(Context context) {
        return super.serialize(context);
    }

    public void setMaterial(Material material) {
        Material material2 = this.f72856F;
        if (material2 != null) {
            material2.W(this);
            this.f72856F.X(this.f72873R1);
        }
        Material material3 = this.f72856F;
        this.f72856F = material;
        if (material != null) {
            material.i(this);
            this.f72856F.j(this.f72873R1);
            String str = material.f78885e;
            this.f72862J = str;
            this.materialFile = str;
            if (!material.f78896r) {
                C12894h.d(material);
            }
        }
        if (material3 != this.f72856F) {
            onMaterialChanged();
        }
    }

    public void setMaterialFile(String materialFile) {
        this.materialFile = materialFile;
        updateMaterial(false);
    }

    public void setMaterialFileButDontLoad(String materialFile) {
        this.materialFile = materialFile;
        this.f72862J = materialFile;
    }

    public void setMeshFile(String meshFile, boolean meshFileFromAssets) {
        this.meshFile = meshFile;
        this.meshFileFromAssets = meshFileFromAssets;
        this.f72860H1 = null;
        this.f72865L1 = Integer.MIN_VALUE;
        updateMesh(null);
    }

    public AnimatedModelRenderer setRenderHasGizmo(boolean renderHasGizmo) {
        this.f72868N = renderHasGizmo;
        return this;
    }

    public void setRenderMatrix(float[] renderMatrix) {
        Nc.c.b(renderMatrix, this.f72864L);
        this.f72866M = Nc.d.j(-999999, 999999);
    }

    public AnimatedModelRenderer setRenderToCamera(Camera renderToCamera) {
        this.f72869O = renderToCamera;
        return this;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f72884b2 = run;
    }

    public void setVertex(Vertex vertex) {
        Vertex vertex2 = this.f72855E;
        if (vertex2 != null) {
            vertex2.L1(this.f72878V1);
        }
        this.f72855E = vertex;
        invalidateSkinningRuntimeState();
        if (vertex != null) {
            vertex.v(this.f72878V1);
            if (!Fb.c.g(vertex)) {
                Fb.c.d(Tc.b.L(), vertex);
            }
        }
        onVertexChangedRenderable();
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f72884b2;
        if (component != null) {
            return component;
        }
        JAVARuntime.AnimatedModelRenderer animatedModelRenderer = new JAVARuntime.AnimatedModelRenderer(this);
        this.f72884b2 = animatedModelRenderer;
        return animatedModelRenderer;
    }

    @Override
    public Component mo1248clone() {
        AnimatedModelRenderer animatedModelRenderer = new AnimatedModelRenderer(this.meshFile, this.meshFileFromAssets, this.materialFile, this.castShadow, this.f72859H);
        animatedModelRenderer.castShadow = this.castShadow;
        animatedModelRenderer.receiveShadow = this.receiveShadow;
        animatedModelRenderer.inverseBindBoneMatrix = this.inverseBindBoneMatrix;
        animatedModelRenderer.boneGlobalToLocalMap = this.boneGlobalToLocalMap;
        animatedModelRenderer.boneBoundingRadius = this.boneBoundingRadius;
        animatedModelRenderer.inverseBindBoneMatrix = this.inverseBindBoneMatrix;
        animatedModelRenderer.boneGlobalToLocalMap = this.boneGlobalToLocalMap;
        return animatedModelRenderer;
    }

    public AnimatedModelRenderer(String meshFile, String materialFile) {
        super(f72853v2);
        this.meshFile = "";
        this.castShadow = true;
        this.receiveShadow = true;
        this.showSkinBonesGizmo = false;
        this.tab = r.Model;
        this.dualFaceRenderer = false;
        this.inverseBindBoneMatrix = null;
        this.boneGlobalToLocalMap = new HashMap<>();
        this.boneBoundingRadius = null;
        this.f72859H = -1;
        this.f72863K = true;
        this.f72864L = new float[16];
        this.f72866M = -1;
        this.f72868N = false;
        this.f72869O = null;
        this.f72874S = false;
        this.f72889v0 = -1;
        this.f72854D0 = -1;
        this.f72890v1 = true;
        this.f72891y1 = Long.MIN_VALUE;
        this.f72865L1 = Integer.MIN_VALUE;
        this.f72867M1 = new j();
        this.f72873R1 = new k();
        this.f72878V1 = new l();
        this.meshFile = meshFile;
        this.materialFile = materialFile;
    }

    public AnimatedModelRenderer(String meshFile, String materialFile, int jointQuantity) {
        super(f72853v2);
        this.meshFile = "";
        this.castShadow = true;
        this.receiveShadow = true;
        this.showSkinBonesGizmo = false;
        this.tab = r.Model;
        this.dualFaceRenderer = false;
        this.inverseBindBoneMatrix = null;
        this.boneGlobalToLocalMap = new HashMap<>();
        this.boneBoundingRadius = null;
        this.f72859H = -1;
        this.f72863K = true;
        this.f72864L = new float[16];
        this.f72866M = -1;
        this.f72868N = false;
        this.f72869O = null;
        this.f72874S = false;
        this.f72889v0 = -1;
        this.f72854D0 = -1;
        this.f72890v1 = true;
        this.f72891y1 = Long.MIN_VALUE;
        this.f72865L1 = Integer.MIN_VALUE;
        this.f72867M1 = new j();
        this.f72873R1 = new k();
        this.f72878V1 = new l();
        this.meshFile = meshFile;
        this.materialFile = materialFile;
        this.f72859H = jointQuantity;
    }

    public AnimatedModelRenderer(String meshFile, boolean meshFileFromAssets, String materialFile, boolean castShadow, int jointQuantity) {
        super(f72853v2);
        this.meshFile = "";
        this.castShadow = true;
        this.receiveShadow = true;
        this.showSkinBonesGizmo = false;
        this.tab = r.Model;
        this.dualFaceRenderer = false;
        this.inverseBindBoneMatrix = null;
        this.boneGlobalToLocalMap = new HashMap<>();
        this.boneBoundingRadius = null;
        this.f72859H = -1;
        this.f72863K = true;
        this.f72864L = new float[16];
        this.f72866M = -1;
        this.f72868N = false;
        this.f72869O = null;
        this.f72874S = false;
        this.f72889v0 = -1;
        this.f72854D0 = -1;
        this.f72890v1 = true;
        this.f72891y1 = Long.MIN_VALUE;
        this.f72865L1 = Integer.MIN_VALUE;
        this.f72867M1 = new j();
        this.f72873R1 = new k();
        this.f72878V1 = new l();
        this.meshFile = meshFile;
        this.meshFileFromAssets = meshFileFromAssets;
        this.materialFile = materialFile;
        this.castShadow = castShadow;
        this.f72859H = jointQuantity;
    }
}
