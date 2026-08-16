package com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera;

import C5.b;
import D5.h;
import F5.c;
import JAVARuntime.CameraObjectFilter;
import JAVARuntime.Color;
import JAVARuntime.GizmoObject;
import K8.c;
import Rb.a;
import V8.b;
import android.content.Context;
import android.opengl.Matrix;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.filament.ColorGrading;
import com.google.android.filament.IndirectLight;
import com.google.android.filament.Skybox;
import com.google.android.filament.ToneMapper;
import com.google.android.filament.View;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.AxisCubeCamera;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.ParticleEmitter;
import com.itsmagic.engine.Engines.Engine.JavaPool.FloatArrayJP;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Dictionary.ComponentDeserializeException;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Settings.GraphicsSettings;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentIndirectLight;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentSkybox;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector3f;
import ec.d;
import fb.AbstractC13203c;
import fb.C13201a;
import fc.C13204a;
import fc.C13205b;
import gb.C13317e;
import gb.C13319g;
import ib.InterfaceC13601h;
import java.io.File;
import java.io.Serializable;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import o9.C14492b;
import s8.InterfaceC15237a;
import ub.e;
import ub.g;
import yb.C16165b;

public class Camera extends Component implements Serializable {

    public static final String f73075M8 = "Camera";

    public static final Class f73076N8 = Camera.class;

    public static final ThreadLocal<f> f73077O8;

    public static final ThreadLocal<Vector3> f73078P8;

    public static final ThreadLocal<AABB> f73079Q8;

    public File f73080D0;

    public float f73081D2;

    public final Vector3 f73082D3;

    public float f73083D4;

    public float f73084D5;

    public int f73085D6;

    public transient d f73086E;

    public transient d f73087F;

    public C13205b f73088F1;

    public final boolean[] f73089F2;

    public final Vector3 f73090F3;

    public float f73091F4;

    public boolean f73092F5;

    public final ThreadLocal<f> f73093F6;

    public final ThreadLocal<Matrix4f> f73094F7;

    public final ThreadLocal<Matrix4f> f73095F8;

    public transient d f73096G;

    public transient d f73097H;

    public final InterfaceC13601h f73098H1;

    public a f73099H2;

    public final Vector3 f73100H3;

    public float f73101H4;

    public int f73102H5;

    public final ThreadLocal<f> f73103H6;

    public transient d f73104I;

    public transient d f73105J;

    public transient d f73106K;

    public final ThreadLocal<Matrix4f> f73107K8;

    public transient d f73108L;

    public final float[] f73109L1;

    public FilamentIndirectLight f73110L2;

    public JAVARuntime.Component f73111L8;

    public transient d f73112M;

    public final float[] f73113M1;

    public FilamentSkybox f73114M2;

    public final float[] f73115M3;

    public transient d f73116N;

    @Ic.w
    public Tb.a f73117O;

    @Ic.w
    public Tb.a f73118P;

    @Ic.w
    public FilamentView f73119Q;

    public boolean f73120R;

    public final float[] f73121R1;

    public final ColorINT f73122R2;

    public GizmoObject f73123S;

    public e f73124T;

    public String f73125U;

    public float f73126V;

    public final float[] f73127V1;

    public final ColorINT f73128V2;

    public Vector3 f73129W;

    public float f73130X;

    public boolean f73131Y;

    public boolean f73132Z;

    public CameraObjectFilter f73133b1;

    public final float[] f73134b2;

    @Expose
    private F backgroundType;

    @Expose
    private boolean enablePostProcessing;

    @Expose
    @eb.f
    private int fixedResolutionPixelsHeight;

    @Expose
    @eb.f
    private int fixedResolutionPixelsWidth;

    @Expose
    @eb.f
    private float fov;

    @Expose
    @eb.f
    private int freeResolutionPixels;

    public V8.a f73135i1;

    public final double[] f73136i2;

    public F f73137i3;

    @Expose
    @eb.f
    private int layer;

    public final b f73138m1;

    public FilamentCamera f73139m2;

    public final Runnable f73140m3;

    public final Vector3 f73141m4;

    @Expose
    @eb.f
    private float minimalDistance;

    @Expose
    @eb.f
    private float ortho_diameter;

    @Expose
    private G projection;

    public boolean f73142q0;

    public final Vector3 f73143q1;

    public float f73144q2;

    public final Vector3 f73145q3;

    @Expose
    @eb.f
    private float rect_desloc_x;

    @Expose
    @eb.f
    private float rect_desloc_y;

    @Expose
    @eb.f
    private float rect_height;

    @Expose
    @eb.f
    private float rect_width;

    @Expose
    @eb.f
    private float renderDistance;

    @Expose
    private String renderTextureFile;

    @Expose
    @eb.f
    private float resoPercentage;

    @Expose
    private H resolutionMode;

    @Expose
    public InspectorEditor resolutionsEditor;

    @Expose
    public boolean showInScreen;

    @Expose
    @eb.f
    public ColorINT solidColor;

    public boolean f73146v0;

    public final Vector3 f73147v1;

    public float f73148v2;

    public final Vector3 f73149v3;

    public float f73150v4;

    public boolean f73151y1;

    public class A implements d {
        public A() {
        }

        @Override
        public void a() {
            Camera.this.requestFrustumRecalculation();
        }
    }

    public class B implements d {
        public B() {
        }

        @Override
        public void a() {
            Camera.this.requestFrustumRecalculation();
        }
    }

    public class C implements d {
        public C() {
        }

        @Override
        public void a() {
            Camera.this.requestFrustumRecalculation();
        }
    }

    public class D implements d {
        public D() {
        }

        @Override
        public void a() {
            Camera.this.requestFrustumRecalculation();
        }
    }

    public class E implements d {
        public E() {
        }

        @Override
        public void a() {
            Camera.this.requestFrustumRecalculation();
        }
    }

    public enum F {
        Skybox,
        Alpha,
        SolidColor
    }

    public enum G {
        Perspective,
        Orthographic
    }

    public enum H {
        Percentage,
        FixedResolution,
        FreeAspectResolution
    }

    public class C12756a implements d {
        public C12756a() {
        }

        @Override
        public void a() {
            Camera.this.requestFrustumRecalculation();
        }
    }

    public class C12757b implements d {
        public C12757b() {
        }

        @Override
        public void a() {
            Camera.this.requestFrustumRecalculation();
        }
    }

    public class C12758c implements InterfaceC13601h {
        public C12758c() {
        }

        @Override
        public void a(f globalMatrix) {
            Qb.a.d();
            if (C13317e.G(Camera.this.f79250n) || !Camera.this.isHierarchyActive()) {
                return;
            }
            Camera camera = Camera.this;
            camera.calculateMatrixes(camera.f79250n);
        }
    }

    public class RunnableC12759d implements Runnable {
        public RunnableC12759d() {
        }

        @Override
        public void run() {
            Camera.this.recalculateFrustumOnly();
        }
    }

    public class C12760e implements h {
        public C12760e() {
        }

        @Override
        public Variable get() {
            return new Variable("", Camera.this.getRenderDistance() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Camera.this.setRenderDistance(variable.float_value);
            }
        }
    }

    public class C12761f implements h {
        public C12761f() {
        }

        @Override
        public Variable get() {
            return new Variable("", Camera.this.getMinimalDistance() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Camera.this.setMinimalDistance(variable.float_value);
            }
        }
    }

    public class C12762g implements h {
        public C12762g() {
        }

        @Override
        public Variable get() {
            return new Variable("", Camera.this.enablePostProcessing + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Camera.this.setEnablePostProcessing(variable.booolean_value.booleanValue());
            }
        }
    }

    public class C12763h extends c.n0<F> {
        public C12763h() {
        }

        @Override
        public void a() {
            Camera.this.reloadInspector();
        }

        @Override
        public void set(F value) {
            Camera.this.backgroundType = value;
            Camera.this.reloadInspector();
        }

        @Override
        public String c(F enumObject) {
            int ordinal = enumObject.ordinal();
            return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? enumObject.toString() : Lang.l(Lang.T.SOLID_COLOR) : Lang.l(Lang.T.ALPHA) : Lang.l(Lang.T.SKYBOX);
        }
    }

    public class i implements h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", Camera.this.solidColor);
        }

        @Override
        public void set(Variable variable) {
            if (variable == null || variable.e()) {
                return;
            }
            Camera.this.solidColor.intColor = variable.color_value.intColor;
        }
    }

    public class j implements h {

        public class a implements Runnable {

            public final Variable f73167b;

            public a(final Variable val$variable) {
                this.f73167b = val$variable;
            }

            @Override
            public void run() {
                t6.e S12 = t6.j.J1() ? t6.j.S1("Camera - set render texture file") : null;
                try {
                    Camera.this.renderTextureFile = this.f73167b.str_value;
                } finally {
                    t6.j.P1(S12);
                }
            }
        }

        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", Camera.this.renderTextureFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable == null || variable.e()) {
                return;
            }
            K8.a.I(new a(variable));
        }
    }

    public class k extends AbstractC13203c {
        @Override
        public Class b() {
            return Camera.f73076N8;
        }

        @Override
        public String c() {
            return Camera.f73075M8;
        }

        @Override
        public Component d(JsonObject json) {
            return Camera.deserialize(json);
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER);
        }

        @Override
        public List<fb.d> i() {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(null);
            return steppedArrayList;
        }
    }

    public class l implements c.o0 {

        public class a extends c.n0<H> {
            public a() {
            }

            @Override
            public void a() {
                Camera.this.reloadInspector();
            }

            @Override
            public void set(H value) {
                Camera.this.setResolutionMode(value);
                Camera.this.reloadInspector();
            }

            @Override
            public String c(H enumObject) {
                int ordinal = enumObject.ordinal();
                return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? enumObject.toString() : Lang.l(Lang.T.FREE_ASPECT_RESOLUTION) : Lang.l(Lang.T.FIXED_RESOLUTION) : Lang.l(Lang.T.PERCENTAGE);
            }
        }

        public class b implements h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", Camera.this.getRenderPercentage() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Camera.this.setRenderPercentage(variable.float_value);
                }
            }
        }

        public class c implements h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", Camera.this.getFixedResolutionPixelsWidth() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Camera.this.setFixedResolutionPixelsWidth(variable.int_value);
                }
            }
        }

        public class d implements h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", Camera.this.getFixedResolutionPixelsHeight() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Camera.this.setFixedResolutionPixelsHeight(variable.int_value);
                }
            }
        }

        public class e implements h {
            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", Camera.this.getFreeResolutionPixels() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Camera.this.setFreeResolutionPixels(variable.int_value);
                }
            }
        }

        public l() {
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(F5.c.i(Lang.l(Lang.T.MODE), H.class, Camera.this.getResolutionMode(), new a()));
            int ordinal = Camera.this.getResolutionMode().ordinal();
            if (ordinal == 0) {
                C5.b bVar = new C5.b(new b(), Lang.l(Lang.T.RESOLUTION_PERCENTAGE), b.a.SLFloat01);
                Camera camera = Camera.this;
                entries.add(bVar.d(camera.f79250n, camera, "resoPercentage", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            } else if (ordinal == 1) {
                c cVar = new c();
                String l10 = Lang.l(Lang.T.WIDTH);
                b.a aVar = b.a.SLInt;
                C5.b bVar2 = new C5.b(cVar, l10, aVar);
                Camera camera2 = Camera.this;
                GameObject gameObject = camera2.f79250n;
                com.itsmagic.engine.Engines.Engine.Animation.c cVar2 = com.itsmagic.engine.Engines.Engine.Animation.c.INT;
                entries.add(bVar2.d(gameObject, camera2, "fixedResolutionPixelsWidth", cVar2));
                C5.b bVar3 = new C5.b(new d(), Lang.l(Lang.T.HEIGHT), aVar);
                Camera camera3 = Camera.this;
                entries.add(bVar3.d(camera3.f79250n, camera3, "fixedResolutionPixelsHeight", cVar2));
            } else if (ordinal == 2) {
                C5.b bVar4 = new C5.b(new e(), Lang.l(Lang.T.PIXELS), b.a.SLInt);
                Camera camera4 = Camera.this;
                entries.add(bVar4.d(camera4.f79250n, camera4, "freeResolutionPixels", com.itsmagic.engine.Engines.Engine.Animation.c.INT));
            }
            return entries;
        }
    }

    public class m implements c.o0 {

        public class a implements h {
            public a() {
            }

            @Override
            public Variable get() {
                if (Camera.this.getProjection() != G.Perspective && Camera.this.projection == G.Orthographic) {
                    return new Variable("", "false");
                }
                return new Variable("", "true");
            }

            @Override
            public void set(Variable variable) {
                boolean z10;
                if (variable != null) {
                    if (variable.booolean_value.booleanValue()) {
                        G projection = Camera.this.getProjection();
                        G g10 = G.Perspective;
                        z10 = projection != g10;
                        Camera.this.setProjection(g10);
                        if (z10) {
                            Camera.this.reloadInspector();
                            return;
                        }
                        return;
                    }
                    G projection2 = Camera.this.getProjection();
                    G g11 = G.Orthographic;
                    z10 = projection2 != g11;
                    Camera.this.setProjection(g11);
                    if (z10) {
                        Camera.this.reloadInspector();
                    }
                }
            }
        }

        public class b implements h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", Camera.this.getFov() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Camera.this.setFov(variable.float_value);
                }
            }
        }

        public class c implements h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", Camera.this.getOrtho_diameter() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Camera.this.setOrthoDiameter(variable.float_value);
                }
            }
        }

        public m() {
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new a(), Lang.l(Lang.T.TYPE), b.a.CompostBoolean, new String[]{"2D", "3D"}));
            if (Camera.this.getProjection() == G.Perspective) {
                C5.b bVar = new C5.b(new b(), Lang.l(Lang.T.FIELD_OF_VIEW), b.a.SLFloat);
                Camera camera = Camera.this;
                entries.add(bVar.d(camera.f79250n, camera, "fov", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            } else if (Camera.this.getProjection() == G.Orthographic) {
                C5.b bVar2 = new C5.b(new c(), Lang.l(Lang.T.DIAMETER), b.a.SLFloat);
                Camera camera2 = Camera.this;
                entries.add(bVar2.d(camera2.f79250n, camera2, "ortho_diameter", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            }
            return entries;
        }
    }

    public class n implements c.o0 {

        public class a implements h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", Camera.this.showInScreen + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Camera.this.setShowInScreen(variable.booolean_value.booleanValue());
                }
            }
        }

        public class b implements h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", Camera.this.layer + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Camera.this.setLayer(variable.int_value);
                }
            }
        }

        public class c implements h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", Camera.this.getRectWidth() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Camera.this.setRectWidth(variable.float_value);
                }
            }
        }

        public class d implements h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", Camera.this.getRectHeight() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Camera.this.setRectHeight(variable.float_value);
                }
            }
        }

        public class e implements h {
            public e() {
            }

            @Override
            public Variable get() {
                return new Variable("", Camera.this.getRectPosX() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Camera.this.setRectPosX(variable.float_value);
                }
            }
        }

        public class f implements h {
            public f() {
            }

            @Override
            public Variable get() {
                return new Variable("", Camera.this.getRectPosY() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    Camera.this.setRectPosY(variable.float_value);
                }
            }
        }

        public n() {
        }

        @Override
        public boolean a() {
            return true;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new a(), "Draw to screen", b.a.SLBoolean));
            C5.b bVar = new C5.b(new b(), Lang.l(Lang.T.LAYER), b.a.SLInt);
            Camera camera = Camera.this;
            entries.add(bVar.d(camera.f79250n, camera, "layer", com.itsmagic.engine.Engines.Engine.Animation.c.INT));
            String l10 = Lang.l(Lang.T.SIZE);
            b.a aVar = b.a.Vector;
            C5.b bVar2 = new C5.b(l10, aVar, new C5.b[2]);
            C5.b[] bVarArr = bVar2.f2081p;
            c cVar = new c();
            String l11 = Lang.l(Lang.T.WIDTH);
            b.a aVar2 = b.a.Float;
            bVarArr[0] = new C5.b(cVar, l11, aVar2);
            bVar2.f2081p[1] = new C5.b(new d(), Lang.l(Lang.T.HEIGHT), aVar2);
            entries.add(bVar2);
            C5.b bVar3 = new C5.b(Lang.l(Lang.T.POSITION), aVar, new C5.b[2]);
            bVar3.f2081p[0] = new C5.b(new e(), "x", aVar2);
            bVar3.f2081p[1] = new C5.b(new f(), "y", aVar2);
            entries.add(bVar3);
            return entries;
        }
    }

    public class o extends ThreadLocal<f> {
        @Override
        public f initialValue() {
            return new f();
        }
    }

    public class p extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class q extends ThreadLocal<AABB> {
        @Override
        public AABB initialValue() {
            return new AABB();
        }
    }

    public class r extends ThreadLocal<f> {
        public r() {
        }

        @Override
        @Nullable
        @org.jetbrains.annotations.Nullable
        public f initialValue() {
            return new f();
        }
    }

    public class s extends ThreadLocal<f> {
        public s() {
        }

        @Override
        @Nullable
        @org.jetbrains.annotations.Nullable
        public f initialValue() {
            return new f();
        }
    }

    public class t extends ThreadLocal<Matrix4f> {
        public t() {
        }

        @Override
        @Nullable
        @org.jetbrains.annotations.Nullable
        public Matrix4f initialValue() {
            return new Matrix4f();
        }
    }

    public class u extends ThreadLocal<Matrix4f> {
        public u() {
        }

        @Override
        @Nullable
        @org.jetbrains.annotations.Nullable
        public Matrix4f initialValue() {
            return new Matrix4f();
        }
    }

    public class v implements d {
        public v() {
        }

        @Override
        public void a() {
            Camera.this.requestFrustumRecalculation();
        }
    }

    public class w extends ThreadLocal<Matrix4f> {
        public w() {
        }

        @Override
        @Nullable
        @org.jetbrains.annotations.Nullable
        public Matrix4f initialValue() {
            return new Matrix4f();
        }
    }

    public static class x {

        public static final int[] f73192a;

        static {
            int[] iArr = new int[ParticleEmitter.z.values().length];
            f73192a = iArr;
            try {
                iArr[ParticleEmitter.z.Global.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73192a[ParticleEmitter.z.Local.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public class y implements d {
        public y() {
        }

        @Override
        public void a() {
            Camera.this.requestFrustumRecalculation();
        }
    }

    public class z implements d {
        public z() {
        }

        @Override
        public void a() {
            Camera.this.requestFrustumRecalculation();
        }
    }

    static {
        C13201a.b(new k());
        f73077O8 = new o();
        f73078P8 = new p();
        f73079Q8 = new q();
    }

    public Camera() {
        super(f73075M8);
        this.renderDistance = 500.0f;
        this.f73086E = new v();
        this.fov = 60.0f;
        this.f73087F = new y();
        this.minimalDistance = 0.1f;
        this.f73096G = new z();
        this.resoPercentage = 0.8f;
        this.f73097H = new A();
        this.resolutionMode = H.FreeAspectResolution;
        this.fixedResolutionPixelsWidth = 1280;
        this.f73104I = new B();
        this.fixedResolutionPixelsHeight = 720;
        this.f73105J = new C();
        this.freeResolutionPixels = 400;
        this.f73106K = new D();
        this.layer = 1;
        G g10 = G.Perspective;
        this.projection = g10;
        this.f73108L = new E();
        this.backgroundType = F.Skybox;
        this.solidColor = new ColorINT(21, 21, 26);
        this.rect_width = 1.0f;
        this.f73112M = new C12756a();
        this.rect_height = 1.0f;
        this.f73116N = new C12757b();
        this.rect_desloc_x = 0.0f;
        this.rect_desloc_y = 0.0f;
        this.showInScreen = true;
        this.resolutionsEditor = new InspectorEditor();
        this.f73117O = null;
        this.f73118P = null;
        this.enablePostProcessing = true;
        this.f73129W = new Vector3();
        this.f73130X = 0.0f;
        this.f73131Y = false;
        this.f73132Z = false;
        this.f73133b1 = null;
        this.f73135i1 = null;
        this.f73138m1 = new V8.b();
        this.f73143q1 = new Vector3();
        this.f73147v1 = new Vector3();
        this.f73151y1 = true;
        this.f73088F1 = new C13205b();
        this.f73098H1 = new C12758c();
        this.f73109L1 = new float[16];
        this.f73113M1 = new float[16];
        this.f73121R1 = new float[16];
        this.f73127V1 = new float[16];
        this.f73134b2 = new float[16];
        this.f73136i2 = new double[16];
        this.f73144q2 = 0.0f;
        this.f73148v2 = 0.0f;
        this.f73081D2 = 0.0f;
        boolean[] zArr = new boolean[8];
        this.f73089F2 = zArr;
        Arrays.fill(zArr, true);
        this.f73122R2 = new ColorINT();
        this.f73128V2 = new ColorINT();
        this.f73140m3 = new RunnableC12759d();
        this.f73145q3 = new Vector3();
        this.f73149v3 = new Vector3();
        this.f73082D3 = new Vector3();
        this.f73090F3 = new Vector3(-999999.0f);
        this.f73100H3 = new Vector3(-999999.0f);
        this.f73115M3 = new float[16];
        this.f73141m4 = new Vector3(-999999.0f);
        this.f73150v4 = -1.0f;
        this.f73083D4 = -1.0f;
        this.f73091F4 = -1.0f;
        this.f73101H4 = -1.0f;
        this.f73084D5 = -1.0f;
        this.f73092F5 = true;
        this.f73102H5 = -1;
        this.f73085D6 = -1;
        this.f73093F6 = new r();
        this.f73103H6 = new s();
        this.f73094F7 = new t();
        this.f73095F8 = new u();
        this.f73107K8 = new w();
        setRenderDistance(500.0f);
        this.layer = 1;
        setRectWidth(1.0f);
        setRectHeight(1.0f);
        setRectPosX(0.0f);
        setRectPosY(0.0f);
        this.showInScreen = true;
        this.projection = g10;
    }

    private int apkReducer(int v10) {
        return v10;
    }

    private void buildLocals() {
        if (this.f73099H2 == null) {
            this.f73099H2 = new a(new ColorGrading.a().r(new ToneMapper.g()));
        }
        ColorINT solidColor = getSolidColor();
        if (this.f73114M2 == null || this.f73128V2.intColor != solidColor.intColor || this.f73137i3 != getBackgroundType()) {
            this.f73128V2.K(solidColor);
            this.f73137i3 = getBackgroundType();
            Skybox.a aVar = new Skybox.a();
            aVar.e(1.0f);
            if (getBackgroundType() == F.Alpha) {
                aVar.b(0.0f, 0.0f, 0.0f, 0.0f);
            } else {
                aVar.b(solidColor.w(), solidColor.u(), solidColor.s(), solidColor.r());
            }
            aVar.g(false);
            this.f73114M2 = new FilamentSkybox(aVar);
        }
        ColorINT overrideAmbientLight = overrideAmbientLight();
        if (overrideAmbientLight != null) {
            if (this.f73110L2 == null || this.f73122R2.intColor != overrideAmbientLight.intColor) {
                this.f73122R2.K(overrideAmbientLight);
                this.f73110L2 = new FilamentIndirectLight(new IndirectLight.a().c(1, new float[]{overrideAmbientLight.w(), overrideAmbientLight.u(), overrideAmbientLight.s()}).b(75000.0f), null);
            }
        }
    }

    private boolean calculateFrustum() {
        int imageWidth = getImageWidth();
        int imageHeight = getImageHeight();
        if (imageWidth != this.f73102H5 || imageHeight != this.f73085D6) {
            this.f73092F5 = true;
            this.f73102H5 = imageWidth;
            this.f73085D6 = imageHeight;
        }
        if (!this.f73092F5) {
            return false;
        }
        float f10 = imageWidth / imageHeight;
        if (getProjection() == G.Perspective) {
            float minimalDistance = getMinimalDistance();
            float renderDistance = getRenderDistance();
            float fov = getFov();
            if (this.f73150v4 != minimalDistance || this.f73083D4 != renderDistance || this.f73091F4 != fov || this.f73101H4 != f10) {
                this.f73150v4 = minimalDistance;
                this.f73083D4 = renderDistance;
                this.f73091F4 = fov;
                this.f73101H4 = f10;
                try {
                    Matrix.perspectiveM(this.f73121R1, 0, fov, f10, minimalDistance, renderDistance);
                    updateFilamentFrustumMatrix();
                    Matrix.setIdentityM(this.f73127V1, 0);
                    Matrix.invertM(this.f73127V1, 0, this.f73121R1, 0);
                    this.f73092F5 = false;
                    return true;
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } else if (getProjection() == G.Orthographic) {
            float minimalDistance2 = getMinimalDistance();
            float renderDistance2 = getRenderDistance();
            float ortho_diameter = getOrtho_diameter();
            if (this.f73150v4 != minimalDistance2 || this.f73083D4 != renderDistance2 || this.f73101H4 != f10 || this.f73084D5 != ortho_diameter) {
                this.f73150v4 = minimalDistance2;
                this.f73083D4 = renderDistance2;
                this.f73101H4 = f10;
                this.f73084D5 = ortho_diameter;
                try {
                    float f11 = -ortho_diameter;
                    Matrix.orthoM(this.f73121R1, 0, (f11 * f10) / 2.0f, (f10 * ortho_diameter) / 2.0f, f11 / 2.0f, ortho_diameter / 2.0f, minimalDistance2, renderDistance2);
                    updateFilamentFrustumMatrix();
                    Matrix.setIdentityM(this.f73127V1, 0);
                    Matrix.invertM(this.f73127V1, 0, this.f73121R1, 0);
                    this.f73092F5 = false;
                    return true;
                } catch (Error | Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
        this.f73092F5 = false;
        return false;
    }

    private void calculateHierarchyCameraMatrix() {
        if (C13317e.G(this.f79250n)) {
            return;
        }
        try {
            this.f79250n.transform.a0(this.f73145q3);
            if (this.f73141m4.equally(this.f73145q3)) {
                return;
            }
            Vector3 r42 = this.f79250n.transform.r4(this.f73082D3);
            Matrix.setLookAtM(this.f73115M3, 0, 0.0f, 0.0f, 0.0f, this.f73145q3.getX(), this.f73145q3.getY(), this.f73145q3.getZ(), r42.getX(), r42.getY(), r42.getZ());
            this.f73141m4.set(this.f73145q3);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void calculateMatrixes(GameObject gameObject) {
        if (C13317e.J(gameObject)) {
            boolean calculateViewMatrix = calculateViewMatrix();
            boolean calculateFrustum = calculateFrustum();
            if (calculateViewMatrix || calculateFrustum) {
                this.f73138m1.a(this.f73121R1, this.f73109L1);
            }
            calculateHierarchyCameraMatrix();
            gameObject.transform.u0(this.f73143q1);
            gameObject.transform.a0(this.f73147v1);
        }
    }

    private void calculateProjectionOnly(GameObject gameObject) {
        if (C13317e.J(gameObject) && calculateFrustum()) {
            this.f73138m1.a(this.f73121R1, this.f73109L1);
        }
    }

    private boolean calculateViewMatrix() {
        try {
            this.f79250n.transform.u0(this.f73149v3);
            this.f79250n.transform.a0(this.f73145q3);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.f73090F3.equally(this.f73149v3)) {
            if (!this.f73100H3.equally(this.f73145q3)) {
            }
            return false;
        }
        Vector3 r42 = this.f79250n.transform.r4(this.f73082D3);
        Matrix.setLookAtM(this.f73109L1, 0, this.f73149v3.getX(), this.f73149v3.getY(), this.f73149v3.getZ(), this.f73145q3.getX() + this.f73149v3.getX(), this.f73145q3.getY() + this.f73149v3.getY(), this.f73145q3.getZ() + this.f73149v3.getZ(), r42.getX(), r42.getY(), r42.getZ());
        Matrix.setIdentityM(this.f73113M1, 0);
        Matrix.invertM(this.f73113M1, 0, this.f73109L1, 0);
        updateFilamentCameraModelMatrix();
        this.f73090F3.set(this.f73149v3);
        this.f73100H3.set(this.f73145q3);
        return true;
    }

    public static Component deserialize(JsonObject json) {
        try {
            return (Camera) X7.a.m().fromJson((JsonElement) json, Camera.class);
        } catch (JsonSyntaxException e10) {
            throw new ComponentDeserializeException(e10);
        }
    }

    private void ensureRenderBuffers() {
        if (!isHierarchyActive() || this.f73119Q == null) {
            return;
        }
        int imageWidth = getImageWidth();
        int imageHeight = getImageHeight();
        int K10 = Nc.b.K(determineImageResolutionPercentage(), 150);
        Tb.a aVar = this.f73117O;
        if (aVar == null) {
            this.f73117O = new Tb.a(imageWidth, imageHeight, K10);
        } else if (aVar.p() != imageWidth || this.f73117O.o() != imageHeight || this.f73117O.q() != K10) {
            this.f73117O.v(imageWidth, imageHeight, K10);
        }
        this.f73119Q.D(0, 0, this.f73117O.i(), this.f73117O.h());
        if (!this.f73120R) {
            Tb.a aVar2 = this.f73118P;
            if (aVar2 != null) {
                aVar2.c();
                this.f73118P = null;
                return;
            }
            return;
        }
        Tb.a aVar3 = this.f73118P;
        if (aVar3 == null) {
            this.f73118P = new Tb.a(imageWidth, imageHeight, K10);
        } else {
            if (aVar3.p() == imageWidth && this.f73118P.o() == imageHeight && this.f73118P.q() == K10) {
                return;
            }
            this.f73118P.v(imageWidth, imageHeight, K10);
        }
    }

    private float extractMaxScale(float[] matrix) {
        float f10 = matrix[0];
        float f11 = matrix[1];
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = matrix[2];
        float sqrt = (float) Math.sqrt(f12 + (f13 * f13));
        float f14 = matrix[4];
        float f15 = matrix[5];
        float f16 = (f14 * f14) + (f15 * f15);
        float f17 = matrix[6];
        float sqrt2 = (float) Math.sqrt(f16 + (f17 * f17));
        float f18 = matrix[8];
        float f19 = matrix[9];
        float f20 = matrix[10];
        return Math.max(sqrt, Math.max(sqrt2, (float) Math.sqrt((f18 * f18) + (f19 * f19) + (f20 * f20))));
    }

    private float getVisibleScreenRectArea() {
        float scaledRectPosX = getScaledRectPosX();
        float scaledRectPosY = getScaledRectPosY();
        float E10 = Nc.b.E(0.0f, scaledRectPosX, 1.0f);
        float E11 = Nc.b.E(0.0f, scaledRectPosY, 1.0f);
        return Math.max(0.0f, Nc.b.E(0.0f, scaledRectPosX + getScaledRectWidth(), 1.0f) - E10) * Math.max(0.0f, Nc.b.E(0.0f, scaledRectPosY + getScaledRectHeight(), 1.0f) - E11);
    }

    private void handleScreenshots() {
        Tb.a aVar;
        if (!this.f73146v0 || (aVar = this.f73117O) == null) {
            return;
        }
        aVar.f(this.f73080D0, 100);
        this.f73146v0 = false;
        this.f73080D0 = null;
    }

    public static boolean isAnyEditorCameraRendering() {
        try {
            List<Component> h10 = R8.f.h(Camera.class);
            for (int i10 = 0; i10 < h10.size(); i10++) {
                Camera camera = (Camera) h10.get(i10);
                if (!(camera instanceof AxisCubeCamera) && (camera instanceof EditorCamera) && camera.isHierarchyActive() && camera.f73132Z) {
                    return true;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    public static Camera mainCamera() {
        Camera camera;
        try {
            List<Component> h10 = R8.f.h(Camera.class);
            float f10 = -1.0f;
            camera = null;
            for (int i10 = 0; i10 < h10.size(); i10++) {
                Camera camera2 = (Camera) h10.get(i10);
                if (camera2.f73132Z && !(camera2 instanceof EditorCamera) && camera2.isHierarchyActive()) {
                    float visibleScreenRectArea = camera2.getVisibleScreenRectArea();
                    if (visibleScreenRectArea > f10) {
                        camera = camera2;
                        f10 = visibleScreenRectArea;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (camera != null) {
            return camera;
        }
        return null;
    }

    public static Camera mainCameraAllowEditor() {
        Camera camera;
        try {
            List<Component> h10 = R8.f.h(Camera.class);
            float f10 = -1.0f;
            camera = null;
            for (int i10 = 0; i10 < h10.size(); i10++) {
                Camera camera2 = (Camera) h10.get(i10);
                if (camera2.f73132Z && !(camera2 instanceof AxisCubeCamera) && camera2.isHierarchyActive()) {
                    float visibleScreenRectArea = camera2.getVisibleScreenRectArea();
                    if (visibleScreenRectArea > f10) {
                        camera = camera2;
                        f10 = visibleScreenRectArea;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (camera != null) {
            return camera;
        }
        return null;
    }

    private Vector3 multiplyMatrixVector(float[] matrix, Vector3 v10) {
        float x10 = v10.getX();
        float y10 = v10.getY();
        float z10 = v10.getZ();
        return new Vector3((matrix[0] * x10) + (matrix[4] * y10) + (matrix[8] * z10) + matrix[12], (matrix[1] * x10) + (matrix[5] * y10) + (matrix[9] * z10) + matrix[13], (matrix[2] * x10) + (matrix[6] * y10) + (matrix[10] * z10) + matrix[14]);
    }

    public void recalculateFrustumOnly() {
        if (calculateFrustum() && C13317e.J(this.f79250n)) {
            this.f73138m1.a(this.f73121R1, this.f73109L1);
        }
    }

    public void requestFrustumRecalculation() {
        this.f73092F5 = true;
        if (C13317e.G(this.f79250n)) {
            return;
        }
        if (K8.a.q()) {
            recalculateFrustumOnly();
        } else {
            K8.a.B(this.f73140m3);
        }
    }

    private void updateFilamentCameraModelMatrix() {
        if (this.f73139m2 != null) {
            double[] dArr = this.f73136i2;
            for (int i10 = 0; i10 < 16; i10++) {
                dArr[i10] = this.f73113M1[i10];
            }
            this.f73139m2.k(dArr);
        }
    }

    private void updateFilamentFrustumMatrix() {
        if (this.f73139m2 == null) {
            return;
        }
        double[] dArr = this.f73136i2;
        int i10 = 0;
        while (true) {
            if (i10 >= this.f73121R1.length) {
                this.f73139m2.j(dArr, getNearPlane(), getFarPlane());
                return;
            } else {
                dArr[i10] = r2[i10];
                i10++;
            }
        }
    }

    private void updateFrustumModel() {
        if (this.f79250n.b1() && !this.f79250n.Y0() && C13317e.J(this.f79250n) && this.f73151y1) {
            if (this.f73135i1 == null) {
                V8.a aVar = new V8.a();
                this.f73135i1 = aVar;
                aVar.p(new ColorINT(255, 255, 255));
            }
            this.f73135i1.c(this);
            this.f73135i1.n(this.f79250n);
        }
    }

    private void updateRenderTexture() {
        if (this.f73124T == null) {
            String str = this.renderTextureFile;
            if (str == null || str.isEmpty()) {
                this.f73124T = null;
                this.f73125U = null;
                return;
            }
            String str2 = this.renderTextureFile;
            if (str2 == null || str2.isEmpty()) {
                this.f73124T = null;
                this.f73125U = null;
                return;
            }
            String str3 = this.f73125U;
            if (str3 == null || !str3.equals(str2)) {
                this.f73125U = str2;
                this.f73124T = (e) C16165b.u(str2);
            }
        }
    }

    private void useLocalAmbientLight() {
        if (overrideAmbientLight() != null) {
            getEffectiveScene().u(this.f73110L2);
        }
    }

    private void useLocalSkybox() {
        getEffectiveScene().v(this.f73114M2);
    }

    public boolean allowPostProcessing() {
        return true;
    }

    public float calculateDistance(Vertex vertex, float[] renderMatrix) {
        vertex.getClass();
        renderMatrix.getClass();
        AABB d02 = vertex.d0();
        d02.getRadius();
        f fVar = f73077O8.get();
        Vector3 vector3 = f73078P8.get();
        fVar.y0(renderMatrix);
        d02.n(vector3);
        fVar.p0(vector3, vector3);
        return this.f79250n.transform.G1(vector3);
    }

    public void clearBuffers() {
        Tb.a aVar = this.f73117O;
        if (aVar != null) {
            aVar.c();
            this.f73117O = null;
        }
        Tb.a aVar2 = this.f73118P;
        if (aVar2 != null) {
            aVar2.c();
            this.f73118P = null;
        }
    }

    public void createGizmo() {
        if (this.f73151y1) {
            D8.b bVar = W7.b.f27306f.f2458a.f4943f;
            if (this.f73123S == null) {
                GizmoObject gizmoObject = new GizmoObject();
                this.f73123S = gizmoObject;
                try {
                    gizmoObject.setVertex(bVar.c().x2());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                TextureConfig textureConfig = new TextureConfig();
                textureConfig.j0(TextureConfig.c.Nearest);
                g v10 = C16165b.v(bVar.f4960d, textureConfig);
                if (v10 != null) {
                    this.f73123S.setTexture(v10.p0());
                } else {
                    Log.e(f73075M8, "Failed to load gizmo texture");
                }
                this.f73123S.setEnableLight(true);
            }
        }
    }

    @InterfaceC15237a
    public int determineImageResolutionPercentage() {
        int ordinal = this.resolutionMode.ordinal();
        if (ordinal == 0) {
            return Nc.b.N((int) Nc.b.S0(Nc.b.D(2.0f / getImageWidth()), Nc.b.D(2.0f / getImageHeight())), (int) (this.resoPercentage * 100.0f));
        }
        if (ordinal == 1 || ordinal == 2) {
            return 100;
        }
        throw new RuntimeException();
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        removeFromGraphics();
        clearBuffers();
    }

    public F getBackgroundType() {
        if (this.backgroundType == null) {
            this.backgroundType = F.Skybox;
        }
        return this.backgroundType;
    }

    public Tb.a getCacheBuffer() {
        return this.f73118P;
    }

    @InterfaceC15237a
    public float getFarPlane() {
        return getRenderDistance();
    }

    public FilamentCamera getFilamentCamera() {
        return this.f73139m2;
    }

    @InterfaceC15237a
    public int getFixedResolutionPixelsHeight() {
        return this.fixedResolutionPixelsHeight;
    }

    @InterfaceC15237a
    public int getFixedResolutionPixelsWidth() {
        return this.fixedResolutionPixelsWidth;
    }

    public float getFov() {
        if (this.fov <= 0.0f) {
            this.fov = 0.1f;
        }
        return this.fov;
    }

    @InterfaceC15237a
    public int getFreeResolutionPixels() {
        return this.freeResolutionPixels;
    }

    @InterfaceC15237a
    public float[] getFrustumMatrix() {
        return this.f73121R1;
    }

    @InterfaceC15237a
    public float[] getHierarchyCameraMatrix() {
        return this.f73115M3;
    }

    @Override
    public int getIconResource() {
        return R.drawable.wo_camera2;
    }

    public Tb.a getImageBuffer() {
        return this.f73117O;
    }

    @InterfaceC15237a
    public int getImageHeight() {
        int ordinal = this.resolutionMode.ordinal();
        if (ordinal == 0) {
            return Nc.b.N(2, apkReducer((int) (K8.c.a() * getScaledRectHeight())));
        }
        if (ordinal == 1) {
            return apkReducer(this.fixedResolutionPixelsHeight);
        }
        if (ordinal != 2) {
            throw new RuntimeException();
        }
        boolean z10 = K8.c.f11004e == c.a.Landscape;
        if (!z10) {
            return Nc.b.N(2, apkReducer((int) (K8.c.a() * getScaledRectHeight() * (getImageWidth() / Nc.b.N(2, (int) (K8.c.b() * getScaledRectWidth()))))));
        }
        if (z10) {
            return apkReducer(this.freeResolutionPixels);
        }
        throw new RuntimeException();
    }

    @InterfaceC15237a
    public float getImageRatio() {
        return getImageWidth() / getImageHeight();
    }

    @InterfaceC15237a
    public int getImageWidth() {
        int ordinal = this.resolutionMode.ordinal();
        if (ordinal == 0) {
            return Nc.b.N(2, apkReducer((int) (K8.c.b() * getScaledRectWidth())));
        }
        if (ordinal == 1) {
            return apkReducer(this.fixedResolutionPixelsWidth);
        }
        if (ordinal != 2) {
            throw new RuntimeException();
        }
        boolean z10 = K8.c.f11004e == c.a.Landscape;
        if (!z10) {
            return apkReducer(this.freeResolutionPixels);
        }
        if (z10) {
            return Nc.b.N(2, apkReducer((int) (K8.c.b() * getScaledRectWidth() * (getImageHeight() / Nc.b.N(2, (int) (K8.c.a() * getScaledRectHeight()))))));
        }
        throw new RuntimeException();
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_camera;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        C12760e c12760e = new C12760e();
        String l10 = Lang.l(Lang.T.RENDER_DISTANCE);
        b.a aVar = b.a.SLFloat;
        C5.b bVar = new C5.b(c12760e, l10, aVar);
        GameObject gameObject = this.f79250n;
        com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
        linkedList.add(bVar.d(gameObject, this, "renderDistance", cVar));
        linkedList.add(new C5.b(new C12761f(), Lang.l(Lang.T.MINIMAL_DISTANCE), aVar).d(this.f79250n, this, "minimalDistance", cVar));
        linkedList.add(new C5.b(new C12762g(), "Enable post processing", b.a.SLBoolean));
        linkedList.add(F5.c.i(Lang.l(Lang.T.BACKGROUND), F.class, this.backgroundType, new C12763h()));
        F f10 = this.backgroundType;
        if (f10 == F.SolidColor) {
            linkedList.add(new C5.b(new i(), Lang.l(Lang.T.COLOR), b.a.Color, context).d(this.f79250n, this, "solidColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
        } else if (f10 == F.Alpha) {
            linkedList.add(new C5.b(Lang.l(Lang.T.ALPHA_MODE_NOT_COMPATIBLE_POST_PROCESSING), 12));
        }
        linkedList.add(new C5.b(new j(), "Render texture", b.a.InputFile, ".rte"));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.RESOLUTION), new l()));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.PROJECTION), new m()));
        linkedList.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.RECT), new n()));
        return linkedList;
    }

    @InterfaceC15237a
    public float[] getInverseFrustumMatrix() {
        return this.f73127V1;
    }

    @InterfaceC15237a
    public float[] getInverseViewMatrix() {
        return this.f73113M1;
    }

    @InterfaceC15237a
    public int getLayer() {
        return this.layer;
    }

    public float getMinimalDistance() {
        float M10 = Nc.b.M(0.01f, this.minimalDistance);
        this.minimalDistance = M10;
        return M10;
    }

    @InterfaceC15237a
    public float getNearPlane() {
        return getMinimalDistance();
    }

    public float getOrtho_diameter() {
        if (this.ortho_diameter == 0.0f) {
            this.ortho_diameter = 15.0f;
        }
        return this.ortho_diameter;
    }

    public G getProjection() {
        if (this.projection == null) {
            this.projection = G.Perspective;
        }
        return this.projection;
    }

    @InterfaceC15237a
    public float getRectHeight() {
        return this.rect_height;
    }

    @InterfaceC15237a
    public float getRectPosX() {
        return this.rect_desloc_x;
    }

    @InterfaceC15237a
    public float getRectPosY() {
        return this.rect_desloc_y;
    }

    @InterfaceC15237a
    public float getRectWidth() {
        return this.rect_width;
    }

    @InterfaceC15237a
    public Vector3 getRenderCameraDirection() {
        return this.f73147v1;
    }

    @InterfaceC15237a
    public Vector3 getRenderCameraPosition() {
        return this.f73143q1;
    }

    public float getRenderDistance() {
        return Nc.b.M(getMinimalDistance() + 1.0f, this.renderDistance);
    }

    public float getRenderPercentage() {
        return this.resoPercentage;
    }

    public String getRenderTextureFile() {
        return this.renderTextureFile;
    }

    @InterfaceC15237a
    public H getResolutionMode() {
        return this.resolutionMode;
    }

    @InterfaceC15237a
    public float getScaledRectHeight() {
        C13319g c13319g;
        GameObject gameObject = this.f79250n;
        return (gameObject == null || (c13319g = gameObject.f79296m) == null) ? getRectHeight() : this.rect_height * c13319g.d();
    }

    @InterfaceC15237a
    public float getScaledRectPosX() {
        return (this.f79250n.f79296m.getX() - (K8.c.f11000a / K8.c.b())) + (this.f79250n.f79296m.e() * this.rect_desloc_x);
    }

    @InterfaceC15237a
    public float getScaledRectPosY() {
        return (this.f79250n.f79296m.getY() - (K8.c.f11001b / K8.c.a())) + (this.f79250n.f79296m.d() * this.rect_desloc_y);
    }

    @InterfaceC15237a
    public float getScaledRectWidth() {
        C13319g c13319g;
        GameObject gameObject = this.f79250n;
        return (gameObject == null || (c13319g = gameObject.f79296m) == null) ? getRectWidth() : this.rect_width * c13319g.e();
    }

    public ColorINT getSolidColor() {
        return this.solidColor;
    }

    @Override
    public String getTitle() {
        return f73075M8;
    }

    @Override
    public Component.e getType() {
        return Component.e.Camera;
    }

    public FilamentView getView() {
        return this.f73119Q;
    }

    @InterfaceC15237a
    public float[] getViewMatrix() {
        return this.f73109L1;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    public boolean isCubeVisible(Vector3 vector3, float size) {
        vector3.getClass();
        return isCubeVisible(vector3.getX(), vector3.getY(), vector3.getZ(), size);
    }

    public boolean isEnablePostProcessing() {
        return this.enablePostProcessing;
    }

    public boolean isPointVisible(Vector3 vector3) {
        vector3.getClass();
        return isPointVisible(vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public boolean isShowInScreen() {
        return this.showInScreen;
    }

    public boolean isSphereVisible(Vector3 vector3, float radius) {
        vector3.getClass();
        return isSphereVisible(vector3.getX(), vector3.getY(), vector3.getZ(), radius);
    }

    public boolean isVisible(ParticleEmitter emitter) {
        boolean isVisible;
        emitter.getClass();
        int i10 = x.f73192a[emitter.getWorldSpace().ordinal()];
        if (i10 == 1) {
            isVisible = isVisible(emitter.getBounding());
        } else if (i10 == 2) {
            isVisible = isVisible(emitter.getBounding(), emitter.f79250n.transform);
        } else {
            throw new RuntimeException("Invalid type " + ((Object) emitter.getWorldSpace()));
        }
        return !isVisible ? isSphereVisible(emitter.f79250n.transform.w0(), emitter.f79250n.transform.x0(), emitter.f79250n.transform.y0(), 0.5f) : isVisible;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        if (C13317e.J(this.f79250n)) {
            this.f79250n.transform.u(this.f73098H1);
            calculateMatrixes(this.f79250n);
        }
    }

    @Override
    public void onDetach() {
        if (C13317e.J(this.f79250n)) {
            this.f79250n.transform.O2(this.f73098H1);
        }
        removeFromGraphics();
        FilamentView filamentView = this.f73119Q;
        if (filamentView != null) {
            filamentView.F();
            this.f73119Q.y(null);
            this.f73119Q.x(null);
            this.f73119Q.C(null);
        }
        a aVar = this.f73099H2;
        if (aVar != null) {
            aVar.destroyImmediate();
            this.f73099H2 = null;
        }
        FilamentCamera filamentCamera = this.f73139m2;
        if (filamentCamera != null) {
            filamentCamera.destroyImmediate();
            this.f73139m2 = null;
        }
        FilamentView filamentView2 = this.f73119Q;
        if (filamentView2 != null) {
            filamentView2.destroyImmediate();
            this.f73119Q = null;
        }
        clearBuffers();
        V8.a aVar2 = this.f73135i1;
        if (aVar2 != null) {
            aVar2.f();
            this.f73135i1 = null;
        }
        super.onDetach();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (enabled && C13317e.J(this.f79250n)) {
            this.f73090F3.set(-999999.0f);
            this.f73100H3.set(-999999.0f);
            this.f73141m4.set(-999999.0f);
            this.f73092F5 = true;
            calculateMatrixes(this.f79250n);
        }
    }

    public ColorINT overrideAmbientLight() {
        Color overrideAmbientLight;
        CameraObjectFilter cameraObjectFilter = this.f73133b1;
        if (cameraObjectFilter == null || (overrideAmbientLight = cameraObjectFilter.overrideAmbientLight()) == null) {
            return null;
        }
        return overrideAmbientLight.instance;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (this.f73119Q == null) {
            FilamentView filamentView = new FilamentView();
            this.f73119Q = filamentView;
            filamentView.C(getEffectiveScene());
            this.f73119Q.w(View.d.OPAQUE);
            this.f73119Q.z(true);
        }
        if (this.f73119Q != null) {
            this.f73089F2[7] = renderGizmos();
            int i10 = 0;
            int i11 = 0;
            while (true) {
                boolean[] zArr = this.f73089F2;
                if (i10 >= zArr.length) {
                    break;
                }
                if (zArr[i10]) {
                    i11 |= 1 << i10;
                }
                i10++;
            }
            this.f73119Q.p().G0(255, i11);
        }
        if (this.f73139m2 == null) {
            FilamentCamera filamentCamera = new FilamentCamera();
            this.f73139m2 = filamentCamera;
            this.f73119Q.x(filamentCamera);
        }
        if (!this.f73131Y) {
            if (this.f73139m2 != null) {
                getEffectiveScene().j(this.f73139m2.f());
            }
            updateFilamentFrustumMatrix();
            updateFilamentCameraModelMatrix();
            this.f73131Y = true;
        }
        calculateProjectionOnly(gameObject);
        ensureRenderBuffers();
        updateRenderTexture();
        if (this.f73132Z && getImageBuffer() != null && getImageBuffer().s() && this.showInScreen) {
            int scaledRectPosX = (int) (getScaledRectPosX() * K8.c.b());
            int scaledRectPosY = (int) (getScaledRectPosY() * K8.c.a());
            int scaledRectWidth = (int) (getScaledRectWidth() * K8.c.b());
            int scaledRectHeight = (int) (getScaledRectHeight() * K8.c.a());
            if (getImageBuffer().k() == null || !getImageBuffer().k().J()) {
                this.f73088F1.l(getImageBuffer().l());
            } else {
                this.f73088F1.l(getImageBuffer().k());
            }
            this.f73088F1.k(scaledRectPosX, scaledRectPosY, scaledRectWidth, scaledRectHeight);
            this.f73088F1.j(this.layer);
            C13204a.a(this.f73088F1);
        }
        if (!isEditor) {
            createGizmo();
            if (this.f73123S != null) {
                Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
                Quaternion quaternion = (Quaternion) JP.acquire(Quaternion.class);
                gameObject.transform.u0(vector3);
                this.f73123S.setPosition(vector3.toJAVARuntime());
                gameObject.transform.C0(quaternion);
                this.f73123S.setRotation(quaternion.N0());
                JP.release(vector3);
                JP.release(quaternion);
                Ub.a.a(this.f73123S);
            }
        }
        Tb.a aVar = this.f73117O;
        if (aVar != null) {
            e eVar = this.f73124T;
            if (eVar != null) {
                eVar.H0(aVar);
            }
            handleScreenshots();
        }
        buildLocals();
    }

    public void recalculateMatrices() {
        this.f73090F3.set(-999999.0f);
        this.f73100H3.set(-999999.0f);
        this.f73141m4.set(-999999.0f);
        calculateViewMatrix();
        calculateHierarchyCameraMatrix();
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
    }

    public void removeFromGraphics() {
        if (this.f73131Y) {
            if (this.f73139m2 != null) {
                getEffectiveScene().s(this.f73139m2.f());
            }
            this.f73131Y = false;
            clearBuffers();
        }
    }

    public boolean renderFog() {
        CameraObjectFilter cameraObjectFilter = this.f73133b1;
        if (cameraObjectFilter != null) {
            return cameraObjectFilter.renderFog();
        }
        return true;
    }

    public boolean renderGizmos() {
        return false;
    }

    public final boolean renderPostProcessing() {
        if (this.enablePostProcessing && getBackgroundType() != F.Alpha) {
            return allowPostProcessing();
        }
        return false;
    }

    public void requestCacheBuffer() {
        this.f73120R = true;
    }

    public void resetPostProcessingeBeforeRender() {
        this.f73119Q.z(renderPostProcessing() && GraphicsSettings.d());
        getEffectiveScene().u(null);
        this.f73119Q.y(this.f73099H2);
        useLocalAmbientLight();
        useLocalSkybox();
        C14492b.a(this.f73119Q);
    }

    public Vector3 screenCoordToWorldNormal(Vector2 touchPos) {
        return screenCoordToWorldNormal(touchPos, new Vector3());
    }

    public Vector3 screenCoordToWorldNormalInRange(float rangeX, float rangeY) {
        float[] hierarchyCameraMatrix = getHierarchyCameraMatrix();
        Vector3 vector3 = new Vector3();
        float f10 = (rangeX * 2.0f) - 1.0f;
        float f11 = ((rangeY * 2.0f) - 1.0f) * (-1.0f);
        float[] frustumMatrix = getFrustumMatrix();
        Matrix4f matrix4f = this.f73094F7.get();
        Matrix4f matrix4f2 = this.f73095F8.get();
        Matrix4f matrix4f3 = this.f73107K8.get();
        matrix4f.set(hierarchyCameraMatrix, false);
        matrix4f2.set(frustumMatrix, false);
        matrix4f2.mult(matrix4f, matrix4f3);
        matrix4f3.invertLocal();
        Vector3f vector3f = new Vector3f();
        G g10 = this.projection;
        if (g10 == G.Perspective) {
            matrix4f3.multProj(new Vector3f(f10, f11, 1.0f), vector3f);
            vector3.set(vector3f);
            vector3.normalizeLocal();
        } else if (g10 == G.Orthographic) {
            matrix4f3.multProj(new Vector3f(f10, f11, -1.0f), vector3f);
            vector3.set(vector3f);
        }
        return vector3;
    }

    public aa.d screenPointToWorldRay(Vector2 touchPos) {
        return screenPointToWorldRay((int) touchPos.f79838x, (int) touchPos.f79839y);
    }

    @Override
    public JsonElement serialize(Context context) {
        return super.serialize(context);
    }

    public void setBackgroundType(F backgroundType) {
        this.backgroundType = backgroundType;
    }

    public void setEnablePostProcessing(boolean enablePostProcessing) {
        this.enablePostProcessing = enablePostProcessing;
    }

    @InterfaceC15237a
    public void setFixedResolutionPixelsHeight(int fixedResolutionPixelsHeight) {
        if (this.fixedResolutionPixelsHeight != fixedResolutionPixelsHeight) {
            this.fixedResolutionPixelsHeight = fixedResolutionPixelsHeight;
            requestFrustumRecalculation();
        }
    }

    @InterfaceC15237a
    public void setFixedResolutionPixelsWidth(int fixedResolutionPixelsWidth) {
        if (this.fixedResolutionPixelsWidth != fixedResolutionPixelsWidth) {
            this.fixedResolutionPixelsWidth = fixedResolutionPixelsWidth;
            requestFrustumRecalculation();
        }
    }

    public void setFov(float fov) {
        if (this.fov != fov) {
            this.fov = fov;
            requestFrustumRecalculation();
        }
    }

    @InterfaceC15237a
    public void setFreeResolutionPixels(int freeResolutionPixels) {
        if (this.freeResolutionPixels != freeResolutionPixels) {
            this.freeResolutionPixels = freeResolutionPixels;
            requestFrustumRecalculation();
        }
    }

    @InterfaceC15237a
    public void setLayer(int layer) {
        this.layer = Nc.b.F(-1000, layer, 1000);
    }

    public void setMinimalDistance(float minimalDistance) {
        if (this.minimalDistance != minimalDistance) {
            this.minimalDistance = minimalDistance;
            requestFrustumRecalculation();
        }
    }

    public void setOrthoDiameter(float ortho_diameter) {
        if (this.ortho_diameter != ortho_diameter) {
            this.ortho_diameter = ortho_diameter;
            requestFrustumRecalculation();
        }
    }

    public void setProjection(G projection) {
        if (this.projection != projection) {
            this.projection = projection;
            requestFrustumRecalculation();
        }
    }

    @InterfaceC15237a
    public void setRectHeight(float rect_height) {
        if (this.rect_height != rect_height) {
            this.rect_height = rect_height;
            requestFrustumRecalculation();
        }
    }

    @InterfaceC15237a
    public void setRectPosX(float rect_desloc_x) {
        this.rect_desloc_x = rect_desloc_x;
    }

    @InterfaceC15237a
    public void setRectPosY(float rect_desloc_y) {
        this.rect_desloc_y = rect_desloc_y;
    }

    @InterfaceC15237a
    public void setRectWidth(float rect_width) {
        if (this.rect_width != rect_width) {
            this.rect_width = rect_width;
            requestFrustumRecalculation();
        }
    }

    public void setRenderDistance(float renderDistance) {
        if (this.renderDistance != renderDistance) {
            this.renderDistance = renderDistance;
            requestFrustumRecalculation();
        }
    }

    public void setRenderPercentage(float resoPercentage) {
        if (this.resoPercentage != resoPercentage) {
            this.resoPercentage = resoPercentage;
            requestFrustumRecalculation();
        }
    }

    public void setRenderTextureFile(String renderTextureFile) {
        this.renderTextureFile = renderTextureFile;
    }

    @InterfaceC15237a
    public void setResolutionMode(H resolutionMode) {
        if (this.resolutionMode != resolutionMode) {
            this.resolutionMode = resolutionMode;
            requestFrustumRecalculation();
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f73111L8 = run;
    }

    public void setShowInScreen(boolean showInScreen) {
        this.showInScreen = showInScreen;
    }

    public void setSolidColor(ColorINT solidColor) {
        this.solidColor = solidColor;
    }

    public void takeScreenShot(File outputFile) {
        this.f73146v0 = true;
        this.f73080D0 = outputFile;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f73111L8;
        if (component != null) {
            return component;
        }
        JAVARuntime.Camera camera = new JAVARuntime.Camera(this);
        this.f73111L8 = camera;
        return camera;
    }

    @Override
    public void updateOnSelectedHierarchy() {
        super.updateOnSelectedHierarchy();
        updateFrustumModel();
    }

    public Vector3 viewSpaceCoordToWorldNormal(float x10, float y10, Vector3 out, float[] cameraMatrix) {
        float f10 = y10 * (-1.0f);
        float[] frustumMatrix = getFrustumMatrix();
        Matrix4f matrix4f = this.f73094F7.get();
        Matrix4f matrix4f2 = this.f73095F8.get();
        Matrix4f matrix4f3 = this.f73107K8.get();
        matrix4f.set(cameraMatrix, false);
        matrix4f2.set(frustumMatrix, false);
        matrix4f2.mult(matrix4f, matrix4f3);
        matrix4f3.invertLocal();
        Vector3f vector3f = new Vector3f();
        G g10 = this.projection;
        if (g10 == G.Perspective) {
            matrix4f3.multProj(new Vector3f(x10, f10, 1.0f), vector3f);
            out.set(vector3f);
            out.normalizeLocal();
        } else if (g10 == G.Orthographic) {
            matrix4f3.multProj(new Vector3f(x10, f10, -1.0f), vector3f);
            out.set(vector3f);
        }
        return out;
    }

    public Vector2 worldToScreenCoordinates(Vector3 pos) {
        f fVar = this.f73093F6.get();
        fVar.x0(getViewMatrix());
        f fVar2 = this.f73103H6.get();
        fVar2.x0(getFrustumMatrix());
        Vector4 vector4 = new Vector4(pos, 1.0f);
        fVar.Q(vector4, vector4);
        fVar2.Q(vector4, vector4);
        float f10 = (vector4.f79844w * 0.5f) + 0.5f;
        float f11 = vector4.f79845x / f10;
        vector4.f79845x = f11;
        float f12 = vector4.f79846y / f10;
        vector4.f79846y = f12;
        return new Vector2(((f11 * 0.5f) + 0.5f) * getImageWidth(), ((f12 * 0.5f) + 0.5f) * getImageHeight());
    }

    @Override
    public Component mo1248clone() {
        Camera camera = new Camera();
        camera.setRenderDistance(this.renderDistance);
        camera.setFov(this.fov);
        camera.setMinimalDistance(this.minimalDistance);
        camera.renderTextureFile = this.renderTextureFile;
        camera.setRenderPercentage(this.resoPercentage);
        camera.layer = this.layer;
        camera.projection = this.projection;
        camera.setOrthoDiameter(this.ortho_diameter);
        camera.rect_desloc_x = this.rect_desloc_x;
        camera.rect_desloc_y = this.rect_desloc_y;
        camera.setRectWidth(this.rect_width);
        camera.setRectHeight(this.rect_height);
        camera.showInScreen = this.showInScreen;
        camera.setResolutionMode(this.resolutionMode);
        camera.setFixedResolutionPixelsWidth(this.fixedResolutionPixelsWidth);
        camera.setFixedResolutionPixelsHeight(this.fixedResolutionPixelsHeight);
        camera.setFreeResolutionPixels(this.freeResolutionPixels);
        camera.resolutionsEditor = this.resolutionsEditor.clone();
        camera.backgroundType = this.backgroundType;
        camera.solidColor = ColorINT.k(this.solidColor);
        camera.enablePostProcessing = this.enablePostProcessing;
        return camera;
    }

    public Vector3 screenCoordToWorldNormal(Vector2 touchPos, Vector3 out) {
        return screenCoordToWorldNormal((int) touchPos.f79838x, (int) touchPos.f79839y, out, getHierarchyCameraMatrix());
    }

    public aa.d screenPointToWorldRay(int coordX, int coordY) {
        return screenPointToWorldRay(coordX, coordY, new aa.d());
    }

    public boolean isCubeVisible(float x10, float y10, float z10, float size) {
        if (this.f79250n.transform.D1(x10, y10, z10) <= size * size) {
            return true;
        }
        return this.f73138m1.b(x10, y10, z10, size);
    }

    public boolean isPointVisible(float x10, float y10, float z10) {
        return this.f73138m1.c(x10, y10, z10);
    }

    public boolean isSphereVisible(float x10, float y10, float z10, float radius) {
        if (this.f79250n.transform.D1(x10, y10, z10) <= radius * radius) {
            return true;
        }
        return this.f73138m1.d(x10, y10, z10, radius);
    }

    public aa.d screenPointToWorldRay(Vector2 touchPos, aa.d rayDirection) {
        return screenPointToWorldRay((int) touchPos.f79838x, (int) touchPos.f79839y, rayDirection);
    }

    public Vector3 screenCoordToWorldNormal(int touchX, int touchY) {
        return screenCoordToWorldNormal(touchX, touchY, new Vector3(), getHierarchyCameraMatrix());
    }

    public aa.d screenPointToWorldRay(int coordX, int coordY, aa.d rayDirection) {
        G g10 = this.projection;
        if (g10 != G.Perspective && g10 != null) {
            if (g10 == G.Orthographic) {
                Vector3 screenCoordToWorldNormal = screenCoordToWorldNormal(coordX, coordY, new Vector3(), getHierarchyCameraMatrix());
                screenCoordToWorldNormal.addLocal(this.f79250n.transform.u0((Vector3) JP.acquire(Vector3.class)));
                rayDirection.f31957b = screenCoordToWorldNormal;
                this.f79250n.transform.a0(rayDirection.f31958c);
            }
        } else {
            Vector3 screenCoordToWorldNormal2 = screenCoordToWorldNormal(coordX, coordY, new Vector3(), getHierarchyCameraMatrix());
            this.f79250n.transform.u0(rayDirection.f31957b);
            rayDirection.f31958c = screenCoordToWorldNormal2;
        }
        return rayDirection;
    }

    public boolean isSphereVisible(Transform transform, float radius) {
        transform.getClass();
        if (this.f79250n.transform.F1(transform) <= radius * radius) {
            return true;
        }
        return this.f73138m1.d(transform.w0(), transform.x0(), transform.y0(), radius);
    }

    public Vector3 screenCoordToWorldNormal(int touchX, int touchY, Vector3 out, float[] cameraMatrix) {
        float rectPosX = (((touchX - (getRectPosX() * K8.c.b())) / (getScaledRectWidth() * K8.c.b())) * 2.0f) - 1.0f;
        float rectPosY = ((((touchY - (getRectPosY() * K8.c.a())) / (getScaledRectHeight() * K8.c.a())) * 2.0f) - 1.0f) * (-1.0f);
        float[] frustumMatrix = getFrustumMatrix();
        Matrix4f matrix4f = this.f73094F7.get();
        Matrix4f matrix4f2 = this.f73095F8.get();
        Matrix4f matrix4f3 = this.f73107K8.get();
        matrix4f.set(cameraMatrix, false);
        matrix4f2.set(frustumMatrix, false);
        matrix4f2.mult(matrix4f, matrix4f3);
        matrix4f3.invertLocal();
        Vector3f vector3f = new Vector3f();
        G g10 = this.projection;
        if (g10 == G.Perspective) {
            matrix4f3.multProj(new Vector3f(rectPosX, rectPosY, 1.0f), vector3f);
            out.set(vector3f);
            out.normalizeLocal();
            return out;
        }
        if (g10 == G.Orthographic) {
            matrix4f3.multProj(new Vector3f(rectPosX, rectPosY, -1.0f), vector3f);
            out.set(vector3f);
        }
        return out;
    }

    public boolean isVisible(Vertex vertex, Transform transform) {
        vertex.getClass();
        transform.getClass();
        return isVisible(vertex, transform.x1());
    }

    public boolean isVisible(Vertex vertex, float[] renderMatrix) {
        vertex.getClass();
        renderMatrix.getClass();
        AABB d02 = vertex.d0();
        return isSphereVisible(multiplyMatrixVector(renderMatrix, d02.m()), d02.getRadius() * extractMaxScale(renderMatrix));
    }

    public boolean isVisible(Vertex vertex) {
        vertex.getClass();
        AABB d02 = vertex.d0();
        float radius = d02.getRadius();
        Vector3 vector3 = f73078P8.get();
        d02.n(vector3);
        return isSphereVisible(vector3, radius);
    }

    public Vector3 screenCoordToWorldNormalInRange(float rangeX, float rangeY, float[] cameraMatrix, float[] frustumMatrix) {
        Vector3 vector3 = new Vector3();
        float f10 = (rangeX * 2.0f) - 1.0f;
        float f11 = ((rangeY * 2.0f) - 1.0f) * (-1.0f);
        Matrix4f matrix4f = this.f73094F7.get();
        Matrix4f matrix4f2 = this.f73095F8.get();
        Matrix4f matrix4f3 = this.f73107K8.get();
        matrix4f.set(cameraMatrix, false);
        matrix4f2.set(frustumMatrix, false);
        matrix4f2.mult(matrix4f, matrix4f3);
        matrix4f3.invertLocal();
        Vector3f vector3f = new Vector3f();
        G g10 = this.projection;
        if (g10 == G.Perspective) {
            matrix4f3.multProj(new Vector3f(f10, f11, 1.0f), vector3f);
            vector3.set(vector3f);
            vector3.normalizeLocal();
        } else if (g10 == G.Orthographic) {
            matrix4f3.multProj(new Vector3f(f10, f11, -1.0f), vector3f);
            vector3.set(vector3f);
        }
        return vector3;
    }

    public boolean isVisible(AABB aabb, Transform transform) {
        aabb.getClass();
        transform.getClass();
        float[] acquire = FloatArrayJP.acquire(16);
        transform.r0(acquire);
        boolean isVisible = isVisible(aabb, acquire);
        FloatArrayJP.release(acquire);
        return isVisible;
    }

    public boolean isVisible(AABB aabb, float[] renderMatrix) {
        aabb.getClass();
        renderMatrix.getClass();
        return isSphereVisible(multiplyMatrixVector(renderMatrix, aabb.m()), aabb.getRadius() * extractMaxScale(renderMatrix));
    }

    public boolean isVisible(AABB aabb) {
        aabb.getClass();
        float radius = aabb.getRadius();
        Vector3 vector3 = f73078P8.get();
        aabb.n(vector3);
        return isSphereVisible(vector3, radius);
    }

    public Camera(float renderDistance, float fov, float minimalDistance, boolean showGizmo, int layer) {
        super(f73075M8);
        this.renderDistance = 500.0f;
        this.f73086E = new v();
        this.fov = 60.0f;
        this.f73087F = new y();
        this.minimalDistance = 0.1f;
        this.f73096G = new z();
        this.resoPercentage = 0.8f;
        this.f73097H = new A();
        this.resolutionMode = H.FreeAspectResolution;
        this.fixedResolutionPixelsWidth = 1280;
        this.f73104I = new B();
        this.fixedResolutionPixelsHeight = 720;
        this.f73105J = new C();
        this.freeResolutionPixels = 400;
        this.f73106K = new D();
        this.layer = 1;
        this.projection = G.Perspective;
        this.f73108L = new E();
        this.backgroundType = F.Skybox;
        this.solidColor = new ColorINT(21, 21, 26);
        this.rect_width = 1.0f;
        this.f73112M = new C12756a();
        this.rect_height = 1.0f;
        this.f73116N = new C12757b();
        this.rect_desloc_x = 0.0f;
        this.rect_desloc_y = 0.0f;
        this.showInScreen = true;
        this.resolutionsEditor = new InspectorEditor();
        this.f73117O = null;
        this.f73118P = null;
        this.enablePostProcessing = true;
        this.f73129W = new Vector3();
        this.f73130X = 0.0f;
        this.f73131Y = false;
        this.f73132Z = false;
        this.f73133b1 = null;
        this.f73135i1 = null;
        this.f73138m1 = new V8.b();
        this.f73143q1 = new Vector3();
        this.f73147v1 = new Vector3();
        this.f73151y1 = true;
        this.f73088F1 = new C13205b();
        this.f73098H1 = new C12758c();
        this.f73109L1 = new float[16];
        this.f73113M1 = new float[16];
        this.f73121R1 = new float[16];
        this.f73127V1 = new float[16];
        this.f73134b2 = new float[16];
        this.f73136i2 = new double[16];
        this.f73144q2 = 0.0f;
        this.f73148v2 = 0.0f;
        this.f73081D2 = 0.0f;
        boolean[] zArr = new boolean[8];
        this.f73089F2 = zArr;
        Arrays.fill(zArr, true);
        this.f73122R2 = new ColorINT();
        this.f73128V2 = new ColorINT();
        this.f73140m3 = new RunnableC12759d();
        this.f73145q3 = new Vector3();
        this.f73149v3 = new Vector3();
        this.f73082D3 = new Vector3();
        this.f73090F3 = new Vector3(-999999.0f);
        this.f73100H3 = new Vector3(-999999.0f);
        this.f73115M3 = new float[16];
        this.f73141m4 = new Vector3(-999999.0f);
        this.f73150v4 = -1.0f;
        this.f73083D4 = -1.0f;
        this.f73091F4 = -1.0f;
        this.f73101H4 = -1.0f;
        this.f73084D5 = -1.0f;
        this.f73092F5 = true;
        this.f73102H5 = -1;
        this.f73085D6 = -1;
        this.f73093F6 = new r();
        this.f73103H6 = new s();
        this.f73094F7 = new t();
        this.f73095F8 = new u();
        this.f73107K8 = new w();
        setRenderDistance(renderDistance);
        setFov(fov);
        this.layer = layer;
        setMinimalDistance(minimalDistance);
        setRectWidth(1.0f);
        setRectHeight(1.0f);
        setRectPosX(0.0f);
        setRectPosY(0.0f);
        this.showInScreen = true;
    }

    public Camera(float minimalDistancer) {
        super(f73075M8);
        this.renderDistance = 500.0f;
        this.f73086E = new v();
        this.fov = 60.0f;
        this.f73087F = new y();
        this.minimalDistance = 0.1f;
        this.f73096G = new z();
        this.resoPercentage = 0.8f;
        this.f73097H = new A();
        this.resolutionMode = H.FreeAspectResolution;
        this.fixedResolutionPixelsWidth = 1280;
        this.f73104I = new B();
        this.fixedResolutionPixelsHeight = 720;
        this.f73105J = new C();
        this.freeResolutionPixels = 400;
        this.f73106K = new D();
        this.layer = 1;
        this.projection = G.Perspective;
        this.f73108L = new E();
        this.backgroundType = F.Skybox;
        this.solidColor = new ColorINT(21, 21, 26);
        this.rect_width = 1.0f;
        this.f73112M = new C12756a();
        this.rect_height = 1.0f;
        this.f73116N = new C12757b();
        this.rect_desloc_x = 0.0f;
        this.rect_desloc_y = 0.0f;
        this.showInScreen = true;
        this.resolutionsEditor = new InspectorEditor();
        this.f73117O = null;
        this.f73118P = null;
        this.enablePostProcessing = true;
        this.f73129W = new Vector3();
        this.f73130X = 0.0f;
        this.f73131Y = false;
        this.f73132Z = false;
        this.f73133b1 = null;
        this.f73135i1 = null;
        this.f73138m1 = new V8.b();
        this.f73143q1 = new Vector3();
        this.f73147v1 = new Vector3();
        this.f73151y1 = true;
        this.f73088F1 = new C13205b();
        this.f73098H1 = new C12758c();
        this.f73109L1 = new float[16];
        this.f73113M1 = new float[16];
        this.f73121R1 = new float[16];
        this.f73127V1 = new float[16];
        this.f73134b2 = new float[16];
        this.f73136i2 = new double[16];
        this.f73144q2 = 0.0f;
        this.f73148v2 = 0.0f;
        this.f73081D2 = 0.0f;
        boolean[] zArr = new boolean[8];
        this.f73089F2 = zArr;
        Arrays.fill(zArr, true);
        this.f73122R2 = new ColorINT();
        this.f73128V2 = new ColorINT();
        this.f73140m3 = new RunnableC12759d();
        this.f73145q3 = new Vector3();
        this.f73149v3 = new Vector3();
        this.f73082D3 = new Vector3();
        this.f73090F3 = new Vector3(-999999.0f);
        this.f73100H3 = new Vector3(-999999.0f);
        this.f73115M3 = new float[16];
        this.f73141m4 = new Vector3(-999999.0f);
        this.f73150v4 = -1.0f;
        this.f73083D4 = -1.0f;
        this.f73091F4 = -1.0f;
        this.f73101H4 = -1.0f;
        this.f73084D5 = -1.0f;
        this.f73092F5 = true;
        this.f73102H5 = -1;
        this.f73085D6 = -1;
        this.f73093F6 = new r();
        this.f73103H6 = new s();
        this.f73094F7 = new t();
        this.f73095F8 = new u();
        this.f73107K8 = new w();
        setMinimalDistance(minimalDistancer);
        setRectWidth(1.0f);
        setRectHeight(1.0f);
        setRectPosX(0.0f);
        setRectPosY(0.0f);
        this.showInScreen = true;
    }
}
