package com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer;

import C5.b;
import Fb.c;
import Ic.C2629h;
import Ic.C2632k;
import Ic.C2633l;
import Ic.J;
import JAVARuntime.Runnable;
import M7.c;
import M7.r;
import android.content.Context;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.filament.Box;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.TransformManager;
import com.google.gson.JsonElement;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.F;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.Pose.BonePose;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.Pose.Pose;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkeletonBone.SkinJoint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkeletonBone.SkinJointUnpreparedException;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import da.C12894h;
import da.InterfaceC12893g;
import dd.C12908b;
import ec.EnumC13053a;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import java.io.File;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class SkinnedModelRenderer extends Component implements Serializable {

    public static final int f76418H2 = 4096;

    public static final String f76419L2 = "SkinnedModelRenderer";

    public static final Class f76420M2 = SkinnedModelRenderer.class;

    public static final float[] f76421R2;

    public static final com.itsmagic.engine.Engines.Engine.Vector.f f76422V2;

    public static final boolean f76423i3 = false;

    public static final long f76424m3 = 1469598103934665603L;

    public static final long f76425q3 = 1099511628211L;

    public transient float[][] f76426D0;

    public transient int f76427D2;

    public Vertex f76428E;

    public Material f76429F;

    public transient int f76430F1;

    public JAVARuntime.Component f76431F2;

    public Material f76432G;

    public boolean f76433H;

    public transient NativeFloatBuffer f76434H1;

    public GameObject f76435I;

    public Pose f76436J;

    public Pose f76437K;

    public boolean f76438L;

    public transient NativeFloatBuffer f76439L1;

    public int f76440M;

    public final transient Box f76441M1;

    public String f76442N;

    public String f76443O;

    public boolean f76444P;

    public final float[] f76445Q;

    public int f76446R;

    public transient Vector3 f76447R1;

    public boolean f76448S;

    public Camera f76449T;

    public boolean f76450U;

    public boolean f76451V;

    public transient float f76452V1;

    public Rb.c f76453W;

    public FilamentRenderable f76454X;

    public FilamentMaterial f76455Y;

    public boolean f76456Z;

    public transient Armature f76457b1;

    public transient boolean f76458b2;

    @Expose
    public float[] boneBoundingRadius;

    @Expose
    public HashMap<Integer, Integer> boneGlobalToLocalMap;

    @Expose
    private final Vector3 boundingMultiplier;

    @Expose
    public boolean castShadow;

    @Expose
    public boolean dualFaceRenderer;

    public transient Armature f76459i1;

    public transient int f76460i2;

    @Expose
    @eb.f
    public HashMap<Integer, float[]> inverseBindBoneMatrix;

    public transient GameObject f76461m1;

    public transient long f76462m2;

    @Expose
    public String materialFile;

    @Expose
    public String meshFile;

    @Expose
    public boolean meshFileFromAssets;

    @Expose
    public InspectorEditor posesEditor;

    public transient int[] f76463q0;

    public transient HashMap<Integer, Integer> f76464q1;

    public transient long f76465q2;

    @Expose
    public boolean receiveShadow;

    @Expose
    public boolean showSkinBonesGizmo;

    @Expose
    public SteppedArrayList<Pose> storedPoses;

    @Expose
    private o tab;

    public transient float[] f76466v0;

    public transient HashMap<Integer, float[]> f76467v1;

    public transient boolean f76468v2;

    @Expose
    public char version;

    public transient int f76469y1;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", SkinnedModelRenderer.this.receiveShadow + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SkinnedModelRenderer.this.receiveShadow = variable.booolean_value.booleanValue();
                SkinnedModelRenderer.this.reloadInspector();
            }
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", SkinnedModelRenderer.this.showSkinBonesGizmo + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SkinnedModelRenderer.this.showSkinBonesGizmo = variable.booolean_value.booleanValue();
            }
        }
    }

    public class c extends SteppedArrayList<C12908b> {

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                if (SkinnedModelRenderer.this.f79250n != null) {
                    ModelRenderer modelRenderer = new ModelRenderer();
                    modelRenderer.setMeshFile(SkinnedModelRenderer.this.meshFile);
                    modelRenderer.setMaterialFile(SkinnedModelRenderer.this.materialFile);
                    SkinnedModelRenderer.this.f79250n.r(modelRenderer);
                    SkinnedModelRenderer.this.destroyComponent();
                }
            }
        }

        public c() {
            add(new C12908b("Convert to mr", new a()));
        }
    }

    public class d implements c.g {

        public final p f76474a;

        public d(final p val$listener) {
            this.f76474a = val$listener;
        }

        @Override
        public void setProgress(float v10) {
            this.f76474a.setProgress(v10);
        }
    }

    public class e implements p {

        public final Lb.a f76476a;

        public e(final Lb.a val$listener) {
            this.f76476a = val$listener;
        }

        @Override
        public void setProgress(float v10) {
            this.f76476a.d(v10);
        }
    }

    public class f extends AbstractC13203c {
        @Override
        public Class b() {
            return SkinnedModelRenderer.f76420M2;
        }

        @Override
        public String c() {
            return SkinnedModelRenderer.f76419L2;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.MODEL_RENDERERS);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.SKINNED_MODEL_RENDERER);
        }

        @Override
        public List<fb.d> i() {
            return new SteppedArrayList();
        }
    }

    public class g implements D5.e {

        public static final int f76478f = 2;

        public LinearLayout f76479a;

        public final List<M7.g> f76480b = new LinkedList();

        public LayoutInflater f76481c;

        public final Context f76482d;

        public class a implements r {
            public a() {
            }

            @Override
            public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
                if (value) {
                    o oVar = SkinnedModelRenderer.this.tab;
                    o oVar2 = o.Model;
                    if (oVar != oVar2) {
                        SkinnedModelRenderer.this.tab = oVar2;
                        SkinnedModelRenderer.this.reloadInspector();
                    }
                }
            }
        }

        public class b implements r {
            public b() {
            }

            @Override
            public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
                if (value) {
                    o oVar = SkinnedModelRenderer.this.tab;
                    o oVar2 = o.Material;
                    if (oVar != oVar2) {
                        SkinnedModelRenderer.this.tab = oVar2;
                        SkinnedModelRenderer.this.reloadInspector();
                    }
                }
            }
        }

        public class c implements r {
            public c() {
            }

            @Override
            public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
                if (value) {
                    o oVar = SkinnedModelRenderer.this.tab;
                    o oVar2 = o.Poses;
                    if (oVar != oVar2) {
                        SkinnedModelRenderer.this.tab = oVar2;
                        SkinnedModelRenderer.this.reloadInspector();
                    }
                }
            }
        }

        public class d implements r {
            public d() {
            }

            @Override
            public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
                if (value) {
                    o oVar = SkinnedModelRenderer.this.tab;
                    o oVar2 = o.Data;
                    if (oVar != oVar2) {
                        SkinnedModelRenderer.this.tab = oVar2;
                        SkinnedModelRenderer.this.reloadInspector();
                    }
                }
            }
        }

        public g(final Context val$context) {
            this.f76482d = val$context;
        }

        private void c() {
            this.f76479a.removeAllViews();
            for (int i10 = 0; i10 < this.f76480b.size(); i10++) {
                d(this.f76480b.get(i10));
            }
        }

        private void d(M7.g element) {
            element.a(this.f76479a, this.f76482d, this.f76481c);
            element.n(f(this.f76479a).e());
        }

        private M7.k f(LinearLayout parent) {
            return e(this.f76482d, parent, this.f76481c);
        }

        public M7.k e(Context context, LinearLayout parent, LayoutInflater layoutInflater) {
            M7.k kVar = new M7.k(Nc.b.l0(2.0f, context));
            kVar.a(parent, context, layoutInflater);
            return kVar;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.content);
            this.f76479a = linearLayout;
            linearLayout.removeAllViews();
            this.f76481c = LayoutInflater.from(context);
            this.f76480b.clear();
            M7.o oVar = new M7.o(R.drawable.cube_v2, new a(), c.b.Left, context);
            Ac.b bVar = Theme.T.PRIMARY_DARK;
            M7.o B02 = oVar.B0(bVar);
            b bVar2 = new b();
            c.b bVar3 = c.b.Middle;
            M7.o B03 = new M7.o(R.drawable.cubemap_v3, bVar2, bVar3, context).B0(bVar);
            M7.o B04 = new M7.o(R.drawable.walk, new c(), bVar3, context).B0(bVar);
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
            o[] values = o.values();
            int i10 = 0;
            while (true) {
                if (i10 >= values.length) {
                    break;
                }
                if (values[i10] == SkinnedModelRenderer.this.tab) {
                    pVar.z(i10, false);
                    break;
                }
                i10++;
            }
            this.f76480b.add(pVar);
            c();
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", SkinnedModelRenderer.this.meshFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SkinnedModelRenderer skinnedModelRenderer = SkinnedModelRenderer.this;
                skinnedModelRenderer.meshFile = variable.str_value;
                skinnedModelRenderer.meshFileFromAssets = false;
            }
        }
    }

    public class i implements D5.e {
        public i() {
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            ImageView imageView = (ImageView) view.findViewById(R.id.imageView);
            Vc.e.U((ImageView) view.findViewById(R.id.background), R.drawable.thumb_background_v2);
            String str = Tc.b.O(SkinnedModelRenderer.this.getMaterialFile()) + ".meta/thumb.png";
            U.h u10 = new U.h().y().u(R.drawable.cubemap_v3);
            E7.f.a(SkinnedModelRenderer.this.getMaterialFile());
            File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + str));
            if (!file.exists() || SkinnedModelRenderer.this.getMaterialFile() == null || SkinnedModelRenderer.this.getMaterialFile().isEmpty()) {
                File file2 = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + SkinnedModelRenderer.this.getMaterialFile()));
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

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            if (SkinnedModelRenderer.this.getMaterialFile() == null) {
                return new Variable("", "");
            }
            return new Variable("temp", SkinnedModelRenderer.this.getMaterialFile() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SkinnedModelRenderer.this.setMaterialFile(variable.str_value);
            }
        }
    }

    public class k implements InterfaceC12893g {

        public class a implements Runnable {

            public class RunnableC1250a implements Runnable {
                public RunnableC1250a() {
                }

                @Override
                public void run() {
                    File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + SkinnedModelRenderer.this.getMaterialFile()));
                    if (file.exists()) {
                        D7.c.c(file, null);
                    }
                    A5.a.x1(SkinnedModelRenderer.this);
                }
            }

            public a() {
            }

            @Override
            public void run() {
                N7.c.j0(new RunnableC1250a());
            }
        }

        public k() {
        }

        @Override
        public void a() {
            K8.a.B(new a());
        }

        @Override
        public Component b() {
            return SkinnedModelRenderer.this;
        }

        @Override
        public String c() {
            return SkinnedModelRenderer.this.getGuid().j();
        }

        @Override
        public String d() {
            GameObject gameObject = SkinnedModelRenderer.this.f79250n;
            return gameObject != null ? gameObject.getGuid().j() : "";
        }
    }

    public class l implements D5.e {

        public class a implements View.OnClickListener {

            public final Pose f76495b;

            public a(final Pose val$pose) {
                this.f76495b = val$pose;
            }

            @Override
            public void onClick(View view) {
                SkinnedModelRenderer.this.storedPoses.remove(this.f76495b);
                SkinnedModelRenderer.this.reloadInspector();
            }
        }

        public class b implements View.OnClickListener {

            public final Pose f76497b;

            public b(final Pose val$pose) {
                this.f76497b = val$pose;
            }

            @Override
            public void onClick(View view) {
                SkinnedModelRenderer.this.f76437K = this.f76497b;
            }
        }

        public class c implements D5.f {

            public final C5.b f76499a;

            public final View f76500b;

            public c(final C5.b val$entry, final View val$inputField) {
                this.f76499a = val$entry;
                this.f76500b = val$inputField;
            }

            @Override
            public void a() {
                F.d(this.f76499a.f2067b.get().str_value, this.f76500b);
            }
        }

        public class d implements View.OnFocusChangeListener {

            public final C5.b f76502a;

            public final View f76503b;

            public final Pose f76504c;

            public d(final C5.b val$entry, final View val$inputField, final Pose val$pose) {
                this.f76502a = val$entry;
                this.f76503b = val$inputField;
                this.f76504c = val$pose;
            }

            @Override
            public void onFocusChange(View v10, boolean hasFocus) {
                Editable text;
                if (this.f76502a.i() || hasFocus || (text = F.c(this.f76503b).getText()) == null) {
                    return;
                }
                this.f76504c.name = text.toString();
            }
        }

        public l() {
        }

        public static boolean d(Pose pose, TextView textView, int i10, KeyEvent keyEvent) {
            if (i10 != 6) {
                return false;
            }
            pose.name = textView.getText().toString();
            return false;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            final Pose pose = (Pose) entry.f2073h;
            view.findViewById(R.id.trashButton).setOnClickListener(new a(pose));
            view.findViewById(R.id.restoreButton).setOnClickListener(new b(pose));
            View findViewById = view.findViewById(R.id.input);
            F.e(F.a.SingleLineText, findViewById);
            F.d(pose.name, findViewById);
            entry.f2076k = new c(entry, findViewById);
            try {
                F.c(findViewById).setOnEditorActionListener(new TextView.OnEditorActionListener() {
                    @Override
                    public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                        boolean d10;
                        d10 = SkinnedModelRenderer.l.d(Pose.this, textView, i10, keyEvent);
                        return d10;
                    }
                });
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            F.c(findViewById).setOnFocusChangeListener(new d(entry, findViewById, pose));
        }
    }

    public class m implements D5.a {
        public m() {
        }

        @Override
        public void a(View view, int adapterPosition) {
            SkinnedModelRenderer.this.f76436J = new Pose("Pose " + SkinnedModelRenderer.this.storedPoses.size());
            SkinnedModelRenderer skinnedModelRenderer = SkinnedModelRenderer.this;
            skinnedModelRenderer.storedPoses.add(skinnedModelRenderer.f76436J);
            SkinnedModelRenderer.this.reloadInspector();
        }
    }

    public class n implements D5.h {
        public n() {
        }

        @Override
        public Variable get() {
            return new Variable("", SkinnedModelRenderer.this.castShadow + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SkinnedModelRenderer.this.castShadow = variable.booolean_value.booleanValue();
            }
        }
    }

    public enum o {
        Model,
        Material,
        Poses,
        Data
    }

    public interface p {
        void setProgress(float v10);
    }

    static {
        C13201a.b(new f());
        float[] fArr = new float[16];
        f76421R2 = fArr;
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = new com.itsmagic.engine.Engines.Engine.Vector.f();
        f76422V2 = fVar;
        System.loadLibrary("native-skinning");
        fVar.G();
        fVar.o(fArr);
    }

    public SkinnedModelRenderer() {
        super(f76419L2);
        this.version = (char) 0;
        this.meshFile = "";
        this.castShadow = true;
        this.receiveShadow = true;
        this.showSkinBonesGizmo = false;
        this.tab = o.Model;
        this.storedPoses = new SteppedArrayList<>();
        this.posesEditor = new InspectorEditor(false);
        this.dualFaceRenderer = false;
        this.inverseBindBoneMatrix = null;
        this.boneGlobalToLocalMap = new HashMap<>();
        this.boneBoundingRadius = null;
        this.boundingMultiplier = new Vector3(1.1f);
        this.f76435I = null;
        this.f76436J = null;
        this.f76437K = null;
        this.f76440M = -1;
        this.f76444P = true;
        this.f76445Q = new float[16];
        this.f76446R = -1;
        this.f76448S = false;
        this.f76449T = null;
        this.f76450U = false;
        this.f76451V = false;
        this.f76456Z = false;
        this.f76469y1 = -1;
        this.f76430F1 = -1;
        this.f76441M1 = new Box();
        this.f76447R1 = new Vector3();
        this.f76460i2 = -1;
        this.f76468v2 = true;
        this.f76427D2 = Integer.MIN_VALUE;
    }

    private void applyTransparentBlendOrderPolicy(Material sourceMaterial) {
        if (this.f76454X == null) {
            return;
        }
        if (!isTransparentBlend(sourceMaterial)) {
            this.f76454X.setGlobalBlendOrderEnabledAt(0, false);
        } else {
            this.f76454X.setGlobalBlendOrderEnabledAt(0, true);
            this.f76454X.setBlendOrderAt(0, 4096);
        }
    }

    private long buildNativeSkinningSignature() {
        long mixSkinningSignature = mixSkinningSignature(f76424m3, this.f76440M);
        for (int i10 = 0; i10 < this.f76440M; i10++) {
            long mixSkinningSignature2 = mixSkinningSignature(mixSkinningSignature, this.f76463q0[i10]);
            float[] fArr = this.f76426D0[i10];
            mixSkinningSignature = mixSkinningSignature(mixSkinningSignature2, fArr != null ? 1 : 0);
            if (fArr != null) {
                for (int i11 = 0; i11 < 16; i11++) {
                    mixSkinningSignature = mixSkinningSignature(mixSkinningSignature, Float.floatToIntBits(fArr[i11]));
                }
            }
        }
        if (mixSkinningSignature != 0) {
            return mixSkinningSignature;
        }
        return 1L;
    }

    private void cacheRendererBones(Armature armature) {
        HashMap<Integer, Integer> hashMap = this.boneGlobalToLocalMap;
        if (hashMap == null) {
            return;
        }
        for (Integer num : hashMap.o()) {
            Integer num2 = this.boneGlobalToLocalMap.get(num);
            if (num != null && num2 != null && num2.intValue() >= 0) {
                int intValue = num2.intValue();
                int[] iArr = this.f76463q0;
                if (intValue < iArr.length) {
                    iArr[num2.intValue()] = num.intValue();
                    HashMap<Integer, float[]> hashMap2 = this.inverseBindBoneMatrix;
                    float[] fArr = hashMap2 != null ? hashMap2.get(num) : null;
                    SkinJoint findBoneByGlobalIndex = armature.findBoneByGlobalIndex(num.intValue());
                    if (fArr == null && findBoneByGlobalIndex != null) {
                        fArr = findBoneByGlobalIndex.inverseMatrix;
                    }
                    if (fArr != null) {
                        float[] fArr2 = new float[16];
                        Nc.c.b(fArr, fArr2);
                        this.f76426D0[num2.intValue()] = fArr2;
                    }
                    if (findBoneByGlobalIndex != null) {
                        float[] fArr3 = this.boneBoundingRadius;
                        if (fArr3 != null) {
                            this.f76466v0[num2.intValue()] = fArr3[num2.intValue()];
                        } else {
                            this.f76466v0[num2.intValue()] = 0.5f;
                        }
                    }
                }
            }
        }
    }

    private void configureNativeSkinningRenderer() {
        Armature resolveArmatureComponent = resolveArmatureComponent();
        if (this.f76440M <= 0 || this.f76435I == null || resolveArmatureComponent == null) {
            destroyNativeSkinningRenderer();
            return;
        }
        ensureNativeSkinningRenderer();
        long prepareNativeSkinningArmature = resolveArmatureComponent.prepareNativeSkinningArmature();
        int i10 = this.f76440M;
        float[] fArr = new float[i10 * 16];
        byte[] bArr = new byte[i10];
        for (int i11 = 0; i11 < this.f76440M; i11++) {
            float[] fArr2 = this.f76426D0[i11];
            if (fArr2 != null) {
                System.arraycopy(fArr2, 0, fArr, i11 * 16, 16);
                bArr[i11] = 1;
            }
        }
        nativeConfigureSkinningRenderer(this.f76465q2, prepareNativeSkinningArmature, this.f76462m2, this.f76463q0, this.f76466v0, fArr, bArr);
    }

    private void destroyFilamentRenderable() {
        Rb.c cVar = this.f76453W;
        if (cVar != null) {
            removeEntityFromOwnerScene(cVar, getEffectiveScene());
        }
        this.f76453W = null;
        this.f76454X = null;
        this.f76455Y = null;
        this.f76456Z = false;
    }

    private void destroyNativeSkinningRenderer() {
        long j10 = this.f76465q2;
        if (j10 != 0) {
            nativeDestroySkinningRenderer(j10);
            this.f76465q2 = 0L;
        }
    }

    private void ensureNativeSkinningRenderer() {
        if (this.f76465q2 == 0) {
            this.f76465q2 = nativeCreateSkinningRenderer();
        }
    }

    private void ensureSkeletonCache(Armature armature) {
        GameObject gameObject;
        int[] iArr;
        float[] fArr;
        float[][] fArr2;
        int i10 = this.f76440M;
        if (i10 <= 0 || (gameObject = this.f76435I) == null || armature == null) {
            return;
        }
        if (!this.f76468v2 && (iArr = this.f76463q0) != null && (fArr = this.f76466v0) != null && (fArr2 = this.f76426D0) != null && iArr.length == i10 && fArr.length == i10 && fArr2.length == i10 && this.f76461m1 == gameObject && this.f76459i1 == armature) {
            HashMap<?, ?> hashMap = this.f76464q1;
            HashMap<?, ?> hashMap2 = this.boneGlobalToLocalMap;
            if (hashMap == hashMap2 && this.f76467v1 == this.inverseBindBoneMatrix && this.f76469y1 == getMapSize(hashMap2) && this.f76430F1 == getMapSize(this.inverseBindBoneMatrix)) {
                return;
            }
        }
        int i11 = this.f76440M;
        this.f76463q0 = new int[i11];
        this.f76466v0 = new float[i11];
        this.f76426D0 = new float[i11];
        this.f76459i1 = armature;
        this.f76461m1 = this.f76435I;
        HashMap<Integer, Integer> hashMap3 = this.boneGlobalToLocalMap;
        this.f76464q1 = hashMap3;
        this.f76467v1 = this.inverseBindBoneMatrix;
        this.f76469y1 = getMapSize(hashMap3);
        this.f76430F1 = getMapSize(this.inverseBindBoneMatrix);
        for (int i12 = 0; i12 < this.f76440M; i12++) {
            this.f76463q0[i12] = -1;
        }
        cacheRendererBones(armature);
        this.f76462m2 = buildNativeSkinningSignature();
        configureNativeSkinningRenderer();
        this.f76427D2 = Integer.MIN_VALUE;
        this.f76468v2 = false;
    }

    private void ensureSkinningPaletteCapacity() {
        int i10 = this.f76440M;
        if (i10 <= 0) {
            return;
        }
        if (this.f76434H1 == null || this.f76460i2 != i10) {
            this.f76434H1 = new NativeFloatBuffer(this.f76440M * 16);
            this.f76439L1 = new NativeFloatBuffer(6);
            this.f76460i2 = this.f76440M;
            for (int i11 = 0; i11 < this.f76440M; i11++) {
                writeIdentityMatrixToPalette(i11);
            }
            this.f76434H1.position(0);
        }
    }

    private void ensureSkinningRuntimePrepared(Armature armature) {
        ensureSkeletonCache(armature);
        if (this.f76465q2 != 0) {
            ensureSkinningPaletteCapacity();
        }
    }

    private SteppedArrayList<BonePose> getBonePoses(GameObject parent) {
        SteppedArrayList<BonePose> steppedArrayList = new SteppedArrayList<>();
        if (parent != null && parent.transform != null) {
            for (GameObject gameObject : parent.z0()) {
                if (gameObject != null && gameObject.transform != null && ((SkinJoint) gameObject.c0(Component.e.SkinJoint)) != null) {
                    BonePose bonePose = new BonePose(gameObject.getGuid().l(), gameObject.transform.Z0(), gameObject.transform.h1(), gameObject.transform.getScale());
                    bonePose.children.addAll(getBonePoses(gameObject));
                    steppedArrayList.add(bonePose);
                }
            }
        }
        return steppedArrayList;
    }

    private List<C5.b> getDataEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        n nVar = new n();
        String l10 = Lang.l(Lang.T.CAST_SHADOWS);
        b.a aVar = b.a.SLBoolean;
        linkedList.add(new C5.b(nVar, l10, aVar));
        linkedList.add(new C5.b(new a(), "Receive shadows", aVar));
        linkedList.add(new C5.b(new b(), Lang.l(Lang.T.SHOW_GIZMO), aVar));
        linkedList.add(F5.c.L("Bounding multiplier", this.boundingMultiplier, new Vector3(1.1f)));
        linkedList.add(new C5.b(this.f76440M + " " + Lang.l(Lang.T.CONNECTED_JOINTS), 12));
        return linkedList;
    }

    private boolean getJointTransforms() {
        Armature resolveArmatureComponent;
        int currentPoseVersion;
        try {
            if (this.f76440M <= 0 || this.f76435I == null || (resolveArmatureComponent = resolveArmatureComponent()) == null) {
                return false;
            }
            ensureSkinningRuntimePrepared(resolveArmatureComponent);
            if (this.f76465q2 == 0 || (currentPoseVersion = resolveArmatureComponent.getCurrentPoseVersion()) == this.f76427D2) {
                return false;
            }
            nativeFillSkinningPalette(this.f76465q2, K8.a.k(), NativeFloatBuffer.getCriticalDirectCppPointer(this.f76434H1, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(this.f76439L1, 0L));
            this.f76427D2 = currentPoseVersion;
            return true;
        } catch (SkinJointUnpreparedException e10) {
            e10.printStackTrace();
            return false;
        } catch (Exception e11) {
            e11.printStackTrace();
            return false;
        }
    }

    private int getMapSize(HashMap<?, ?> map) {
        if (map != null) {
            return map.size();
        }
        return -1;
    }

    private List<C5.b> getMaterialEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new i(), R.layout.inspector_thumb, (Object) null));
        linkedList.add(new C5.b(new j(), (String) null, b.a.InputFile, ".mat"));
        Material material = this.f76429F;
        if (material != null) {
            linkedList.addAll(material.A(context, new k()));
        }
        return linkedList;
    }

    private List<C5.b> getModelEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new h(), Lang.l(Lang.T.MODEL), b.a.InputFile, ".mesh"));
        return linkedList;
    }

    private List<C5.b> getPosesEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (this.posesEditor == null) {
            this.posesEditor = new InspectorEditor();
        }
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.STORED_POSES), false, this.posesEditor));
        bVar.f2064Q.f2043p = R.color.inspector_meshrenderer;
        Iterator<Pose> it = getStoredPoses().iterator();
        while (it.hasNext()) {
            bVar.f2064Q.f2042o.add(new C5.b(new l(), R.layout.inspector_component_poseitem, it.next()));
        }
        bVar.f2064Q.f2042o.add(new C5.b(new m(), Lang.l(Lang.T.STORE_POSE)));
        linkedList.add(bVar);
        return linkedList;
    }

    private void invalidateSkinningRuntimeState() {
        this.f76463q0 = null;
        this.f76466v0 = null;
        this.f76426D0 = null;
        this.f76457b1 = null;
        this.f76459i1 = null;
        this.f76461m1 = null;
        this.f76464q1 = null;
        this.f76467v1 = null;
        this.f76469y1 = -1;
        this.f76430F1 = -1;
        this.f76434H1 = null;
        this.f76439L1 = null;
        this.f76452V1 = 0.0f;
        this.f76458b2 = false;
        this.f76460i2 = -1;
        this.f76462m2 = 0L;
        this.f76468v2 = true;
        this.f76427D2 = Integer.MIN_VALUE;
        destroyNativeSkinningRenderer();
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

    private long mixSkinningSignature(long hash, int value) {
        return (hash ^ (value & 4294967295L)) * f76425q3;
    }

    private static native void nativeConfigureSkinningRenderer(long handle, long armatureHandle, long skinningSignature, int[] boneGlobalIndices, float[] boneBoundingRadii, float[] inverseBindMatrices, byte[] inverseBindMask);

    private static native long nativeCreateSkinningRenderer();

    private static native void nativeDestroySkinningRenderer(long handle);

    private static native void nativeFillSkinningPalette(long handle, int frameId, long skinningPaletteBufferPointer, long skinningBoundingBoxBufferPointer);

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

    private Armature resolveArmatureComponent() {
        Armature armature = this.f76457b1;
        if (armature != null && armature.f79250n == this.f76435I) {
            return armature;
        }
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            this.f76457b1 = null;
            return null;
        }
        Component h02 = gameObject.h0(Component.e.Armature);
        if (!(h02 instanceof Armature)) {
            this.f76457b1 = null;
            return null;
        }
        Armature armature2 = (Armature) h02;
        this.f76457b1 = armature2;
        this.f76435I = h02.f79250n;
        return armature2;
    }

    private void restoreChildPose(BonePose parentPose, GameObject parent) {
        GameObject gameObject;
        boolean z10;
        for (int i10 = 0; i10 < parentPose.children.size(); i10++) {
            BonePose bonePose = parentPose.children.get(i10);
            int i11 = 0;
            while (true) {
                if (i11 >= parent.D()) {
                    gameObject = null;
                    z10 = false;
                    break;
                }
                gameObject = parent.C(i11);
                if (gameObject != null && gameObject.transform != null && gameObject.getGuid().l().equals(bonePose.objectGUID)) {
                    gameObject.transform.p3(bonePose.position);
                    gameObject.transform.x3(bonePose.rotation);
                    gameObject.transform.setScale(bonePose.scale);
                    z10 = true;
                    break;
                }
                i11++;
            }
            if (z10) {
                restoreChildPose(bonePose, gameObject);
            }
        }
    }

    private void restorePose(Pose pose) {
        GameObject gameObject = this.f76435I;
        if (gameObject == null) {
            N7.c.v0("Skeleton failed to restore pose: Theres no root bone available");
            return;
        }
        try {
            gameObject.transform.p3(pose.rootBone.position);
            this.f76435I.transform.x3(pose.rootBone.rotation);
            this.f76435I.transform.setScale(pose.rootBone.scale);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        restoreChildPose(pose.rootBone, this.f76435I);
    }

    private void savePose(Pose pose) {
        GameObject gameObject = this.f76435I;
        if (gameObject == null || gameObject.transform == null) {
            return;
        }
        BonePose bonePose = new BonePose(gameObject.getGuid().l(), this.f76435I.transform.Z0(), this.f76435I.transform.h1(), this.f76435I.transform.getScale());
        bonePose.children.addAll(getBonePoses(this.f76435I));
        pose.rootBone = bonePose;
    }

    private void updateJointQuantity() {
        int i10 = this.f76440M;
        this.f76440M = 1;
        for (Integer num : this.boneGlobalToLocalMap.values()) {
            if (num != null) {
                this.f76440M = Nc.b.U0(this.f76440M, num.intValue() + 1);
            }
        }
        if (i10 != this.f76440M) {
            invalidateSkinningRuntimeState();
        }
    }

    private void updateMaterial(boolean preventMaterialLoad) {
        String str = this.materialFile;
        if (str == null || str.isEmpty()) {
            Material material = this.f76429F;
            if (material != null) {
                material.V(this);
            }
            this.f76429F = null;
            return;
        }
        String str2 = this.f76443O;
        if (str2 == null || !str2.equals(this.materialFile)) {
            Material t10 = C12894h.t(this.materialFile);
            this.f76429F = t10;
            if (t10 != null) {
                t10.f78883c = preventMaterialLoad;
                t10.h(this);
            }
            this.f76443O = this.materialFile;
            reloadInspector();
        }
    }

    private void updateMesh(p listener) {
        boolean z10;
        String str = this.meshFile;
        if (str == null || str.isEmpty()) {
            return;
        }
        String str2 = this.f76442N;
        if (str2 == null || !str2.equals(this.meshFile)) {
            this.f76442N = this.meshFile;
            d dVar = listener != null ? new d(listener) : null;
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
                setVertex(Fb.c.p(str3, z10, false, dVar));
            } catch (OutOfMemoryError e10) {
                e10.printStackTrace();
            }
        }
    }

    private void writeIdentityMatrixToPalette(int localBoneIndex) {
        if (this.f76434H1 == null) {
            return;
        }
        int i10 = localBoneIndex * 16;
        for (int i11 = 0; i11 < 16; i11++) {
            this.f76434H1.set(i10 + i11, f76421R2[i11]);
        }
    }

    @Override
    public int countAsync() {
        return 3;
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        removeFromGraphics();
        this.f76444P = false;
    }

    public Vector3 getBoundingMultiplier() {
        return this.boundingMultiplier;
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
        return Lang.l(Lang.T.SKINNED_MODEL_RENDERER);
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
            this.tab = o.Model;
        }
        linkedList.add(new C5.b(new g(context), R.layout.inspector_component_terrain_tabs, (Object) null));
        int ordinal = this.tab.ordinal();
        if (ordinal == 0) {
            linkedList.addAll(getModelEntries(context));
        } else if (ordinal == 1) {
            linkedList.addAll(getMaterialEntries(context));
        } else if (ordinal == 2) {
            linkedList.addAll(getPosesEntries(context));
        } else if (ordinal == 3) {
            linkedList.addAll(getDataEntries(context));
        }
        return linkedList;
    }

    public int getJointQuantity() {
        return this.f76440M;
    }

    @Override
    public List<C12908b> getLongTapMenu() {
        return new c();
    }

    public Material getMaterial() {
        return this.f76429F;
    }

    public String getMaterialFile() {
        return this.materialFile;
    }

    @Override
    public List<Material> getMaterialsForAsyncLoad() {
        return Collections.singletonList(this.f76429F);
    }

    @Override
    public float getRenderBounding() {
        AABB d02;
        if (this.f76438L) {
            return 0.0f;
        }
        if (this.f76458b2) {
            return this.f76452V1;
        }
        if (getVertex() == null || this.f76429F == null || (d02 = getVertex().d0()) == null) {
            return 0.0f;
        }
        return d02.getRadius();
    }

    @Override
    public AABB getRenderBoundingBox() {
        AABB d02;
        Box box;
        if (this.f76438L) {
            return null;
        }
        if (!this.f76458b2) {
            if (getVertex() == null || this.f76429F == null || (d02 = getVertex().d0()) == null) {
                return null;
            }
            return d02;
        }
        if (this.f76447R1 == null || (box = this.f76441M1) == null) {
            return null;
        }
        float[] b10 = box.b();
        float x10 = this.f76447R1.getX();
        float y10 = this.f76447R1.getY();
        float z10 = this.f76447R1.getZ();
        AABB aabb = new AABB();
        aabb.L(this.f76447R1);
        aabb.Q(new Vector3(x10 - b10[0], y10 - b10[1], z10 - b10[2]));
        aabb.P(new Vector3(x10 + b10[0], y10 + b10[1], z10 + b10[2]));
        aabb.setRadius(this.f76452V1);
        return aabb;
    }

    @Override
    public Vector3 getRenderCenter() {
        AABB d02;
        if (this.f76438L) {
            return null;
        }
        if (this.f76458b2) {
            if (this.f76447R1 != null) {
                return new Vector3(this.f76447R1);
            }
            return null;
        }
        if (getVertex() == null || this.f76429F == null || (d02 = getVertex().d0()) == null) {
            return null;
        }
        return d02.m();
    }

    public float[] getRenderMatrix() {
        return this.f76445Q;
    }

    public GameObject getRootJoint() {
        return this.f76435I;
    }

    public SteppedArrayList<Pose> getStoredPoses() {
        if (this.storedPoses == null) {
            this.storedPoses = new SteppedArrayList<>();
        }
        return this.storedPoses;
    }

    @Override
    public String getTitle() {
        return f76419L2;
    }

    @Override
    public Component.e getType() {
        return Component.e.SkinnedModelRenderer;
    }

    public Vertex getVertex() {
        return this.f76428E;
    }

    @Override
    public boolean hasMaterialForAsyncLoad() {
        return this.f76429F != null;
    }

    public boolean hasModel() {
        return this.f76428E != null;
    }

    @Override
    public boolean hasRenderBounding() {
        if (this.f76438L) {
            return false;
        }
        if (this.f76458b2) {
            return true;
        }
        return (getVertex() == null || this.f76429F == null || getVertex().d0() == null) ? false : true;
    }

    public boolean isDisableSkinning() {
        return this.f76450U;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        String str = this.meshFile;
        if (str != null && !str.isEmpty()) {
            listener.b("(" + this.f79250n.getName() + "),(SkinnedModelRenderer),(Loading Model),(" + this.meshFile + ")");
            updateMesh(new e(listener));
        }
        listener.e();
        String str2 = this.materialFile;
        if (str2 != null && !str2.isEmpty()) {
            listener.b("(" + this.f79250n.getName() + "),(SkinnedModelRenderer),(Loading Material),(" + this.materialFile + ")");
            listener.d(0.0f);
            updateMaterial(true);
            listener.d(1.0f);
        }
        listener.e();
    }

    public void makeScheduledChanges() {
        updateMesh(null);
        updateMaterial(false);
    }

    @Override
    public void onDetach() {
        destroyFilamentRenderable();
        invalidateSkinningRuntimeState();
        Material material = this.f76429F;
        if (material != null) {
            material.V(this);
        }
        this.f76429F = null;
        super.onDetach();
    }

    @Override
    public void onParentChanged() {
        super.onParentChanged();
        this.f76435I = null;
        this.f76433H = false;
        invalidateSkinningRuntimeState();
    }

    @Override
    public void onSceneChanged(FilamentScene oldScene) {
        super.onSceneChanged(oldScene);
        Rb.c cVar = this.f76453W;
        if (cVar == null) {
            return;
        }
        removeEntityFromOwnerScene(cVar, oldScene);
        this.f76456Z = false;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        Material material;
        super.preUpdate(gameObject, isEditor);
        makeScheduledChanges();
        if (this.f76435I == null && !this.f76433H) {
            Component h02 = gameObject.h0(Component.e.Armature);
            if (h02 instanceof Armature) {
                this.f76457b1 = (Armature) h02;
                this.f76435I = h02.f79250n;
            }
            if (this.f76435I == null) {
                reloadInspector();
            } else {
                updateJointQuantity();
            }
            this.f76433H = true;
        }
        if (this.f76453W != null && (material = this.f76429F) != null) {
            FilamentMaterial z10 = material.z();
            Material material2 = this.f76432G;
            if (material2 != null && material2.I()) {
                z10 = this.f76432G.z();
            }
            if (z10 != this.f76455Y) {
                destroyFilamentRenderable();
            }
        }
        if (this.f76440M > 0 && this.f76453W == null && getVertex() != null) {
            Vertex vertex = getVertex();
            Material material3 = this.f76429F;
            if (vertex != null && vertex.x1() && material3 != null && material3.I()) {
                FilamentMaterial z11 = material3.z();
                Material material4 = this.f76432G;
                if (material4 != null && material4.I()) {
                    z11 = this.f76432G.z();
                }
                FilamentMaterial filamentMaterial = z11;
                this.f76455Y = filamentMaterial;
                this.f76446R = -1;
                this.f76453W = new Rb.c();
                FilamentRenderable filamentRenderable = new FilamentRenderable(new RenderableManager.a(1).d(this.castShadow).y(this.receiveShadow), filamentMaterial, this.f76453W, vertex.f1(), vertex.l0(), RenderableManager.b.TRIANGLES, this.f76440M, vertex.k0());
                this.f76454X = filamentRenderable;
                filamentRenderable.setPriority(material3.isDrawInFront() ? 7 : 1);
                Material material5 = this.f76432G;
                if (material5 != null && material5.I()) {
                    material3 = this.f76432G;
                }
                applyTransparentBlendOrderPolicy(material3);
                TransformManager i10 = Qb.a.i();
                if (i10.h(this.f76453W.getId()) == 0) {
                    i10.b(this.f76453W.getId());
                    i10.h(this.f76453W.getId());
                }
            }
        }
        this.f76444P = (!hasModel() || this.f76429F == null || this.f76438L) ? false : true;
        try {
            if (!gameObject.transform.s4(this.f76446R)) {
                gameObject.transform.r0(this.f76445Q);
                this.f76446R = gameObject.transform.k0();
                if (this.f76453W != null) {
                    TransformManager i11 = Qb.a.i();
                    i11.u(i11.h(this.f76453W.getId()), this.f76445Q);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f76444P = false;
        }
        if (!C13317e.J(this.f76435I)) {
            invalidateSkinningRuntimeState();
            this.f76435I = null;
        } else if (this.f76444P && this.f76454X != null && getJointTransforms() && this.f76454X != null) {
            uploadToSkinningBuffer();
        }
        if (this.f76436J != null && C13317e.J(this.f76435I)) {
            savePose(this.f76436J);
            this.f76436J = null;
        }
        Pose pose = this.f76437K;
        if (pose != null) {
            restorePose(pose);
            this.f76437K = null;
        }
        if (!this.f76444P) {
            removeFromGraphics();
            return;
        }
        if (this.f76453W == null) {
            this.f76456Z = false;
        } else {
            if (this.f76456Z) {
                return;
            }
            getEffectiveScene().j(this.f76453W);
            this.f76456Z = true;
        }
    }

    @Override
    public void receiveEvent(Lb.c event) {
        Material material;
        super.receiveEvent(event);
        if (event instanceof J) {
            this.f76432G = ((J) event).f9032a;
            if (this.f76454X == null || (material = this.f76429F) == null || !material.I()) {
                return;
            }
            FilamentMaterial z10 = this.f76429F.z();
            Material material2 = this.f76432G;
            if (material2 != null && material2.I()) {
                z10 = this.f76432G.z();
            }
            this.f76454X.setMaterialInstanceAt(0, z10);
            this.f76454X.setPriority(this.f76429F.isDrawInFront() ? 7 : 1);
            Material material3 = this.f76432G;
            applyTransparentBlendOrderPolicy((material3 == null || !material3.I()) ? this.f76429F : this.f76432G);
            this.f76455Y = z10;
        }
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10;
        BuildDicFile f11;
        if (!this.meshFileFromAssets && (f11 = dictionary.f(this.meshFile)) != null) {
            dictionary.h("SkinnedMeshRenderer: REPLACING " + this.meshFile + " TO " + f11.b());
            this.meshFile = f11.b();
        }
        String str = this.materialFile;
        if (str == null || str.isEmpty() || (f10 = dictionary.f(this.materialFile)) == null) {
            return;
        }
        dictionary.h("SkinnedMeshRenderer: REPLACING " + this.materialFile + " TO " + f10.b());
        this.materialFile = f10.b();
    }

    public void removeFromGraphics() {
        if (this.f76456Z) {
            Rb.c cVar = this.f76453W;
            if (cVar != null) {
                removeEntityFromOwnerScene(cVar, getEffectiveScene());
            }
            this.f76456Z = false;
        }
    }

    public boolean resetAllBones() {
        return resetAllBones(getRootJoint());
    }

    public boolean sendShaderBonesEvenWithSkinningDisabled() {
        return this.f76451V;
    }

    @Override
    public JsonElement serialize(Context context) {
        return super.serialize(context);
    }

    public void setDisableSkinning(boolean disableSkinning) {
        this.f76450U = disableSkinning;
    }

    public void setMaterial(Material material) {
        Material material2 = this.f76429F;
        if (material2 != null) {
            material2.V(this);
        }
        this.f76429F = material;
        material.h(this);
        String str = material.f78885e;
        this.f76443O = str;
        this.materialFile = str;
        if (material.f78896r) {
            return;
        }
        C12894h.d(material);
    }

    public void setMaterialFile(String materialFile) {
        this.materialFile = materialFile;
        updateMaterial(false);
    }

    public void setMaterialFileButDontLoad(String materialFile) {
        this.materialFile = materialFile;
        this.f76443O = materialFile;
    }

    public SkinnedModelRenderer setRenderHasGizmo(boolean renderHasGizmo) {
        this.f76448S = renderHasGizmo;
        return this;
    }

    public void setRenderMatrix(float[] renderMatrix) {
        Nc.c.b(renderMatrix, this.f76445Q);
        this.f76446R = Nc.d.j(-999999, 999999);
    }

    public SkinnedModelRenderer setRenderToCamera(Camera renderToCamera) {
        this.f76449T = renderToCamera;
        return this;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76431F2 = run;
    }

    public void setVertex(Vertex vertex) {
        this.f76428E = vertex;
        invalidateSkinningRuntimeState();
        if (vertex == null || Fb.c.g(vertex)) {
            return;
        }
        Fb.c.d(Tc.b.L(), vertex);
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76431F2;
        if (component != null) {
            return component;
        }
        JAVARuntime.SkinnedModelRenderer skinnedModelRenderer = new JAVARuntime.SkinnedModelRenderer(this);
        this.f76431F2 = skinnedModelRenderer;
        return skinnedModelRenderer;
    }

    public void uploadToSkinningBuffer() {
        FilamentRenderable filamentRenderable = this.f76454X;
        if (filamentRenderable == null || this.f76434H1 == null || this.f76440M <= 0) {
            return;
        }
        filamentRenderable.getSkinningBuffer().f(this.f76434H1, this.f76440M, 0);
        NativeFloatBuffer nativeFloatBuffer = this.f76439L1;
        if (nativeFloatBuffer == null || nativeFloatBuffer.capacity() < 6) {
            return;
        }
        if (this.f76447R1 == null) {
            this.f76447R1 = new Vector3();
        }
        float f10 = this.f76439L1.get(0);
        float f11 = this.f76439L1.get(1);
        float f12 = this.f76439L1.get(2);
        float x10 = this.f76439L1.get(3) * this.boundingMultiplier.getX();
        float y10 = this.f76439L1.get(4) * this.boundingMultiplier.getY();
        float z10 = this.f76439L1.get(5) * this.boundingMultiplier.getZ();
        this.f76441M1.c(f10, f11, f12);
        this.f76441M1.d(x10, y10, z10);
        this.f76447R1.set(f10, f11, f12);
        float sqrt = (float) Math.sqrt((x10 * x10) + (y10 * y10) + (z10 * z10));
        this.f76452V1 = sqrt;
        this.f76458b2 = sqrt > 0.0f;
        this.f76454X.setBounding(this.f76441M1);
    }

    @Override
    public Component mo1248clone() {
        SkinnedModelRenderer skinnedModelRenderer = new SkinnedModelRenderer(this.meshFile, this.meshFileFromAssets, this.materialFile, this.castShadow, this.f76440M);
        skinnedModelRenderer.castShadow = this.castShadow;
        skinnedModelRenderer.receiveShadow = this.receiveShadow;
        skinnedModelRenderer.boundingMultiplier.set(this.boundingMultiplier);
        skinnedModelRenderer.inverseBindBoneMatrix = this.inverseBindBoneMatrix;
        skinnedModelRenderer.boneGlobalToLocalMap = this.boneGlobalToLocalMap;
        return skinnedModelRenderer;
    }

    public boolean resetAllBones(GameObject gameObject) {
        if (gameObject == null) {
            return true;
        }
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 instanceof SkinJoint) {
                ((SkinJoint) L10).restoreOriginalTransform();
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            resetAllBones(gameObject.C(i11));
        }
        return true;
    }

    public SkinnedModelRenderer(String meshFile, String materialFile) {
        super(f76419L2);
        this.version = (char) 0;
        this.meshFile = "";
        this.castShadow = true;
        this.receiveShadow = true;
        this.showSkinBonesGizmo = false;
        this.tab = o.Model;
        this.storedPoses = new SteppedArrayList<>();
        this.posesEditor = new InspectorEditor(false);
        this.dualFaceRenderer = false;
        this.inverseBindBoneMatrix = null;
        this.boneGlobalToLocalMap = new HashMap<>();
        this.boneBoundingRadius = null;
        this.boundingMultiplier = new Vector3(1.1f);
        this.f76435I = null;
        this.f76436J = null;
        this.f76437K = null;
        this.f76440M = -1;
        this.f76444P = true;
        this.f76445Q = new float[16];
        this.f76446R = -1;
        this.f76448S = false;
        this.f76449T = null;
        this.f76450U = false;
        this.f76451V = false;
        this.f76456Z = false;
        this.f76469y1 = -1;
        this.f76430F1 = -1;
        this.f76441M1 = new Box();
        this.f76447R1 = new Vector3();
        this.f76460i2 = -1;
        this.f76468v2 = true;
        this.f76427D2 = Integer.MIN_VALUE;
        this.meshFile = meshFile;
        this.materialFile = materialFile;
    }

    public SkinnedModelRenderer(String meshFile, String materialFile, int jointQuantity) {
        super(f76419L2);
        this.version = (char) 0;
        this.meshFile = "";
        this.castShadow = true;
        this.receiveShadow = true;
        this.showSkinBonesGizmo = false;
        this.tab = o.Model;
        this.storedPoses = new SteppedArrayList<>();
        this.posesEditor = new InspectorEditor(false);
        this.dualFaceRenderer = false;
        this.inverseBindBoneMatrix = null;
        this.boneGlobalToLocalMap = new HashMap<>();
        this.boneBoundingRadius = null;
        this.boundingMultiplier = new Vector3(1.1f);
        this.f76435I = null;
        this.f76436J = null;
        this.f76437K = null;
        this.f76440M = -1;
        this.f76444P = true;
        this.f76445Q = new float[16];
        this.f76446R = -1;
        this.f76448S = false;
        this.f76449T = null;
        this.f76450U = false;
        this.f76451V = false;
        this.f76456Z = false;
        this.f76469y1 = -1;
        this.f76430F1 = -1;
        this.f76441M1 = new Box();
        this.f76447R1 = new Vector3();
        this.f76460i2 = -1;
        this.f76468v2 = true;
        this.f76427D2 = Integer.MIN_VALUE;
        this.meshFile = meshFile;
        this.materialFile = materialFile;
        this.f76440M = jointQuantity;
    }

    public SkinnedModelRenderer(String meshFile, boolean meshFileFromAssets, String materialFile, boolean castShadow, int jointQuantity) {
        super(f76419L2);
        this.version = (char) 0;
        this.meshFile = "";
        this.castShadow = true;
        this.receiveShadow = true;
        this.showSkinBonesGizmo = false;
        this.tab = o.Model;
        this.storedPoses = new SteppedArrayList<>();
        this.posesEditor = new InspectorEditor(false);
        this.dualFaceRenderer = false;
        this.inverseBindBoneMatrix = null;
        this.boneGlobalToLocalMap = new HashMap<>();
        this.boneBoundingRadius = null;
        this.boundingMultiplier = new Vector3(1.1f);
        this.f76435I = null;
        this.f76436J = null;
        this.f76437K = null;
        this.f76440M = -1;
        this.f76444P = true;
        this.f76445Q = new float[16];
        this.f76446R = -1;
        this.f76448S = false;
        this.f76449T = null;
        this.f76450U = false;
        this.f76451V = false;
        this.f76456Z = false;
        this.f76469y1 = -1;
        this.f76430F1 = -1;
        this.f76441M1 = new Box();
        this.f76447R1 = new Vector3();
        this.f76460i2 = -1;
        this.f76468v2 = true;
        this.f76427D2 = Integer.MIN_VALUE;
        this.meshFile = meshFile;
        this.meshFileFromAssets = meshFileFromAssets;
        this.materialFile = materialFile;
        this.castShadow = castShadow;
        this.f76440M = jointQuantity;
    }
}
