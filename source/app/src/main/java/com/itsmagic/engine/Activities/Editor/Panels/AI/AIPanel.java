package com.itsmagic.engine.Activities.Editor.Panels.AI;

import JAVARuntime.Color;
import JAVARuntime.Gizmo;
import JAVARuntime.GizmoObject;
import JAVARuntime.Runnable;
import android.app.Activity;
import android.bluetooth.BluetoothClass;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.Cursor3D;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import e7.C13042a;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.eclipse.jdt.core.JavaCore;
import q7.C15045a;
import r4.C15147a;
import yb.C16165b;
import yd.C16181m;

public class AIPanel extends EditorPanel {

    public static final String f71122h0 = "AIPanel";

    public FloatingPanelArea f71123X;

    public RecyclerView f71124Y;

    public C13042a<AIModel, com.itsmagic.engine.Activities.Editor.Panels.AI.b> f71125Z;

    public LinearLayoutManager f71126a0;

    public AtomicBoolean f71127b0;

    public RecyclerView f71128c0;

    public C13042a<AIModel, com.itsmagic.engine.Activities.Editor.Panels.AI.a> f71129d0;

    public LinearLayoutManager f71130e0;

    public AtomicBoolean f71131f0;

    public int f71132g0;

    public class AnonymousClass9 extends Component {

        public float f71133E;

        public float f71134F;

        public float f71135G;

        public final GizmoObject f71136H;

        public final com.itsmagic.engine.Activities.Editor.Panels.AI.d f71137I;

        public final String f71138J;

        public final String f71139K;

        public class a implements q.a.n {

            public class C1100a implements q.a.l {

                public class C1101a implements q.a.l {

                    public final File f71143a;

                    public class C1102a extends com.itsmagic.engine.Activities.Editor.Panels.AI.c {

                        public class C1103a extends com.itsmagic.engine.Activities.Editor.Panels.AI.c {

                            public final File f71146a;

                            public class C1104a extends com.itsmagic.engine.Activities.Editor.Panels.AI.c {

                                public final File f71148a;

                                public class C1105a extends com.itsmagic.engine.Activities.Editor.Panels.AI.c {

                                    public final File f71150a;

                                    public C1105a(final File val$metallicTexture) {
                                        this.f71150a = val$metallicTexture;
                                    }

                                    @Override
                                    public void a(float p10) {
                                        AnonymousClass9.this.f71134F = ((p10 / 6.0f) / 2.0f) + 0.9166667f;
                                    }

                                    @Override
                                    public void c(String result) {
                                        AIPanel.D1(result, AnonymousClass9.this.f79250n);
                                    }

                                    @Override
                                    public void d(File roughnessTexture) {
                                        C1104a c1104a = C1104a.this;
                                        C1103a c1103a = C1103a.this;
                                        C1101a c1101a = C1101a.this;
                                        AnonymousClass9 anonymousClass9 = AnonymousClass9.this;
                                        AIPanel.this.F1(anonymousClass9.f71139K, anonymousClass9.f71138J, anonymousClass9.f79250n, c1101a.f71143a, c1103a.f71146a, c1104a.f71148a, this.f71150a, roughnessTexture);
                                        AnonymousClass9.this.f71134F = 1.0f;
                                    }
                                }

                                public C1104a(final File val$normalTexture) {
                                    this.f71148a = val$normalTexture;
                                }

                                @Override
                                public void a(float p10) {
                                    AnonymousClass9.this.f71134F = ((p10 / 6.0f) / 2.0f) + 0.8333334f;
                                }

                                @Override
                                public void c(String result) {
                                    AIPanel.D1(result, AnonymousClass9.this.f79250n);
                                }

                                @Override
                                public void d(File metallicTexture) {
                                    q.a.c(AnonymousClass9.this.f71138J, "roughness", new C1105a(metallicTexture));
                                }
                            }

                            public C1103a(final File val$textureFile) {
                                this.f71146a = val$textureFile;
                            }

                            @Override
                            public void a(float p10) {
                                AnonymousClass9.this.f71134F = ((p10 / 6.0f) / 2.0f) + 0.75f;
                            }

                            @Override
                            public void c(String result) {
                                AIPanel.D1(result, AnonymousClass9.this.f79250n);
                            }

                            @Override
                            public void d(File normalTexture) {
                                q.a.c(AnonymousClass9.this.f71138J, "metallic", new C1104a(normalTexture));
                            }
                        }

                        public C1102a() {
                        }

                        @Override
                        public void a(float p10) {
                            AnonymousClass9.this.f71134F = ((p10 / 6.0f) / 2.0f) + 0.6666667f;
                        }

                        @Override
                        public void c(String result) {
                            AIPanel.D1(result, AnonymousClass9.this.f79250n);
                        }

                        @Override
                        public void d(File textureFile) {
                            q.a.c(AnonymousClass9.this.f71138J, JavaCore.NORMAL, new C1103a(textureFile));
                        }
                    }

                    public C1101a(final File val$objFile) {
                        this.f71143a = val$objFile;
                    }

                    @Override
                    public void a(float p10) {
                        AnonymousClass9.this.f71134F = ((p10 / 6.0f) / 2.0f) + 0.5833333f;
                    }

                    @Override
                    public void b(File file) {
                        q.a.c(AnonymousClass9.this.f71138J, "", new C1102a());
                    }

                    @Override
                    public void onError(String result) {
                        b(null);
                    }
                }

                public C1100a() {
                }

                @Override
                public void a(float p10) {
                    AnonymousClass9.this.f71134F = ((p10 / 6.0f) / 2.0f) + 0.5f;
                }

                @Override
                public void b(File objFile) {
                    q.a.a(AnonymousClass9.this.f71138J, new C1101a(objFile));
                }

                @Override
                public void onError(String result) {
                    AIPanel.D1(result, AnonymousClass9.this.f79250n);
                }
            }

            public a() {
            }

            @Override
            public void a(float p10, boolean done, boolean error) {
                AnonymousClass9 anonymousClass9 = AnonymousClass9.this;
                anonymousClass9.f71134F = p10 * 0.5f;
                if (done) {
                    anonymousClass9.f71133E = -999.0f;
                    q.a.b(anonymousClass9.f71138J, new C1100a());
                } else if (error) {
                    AIPanel.D1("Something went wrong, you have been refunded", anonymousClass9.f79250n);
                }
            }

            @Override
            public void onError(String result) {
                AIPanel.D1(result, AnonymousClass9.this.f79250n);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass9(String serializedComponentType, final GizmoObject val$gizmoObject, final com.itsmagic.engine.Activities.Editor.Panels.AI.d val$progress3DDrawer, final String val$taskTag, final String val$prompt) {
            super(serializedComponentType);
            this.f71136H = val$gizmoObject;
            this.f71137I = val$progress3DDrawer;
            this.f71138J = val$taskTag;
            this.f71139K = val$prompt;
            this.f71133E = 0.0f;
            this.f71134F = 0.0f;
            this.f71135G = 0.0f;
        }

        @Override
        public void parallelUpdate() {
            super.parallelUpdate();
            this.f71136H.setPosition(this.f79250n.transform.Z0().toJAVARuntime());
            Gizmo.drawEngine(this.f71136H);
            float z10 = Nc.b.z(this.f71135G, this.f71134F, K8.d.d() * 1.0f);
            this.f71135G = z10;
            this.f71137I.b(z10 * 360.0f, this.f79250n.transform.Z0().add(new Vector3(0.0f, 0.875f, 0.0f)));
            float f10 = this.f71133E;
            if (f10 >= 0.0f) {
                float d10 = f10 + K8.d.d();
                this.f71133E = d10;
                if (d10 >= 2.0f) {
                    this.f71133E = 0.0f;
                    q.a.f(this.f71138J, new a());
                }
            }
        }
    }

    public class a implements Runnable {

        public final GameObject f71152b;

        public a(final GameObject val$gameObject) {
            this.f71152b = val$gameObject;
        }

        @Override
        public void run() {
            Panel3DView.y1(this.f71152b.transform.Z0().add(new Vector3(0.0f, 0.5f, 0.0f)), 2.5f);
        }
    }

    public class b implements Runnable {

        public final File f71154b;

        public final String f71155c;

        public final GameObject f71156d;

        public final File f71157e;

        public final File f71158f;

        public final File f71159g;

        public final File f71160h;

        public class a implements Runnable {

            public final C15045a f71162b;

            public class C1106a implements Runnable {

                public final GameObject f71164b;

                public class RunnableC1107a implements Runnable {

                    public class C1108a implements Runnable {

                        public class C1109a implements b8.g {
                            public C1109a() {
                            }

                            @Override
                            public void a(Activity activity) {
                            }

                            @Override
                            public void b(Activity activity) {
                            }
                        }

                        public C1108a() {
                        }

                        @Override
                        public void run() {
                            ModelRenderer modelRenderer;
                            Material material;
                            Material material2;
                            File file;
                            b bVar = b.this;
                            int i10 = 0;
                            if (bVar.f71157e == null && bVar.f71158f == null && bVar.f71159g == null) {
                                while (i10 < C1106a.this.f71164b.N()) {
                                    Component L10 = C1106a.this.f71164b.L(i10);
                                    if ((L10 instanceof ModelRenderer) && (material2 = ((ModelRenderer) L10).f73747F) != null && (file = b.this.f71160h) != null) {
                                        material2.i0("albedo", file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                                    }
                                    i10++;
                                }
                            } else {
                                while (i10 < C1106a.this.f71164b.N()) {
                                    Component L11 = C1106a.this.f71164b.L(i10);
                                    if ((L11 instanceof ModelRenderer) && (material = (modelRenderer = (ModelRenderer) L11).f73747F) != null) {
                                        material.f0("Surface/Standard");
                                        File file2 = b.this.f71160h;
                                        if (file2 != null) {
                                            modelRenderer.f73747F.i0("albedo", file2.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                                        }
                                        b bVar2 = b.this;
                                        File file3 = bVar2.f71158f;
                                        File file4 = bVar2.f71157e;
                                        if (file4 != null) {
                                            modelRenderer.f73747F.i0(JavaCore.NORMAL, file4.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                                        }
                                        File file5 = b.this.f71159g;
                                        if (file5 != null) {
                                            modelRenderer.f73747F.i0("roughness", file5.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                                        }
                                    }
                                    i10++;
                                }
                            }
                            W7.b.f27308h.f(N7.c.o(), new C1109a());
                        }
                    }

                    public RunnableC1107a() {
                    }

                    @Override
                    public void run() {
                        W7.b.f27308h.h(C1106a.this.f71164b);
                        Panel3DView.x1();
                        K8.a.h(2, new C1108a());
                    }
                }

                public C1106a(final GameObject val$root) {
                    this.f71164b = val$root;
                }

                @Override
                public void run() {
                    b.this.f71156d.destroy();
                    K8.a.D(b.this.f71156d);
                    N7.c.j0(new RunnableC1107a());
                }
            }

            public a(final C15045a val$loading) {
                this.f71162b = val$loading;
            }

            @Override
            public void run() {
                try {
                    try {
                        GameObject g10 = Wg.b.g(b.this.f71154b);
                        if (g10 != null) {
                            g10.E1(Tc.b.Y(b.this.f71155c.replaceAll("\\s+", ConstantDescs.DEFAULT_NAME), 25));
                            g10.transform.p3(b.this.f71156d.transform.Z0());
                            g10.Q1();
                            K8.a.I(new C1106a(g10));
                        } else {
                            AIPanel.D1("Can't import obj file", b.this.f71156d);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    this.f71162b.p1();
                } catch (Throwable th2) {
                    this.f71162b.p1();
                    throw th2;
                }
            }
        }

        public b(final File val$objFile, final String val$prompt, final GameObject val$gameObject, final File val$normalTexture, final File val$metallicTexture, final File val$roughnessTexture, final File val$textureFile) {
            this.f71154b = val$objFile;
            this.f71155c = val$prompt;
            this.f71156d = val$gameObject;
            this.f71157e = val$normalTexture;
            this.f71158f = val$metallicTexture;
            this.f71159g = val$roughnessTexture;
            this.f71160h = val$textureFile;
        }

        @Override
        public void run() {
            new Thread(new a(C15045a.r1())).start();
        }
    }

    public class c implements Runnable {

        public final String f71169b;

        public c(final String val$result) {
            this.f71169b = val$result;
        }

        @Override
        public void run() {
            Z6.i.y1("Ops!", this.f71169b);
        }
    }

    public class d implements Runnable {

        public final GameObject f71170b;

        public d(final GameObject val$gameObject) {
            this.f71170b = val$gameObject;
        }

        @Override
        public void run() {
            this.f71170b.destroy();
            K8.a.D(this.f71170b);
        }
    }

    public class e implements View.OnTouchListener {
        public e() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class f extends AbstractViewOnClickListenerC12733a {
        public f() {
        }

        @Override
        public void click(View view) {
            AIGeneratorPanel.D1();
            AIPanel.this.R0();
        }
    }

    public class g implements C13042a.InterfaceC1584a<AIModel, com.itsmagic.engine.Activities.Editor.Panels.AI.b> {

        public class a extends AbstractViewOnClickListenerC12733a {

            public final AIModel f71174b;

            public a(final AIModel val$element) {
                this.f71174b = val$element;
            }

            @Override
            public void click(View view) {
                AIGeneratorPanel.F1(this.f71174b);
            }
        }

        public class b extends AbstractViewOnClickListenerC12733a {

            public final AIModel f71176b;

            public b(final AIModel val$element) {
                this.f71176b = val$element;
            }

            @Override
            public void click(View view) {
                AIPanel.this.R0();
                AIPanel.this.G1(this.f71176b.c(), this.f71176b.e());
            }
        }

        public class c extends AbstractViewOnClickListenerC12733a {

            public final String f71178b;

            public c(final String val$url) {
                this.f71178b = val$url;
            }

            @Override
            public void click(View view) {
                W5.a.s1(this.f71178b, view, C15147a.e.Below);
            }
        }

        public g() {
        }

        @Override
        public void a(com.itsmagic.engine.Activities.Editor.Panels.AI.b holder, AIModel element, int position) {
            holder.f71193b.setText(element.c());
            String h10 = q.a.h(element.e());
            Vc.e.Z(holder.f71194c, h10);
            holder.f71196e.setOnClickListener(new a(element));
            holder.f71195d.setOnClickListener(new b(element));
            holder.f71194c.setOnClickListener(new c(h10));
        }

        @Override
        public com.itsmagic.engine.Activities.Editor.Panels.AI.b b(LayoutInflater inflater, ViewGroup parent) {
            return new com.itsmagic.engine.Activities.Editor.Panels.AI.b(inflater.inflate(R.layout.ai_element, parent, false));
        }
    }

    public class h extends RecyclerView.OnScrollListener {
        public h() {
        }

        @Override
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            int itemCount = AIPanel.this.f71125Z.getItemCount();
            int findFirstVisibleItemPosition = AIPanel.this.f71126a0.findFirstVisibleItemPosition();
            AIPanel.this.f71126a0.findLastVisibleItemPosition();
            if (itemCount <= 0 || findFirstVisibleItemPosition != 0) {
                return;
            }
            AIPanel.this.B1();
        }
    }

    public class i implements C13042a.InterfaceC1584a<AIModel, com.itsmagic.engine.Activities.Editor.Panels.AI.a> {

        public class a extends AbstractViewOnClickListenerC12733a {

            public final AIModel f71182b;

            public a(final AIModel val$element) {
                this.f71182b = val$element;
            }

            @Override
            public void click(View view) {
                AIGeneratorPanel.F1(this.f71182b);
            }
        }

        public class b extends AbstractViewOnClickListenerC12733a {

            public final String f71184b;

            public b(final String val$url) {
                this.f71184b = val$url;
            }

            @Override
            public void click(View view) {
                W5.a.s1(this.f71184b, view, C15147a.e.Below);
            }
        }

        public i() {
        }

        @Override
        public void a(com.itsmagic.engine.Activities.Editor.Panels.AI.a holder, AIModel element, int position) {
            holder.f71189b.setText(element.c());
            holder.f71191d.setText(C16181m.f130230g + element.a());
            String h10 = q.a.h(element.e());
            Vc.e.Z(holder.f71190c, h10);
            holder.f71192e.setOnClickListener(new a(element));
            holder.f71190c.setOnClickListener(new b(h10));
        }

        @Override
        public com.itsmagic.engine.Activities.Editor.Panels.AI.a b(LayoutInflater inflater, ViewGroup parent) {
            return new com.itsmagic.engine.Activities.Editor.Panels.AI.a(inflater.inflate(R.layout.ai_element_community, parent, false));
        }
    }

    public class j extends RecyclerView.OnScrollListener {
        public j() {
        }

        @Override
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            int itemCount = AIPanel.this.f71129d0.getItemCount();
            int findFirstVisibleItemPosition = AIPanel.this.f71130e0.findFirstVisibleItemPosition();
            AIPanel.this.f71130e0.findLastVisibleItemPosition();
            if (itemCount <= 0 || findFirstVisibleItemPosition != 0) {
                return;
            }
            AIPanel.this.C1();
        }
    }

    public class k implements q.a.m {
        public k() {
        }

        @Override
        public void onError(String result) {
            AIPanel.this.f71127b0.set(false);
        }

        @Override
        public void onSuccess(List<AIModel> models) {
            AIPanel.this.f71125Z.i(models);
            AIPanel.this.f71127b0.set(false);
        }
    }

    public class l implements q.a.m {
        public l() {
        }

        @Override
        public void onError(String result) {
            AIPanel.this.f71131f0.set(false);
        }

        @Override
        public void onSuccess(List<AIModel> models) {
            boolean z10;
            AIPanel.z1(AIPanel.this, models.size());
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            Iterator<AIModel> it = models.iterator();
            while (true) {
                boolean z11 = false;
                if (!it.hasNext()) {
                    AIPanel.this.f71129d0.i(steppedArrayList);
                    AIPanel.this.f71131f0.set(false);
                    return;
                }
                AIModel next = it.next();
                int i10 = 0;
                while (true) {
                    z10 = true;
                    if (i10 >= AIPanel.this.f71129d0.getItemCount()) {
                        break;
                    }
                    if (((AIModel) AIPanel.this.f71129d0.m(i10)).e().equals(next.e())) {
                        z11 = true;
                        break;
                    }
                    i10++;
                }
                if (!z11) {
                    Iterator<T> it2 = steppedArrayList.iterator();
                    while (it2.hasNext()) {
                        if (((AIModel) it2.next()).e().equals(next.e())) {
                            break;
                        }
                    }
                }
                z10 = z11;
                if (!z10) {
                    steppedArrayList.add(next);
                }
            }
        }
    }

    public enum m {
        Realistic,
        Cartoon,
        LowPoly,
        Sculpture,
        Pbr;

        public String b() {
            return ordinal() != 2 ? toString().toLowerCase(Locale.ROOT) : "low-poly";
        }
    }

    public AIPanel() {
        super(null, "AI 3D Models");
        this.f71127b0 = new AtomicBoolean();
        this.f71131f0 = new AtomicBoolean();
        super.e1(false);
    }

    public static void D1(String result, GameObject gameObject) {
        N7.c.j0(new c(result));
        K8.a.I(new d(gameObject));
    }

    public static FloatingPanelArea E1(View anchor, C15147a.e anchorSide) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        float g10 = N7.c.g(BluetoothClass.Device.PHONE_CORDLESS);
        float f10 = N7.c.f(DisplayMetrics.DENSITY_360);
        AIPanel aIPanel = new AIPanel();
        FloatingPanelArea g11 = C15147a.g(anchor, aIPanel, anchorSide, g10, f10);
        aIPanel.f71123X = g11;
        return g11;
    }

    public void F1(String prompt, String taskTag, GameObject gameObject, File objFile, File textureFile, File normalTexture, File metallicTexture, File roughnessTexture) {
        N7.c.j0(new b(objFile, prompt, gameObject, normalTexture, metallicTexture, roughnessTexture, textureFile));
    }

    public void G1(String prompt, String taskTag) {
        Vector3 m1249clone = Cursor3D.f71511K.m1249clone();
        GizmoObject gizmoObject = new GizmoObject();
        gizmoObject.setVertex(Vertex.B1("Editor/AI/Models/Gift/gift.obj", null).x2());
        gizmoObject.setColor(new Color());
        gizmoObject.setScale(0.6f);
        gizmoObject.setTexture(C16165b.u("@@ASSET@@/Editor/AI/Models/Gift/gift_texture.jpg").p0());
        com.itsmagic.engine.Activities.Editor.Panels.AI.d dVar = new com.itsmagic.engine.Activities.Editor.Panels.AI.d(new ColorINT(15, 188, 249), new ColorINT(), 0.75f, 0.03f);
        GameObject gameObject = new GameObject();
        gameObject.r(new AnonymousClass9("", gizmoObject, dVar, taskTag, prompt));
        gameObject.transform.p3(m1249clone);
        K8.a.h(5, new a(gameObject));
        K8.a.L(gameObject);
    }

    public static int z1(AIPanel aIPanel, int i10) {
        int i11 = aIPanel.f71132g0 + i10;
        aIPanel.f71132g0 = i11;
        return i11;
    }

    public final void B1() {
        if (this.f71127b0.compareAndSet(false, true)) {
            q.a.e(this.f71125Z.getItemCount(), new k());
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.ai_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new e());
        inflate.findViewById(R.id.generate).setOnClickListener(new f());
        this.f71124Y = (RecyclerView) inflate.findViewById(R.id.recycler);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(M());
        this.f71126a0 = linearLayoutManager;
        this.f71124Y.setLayoutManager(linearLayoutManager);
        this.f71124Y.setItemAnimator(null);
        C13042a<AIModel, com.itsmagic.engine.Activities.Editor.Panels.AI.b> c13042a = new C13042a<>(M(), new g());
        this.f71125Z = c13042a;
        this.f71124Y.setAdapter(c13042a);
        this.f71124Y.addOnScrollListener(new h());
        B1();
        this.f71128c0 = (RecyclerView) inflate.findViewById(R.id.recycler2);
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(M());
        this.f71130e0 = linearLayoutManager2;
        this.f71128c0.setLayoutManager(linearLayoutManager2);
        this.f71128c0.setItemAnimator(null);
        C13042a<AIModel, com.itsmagic.engine.Activities.Editor.Panels.AI.a> c13042a2 = new C13042a<>(M(), new i());
        this.f71129d0 = c13042a2;
        this.f71128c0.setAdapter(c13042a2);
        this.f71128c0.addOnScrollListener(new j());
        C1();
        return inflate;
    }

    public final void C1() {
        if (this.f71131f0.compareAndSet(false, true)) {
            q.a.d(this.f71132g0, new l());
        }
    }
}
