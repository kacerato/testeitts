package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain;

import C5.b;
import D5.e;
import D5.h;
import F5.c;
import H3.g;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Color;
import JAVARuntime.Gizmo;
import JAVARuntime.GizmoObject;
import JAVARuntime.PerlinNoise;
import JAVARuntime.Point2;
import JAVARuntime.Random;
import JAVARuntime.Runnable;
import M7.c;
import M7.k;
import M7.o;
import M7.p;
import M7.r;
import O8.a;
import Qb.b;
import aa.C3593a;
import aa.C3595c;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.bumptech.glide.load.engine.i;
import com.google.gson.JsonElement;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.LOD.LOD;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Layer.TerrainLayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Native.ChunkSurface;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Utils.TerrainRaycaster;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.ExposableLayerReference;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.Layer;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import d4.C12874b;
import dd.C12908b;
import dd.d;
import e4.AbstractC13004a;
import e4.C13005b;
import e4.C13006c;
import e4.EnumC13007d;
import f4.C13185a;
import f5.C13189d;
import fb.AbstractC13203c;
import fb.C13201a;
import h9.C13436b;
import h9.InterfaceC13435a;
import i9.c;
import ib.InterfaceC13601h;
import j5.C13807a;
import j5.C13808b;
import j9.C13813a;
import j9.C13814b;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import jd.C13823b;
import lb.C14068e;
import m.C14165a;
import q7.C15045a;
import r4.C15147a;
import rb.InterfaceC15168a;
import s8.InterfaceC15237a;
import u9.InterfaceC15581a;
import u9.InterfaceC15582b;
import u9.InterfaceC15583c;
import v5.C15805a;
import v9.C15811a;
import v9.C15814d;
import v9.C15815e;
import ve.j;
import w9.C15975a;
import x9.C16061a;
import z9.C16274a;
import z9.C16278e;
import z9.C16281h;
import z9.C16282i;
import z9.EnumC16276c;
import z9.EnumC16280g;

public class Terrain extends Component implements InterfaceC13435a {

    public static final String f76979i9 = "Terrain";

    public static final int f76981k9 = 8;

    public static final int f76982l9 = 16;

    public static final int f76985o9 = 128;

    public static final int f76986p9 = 200;

    public static final int f76987q9 = 4;

    public static final int f76988r9 = 3;

    public static final float f76989s9 = 0.1f;

    public static final ThreadLocal<f> f76990t9;

    public static final ThreadLocal<Vector3> f76991u9;

    public static final ThreadLocal<List<X>> f76992v9;

    public static final ThreadLocal<List<Y>> f76993w9;

    public static final ThreadLocal<Vector3> f76994x9;

    public static final ThreadLocal<Vector3> f76995y9;

    public boolean f76996D0;

    public int f76997D2;

    public C15814d[] f76998D3;

    public final C15815e f76999D4;

    public int f77000D5;

    public boolean f77001D6;

    public String[] f77002E;

    public volatile TerrainLayer[] f77003F;

    public int f77004F1;

    public C15975a f77005F2;

    public volatile int f77006F3;

    public final b f77007F4;

    public int f77008F5;

    public final C13814b f77009F6;

    public int f77010F7;

    public int f77011F8;

    public boolean f77012G;

    public Vector2 f77013H;

    public int f77014H1;

    public boolean f77015H2;

    public int f77016H3;

    public transient C16282i f77017H4;

    public c f77018H5;

    public transient C13436b f77019H6;

    public float f77020I;

    public a f77021J;

    public boolean f77022K;

    public final float[] f77023K8;

    public boolean f77024L;

    public int f77025L1;

    public Ac.b f77026L2;

    public final C16281h f77027L8;

    public a0 f77028M;

    public int f77029M1;

    public final List<C15811a> f77030M2;

    public final AtomicReference<C15814d> f77031M3;

    public boolean f77032M8;

    public EnumC13007d f77033N;

    public final f f77034N8;

    public f4.c f77035O;

    public boolean f77036O8;

    public final C13006c f77037P;

    public final AtomicBoolean f77038P8;

    public final f4.b f77039Q;

    public boolean f77040Q8;

    public C12874b f77041R;

    public boolean f77042R1;

    public final List<C15811a> f77043R2;

    public GameObject f77044R8;

    public boolean f77045S;

    public final Vector3 f77046S8;

    public a f77047T;

    public volatile float f77048T8;

    public final Vector2 f77049U;

    public volatile float f77050U8;

    public float f77051V;

    public final List<TerrainLayer> f77052V1;

    public final List<C15811a> f77053V2;

    public volatile float f77054V8;

    public float f77055W;

    public volatile boolean f77056W8;

    public float f77057X;

    public volatile float f77058X8;

    public a0 f77059Y;

    public volatile boolean f77060Y8;

    public boolean f77061Z;

    public final Vector3 f77062Z8;

    public volatile float f77063a9;

    public long f77064b1;

    public final List<TerrainLayer> f77065b2;

    public volatile float f77066b9;

    @Expose
    @eb.f
    public float brushIntensity;

    @Expose
    @eb.f
    public float brushSize;

    public volatile float f77067c9;

    public final InterfaceC13601h f77068d9;

    @Expose
    public Ac.b dataFile;

    public final InterfaceC13601h f77069e9;

    @Expose
    public boolean enableCollision;

    public final List<Y> f77070f9;

    public final List<X> f77071g9;

    public JAVARuntime.Component f77072h9;

    public long f77073i1;

    public final AtomicBoolean f77074i2;

    public CompoundCollisionShape f77075i3;

    @Expose
    @eb.f
    public float importHeightMapHeight;

    @Expose
    private ExposableLayerReference layerReference;

    @Expose
    private final List<TerrainLayer> layers;

    @Expose
    @eb.f
    private int layersEditorScroll;

    @Expose
    private EnumC16276c lodAggressiveness;

    public final Vector2 f77076m1;

    public final AtomicBoolean f77077m2;

    public final List<C15814d> f77078m3;

    public C15814d f77079m4;

    @Expose
    @eb.f
    public float maxHeight;

    @Expose
    @eb.f
    public float paintIntensity;

    public transient AbstractC13004a f77080q0;

    public final Vector2 f77081q1;

    public int f77082q2;

    public volatile C15814d[] f77083q3;

    @Expose
    private EnumC16280g quality;

    @Expose
    @eb.f
    public float rebaseTo;

    @Expose
    @eb.f
    public int selectedBrushID;

    @Expose
    public Z tab;

    public transient com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a f77084v0;

    public float f77085v1;

    public volatile int f77086v2;

    public C15814d[] f77087v3;

    public C15814d f77088v4;

    @Expose
    @eb.f
    public float width;

    public boolean f77089y1;

    public static final Class f76980j9 = Terrain.class;

    public static final C15814d[] f76983m9 = new C15814d[0];

    public static final TerrainLayer[] f76984n9 = new TerrainLayer[0];

    public class A implements e {

        public final V f77090a;

        public class a implements View.OnScrollChangeListener {
            public a() {
            }

            @Override
            public void onScrollChange(View v10, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
                Terrain.this.layersEditorScroll = scrollX;
            }
        }

        public class b extends AbstractViewOnClickListenerC12733a {

            public class a extends SteppedArrayList<C12908b> {

                public final View f77094b;

                public class C1262a implements d {

                    public class C1263a implements C15805a.i {
                        public C1263a() {
                        }

                        @Override
                        public void a(File file, String inProjectPath) {
                            if (file == null || !file.exists()) {
                                return;
                            }
                            TerrainLayer terrainLayer = new TerrainLayer();
                            terrainLayer.E(inProjectPath);
                            synchronized (Terrain.this.f77052V1) {
                                Terrain.this.f77052V1.add(terrainLayer);
                            }
                            V v10 = A.this.f77090a;
                            if (v10 != null) {
                                v10.a();
                            }
                            Terrain.this.reloadInspector();
                        }
                    }

                    public C1262a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C15805a.x1(".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm", new C1263a());
                    }
                }

                public class C1264b implements d {

                    public class C1265a implements H3.e {

                        public class C1266a implements Runnable {

                            public final String f77100b;

                            public C1266a(final String val$file) {
                                this.f77100b = val$file;
                            }

                            @Override
                            public void run() {
                                if (this.f77100b != null) {
                                    TerrainLayer terrainLayer = new TerrainLayer();
                                    terrainLayer.selectedMatcap = this.f77100b;
                                    terrainLayer.source = TerrainLayer.a.PBRPreset;
                                    synchronized (Terrain.this.f77052V1) {
                                        Terrain.this.f77052V1.add(terrainLayer);
                                    }
                                    V v10 = A.this.f77090a;
                                    if (v10 != null) {
                                        v10.a();
                                    }
                                    Terrain.this.reloadInspector();
                                }
                            }
                        }

                        public C1265a() {
                        }

                        @Override
                        public String getSelected() {
                            return "";
                        }

                        @Override
                        public void onSelected(String file) {
                            K8.a.I(new C1266a(file));
                        }
                    }

                    public C1264b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        g.K1(a.this.f77094b, C15147a.e.Left, new C1265a());
                    }
                }

                public a(final View val$view) {
                    this.f77094b = val$view;
                    add(new C12908b("Use texture", new C1262a()));
                    add(new C12908b("Use preset", new C1264b()));
                }
            }

            public b() {
            }

            @Override
            public void click(View view) {
                if (!Terrain.this.canAddLayer()) {
                    N7.c.v0("Max textures reached");
                    return;
                }
                N7.c.Y();
                Y6.a.F1(view, C15147a.e.Left, new a(view));
            }
        }

        public class c implements View.OnClickListener {

            public final int f77102b;

            public c(final int val$finalI) {
                this.f77102b = val$finalI;
            }

            @Override
            public void onClick(View v10) {
                A.this.f77090a.b(this.f77102b);
                Terrain.this.reloadInspector();
            }
        }

        public A(final V val$selectorListener) {
            this.f77090a = val$selectorListener;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            LinearLayout linearLayout = (LinearLayout) view.findViewById(com.itsmagic.engine2.R.id.content);
            linearLayout.removeAllViews();
            LayoutInflater from = LayoutInflater.from(context);
            HorizontalScrollView horizontalScrollView = (HorizontalScrollView) view.findViewById(com.itsmagic.engine2.R.id.scroll);
            horizontalScrollView.setScrollX(Terrain.this.layersEditorScroll);
            horizontalScrollView.setOnScrollChangeListener(new a());
            TextView textView = (TextView) view.findViewById(com.itsmagic.engine2.R.id.tittle);
            view.findViewById(com.itsmagic.engine2.R.id.addNew).setOnClickListener(new b());
            synchronized (Terrain.this.layers) {
                try {
                    textView.setText("Textures " + Terrain.this.layers.size());
                    for (int i10 = 0; i10 < Terrain.this.layers.size(); i10++) {
                        TerrainLayer terrainLayer = (TerrainLayer) Terrain.this.layers.get(i10);
                        View inflate = from.inflate(com.itsmagic.engine2.R.layout.inspector_component_terrain_layers_single, (ViewGroup) null);
                        linearLayout.addView(inflate);
                        ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
                        int l02 = Nc.b.l0(42.0f, context);
                        layoutParams.width = l02;
                        layoutParams.height = l02;
                        inflate.setLayoutParams(layoutParams);
                        ImageView imageView = (ImageView) inflate.findViewById(com.itsmagic.engine2.R.id.imageView);
                        Terrain.this.drawLayerIconTo(imageView, terrainLayer);
                        if (i10 == this.f77090a.c()) {
                            inflate.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.PRIMARY)));
                        } else {
                            inflate.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.PANEL)));
                        }
                        imageView.setOnClickListener(new c(i10));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public class B implements Runnable {

        public final float f77104b;

        public class a implements Runnable {

            public final C15045a f77106b;

            public class C1267a implements Runnable {

                public class RunnableC1268a implements Runnable {
                    public RunnableC1268a() {
                    }

                    @Override
                    public void run() {
                        a.this.f77106b.p1();
                    }
                }

                public C1267a() {
                }

                @Override
                public void run() {
                    Terrain.this.applyHeightmap();
                    N7.c.j0(new RunnableC1268a());
                }
            }

            public a(final C15045a val$loading) {
                this.f77106b = val$loading;
            }

            @Override
            public void run() {
                try {
                    if (Terrain.this.f77005F2 == null) {
                        return;
                    }
                    B b10 = B.this;
                    float I10 = Nc.b.I(b10.f77104b / Terrain.this.maxHeight);
                    int g10 = Terrain.this.getTable().g();
                    for (int i10 = 0; i10 < g10; i10++) {
                        for (int i11 = 0; i11 < g10; i11++) {
                            Terrain.this.getTable().i(i10, i11, I10);
                        }
                    }
                    K8.a.I(new C1267a());
                } catch (Error e10) {
                    e = e10;
                    e.printStackTrace();
                } catch (Exception e11) {
                    e = e11;
                    e.printStackTrace();
                }
            }
        }

        public B(final float val$height) {
            this.f77104b = val$height;
        }

        @Override
        public void run() {
            Thread thread = new Thread(new a(C15045a.r1()));
            thread.setName("Terrain heightmap");
            thread.start();
        }
    }

    public class C implements Runnable {

        public final Context f77110b;

        public final String f77111c;

        public final SweetAlertDialog f77112d;

        public class a implements Jc.a {

            public final int f77114a;

            public final int f77115b;

            public final int[] f77116c;

            public final ColorINT f77117d;

            public a(final int val$imageWidth, final int val$imageHeight, final int[] val$heightmapPixels, final ColorINT val$colorINT) {
                this.f77114a = val$imageWidth;
                this.f77115b = val$imageHeight;
                this.f77116c = val$heightmapPixels;
                this.f77117d = val$colorINT;
            }

            @Override
            public float a(float x10, float y10) {
                this.f77117d.J(this.f77116c[C.this.b((int) (x10 * (this.f77114a - 1)), (int) (y10 * (r0 - 1)), this.f77115b)]);
                return this.f77117d.w();
            }
        }

        public class b implements Runnable {

            public final int f77119b;

            public b(final int val$pi) {
                this.f77119b = val$pi;
            }

            @Override
            public void run() {
                try {
                    C.this.f77112d.setContentText("Reading " + this.f77119b + j.f121589a);
                } catch (Exception unused) {
                }
            }
        }

        public class c implements Runnable {

            public class a implements Runnable {
                public a() {
                }

                @Override
                public void run() {
                    try {
                        C.this.f77112d.dismissWithAnimation();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }

            public c() {
            }

            @Override
            public void run() {
                Terrain.this.applyHeightmap();
                N7.c.j0(new a());
            }
        }

        public C(final Context val$context, final String val$file, final SweetAlertDialog val$dialog) {
            this.f77110b = val$context;
            this.f77111c = val$file;
            this.f77112d = val$dialog;
        }

        public final int b(int x10, int y10, int imageHeight) {
            return (y10 * imageHeight) + x10;
        }

        /* JADX WARN: Removed duplicated region for block: B:63:0x016e  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            boolean z10;
            int[] iArr;
            C16278e c16278e;
            boolean z11;
            int i10;
            int i11;
            try {
                try {
                    if (Terrain.this.f77005F2 == null) {
                        return;
                    }
                    Bitmap k10 = com.itsmagic.engine.Engines.Engine.Texture.Utils.b.k(this.f77110b, this.f77111c);
                    int width = k10.getWidth();
                    int height = k10.getHeight();
                    boolean z12 = true;
                    if (width <= 1 || height <= 1) {
                        return;
                    }
                    C16278e table = Terrain.this.getTable();
                    int[] iArr2 = new int[width * height];
                    k10.getPixels(iArr2, 0, width, 0, 0, width, height);
                    ColorINT colorINT = new ColorINT();
                    int resolution = Terrain.this.getResolution() * Terrain.this.getResolution();
                    int i12 = 0;
                    int i13 = 0;
                    int i14 = 0;
                    while (i13 < Terrain.this.getResolution()) {
                        int i15 = i12;
                        int i16 = 0;
                        while (i16 < Terrain.this.getResolution()) {
                            float resolution2 = i13 / (Terrain.this.getResolution() - 1.0f);
                            float resolution3 = i16 / (Terrain.this.getResolution() - 1.0f);
                            int i17 = (int) ((height - 1) * resolution3);
                            if (((int) ((width - 1) * resolution2)) >= width || i17 >= height) {
                                iArr = iArr2;
                                c16278e = table;
                                z11 = z12;
                                i10 = height;
                                i11 = width;
                            } else {
                                try {
                                    iArr = iArr2;
                                    c16278e = table;
                                    z11 = z12;
                                    i10 = height;
                                    i11 = width;
                                } catch (Exception e10) {
                                    e = e10;
                                    iArr = iArr2;
                                    c16278e = table;
                                    z11 = z12;
                                    i10 = height;
                                    i11 = width;
                                }
                                try {
                                    c16278e.i(i13, i16, Jc.b.a(resolution2, resolution3, 16.0f, 8.0f, 0.03f, true, new a(width, height, iArr, colorINT)) * Terrain.this.importHeightMapHeight);
                                } catch (Exception e11) {
                                    e = e11;
                                    e.printStackTrace();
                                    i15++;
                                    i16++;
                                    table = c16278e;
                                    iArr2 = iArr;
                                    z12 = z11;
                                    height = i10;
                                    width = i11;
                                }
                            }
                            i15++;
                            i16++;
                            table = c16278e;
                            iArr2 = iArr;
                            z12 = z11;
                            height = i10;
                            width = i11;
                        }
                        int[] iArr3 = iArr2;
                        C16278e c16278e2 = table;
                        boolean z13 = z12;
                        int i18 = height;
                        int i19 = width;
                        int i20 = (int) ((i15 / resolution) * 100.0f);
                        if (i14 != i20) {
                            N7.c.j0(new b(i20));
                            i14 = i20;
                        }
                        i13++;
                        table = c16278e2;
                        i12 = i15;
                        iArr2 = iArr3;
                        z12 = z13;
                        height = i18;
                        width = i19;
                    }
                    C16278e c16278e3 = table;
                    boolean z14 = z12;
                    k10.recycle();
                    C16061a c16061a = null;
                    C16061a c16061a2 = null;
                    for (int i21 = 0; i21 < Terrain.this.layers.size(); i21++) {
                        TerrainLayer terrainLayer = (TerrainLayer) Terrain.this.layers.get(i21);
                        if (terrainLayer.useAs == TerrainLayer.b.Grass) {
                            c16061a2 = Terrain.this.f77005F2.n(terrainLayer);
                        }
                        if (terrainLayer.useAs == TerrainLayer.b.Rock) {
                            c16061a = Terrain.this.f77005F2.n(terrainLayer);
                        }
                    }
                    if (c16061a != null && c16061a2 != null) {
                        z10 = z14;
                        Vector3 vector3 = new Vector3();
                        Vector3 vector32 = new Vector3();
                        Vector3 vector33 = new Vector3();
                        Vector3 vector34 = new Vector3();
                        if (z10) {
                            for (int i22 = 0; i22 < Terrain.this.getResolution(); i22++) {
                                int i23 = 0;
                                while (i23 < Terrain.this.getResolution()) {
                                    Point point = new Point(i22, i23);
                                    Point point2 = new Point(i22 + 1, i23);
                                    int i24 = i23 + 1;
                                    Point point3 = new Point(i22, i24);
                                    if (point2.f32423x >= Terrain.this.getResolution()) {
                                        point2.f32423x = i22 - 1;
                                    }
                                    if (point3.f32424y >= Terrain.this.getResolution()) {
                                        point3.f32424y = i23 - 1;
                                    }
                                    int i25 = point.f32423x;
                                    Vector3 andReturn = vector3.setAndReturn(i25, c16278e3.f(i25, point.f32424y) * Terrain.this.maxHeight, point.f32424y);
                                    int i26 = point2.f32423x;
                                    Vector3 andReturn2 = vector32.setAndReturn(i26, c16278e3.f(i26, point2.f32424y) * Terrain.this.maxHeight, point2.f32424y);
                                    int i27 = point3.f32423x;
                                    float I10 = Nc.b.I((1.0f - Nc.b.k(Vector3.triangleNormal(andReturn, andReturn2, vector33.setAndReturn(i27, c16278e3.f(i27, point3.f32424y) * Terrain.this.maxHeight, point3.f32424y), vector34).dot(Vector3.up()))) * 1.5f);
                                    Terrain.this.paintRockAsync(c16061a, c16061a2, point.f32423x, point.f32424y, I10);
                                    Terrain.this.paintRockAsync(c16061a, c16061a2, point2.f32423x, point2.f32424y, I10);
                                    Terrain.this.paintRockAsync(c16061a, c16061a2, point3.f32423x, point3.f32424y, I10);
                                    i23 = i24;
                                    vector3 = vector3;
                                }
                            }
                            for (int i28 = 0; i28 < Terrain.this.chunksCount(); i28++) {
                                Terrain.this.chunkAt(i28).k();
                            }
                        }
                        K8.a.I(new c());
                    }
                    z10 = false;
                    Vector3 vector35 = new Vector3();
                    Vector3 vector322 = new Vector3();
                    Vector3 vector332 = new Vector3();
                    Vector3 vector342 = new Vector3();
                    if (z10) {
                    }
                    K8.a.I(new c());
                } catch (Exception e12) {
                    e = e12;
                    e.printStackTrace();
                }
            } catch (Error e13) {
                e = e13;
                e.printStackTrace();
            }
        }
    }

    public class D implements Runnable {
        public D() {
        }

        @Override
        public void run() {
            GameObject gameObject = Terrain.this.f79250n;
            if (gameObject == null || gameObject.isGarbage()) {
                Terrain.this.f77038P8.set(false);
            } else {
                Terrain.this.regenLevelTable();
            }
        }
    }

    public class E implements Runnable {

        public final List f77124b;

        public final C16278e f77125c;

        public final int f77126d;

        public final f f77127e;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                try {
                    Terrain.this.applyHeight();
                } finally {
                    Terrain.this.f77038P8.set(false);
                    if (Terrain.this.f77036O8) {
                        Terrain.this.scheduleRegenLevelTable();
                    }
                }
            }
        }

        public E(final List val$terrainLevelComponents, final C16278e val$table, final int val$r, final f val$terrainMatrix) {
            this.f77124b = val$terrainLevelComponents;
            this.f77125c = val$table;
            this.f77126d = val$r;
            this.f77127e = val$terrainMatrix;
        }

        @Override
        public void run() {
            boolean z10;
            try {
                System.out.println("Leveling terrain start");
                C14068e c14068e = new C14068e();
                c14068e.n();
                long[] buildNativeLevelPointerList = Terrain.this.buildNativeLevelPointerList(this.f77124b);
                NativeFloatBuffer c10 = this.f77125c.c();
                if (buildNativeLevelPointerList == null || buildNativeLevelPointerList.length <= 0 || c10 == null) {
                    z10 = false;
                } else {
                    long pointerCritical = c10.getPointerCritical();
                    int i10 = this.f77126d;
                    Terrain terrain = Terrain.this;
                    z10 = Terrain.nativeRegenLevelTable(pointerCritical, i10, terrain.width, terrain.maxHeight, this.f77127e.F1(), this.f77127e.G1(), this.f77127e.H1(), buildNativeLevelPointerList);
                }
                if (!z10) {
                    this.f77125c.b(0.0f);
                }
                c14068e.g();
                c14068e.d("Leveling terrain");
                K8.a.I(new a());
            } catch (Throwable th2) {
                K8.a.I(new a());
                throw th2;
            }
        }
    }

    public class F implements Runnable {

        public final boolean f77130b;

        public final Vector2 f77131c;

        public final float f77132d;

        public final float f77133e;

        public final float f77134f;

        public final float f77135g;

        public final C16278e f77136h;

        public final O8.a f77137i;

        public final Runnable f77138j;

        public class a implements Runnable {

            public final List f77140b;

            public final List f77141c;

            public final Vector2 f77142d;

            public final Vector2 f77143e;

            public a(final List val$affectedChunksByHeight, final List val$affectedChunksByLayers, final Vector2 val$brushStart, final Vector2 val$brushEnd) {
                this.f77140b = val$affectedChunksByHeight;
                this.f77141c = val$affectedChunksByLayers;
                this.f77142d = val$brushStart;
                this.f77143e = val$brushEnd;
            }

            @Override
            public void run() {
                for (int i10 = 0; i10 < this.f77140b.size(); i10++) {
                    ((C15814d) this.f77140b.get(i10)).i(Terrain.this);
                }
                if (!this.f77141c.isEmpty()) {
                    for (int i11 = 0; i11 < this.f77141c.size(); i11++) {
                        ((C15814d) this.f77141c.get(i11)).k();
                    }
                }
                Terrain.this.f77015H2 = true;
                Terrain terrain = Terrain.this;
                Vector2 vector2 = this.f77142d;
                float f10 = vector2.f79838x;
                float f11 = vector2.f79839y;
                Vector2 vector22 = this.f77143e;
                terrain.notifyTerrainModifiedLocalArea(f10, f11, vector22.f79838x, vector22.f79839y);
                Runnable runnable = F.this.f77138j;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }

        public F(final boolean val$inputAutoPaint, final Vector2 val$worldLocation, final float val$terrainX, final float val$terrainZ, final float val$size, final float val$intensity, final C16278e val$table, final O8.a val$brush, final Runnable val$afterFinish) {
            this.f77130b = val$inputAutoPaint;
            this.f77131c = val$worldLocation;
            this.f77132d = val$terrainX;
            this.f77133e = val$terrainZ;
            this.f77134f = val$size;
            this.f77135g = val$intensity;
            this.f77136h = val$table;
            this.f77137i = val$brush;
            this.f77138j = val$afterFinish;
        }

        @Override
        public void run() {
            int i10;
            int i11;
            int min;
            int min2;
            boolean z10 = this.f77130b;
            Vector2 vector2 = new Vector2();
            Vector2 vector22 = this.f77131c;
            vector2.w0(vector22.f79838x - this.f77132d, vector22.f79839y - this.f77133e);
            float f10 = vector2.f79838x;
            float f11 = this.f77134f;
            Vector2 vector23 = new Vector2(f10 - (f11 * 0.5f), vector2.f79839y - (f11 * 0.5f));
            float f12 = vector2.f79838x;
            float f13 = this.f77134f;
            Vector2 vector24 = new Vector2(f12 + (f13 * 0.5f), vector2.f79839y + (f13 * 0.5f));
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (int i12 = 0; i12 < Terrain.this.chunksCount(); i12++) {
                C15814d chunkAt = Terrain.this.chunkAt(i12);
                float I10 = chunkAt.I();
                if (I10 < vector24.f79838x) {
                    float J10 = chunkAt.J();
                    if (J10 < vector24.f79839y) {
                        if (vector23.f79838x < I10 + chunkAt.B()) {
                            if (vector23.f79839y < J10 + chunkAt.B()) {
                                steppedArrayList.add(chunkAt);
                            }
                        }
                    }
                }
            }
            float resolution = (Terrain.this.getResolution() - 1) / Terrain.this.width;
            int floor = (int) Math.floor(vector23.f79838x * resolution);
            int floor2 = (int) Math.floor(vector23.f79839y * resolution);
            int ceil = ((int) Math.ceil(vector24.f79838x * resolution)) + 1;
            int ceil2 = ((int) Math.ceil(vector24.f79839y * resolution)) + 1;
            int max = Math.max(0, Math.min(Terrain.this.getResolution(), floor));
            int max2 = Math.max(0, Math.min(Terrain.this.getResolution(), floor2));
            int max3 = Math.max(0, Math.min(Terrain.this.getResolution(), ceil));
            int max4 = Math.max(0, Math.min(Terrain.this.getResolution(), ceil2));
            if (max3 <= max || max4 <= max2) {
                int round = Math.round(vector2.f79838x * resolution);
                int round2 = Math.round(vector2.f79839y * resolution);
                int max5 = Math.max(0, Math.min(Terrain.this.getResolution() - 1, round));
                int max6 = Math.max(0, Math.min(Terrain.this.getResolution() - 1, round2));
                i10 = max6;
                i11 = max5;
                min = Math.min(Terrain.this.getResolution(), max5 + 1);
                min2 = Math.min(Terrain.this.getResolution(), max6 + 1);
            } else {
                if (max3 == max) {
                    max3 = Math.min(Terrain.this.getResolution(), max + 1);
                }
                if (max4 == max2) {
                    min2 = Math.min(Terrain.this.getResolution(), max2 + 1);
                    i11 = max;
                    i10 = max2;
                    min = max3;
                } else {
                    i11 = max;
                    i10 = max2;
                    min = max3;
                    min2 = max4;
                }
            }
            C16061a c16061a = null;
            C16061a c16061a2 = null;
            for (int i13 = 0; i13 < Terrain.this.layers.size(); i13++) {
                TerrainLayer terrainLayer = (TerrainLayer) Terrain.this.layers.get(i13);
                if (terrainLayer.useAs == TerrainLayer.b.Grass) {
                    c16061a2 = Terrain.this.f77005F2.n(terrainLayer);
                }
                if (terrainLayer.useAs == TerrainLayer.b.Rock) {
                    c16061a = Terrain.this.f77005F2.n(terrainLayer);
                }
            }
            if (c16061a == null || c16061a2 == null) {
                z10 = false;
            }
            float f14 = Terrain.this.maxHeight;
            float f15 = f14 > 0.0f ? this.f77135g / f14 : 0.0f;
            NativeFloatBuffer c10 = this.f77136h.c();
            NativeFloatBuffer a10 = this.f77137i.a();
            long pointerCritical = c10.getPointerCritical();
            int resolution2 = Terrain.this.getResolution();
            float f16 = Terrain.this.width;
            float f17 = this.f77134f;
            float f18 = vector23.f79838x;
            float f19 = vector23.f79839y;
            long pointerCritical2 = a10 != null ? a10.getPointerCritical() : 0L;
            O8.a aVar = this.f77137i;
            Terrain.nativeApplyRaiseLower(pointerCritical, resolution2, i11, i10, min, min2, f16, f17, f18, f19, f15, pointerCritical2, aVar.f16548e, aVar.f16549f);
            if (z10) {
                Terrain terrain = Terrain.this;
                if (!terrain.nativeApplySlopeRockPaintIfReady(this.f77136h, c16061a, c16061a2, i11, i10, min, min2, terrain.width, this.f77134f, vector23, terrain.maxHeight, a10, this.f77137i)) {
                    Terrain terrain2 = Terrain.this;
                    terrain2.applySlopeRockPaintJava(this.f77136h, c16061a, c16061a2, i11, i10, min, min2, terrain2.width, this.f77134f, vector23, terrain2.maxHeight, this.f77137i);
                }
            }
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            if (z10) {
                float f20 = vector2.f79838x;
                float f21 = this.f77134f;
                Vector2 vector25 = new Vector2(f20 - f21, vector2.f79839y - f21);
                float f22 = vector2.f79838x;
                float f23 = this.f77134f;
                Vector2 vector26 = new Vector2(f22 + f23, vector2.f79839y + f23);
                for (int i14 = 0; i14 < Terrain.this.chunksCount(); i14++) {
                    C15814d chunkAt2 = Terrain.this.chunkAt(i14);
                    float I11 = chunkAt2.I();
                    if (I11 < vector26.f79838x) {
                        float J11 = chunkAt2.J();
                        if (J11 < vector26.f79839y) {
                            if (vector25.f79838x < I11 + chunkAt2.B()) {
                                if (vector25.f79839y < J11 + chunkAt2.B()) {
                                    steppedArrayList2.add(chunkAt2);
                                }
                            }
                        }
                    }
                }
            }
            K8.a.I(new a(steppedArrayList, steppedArrayList2, vector23, vector24));
        }
    }

    public class G implements InterfaceC13601h {
        public G() {
        }

        @Override
        public void a(f globalMatrix) {
            Terrain.this.applyLodReferenceTransform(globalMatrix);
        }
    }

    public class H implements Runnable {

        public final boolean f77146b;

        public final Vector2 f77147c;

        public final float f77148d;

        public final float f77149e;

        public final float f77150f;

        public final float f77151g;

        public final C16278e f77152h;

        public final O8.a f77153i;

        public final Runnable f77154j;

        public class a implements Runnable {

            public final List f77156b;

            public final List f77157c;

            public final Vector2 f77158d;

            public final Vector2 f77159e;

            public a(final List val$affectedChunksByHeight, final List val$affectedChunksByLayers, final Vector2 val$brushStart, final Vector2 val$brushEnd) {
                this.f77156b = val$affectedChunksByHeight;
                this.f77157c = val$affectedChunksByLayers;
                this.f77158d = val$brushStart;
                this.f77159e = val$brushEnd;
            }

            @Override
            public void run() {
                for (int i10 = 0; i10 < this.f77156b.size(); i10++) {
                    ((C15814d) this.f77156b.get(i10)).i(Terrain.this);
                }
                if (!this.f77157c.isEmpty()) {
                    for (int i11 = 0; i11 < this.f77157c.size(); i11++) {
                        ((C15814d) this.f77157c.get(i11)).k();
                    }
                }
                Terrain.this.f77015H2 = true;
                Terrain terrain = Terrain.this;
                Vector2 vector2 = this.f77158d;
                float f10 = vector2.f79838x;
                float f11 = vector2.f79839y;
                Vector2 vector22 = this.f77159e;
                terrain.notifyTerrainModifiedLocalArea(f10, f11, vector22.f79838x, vector22.f79839y);
                Runnable runnable = H.this.f77154j;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }

        public H(final boolean val$inputAutoPaint, final Vector2 val$worldLocation, final float val$terrainX, final float val$terrainZ, final float val$size, final float val$intensity, final C16278e val$table, final O8.a val$brush, final Runnable val$afterFinish) {
            this.f77146b = val$inputAutoPaint;
            this.f77147c = val$worldLocation;
            this.f77148d = val$terrainX;
            this.f77149e = val$terrainZ;
            this.f77150f = val$size;
            this.f77151g = val$intensity;
            this.f77152h = val$table;
            this.f77153i = val$brush;
            this.f77154j = val$afterFinish;
        }

        @Override
        public void run() {
            int i10;
            int i11;
            int min;
            int min2;
            boolean z10 = this.f77146b;
            Vector2 vector2 = new Vector2();
            Vector2 vector22 = this.f77147c;
            vector2.w0(vector22.f79838x - this.f77148d, vector22.f79839y - this.f77149e);
            float f10 = vector2.f79838x;
            float f11 = this.f77150f;
            Vector2 vector23 = new Vector2(f10 - (f11 * 0.5f), vector2.f79839y - (f11 * 0.5f));
            float f12 = vector2.f79838x;
            float f13 = this.f77150f;
            Vector2 vector24 = new Vector2(f12 + (f13 * 0.5f), vector2.f79839y + (f13 * 0.5f));
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (int i12 = 0; i12 < Terrain.this.chunksCount(); i12++) {
                C15814d chunkAt = Terrain.this.chunkAt(i12);
                float I10 = chunkAt.I();
                if (I10 < vector24.f79838x) {
                    float J10 = chunkAt.J();
                    if (J10 < vector24.f79839y) {
                        if (vector23.f79838x < I10 + chunkAt.B()) {
                            if (vector23.f79839y < J10 + chunkAt.B()) {
                                steppedArrayList.add(chunkAt);
                            }
                        }
                    }
                }
            }
            float resolution = (Terrain.this.getResolution() - 1) / Terrain.this.width;
            int floor = (int) Math.floor(vector23.f79838x * resolution);
            int floor2 = (int) Math.floor(vector23.f79839y * resolution);
            int ceil = ((int) Math.ceil(vector24.f79838x * resolution)) + 1;
            int ceil2 = ((int) Math.ceil(vector24.f79839y * resolution)) + 1;
            int max = Math.max(0, Math.min(Terrain.this.getResolution(), floor));
            int max2 = Math.max(0, Math.min(Terrain.this.getResolution(), floor2));
            int max3 = Math.max(0, Math.min(Terrain.this.getResolution(), ceil));
            int max4 = Math.max(0, Math.min(Terrain.this.getResolution(), ceil2));
            if (max3 <= max || max4 <= max2) {
                int round = Math.round(vector2.f79838x * resolution);
                int round2 = Math.round(vector2.f79839y * resolution);
                int max5 = Math.max(0, Math.min(Terrain.this.getResolution() - 1, round));
                int max6 = Math.max(0, Math.min(Terrain.this.getResolution() - 1, round2));
                i10 = max6;
                i11 = max5;
                min = Math.min(Terrain.this.getResolution(), max5 + 1);
                min2 = Math.min(Terrain.this.getResolution(), max6 + 1);
            } else {
                if (max3 == max) {
                    max3 = Math.min(Terrain.this.getResolution(), max + 1);
                }
                if (max4 == max2) {
                    min2 = Math.min(Terrain.this.getResolution(), max2 + 1);
                    i11 = max;
                    i10 = max2;
                    min = max3;
                } else {
                    i11 = max;
                    i10 = max2;
                    min = max3;
                    min2 = max4;
                }
            }
            C16061a c16061a = null;
            C16061a c16061a2 = null;
            for (int i13 = 0; i13 < Terrain.this.layers.size(); i13++) {
                TerrainLayer terrainLayer = (TerrainLayer) Terrain.this.layers.get(i13);
                if (terrainLayer.useAs == TerrainLayer.b.Grass) {
                    c16061a2 = Terrain.this.f77005F2.n(terrainLayer);
                }
                if (terrainLayer.useAs == TerrainLayer.b.Rock) {
                    c16061a = Terrain.this.f77005F2.n(terrainLayer);
                }
            }
            if (c16061a == null || c16061a2 == null) {
                z10 = false;
            }
            float f14 = Terrain.this.maxHeight;
            float I11 = Nc.b.I(f14 > 0.0f ? this.f77151g / f14 : 0.0f);
            NativeFloatBuffer c10 = this.f77152h.c();
            NativeFloatBuffer a10 = this.f77153i.a();
            long pointerCritical = c10.getPointerCritical();
            int resolution2 = Terrain.this.getResolution();
            float f15 = Terrain.this.width;
            float f16 = this.f77150f;
            float f17 = vector23.f79838x;
            float f18 = vector23.f79839y;
            long pointerCritical2 = a10 != null ? a10.getPointerCritical() : 0L;
            O8.a aVar = this.f77153i;
            Terrain.nativeApplySmooth(pointerCritical, resolution2, i11, i10, min, min2, f15, f16, f17, f18, I11, pointerCritical2, aVar.f16548e, aVar.f16549f);
            if (z10) {
                Terrain terrain = Terrain.this;
                if (!terrain.nativeApplySlopeRockPaintIfReady(this.f77152h, c16061a, c16061a2, i11, i10, min, min2, terrain.width, this.f77150f, vector23, terrain.maxHeight, a10, this.f77153i)) {
                    Terrain terrain2 = Terrain.this;
                    terrain2.applySlopeRockPaintJava(this.f77152h, c16061a, c16061a2, i11, i10, min, min2, terrain2.width, this.f77150f, vector23, terrain2.maxHeight, this.f77153i);
                }
            }
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            if (z10) {
                float f19 = vector2.f79838x;
                float f20 = this.f77150f;
                Vector2 vector25 = new Vector2(f19 - f20, vector2.f79839y - f20);
                float f21 = vector2.f79838x;
                float f22 = this.f77150f;
                Vector2 vector26 = new Vector2(f21 + f22, vector2.f79839y + f22);
                for (int i14 = 0; i14 < Terrain.this.chunksCount(); i14++) {
                    C15814d chunkAt2 = Terrain.this.chunkAt(i14);
                    float I12 = chunkAt2.I();
                    if (I12 < vector26.f79838x) {
                        float J11 = chunkAt2.J();
                        if (J11 < vector26.f79839y) {
                            if (vector25.f79838x < I12 + chunkAt2.B()) {
                                if (vector25.f79839y < J11 + chunkAt2.B()) {
                                    steppedArrayList2.add(chunkAt2);
                                }
                            }
                        }
                    }
                }
            }
            K8.a.I(new a(steppedArrayList, steppedArrayList2, vector23, vector24));
        }
    }

    public class I implements Runnable {

        public final boolean f77161b;

        public final Vector2 f77162c;

        public final float f77163d;

        public final float f77164e;

        public final float f77165f;

        public final float f77166g;

        public final float f77167h;

        public final C16278e f77168i;

        public final O8.a f77169j;

        public final Runnable f77170k;

        public class a implements Runnable {

            public final List f77172b;

            public final List f77173c;

            public final Vector2 f77174d;

            public final Vector2 f77175e;

            public a(final List val$affectedChunksByHeight, final List val$affectedChunksByLayers, final Vector2 val$brushStart, final Vector2 val$brushEnd) {
                this.f77172b = val$affectedChunksByHeight;
                this.f77173c = val$affectedChunksByLayers;
                this.f77174d = val$brushStart;
                this.f77175e = val$brushEnd;
            }

            @Override
            public void run() {
                for (int i10 = 0; i10 < this.f77172b.size(); i10++) {
                    ((C15814d) this.f77172b.get(i10)).i(Terrain.this);
                }
                if (!this.f77173c.isEmpty()) {
                    for (int i11 = 0; i11 < this.f77173c.size(); i11++) {
                        ((C15814d) this.f77173c.get(i11)).k();
                    }
                }
                Terrain.this.f77015H2 = true;
                Terrain terrain = Terrain.this;
                Vector2 vector2 = this.f77174d;
                float f10 = vector2.f79838x;
                float f11 = vector2.f79839y;
                Vector2 vector22 = this.f77175e;
                terrain.notifyTerrainModifiedLocalArea(f10, f11, vector22.f79838x, vector22.f79839y);
                Runnable runnable = I.this.f77170k;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }

        public I(final boolean val$inputAutoPaint, final Vector2 val$worldLocation, final float val$terrainX, final float val$terrainZ, final float val$size, final float val$levelHeight, final float val$intensity, final C16278e val$table, final O8.a val$brush, final Runnable val$afterFinish) {
            this.f77161b = val$inputAutoPaint;
            this.f77162c = val$worldLocation;
            this.f77163d = val$terrainX;
            this.f77164e = val$terrainZ;
            this.f77165f = val$size;
            this.f77166g = val$levelHeight;
            this.f77167h = val$intensity;
            this.f77168i = val$table;
            this.f77169j = val$brush;
            this.f77170k = val$afterFinish;
        }

        @Override
        public void run() {
            int i10;
            int i11;
            int min;
            int min2;
            boolean z10 = this.f77161b;
            Vector2 vector2 = new Vector2();
            Vector2 vector22 = this.f77162c;
            vector2.w0(vector22.f79838x - this.f77163d, vector22.f79839y - this.f77164e);
            float f10 = vector2.f79838x;
            float f11 = this.f77165f;
            Vector2 vector23 = new Vector2(f10 - (f11 * 0.5f), vector2.f79839y - (f11 * 0.5f));
            float f12 = vector2.f79838x;
            float f13 = this.f77165f;
            Vector2 vector24 = new Vector2(f12 + (f13 * 0.5f), vector2.f79839y + (f13 * 0.5f));
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (int i12 = 0; i12 < Terrain.this.chunksCount(); i12++) {
                C15814d chunkAt = Terrain.this.chunkAt(i12);
                float I10 = chunkAt.I();
                if (I10 < vector24.f79838x) {
                    float J10 = chunkAt.J();
                    if (J10 < vector24.f79839y) {
                        if (vector23.f79838x < I10 + chunkAt.B()) {
                            if (vector23.f79839y < J10 + chunkAt.B()) {
                                steppedArrayList.add(chunkAt);
                            }
                        }
                    }
                }
            }
            float resolution = (Terrain.this.getResolution() - 1) / Terrain.this.width;
            int floor = (int) Math.floor(vector23.f79838x * resolution);
            int floor2 = (int) Math.floor(vector23.f79839y * resolution);
            int ceil = ((int) Math.ceil(vector24.f79838x * resolution)) + 1;
            int ceil2 = ((int) Math.ceil(vector24.f79839y * resolution)) + 1;
            int max = Math.max(0, Math.min(Terrain.this.getResolution(), floor));
            int max2 = Math.max(0, Math.min(Terrain.this.getResolution(), floor2));
            int max3 = Math.max(0, Math.min(Terrain.this.getResolution(), ceil));
            int max4 = Math.max(0, Math.min(Terrain.this.getResolution(), ceil2));
            if (max3 <= max || max4 <= max2) {
                int round = Math.round(vector2.f79838x * resolution);
                int round2 = Math.round(vector2.f79839y * resolution);
                int max5 = Math.max(0, Math.min(Terrain.this.getResolution() - 1, round));
                int max6 = Math.max(0, Math.min(Terrain.this.getResolution() - 1, round2));
                i10 = max6;
                i11 = max5;
                min = Math.min(Terrain.this.getResolution(), max5 + 1);
                min2 = Math.min(Terrain.this.getResolution(), max6 + 1);
            } else {
                if (max3 == max) {
                    max3 = Math.min(Terrain.this.getResolution(), max + 1);
                }
                if (max4 == max2) {
                    min2 = Math.min(Terrain.this.getResolution(), max2 + 1);
                    i11 = max;
                    i10 = max2;
                    min = max3;
                } else {
                    i11 = max;
                    i10 = max2;
                    min = max3;
                    min2 = max4;
                }
            }
            float f14 = Terrain.this.maxHeight;
            float I11 = Nc.b.I(f14 > 0.0f ? this.f77166g / f14 : 0.0f);
            float f15 = Terrain.this.maxHeight;
            float I12 = Nc.b.I(f15 > 0.0f ? this.f77167h / f15 : 0.0f);
            NativeFloatBuffer c10 = this.f77168i.c();
            NativeFloatBuffer a10 = this.f77169j.a();
            long pointerCritical = c10.getPointerCritical();
            int resolution2 = Terrain.this.getResolution();
            float f16 = Terrain.this.width;
            float f17 = this.f77165f;
            float f18 = vector23.f79838x;
            float f19 = vector23.f79839y;
            long pointerCritical2 = a10 != null ? a10.getPointerCritical() : 0L;
            O8.a aVar = this.f77169j;
            Terrain.nativeApplyLevel(pointerCritical, resolution2, i11, i10, min, min2, f16, f17, f18, f19, I11, I12, pointerCritical2, aVar.f16548e, aVar.f16549f);
            C16061a c16061a = null;
            C16061a c16061a2 = null;
            for (int i13 = 0; i13 < Terrain.this.layers.size(); i13++) {
                TerrainLayer terrainLayer = (TerrainLayer) Terrain.this.layers.get(i13);
                if (terrainLayer.useAs == TerrainLayer.b.Grass) {
                    c16061a2 = Terrain.this.f77005F2.n(terrainLayer);
                }
                if (terrainLayer.useAs == TerrainLayer.b.Rock) {
                    c16061a = Terrain.this.f77005F2.n(terrainLayer);
                }
            }
            if (c16061a == null || c16061a2 == null) {
                z10 = false;
            }
            if (z10) {
                Terrain terrain = Terrain.this;
                if (!terrain.nativeApplySlopeRockPaintIfReady(this.f77168i, c16061a, c16061a2, i11, i10, min, min2, terrain.width, this.f77165f, vector23, terrain.maxHeight, a10, this.f77169j)) {
                    Terrain terrain2 = Terrain.this;
                    terrain2.applySlopeRockPaintJava(this.f77168i, c16061a, c16061a2, i11, i10, min, min2, terrain2.width, this.f77165f, vector23, terrain2.maxHeight, this.f77169j);
                }
            }
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            if (z10) {
                float f20 = vector2.f79838x;
                float f21 = this.f77165f;
                Vector2 vector25 = new Vector2(f20 - f21, vector2.f79839y - f21);
                float f22 = vector2.f79838x;
                float f23 = this.f77165f;
                Vector2 vector26 = new Vector2(f22 + f23, vector2.f79839y + f23);
                for (int i14 = 0; i14 < Terrain.this.chunksCount(); i14++) {
                    C15814d chunkAt2 = Terrain.this.chunkAt(i14);
                    float I13 = chunkAt2.I();
                    if (I13 < vector26.f79838x) {
                        float J11 = chunkAt2.J();
                        if (J11 < vector26.f79839y) {
                            if (vector25.f79838x < I13 + chunkAt2.B()) {
                                if (vector25.f79839y < J11 + chunkAt2.B()) {
                                    steppedArrayList2.add(chunkAt2);
                                }
                            }
                        }
                    }
                }
            }
            K8.a.I(new a(steppedArrayList, steppedArrayList2, vector23, vector24));
        }
    }

    public class J implements Runnable {

        public final float f77177b;

        public final Vector2 f77178c;

        public final float f77179d;

        public final float f77180e;

        public final float f77181f;

        public final C16061a f77182g;

        public final O8.a f77183h;

        public final List f77184i;

        public final Runnable f77185j;

        public class a implements Runnable {

            public final List f77187b;

            public a(final List val$affectedChunksByLayers) {
                this.f77187b = val$affectedChunksByLayers;
            }

            @Override
            public void run() {
                if (!this.f77187b.isEmpty()) {
                    for (int i10 = 0; i10 < this.f77187b.size(); i10++) {
                        ((C15814d) this.f77187b.get(i10)).k();
                    }
                }
                Terrain.this.f77015H2 = true;
                Runnable runnable = J.this.f77185j;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }

        public J(final float val$inputIntensity, final Vector2 val$worldLocation, final float val$terrainX, final float val$terrainZ, final float val$size, final C16061a val$target, final O8.a val$brush, final List val$others, final Runnable val$afterFinish) {
            this.f77177b = val$inputIntensity;
            this.f77178c = val$worldLocation;
            this.f77179d = val$terrainX;
            this.f77180e = val$terrainZ;
            this.f77181f = val$size;
            this.f77182g = val$target;
            this.f77183h = val$brush;
            this.f77184i = val$others;
            this.f77185j = val$afterFinish;
        }

        @Override
        public void run() {
            int i10;
            int min;
            int min2;
            int i11;
            int i12;
            float I10 = Nc.b.I(this.f77177b);
            Vector2 vector2 = new Vector2();
            Vector2 vector22 = this.f77178c;
            vector2.w0(vector22.f79838x - this.f77179d, vector22.f79839y - this.f77180e);
            float f10 = vector2.f79838x;
            float f11 = this.f77181f;
            Vector2 vector23 = new Vector2(f10 - (f11 * 0.5f), vector2.f79839y - (f11 * 0.5f));
            float f12 = vector2.f79838x;
            float f13 = this.f77181f;
            Vector2 vector24 = new Vector2(f12 + (f13 * 0.5f), vector2.f79839y + (f13 * 0.5f));
            float resolution = (Terrain.this.getResolution() - 1) / Terrain.this.width;
            int floor = (int) Math.floor(vector23.f79838x * resolution);
            int floor2 = (int) Math.floor(vector23.f79839y * resolution);
            int ceil = ((int) Math.ceil(vector24.f79838x * resolution)) + 1;
            int ceil2 = ((int) Math.ceil(vector24.f79839y * resolution)) + 1;
            int max = Math.max(0, Math.min(Terrain.this.getResolution(), floor));
            int max2 = Math.max(0, Math.min(Terrain.this.getResolution(), floor2));
            int max3 = Math.max(0, Math.min(Terrain.this.getResolution(), ceil));
            int max4 = Math.max(0, Math.min(Terrain.this.getResolution(), ceil2));
            if (max3 <= max || max4 <= max2) {
                int round = Math.round(vector2.f79838x * resolution);
                int round2 = Math.round(vector2.f79839y * resolution);
                int max5 = Math.max(0, Math.min(Terrain.this.getResolution() - 1, round));
                int max6 = Math.max(0, Math.min(Terrain.this.getResolution() - 1, round2));
                i10 = max6;
                min = Math.min(Terrain.this.getResolution(), max5 + 1);
                min2 = Math.min(Terrain.this.getResolution(), max6 + 1);
                i11 = max5;
            } else {
                min2 = max4;
                min = max3;
                i10 = max2;
                i11 = max;
            }
            C16061a c16061a = this.f77182g;
            NativeFloatBuffer c10 = c16061a != null ? c16061a.c() : null;
            NativeFloatBuffer a10 = this.f77183h.a();
            long[] layerNativeBufferPointers = Terrain.this.getLayerNativeBufferPointers(this.f77184i);
            if (c10 == null || layerNativeBufferPointers == null) {
                i12 = 0;
                float f14 = 1.0f;
                float resolution2 = 1.0f / (Terrain.this.getResolution() - 1);
                while (i11 < min) {
                    for (int i13 = i10; i13 < min2; i13++) {
                        if (i11 >= 0 && i11 < Terrain.this.getResolution() && i13 >= 0 && i13 < Terrain.this.getResolution()) {
                            float f15 = Terrain.this.width;
                            float f16 = i13 * resolution2 * f15;
                            float f17 = ((i11 * resolution2) * f15) - vector23.f79838x;
                            float f18 = this.f77181f;
                            float c11 = this.f77183h.c(Nc.b.I(f17 / f18), Nc.b.I((f16 - vector23.f79839y) / f18));
                            if (c11 > 0.1f) {
                                float I11 = Nc.b.I(this.f77182g.e(i11, i13) + (c11 * I10));
                                float f19 = f14 - I11;
                                float f20 = 0.0f;
                                for (int i14 = 0; i14 < this.f77184i.size(); i14++) {
                                    f20 += ((C16061a) this.f77184i.get(i14)).e(i11, i13);
                                }
                                if (f20 > 1.0E-8f) {
                                    float f21 = f19 / f20;
                                    for (int i15 = 0; i15 < this.f77184i.size(); i15++) {
                                        C16061a c16061a2 = (C16061a) this.f77184i.get(i15);
                                        c16061a2.h(i11, i13, Nc.b.I(c16061a2.e(i11, i13) * f21));
                                    }
                                } else {
                                    for (int i16 = 0; i16 < this.f77184i.size(); i16++) {
                                        ((C16061a) this.f77184i.get(i16)).h(i11, i13, 0.0f);
                                    }
                                    I11 = 1.0f;
                                }
                                this.f77182g.h(i11, i13, I11);
                                for (int i17 = 0; i17 < this.f77184i.size(); i17++) {
                                    I11 += ((C16061a) this.f77184i.get(i17)).e(i11, i13);
                                }
                                f14 = 1.0f;
                                float f22 = 1.0f - I11;
                                if (Math.abs(f22) > 1.0E-6f) {
                                    C16061a c16061a3 = this.f77182g;
                                    c16061a3.h(i11, i13, Nc.b.I(c16061a3.e(i11, i13) + f22));
                                }
                            }
                        }
                    }
                    i11++;
                }
            } else {
                long pointerCritical = c10.getPointerCritical();
                int resolution3 = Terrain.this.getResolution();
                float f23 = Terrain.this.width;
                float f24 = this.f77181f;
                float f25 = vector23.f79838x;
                float f26 = vector23.f79839y;
                long pointerCritical2 = a10 != null ? a10.getPointerCritical() : 0L;
                O8.a aVar = this.f77183h;
                i12 = 0;
                Terrain.nativeApplyPaint(pointerCritical, layerNativeBufferPointers, resolution3, i11, i10, min, min2, f23, f24, f25, f26, I10, pointerCritical2, aVar.f16548e, aVar.f16549f);
            }
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            float f27 = vector2.f79838x;
            float f28 = this.f77181f;
            Vector2 vector25 = new Vector2(f27 - f28, vector2.f79839y - f28);
            float f29 = vector2.f79838x;
            float f30 = this.f77181f;
            Vector2 vector26 = new Vector2(f29 + f30, vector2.f79839y + f30);
            for (int i18 = i12; i18 < Terrain.this.chunksCount(); i18++) {
                C15814d chunkAt = Terrain.this.chunkAt(i18);
                float I12 = chunkAt.I();
                if (I12 < vector26.f79838x) {
                    float J10 = chunkAt.J();
                    if (J10 < vector26.f79839y) {
                        if (vector25.f79838x < I12 + chunkAt.B()) {
                            if (vector25.f79839y < J10 + chunkAt.B()) {
                                steppedArrayList.add(chunkAt);
                            }
                        }
                    }
                }
            }
            K8.a.I(new a(steppedArrayList));
        }
    }

    public class K extends ThreadLocal<List<X>> {
        @Override
        public List<X> initialValue() {
            return new SteppedArrayList();
        }
    }

    public class L extends ThreadLocal<List<Y>> {
        @Override
        public List<Y> initialValue() {
            return new SteppedArrayList();
        }
    }

    public class M extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class N extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class O implements MousePicker.l.b {

        public int f77189a;

        public O() {
        }

        @Override
        public boolean a(GizmoObject gizmoObject) {
            Gizmo.draw(gizmoObject);
            int i10 = this.f77189a + 1;
            this.f77189a = i10;
            return i10 < 150;
        }
    }

    public class P extends ThreadLocal<f> {
        @Override
        public f initialValue() {
            return new f();
        }
    }

    public class Q extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public class R implements e {

        public static final int f77191f = 2;

        public LinearLayout f77192a;

        public final List<M7.g> f77193b = new LinkedList();

        public LayoutInflater f77194c;

        public final Context f77195d;

        public class a implements r {
            public a() {
            }

            @Override
            public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
                if (value) {
                    Terrain terrain = Terrain.this;
                    Z z10 = terrain.tab;
                    Z z11 = Z.Layers;
                    if (z10 != z11) {
                        terrain.tab = z11;
                        terrain.reloadInspector();
                    }
                }
            }
        }

        public class b implements r {
            public b() {
            }

            @Override
            public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
                if (value) {
                    Terrain terrain = Terrain.this;
                    Z z10 = terrain.tab;
                    Z z11 = Z.Data;
                    if (z10 != z11) {
                        terrain.tab = z11;
                        terrain.reloadInspector();
                    }
                }
            }
        }

        public class c implements r {
            public c() {
            }

            @Override
            public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
                if (value) {
                    Terrain terrain = Terrain.this;
                    Z z10 = terrain.tab;
                    Z z11 = Z.HeightMap;
                    if (z10 != z11) {
                        terrain.tab = z11;
                        terrain.reloadInspector();
                    }
                }
            }
        }

        public R(final Context val$context) {
            this.f77195d = val$context;
        }

        private void c() {
            this.f77192a.removeAllViews();
            for (int i10 = 0; i10 < this.f77193b.size(); i10++) {
                d(this.f77193b.get(i10));
            }
        }

        private void d(M7.g element) {
            element.a(this.f77192a, this.f77195d, this.f77194c);
            element.n(f(this.f77192a).e());
        }

        private k f(LinearLayout parent) {
            return e(this.f77195d, parent, this.f77194c);
        }

        public k e(Context context, LinearLayout parent, LayoutInflater layoutInflater) {
            k kVar = new k(Nc.b.l0(2.0f, context));
            kVar.a(parent, context, layoutInflater);
            return kVar;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            LinearLayout linearLayout = (LinearLayout) view.findViewById(com.itsmagic.engine2.R.id.content);
            this.f77192a = linearLayout;
            linearLayout.removeAllViews();
            this.f77194c = LayoutInflater.from(context);
            this.f77193b.clear();
            o oVar = new o(com.itsmagic.engine2.R.drawable.terrain_paint_v1, new a(), c.b.Left, context);
            Ac.b bVar = Theme.T.PRIMARY_DARK;
            o B02 = oVar.B0(bVar);
            o B03 = new o(com.itsmagic.engine2.R.drawable.terrain_config_v1, new b(), c.b.Middle, context).B0(bVar);
            o B04 = new o(com.itsmagic.engine2.R.drawable.mountains, new c(), c.b.Right, context).B0(bVar);
            p pVar = new p(context);
            pVar.s(B02);
            pVar.s(B03);
            pVar.s(B04);
            for (int i10 = 0; i10 < pVar.t(); i10++) {
                ((o) pVar.u(i10)).B0(Theme.T.PRIMARY_DARK);
            }
            Z[] values = Z.values();
            int i11 = 0;
            while (true) {
                if (i11 >= values.length) {
                    break;
                }
                if (values[i11] == Terrain.this.tab) {
                    pVar.z(i11, false);
                    break;
                }
                i11++;
            }
            this.f77193b.add(pVar);
            c();
        }
    }

    public class S implements h {
        public S() {
        }

        @Override
        public Variable get() {
            if (Terrain.this.dataFile == null) {
                return new Variable("", "");
            }
            return new Variable("", ((Object) Terrain.this.dataFile) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Terrain terrain = Terrain.this;
                if (terrain.dataFile == null) {
                    terrain.dataFile = new Ac.b();
                }
                Terrain.this.dataFile.u0(variable.str_value);
            }
        }
    }

    public class T extends c.n0<EnumC16280g> {

        public class a implements Runnable {

            public final EnumC16280g f77202b;

            public a(final EnumC16280g val$value) {
                this.f77202b = val$value;
            }

            @Override
            public void run() {
                Terrain.this.setQuality(this.f77202b);
            }
        }

        public T() {
        }

        @Override
        public void set(EnumC16280g value) {
            K8.a.I(new a(value));
        }
    }

    public class U implements c.o0 {

        public class a implements h {

            public class C1269a implements Runnable {

                public final Variable f77206b;

                public C1269a(final Variable val$variable) {
                    this.f77206b = val$variable;
                }

                @Override
                public void run() {
                    Terrain.this.setWidth(this.f77206b.float_value);
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", Terrain.this.width + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new C1269a(variable));
                }
            }
        }

        public class b implements h {

            public class a implements Runnable {

                public final Variable f77209b;

                public a(final Variable val$variable) {
                    this.f77209b = val$variable;
                }

                @Override
                public void run() {
                    Terrain.this.maxHeight = Nc.b.E(32.0f, this.f77209b.float_value, 1024.0f);
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", Terrain.this.maxHeight + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public U() {
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            String l10 = Lang.l(Lang.T.WIDTH);
            b.a aVar2 = b.a.SLFloat;
            C5.b bVar = new C5.b((h) aVar, l10, aVar2, false);
            Terrain terrain = Terrain.this;
            GameObject gameObject = terrain.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            entries.add(bVar.d(gameObject, terrain, "width", cVar));
            C5.b bVar2 = new C5.b((h) new b(), Lang.l(Lang.T.MAX_HEIGHT), aVar2, false);
            Terrain terrain2 = Terrain.this;
            entries.add(bVar2.d(terrain2.f79250n, terrain2, "maxHeight", cVar));
            return entries;
        }
    }

    public interface V {
        void a();

        void b(int i10);

        int c();
    }

    public interface W {
        void a();

        void b();
    }

    public static class X {

        public float f77211a;

        public C16061a f77212b;

        public X(float v10, C16061a data) {
            this.f77211a = v10;
            this.f77212b = data;
        }
    }

    public static class Y {

        public TerrainLayer f77213a;

        public C16061a f77214b;

        public Y(TerrainLayer layer, C16061a data) {
            this.f77213a = layer;
            this.f77214b = data;
        }
    }

    public enum Z {
        Layers,
        Data,
        HeightMap
    }

    public class C12781a implements c.o0 {

        public final Context f77215a;

        public class C1270a implements h {

            public class C1271a implements Runnable {

                public final Variable f77218b;

                public C1271a(final Variable val$variable) {
                    this.f77218b = val$variable;
                }

                @Override
                public void run() {
                    Terrain.this.enableCollision = this.f77218b.booolean_value.booleanValue();
                }
            }

            public C1270a() {
            }

            @Override
            public Variable get() {
                return new Variable("", Terrain.this.enableCollision + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new C1271a(variable));
                }
            }
        }

        public class b implements InterfaceC15168a {
            public b() {
            }

            @Override
            public void a(Layer newLayer) {
                if (Terrain.this.f77018H5 != null) {
                    Terrain.this.f77018H5.m(Terrain.this.layerReference);
                }
            }
        }

        public C12781a(final Context val$context) {
            this.f77215a = val$context;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new C1270a(), Lang.l(Lang.T.ENABLE_COLLISION), b.a.SLBoolean));
            entries.add(Terrain.this.layerReference.d(Lang.l(Lang.T.LAYER), this.f77215a, new b()));
            return entries;
        }
    }

    public enum a0 {
        Raise,
        Smooth,
        Paint,
        Level,
        ProceduralBrush,
        ProceduralPaint
    }

    public class C12782b implements c.o0 {

        public class a extends c.n0<EnumC16276c> {

            public class RunnableC1272a implements Runnable {

                public final EnumC16276c f77223b;

                public RunnableC1272a(final EnumC16276c val$value) {
                    this.f77223b = val$value;
                }

                @Override
                public void run() {
                    Terrain.this.setLodAggressiveness(this.f77223b);
                }
            }

            public a() {
            }

            @Override
            public void set(EnumC16276c value) {
                K8.a.I(new RunnableC1272a(value));
            }
        }

        public C12782b() {
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(F5.c.i("Aggressiveness", EnumC16276c.class, Terrain.this.lodAggressiveness, new a()));
            return entries;
        }
    }

    public class C12783c implements h {
        public C12783c() {
        }

        @Override
        public Variable get() {
            return new Variable("", Terrain.this.importHeightMapHeight + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Terrain.this.importHeightMapHeight = Nc.b.E(0.0f, variable.float_value, 1.0f);
            }
        }
    }

    public class C12784d implements F5.b {

        public final Context f77226a;

        public class a implements Yc.g {
            public a() {
            }

            @Override
            public void b(C13823b file) {
                if (file == null || file.f() == null || file.f().isEmpty()) {
                    return;
                }
                Terrain.this.generateFromHeightMap(file.f(), C12784d.this.f77226a);
            }
        }

        public C12784d(final Context val$context) {
            this.f77226a = val$context;
        }

        @Override
        public void onClick() {
            Yc.c.a(".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm", new a());
        }
    }

    public class C12785e implements h {
        public C12785e() {
        }

        @Override
        public Variable get() {
            return new Variable("", Terrain.this.rebaseTo + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Terrain.this.rebaseTo = variable.float_value;
            }
        }
    }

    public class C12786f implements F5.b {
        public C12786f() {
        }

        @Override
        public void onClick() {
            Terrain terrain = Terrain.this;
            terrain.rebaseTo(terrain.rebaseTo);
        }
    }

    public class C12787g implements h {
        public C12787g() {
        }

        @Override
        public Variable get() {
            if (Terrain.this.dataFile == null) {
                return new Variable("", "");
            }
            return new Variable("", ((Object) Terrain.this.dataFile) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Terrain terrain = Terrain.this;
                if (terrain.dataFile == null) {
                    terrain.dataFile = new Ac.b();
                }
                Terrain.this.dataFile.u0(variable.str_value);
            }
        }
    }

    public class C12788h implements W {
        public C12788h() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b() {
        }
    }

    public class C12789i implements D5.b {

        public final Context f77233a;

        public class a implements SweetAlertDialog.OnSweetClickListener {

            public final SweetAlertDialog f77235a;

            public a(final SweetAlertDialog val$dialog) {
                this.f77235a = val$dialog;
            }

            @Override
            public void onClick(SweetAlertDialog sweetAlertDialog) {
                this.f77235a.dismissWithAnimation();
                TerrainLayer selectedLayer = Terrain.this.getSelectedLayer();
                if (selectedLayer != null) {
                    synchronized (Terrain.this.f77065b2) {
                        Terrain.this.f77065b2.add(selectedLayer);
                    }
                }
                Terrain.this.reloadInspector();
            }
        }

        public class b implements SweetAlertDialog.OnSweetClickListener {

            public final SweetAlertDialog f77237a;

            public b(final SweetAlertDialog val$dialog) {
                this.f77237a = val$dialog;
            }

            @Override
            public void onClick(SweetAlertDialog sweetAlertDialog) {
                this.f77237a.dismissWithAnimation();
            }
        }

        public C12789i(final Context val$context) {
            this.f77233a = val$context;
        }

        @Override
        public void a(View view) {
            SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(this.f77233a, 3);
            sweetAlertDialog.setTitle(Lang.l(Lang.T.ATTENTION));
            sweetAlertDialog.setContentText(Lang.l(Lang.T.CONFIRM_DELETE_SELECTED_TEXTURE_LAYER));
            sweetAlertDialog.setConfirmButton(Lang.l(Lang.T.YES), new a(sweetAlertDialog));
            sweetAlertDialog.setCancelButton(Lang.l(Lang.T.NO), new b(sweetAlertDialog));
            sweetAlertDialog.show();
        }
    }

    public class C12790j extends c.n0<TerrainLayer.a> {

        public final TerrainLayer f77239a;

        public C12790j(final TerrainLayer val$selectedLayer) {
            this.f77239a = val$selectedLayer;
        }

        @Override
        public void a() {
            Terrain.this.reloadInspector();
        }

        @Override
        public void set(TerrainLayer.a value) {
            this.f77239a.source = value;
        }
    }

    public class C12791k extends AbstractC13203c {
        @Override
        public Class b() {
            return Terrain.f76980j9;
        }

        @Override
        public String c() {
            return Terrain.f76979i9;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String f() {
            return Terrain.f76979i9;
        }
    }

    public class C12792l implements e {

        public final TerrainLayer f77241a;

        public class a extends AbstractViewOnClickListenerC12733a {

            public final ImageView f77243b;

            public final Context f77244c;

            public class C1273a implements H3.e {

                public class C1274a implements Runnable {

                    public final String f77247b;

                    public class RunnableC1275a implements Runnable {
                        public RunnableC1275a() {
                        }

                        @Override
                        public void run() {
                            a aVar = a.this;
                            Vc.e.K(aVar.f77243b, g.z1(C12792l.this.f77241a.selectedMatcap), a.this.f77244c, new Vc.c());
                        }
                    }

                    public C1274a(final String val$file) {
                        this.f77247b = val$file;
                    }

                    @Override
                    public void run() {
                        C12792l.this.f77241a.selectedMatcap = this.f77247b;
                        N7.c.j0(new RunnableC1275a());
                    }
                }

                public C1273a() {
                }

                @Override
                public String getSelected() {
                    return C12792l.this.f77241a.selectedMatcap;
                }

                @Override
                public void onSelected(String file) {
                    K8.a.I(new C1274a(file));
                }
            }

            public a(final ImageView val$colorImage, final Context val$context) {
                this.f77243b = val$colorImage;
                this.f77244c = val$context;
            }

            @Override
            public void click(View view) {
                g.J1(view, C15147a.e.Left, new C1273a());
            }
        }

        public C12792l(final TerrainLayer val$selectedLayer) {
            this.f77241a = val$selectedLayer;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            ((TextView) view.findViewById(com.itsmagic.engine2.R.id.tittle)).setText("preset");
            ImageView imageView = (ImageView) view.findViewById(com.itsmagic.engine2.R.id.imageView6);
            String str = this.f77241a.selectedMatcap;
            if (str != null) {
                Vc.e.K(imageView, g.z1(str), context, new Vc.c());
            }
            imageView.setOnClickListener(new a(imageView, context));
        }
    }

    public class C12793m implements h {

        public final TerrainLayer f77250a;

        public C12793m(final TerrainLayer val$selectedLayer) {
            this.f77250a = val$selectedLayer;
        }

        @Override
        public Variable get() {
            return this.f77250a.f() != null ? new Variable("", this.f77250a.f().toString()) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f77250a.E(variable.str_value);
                Terrain.this.reloadInspector();
            }
        }
    }

    public class C12794n implements h {

        public final TerrainLayer f77252a;

        public C12794n(final TerrainLayer val$selectedLayer) {
            this.f77252a = val$selectedLayer;
        }

        @Override
        public Variable get() {
            return this.f77252a.t() != null ? new Variable("", this.f77252a.t().toString()) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f77252a.K(variable.str_value);
                Terrain.this.reloadInspector();
            }
        }
    }

    public class C12795o implements h {

        public final TerrainLayer f77254a;

        public C12795o(final TerrainLayer val$selectedLayer) {
            this.f77254a = val$selectedLayer;
        }

        @Override
        public Variable get() {
            return this.f77254a.r() != null ? new Variable("", this.f77254a.r().toString()) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f77254a.J(variable.str_value);
                Terrain.this.reloadInspector();
            }
        }
    }

    public class C12796p implements h {

        public final TerrainLayer f77256a;

        public C12796p(final TerrainLayer val$selectedLayer) {
            this.f77256a = val$selectedLayer;
        }

        @Override
        public Variable get() {
            return this.f77256a.l() != null ? new Variable("", this.f77256a.l().toString()) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f77256a.F(variable.str_value);
                Terrain.this.reloadInspector();
            }
        }
    }

    public class C12797q implements h {

        public final TerrainLayer f77258a;

        public C12797q(final TerrainLayer val$selectedLayer) {
            this.f77258a = val$selectedLayer;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f77258a.v() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f77258a.N(variable.float_value);
            }
        }
    }

    public class C12798r implements h {

        public final TerrainLayer f77260a;

        public C12798r(final TerrainLayer val$selectedLayer) {
            this.f77260a = val$selectedLayer;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f77260a.u() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f77260a.L(variable.float_value);
            }
        }
    }

    public class C12799s implements h {

        public final TerrainLayer f77262a;

        public C12799s(final TerrainLayer val$selectedLayer) {
            this.f77262a = val$selectedLayer;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f77262a.w() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f77262a.O(variable.float_value);
            }
        }
    }

    public class C12800t implements c.o0 {

        public final TerrainLayer f77264a;

        public class a implements h {

            public class RunnableC1276a implements Runnable {

                public final Variable f77267b;

                public RunnableC1276a(final Variable val$variable) {
                    this.f77267b = val$variable;
                }

                @Override
                public void run() {
                    C12800t.this.f77264a.G(Nc.b.G(this.f77267b.float_value));
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", C12800t.this.f77264a.m() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new RunnableC1276a(variable));
                }
            }
        }

        public class b implements h {

            public class a implements Runnable {

                public final Variable f77270b;

                public a(final Variable val$variable) {
                    this.f77270b = val$variable;
                }

                @Override
                public void run() {
                    C12800t.this.f77264a.I(Nc.b.G(this.f77270b.float_value));
                }
            }

            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", C12800t.this.f77264a.o() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    K8.a.I(new a(variable));
                }
            }
        }

        public C12800t(final TerrainLayer val$selectedLayer) {
            this.f77264a = val$selectedLayer;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLFloat01;
            entries.add(new C5.b(aVar, "Intensity", aVar2));
            entries.add(new C5.b(new b(), "Quality", aVar2));
            return entries;
        }
    }

    public class C12801u extends c.n0<TerrainLayer.b> {

        public final TerrainLayer f77272a;

        public C12801u(final TerrainLayer val$selectedLayer) {
            this.f77272a = val$selectedLayer;
        }

        @Override
        public void a() {
            Terrain.this.reloadInspector();
        }

        @Override
        public void set(TerrainLayer.b value) {
            this.f77272a.useAs = value;
        }
    }

    public class C12802v implements InterfaceC13601h {
        public C12802v() {
        }

        @Override
        public void a(f globalMatrix) {
            Terrain.this.applyTerrainTransform(globalMatrix);
        }
    }

    public class C12803w implements D5.b {

        public final TerrainLayer f77275a;

        public C12803w(final TerrainLayer val$selectedLayer) {
            this.f77275a = val$selectedLayer;
        }

        @Override
        public void a(View view) {
            C16061a layerDataFor;
            synchronized (Terrain.this.layers) {
                for (int i10 = 0; i10 < Terrain.this.layers.size(); i10++) {
                    try {
                        TerrainLayer terrainLayer = (TerrainLayer) Terrain.this.layers.get(i10);
                        if (terrainLayer != this.f77275a && (layerDataFor = Terrain.this.layerDataFor(terrainLayer)) != null) {
                            for (int i11 = 0; i11 < Terrain.this.getResolution(); i11++) {
                                for (int i12 = 0; i12 < Terrain.this.getResolution(); i12++) {
                                    layerDataFor.h(i11, i12, 0.0f);
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            C16061a layerDataFor2 = Terrain.this.layerDataFor(this.f77275a);
            if (layerDataFor2 != null) {
                for (int i13 = 0; i13 < Terrain.this.getResolution(); i13++) {
                    for (int i14 = 0; i14 < Terrain.this.getResolution(); i14++) {
                        layerDataFor2.h(i13, i14, 1.0f);
                    }
                }
            }
            Terrain.this.applyLayers();
        }
    }

    public class C12804x implements D5.b {
        public C12804x() {
        }

        @Override
        public void a(View view) {
            if (Terrain.this.layers.size() >= 2) {
                PerlinNoise perlinNoise = new PerlinNoise(50.0f);
                Terrain terrain = Terrain.this;
                C16061a layerDataFor = terrain.layerDataFor((TerrainLayer) terrain.layers.get(0));
                Terrain terrain2 = Terrain.this;
                C16061a layerDataFor2 = terrain2.layerDataFor((TerrainLayer) terrain2.layers.get(1));
                for (int i10 = 0; i10 < Terrain.this.getResolution(); i10++) {
                    for (int i11 = 0; i11 < Terrain.this.getResolution(); i11++) {
                        float noise = (perlinNoise.noise(i10, i11) * 0.5f) + 0.5f;
                        layerDataFor.h(i10, i11, noise);
                        layerDataFor2.h(i10, i11, 1.0f - noise);
                    }
                }
                Terrain.this.applyLayers();
            }
        }
    }

    public class C12805y implements D5.b {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                synchronized (Terrain.this.layers) {
                    for (int i10 = 0; i10 < Terrain.this.layers.size(); i10++) {
                        try {
                            C16061a layerDataFor = Terrain.this.layerDataFor((TerrainLayer) Terrain.this.layers.get(i10));
                            for (int i11 = 0; i11 < Terrain.this.getResolution(); i11++) {
                                for (int i12 = 0; i12 < Terrain.this.getResolution(); i12++) {
                                    layerDataFor.h(i11, i12, Nc.d.h(0.0f, 1.0f));
                                }
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
                Terrain.this.normalizeAllLayers();
            }
        }

        public C12805y() {
        }

        @Override
        public void a(View view) {
            new Thread(new a()).start();
        }
    }

    public class C12806z implements e {

        public final W f77280a;

        public class a implements View.OnScrollChangeListener {
            public a() {
            }

            @Override
            public void onScrollChange(View v10, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
                Terrain.this.layersEditorScroll = scrollX;
            }
        }

        public class b extends AbstractViewOnClickListenerC12733a {

            public class a extends SteppedArrayList<C12908b> {

                public final View f77284b;

                public class C1277a implements d {

                    public class C1278a implements C15805a.i {
                        public C1278a() {
                        }

                        @Override
                        public void a(File file, String inProjectPath) {
                            if (file == null || !file.exists()) {
                                return;
                            }
                            TerrainLayer terrainLayer = new TerrainLayer();
                            terrainLayer.E(inProjectPath);
                            synchronized (Terrain.this.f77052V1) {
                                Terrain.this.f77052V1.add(terrainLayer);
                            }
                            W w10 = C12806z.this.f77280a;
                            if (w10 != null) {
                                w10.a();
                            }
                            Terrain.this.reloadInspector();
                        }
                    }

                    public C1277a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        C15805a.x1(".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm", new C1278a());
                    }
                }

                public class C1279b implements d {

                    public class C1280a implements H3.e {

                        public class C1281a implements Runnable {

                            public final String f77290b;

                            public C1281a(final String val$file) {
                                this.f77290b = val$file;
                            }

                            @Override
                            public void run() {
                                if (this.f77290b != null) {
                                    TerrainLayer terrainLayer = new TerrainLayer();
                                    terrainLayer.selectedMatcap = this.f77290b;
                                    terrainLayer.source = TerrainLayer.a.PBRPreset;
                                    synchronized (Terrain.this.f77052V1) {
                                        Terrain.this.f77052V1.add(terrainLayer);
                                    }
                                    W w10 = C12806z.this.f77280a;
                                    if (w10 != null) {
                                        w10.a();
                                    }
                                    Terrain.this.reloadInspector();
                                }
                            }
                        }

                        public C1280a() {
                        }

                        @Override
                        public String getSelected() {
                            return "";
                        }

                        @Override
                        public void onSelected(String file) {
                            K8.a.I(new C1281a(file));
                        }
                    }

                    public C1279b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        g.K1(a.this.f77284b, C15147a.e.Left, new C1280a());
                    }
                }

                public a(final View val$view) {
                    this.f77284b = val$view;
                    add(new C12908b("Use texture", new C1277a()));
                    add(new C12908b("Use preset", new C1279b()));
                }
            }

            public b() {
            }

            @Override
            public void click(View view) {
                if (!Terrain.this.canAddLayer()) {
                    N7.c.v0("Max textures reached");
                    return;
                }
                N7.c.Y();
                Y6.a.F1(view, C15147a.e.Left, new a(view));
            }
        }

        public class c implements View.OnClickListener {

            public final int f77292b;

            public c(final int val$finalI) {
                this.f77292b = val$finalI;
            }

            @Override
            public void onClick(View v10) {
                Terrain.this.f76997D2 = this.f77292b;
                Terrain.this.reloadInspector();
                C12806z.this.f77280a.b();
            }
        }

        public C12806z(final W val$selectorListener) {
            this.f77280a = val$selectorListener;
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            LinearLayout linearLayout = (LinearLayout) view.findViewById(com.itsmagic.engine2.R.id.content);
            linearLayout.removeAllViews();
            LayoutInflater from = LayoutInflater.from(context);
            HorizontalScrollView horizontalScrollView = (HorizontalScrollView) view.findViewById(com.itsmagic.engine2.R.id.scroll);
            horizontalScrollView.setScrollX(Terrain.this.layersEditorScroll);
            horizontalScrollView.setOnScrollChangeListener(new a());
            TextView textView = (TextView) view.findViewById(com.itsmagic.engine2.R.id.tittle);
            view.findViewById(com.itsmagic.engine2.R.id.addNew).setOnClickListener(new b());
            synchronized (Terrain.this.layers) {
                try {
                    textView.setText("Textures " + Terrain.this.layers.size());
                    for (int i10 = 0; i10 < Terrain.this.layers.size(); i10++) {
                        TerrainLayer terrainLayer = (TerrainLayer) Terrain.this.layers.get(i10);
                        View inflate = from.inflate(com.itsmagic.engine2.R.layout.inspector_component_terrain_layers_single, (ViewGroup) null);
                        linearLayout.addView(inflate);
                        ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
                        int l02 = Nc.b.l0(42.0f, context);
                        layoutParams.width = l02;
                        layoutParams.height = l02;
                        inflate.setLayoutParams(layoutParams);
                        ImageView imageView = (ImageView) inflate.findViewById(com.itsmagic.engine2.R.id.imageView);
                        Terrain.this.drawLayerIconTo(imageView, terrainLayer);
                        if (i10 == Terrain.this.f76997D2) {
                            inflate.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.PRIMARY)));
                        } else {
                            inflate.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.PANEL)));
                        }
                        imageView.setOnClickListener(new c(i10));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    static {
        System.loadLibrary("native-terrain");
        C13201a.b(new C12791k());
        f76990t9 = new P();
        f76991u9 = new Q();
        f76992v9 = new K();
        f76993w9 = new L();
        f76994x9 = new M();
        f76995y9 = new N();
    }

    public Terrain() {
        super(f76979i9);
        this.quality = EnumC16280g.Medium;
        this.lodAggressiveness = EnumC16276c.High;
        this.width = 128.0f;
        this.maxHeight = 200.0f;
        this.importHeightMapHeight = 0.25f;
        this.rebaseTo = 30.0f;
        this.layers = new SteppedArrayList();
        this.f77003F = f76984n9;
        this.layersEditorScroll = 0;
        this.tab = Z.Layers;
        this.enableCollision = true;
        this.layerReference = new ExposableLayerReference();
        this.brushSize = 50.0f;
        this.brushIntensity = 0.1f;
        this.selectedBrushID = 1;
        this.paintIntensity = 0.1f;
        this.f77012G = true;
        this.f77013H = new Vector2(50.0f, 50.0f);
        a0 a0Var = a0.Raise;
        this.f77028M = a0Var;
        this.f77033N = EnumC13007d.Mountain;
        this.f77035O = f4.c.Cliff;
        this.f77037P = new C13006c();
        this.f77039Q = new f4.b();
        this.f77041R = null;
        this.f77045S = false;
        this.f77049U = new Vector2();
        this.f77059Y = a0Var;
        this.f77064b1 = 1L;
        this.f77073i1 = 1L;
        this.f77076m1 = new Vector2();
        this.f77081q1 = new Vector2();
        this.f77085v1 = 30.0f;
        this.f77089y1 = true;
        this.f77004F1 = 0;
        this.f77014H1 = 0;
        this.f77025L1 = -1;
        this.f77029M1 = -1;
        this.f77042R1 = false;
        this.f77052V1 = new SteppedArrayList();
        this.f77065b2 = new SteppedArrayList();
        this.f77074i2 = new AtomicBoolean(true);
        this.f77077m2 = new AtomicBoolean();
        this.f77086v2 = 1;
        this.f77030M2 = new SteppedArrayList();
        this.f77043R2 = new SteppedArrayList();
        this.f77053V2 = new SteppedArrayList();
        this.f77078m3 = new SteppedArrayList();
        C15814d[] c15814dArr = f76983m9;
        this.f77083q3 = c15814dArr;
        this.f77087v3 = c15814dArr;
        this.f76998D3 = c15814dArr;
        this.f77016H3 = -1;
        this.f77031M3 = new AtomicReference<>();
        this.f76999D4 = new C15815e();
        this.f77007F4 = new Qb.b();
        this.f77017H4 = new C16282i();
        this.f77000D5 = -1;
        this.f77008F5 = -1;
        this.f77001D6 = true;
        this.f77009F6 = new C13814b(this);
        this.f77011F8 = -1;
        this.f77023K8 = new float[16];
        this.f77027L8 = new C16281h();
        this.f77032M8 = false;
        this.f77034N8 = new f();
        this.f77038P8 = new AtomicBoolean();
        this.f77040Q8 = true;
        this.f77046S8 = new Vector3();
        this.f77058X8 = Float.POSITIVE_INFINITY;
        this.f77062Z8 = new Vector3();
        this.f77068d9 = new C12802v();
        this.f77069e9 = new G();
        this.f77070f9 = new SteppedArrayList();
        this.f77071g9 = new SteppedArrayList();
    }

    public void applyLodReferenceTransform(f globalMatrix) {
        if (globalMatrix == null) {
            this.f77056W8 = false;
            this.f77006F3++;
            return;
        }
        globalMatrix.D1(this.f77046S8);
        this.f77048T8 = this.f77046S8.getX();
        this.f77050U8 = this.f77046S8.getY();
        this.f77054V8 = this.f77046S8.getZ();
        this.f77056W8 = true;
        this.f77006F3++;
    }

    public void applySlopeRockPaintJava(C16278e table, C16061a rockLayer, C16061a grassLayer, int startX, int startY, int endX, int endY, float width, float size, Vector2 brushStart, float maxHeight, a brush) {
        float f10;
        char c10;
        Vector3 vector3;
        int i10;
        Vector2 vector2 = brushStart;
        char c11 = 0;
        float resolution = 1.0f / (getResolution() - 1);
        Vector3 vector32 = new Vector3();
        Vector3 vector33 = new Vector3();
        Vector3 vector34 = new Vector3();
        Vector3 vector35 = new Vector3();
        int i11 = startX;
        while (i11 < endX) {
            int i12 = startY;
            int i13 = endY;
            while (i12 < i13) {
                if (i11 < 0 || i11 >= getResolution() || i12 < 0 || i12 >= getResolution()) {
                    f10 = resolution;
                    c10 = c11;
                    vector3 = vector32;
                    i10 = i12;
                } else {
                    float f11 = i11;
                    float f12 = i12;
                    float c12 = brush.c(Nc.b.I((((f11 * resolution) * width) - vector2.f79838x) / size), Nc.b.I((((f12 * resolution) * width) - vector2.f79839y) / size));
                    if (c12 <= 0.0f) {
                        f10 = resolution;
                        vector3 = vector32;
                        i10 = i12;
                        c10 = 0;
                    } else {
                        int min = Math.min(i11 + 1, getResolution() - 1);
                        f10 = resolution;
                        int min2 = Math.min(i12 + 1, getResolution() - 1);
                        vector3 = vector32;
                        c10 = 0;
                        float I10 = c12 * Nc.b.I((1.0f - Nc.b.k(Vector3.triangleNormal(vector32.setAndReturn(f11, table.f(i11, i12) * maxHeight, f12), vector33.setAndReturn(min, table.f(min, i12) * maxHeight, f12), vector34.setAndReturn(f11, table.f(i11, min2) * maxHeight, min2), vector35).dot(Vector3.up()))) * 1.5f);
                        i10 = i12;
                        paintRockAsync(rockLayer, grassLayer, i11, i12, I10);
                        paintRockAsync(rockLayer, grassLayer, min, i12, I10);
                        paintRockAsync(rockLayer, grassLayer, i11, min2, I10);
                    }
                }
                i12 = i10 + 1;
                i13 = endY;
                vector2 = brushStart;
                c11 = c10;
                vector32 = vector3;
                resolution = f10;
            }
            i11++;
            vector2 = brushStart;
        }
    }

    public void applyTerrainTransform(f globalMatrix) {
        if (globalMatrix == null) {
            this.f77062Z8.set(0.0f, 0.0f, 0.0f);
        } else {
            globalMatrix.D1(this.f77062Z8);
        }
        this.f77063a9 = this.f77062Z8.getX();
        this.f77066b9 = this.f77062Z8.getY();
        this.f77067c9 = this.f77062Z8.getZ();
        this.f77006F3++;
        this.f77034N8.U0(this.f77062Z8);
        this.f77034N8.o(this.f77023K8);
        GameObject gameObject = this.f79250n;
        if (gameObject != null) {
            this.f77011F8 = gameObject.transform.k0();
        } else {
            this.f77011F8 = -1;
        }
        synchronized (this.f77078m3) {
            for (int i10 = 0; i10 < this.f77078m3.size(); i10++) {
                try {
                    this.f77078m3.get(i10).l(this);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public long[] buildNativeLevelPointerList(List<Component> terrainLevelComponents) {
        boolean z10;
        int i10;
        Exception e10;
        if (terrainLevelComponents == null || terrainLevelComponents.isEmpty()) {
            return null;
        }
        int size = terrainLevelComponents.size();
        long[] jArr = new long[size];
        int i11 = 0;
        for (int i12 = 0; i12 < terrainLevelComponents.size(); i12++) {
            Component component = terrainLevelComponents.get(i12);
            if ((component instanceof InterfaceC15582b) && component.isHierarchyActive()) {
                try {
                    z10 = ((InterfaceC15582b) component).allowLeveling(this);
                } catch (Exception e11) {
                    e11.printStackTrace();
                    z10 = false;
                }
                if (z10 && (component instanceof InterfaceC15581a)) {
                    InterfaceC15581a interfaceC15581a = (InterfaceC15581a) component;
                    try {
                    } catch (Exception e12) {
                        i10 = i11;
                        e10 = e12;
                    }
                    if (interfaceC15581a.prepareNativeTerrainLevel(this)) {
                        long nativeTerrainLevelPointer = interfaceC15581a.getNativeTerrainLevelPointer();
                        if (nativeTerrainLevelPointer != 0) {
                            i10 = i11 + 1;
                            try {
                                jArr[i11] = nativeTerrainLevelPointer;
                            } catch (Exception e13) {
                                e10 = e13;
                                e10.printStackTrace();
                                i11 = i10;
                            }
                            i11 = i10;
                        }
                    }
                }
            }
        }
        if (i11 <= 0) {
            return null;
        }
        if (i11 == size) {
            return jArr;
        }
        long[] jArr2 = new long[i11];
        System.arraycopy(jArr, 0, jArr2, 0, i11);
        return jArr2;
    }

    public static Terrain buildTerrain() {
        Terrain terrain = new Terrain();
        terrain.layers.add(new TerrainLayer(new Ac.b("GrassLayer"), "Grass/grass001", TerrainLayer.b.Grass, 4.0f));
        terrain.layers.add(new TerrainLayer(new Ac.b("RockLayer"), "Rock/rock031", TerrainLayer.b.Rock, 4.0f));
        return terrain;
    }

    private int calculateChunkLayerResolution() {
        int D10;
        if (this.f77029M1 == 0 || (D10 = (int) Nc.b.D(Nc.b.r1(r0))) == 0) {
            return 1;
        }
        return Nc.b.N(1, getResolution() / D10);
    }

    private float calculateChunkWidth() {
        return (this.f77025L1 / getResolution()) * this.width;
    }

    public boolean canAddLayer() {
        return true;
    }

    private void clearRenderStateQueue() {
        this.f77031M3.set(null);
        this.f77079m4 = null;
        this.f77088v4 = null;
        this.f76999D4.d();
    }

    private void detachAll() {
        removeFromPhysics();
        for (int i10 = 0; i10 < this.f77078m3.size(); i10++) {
            this.f77078m3.get(i10).c0(this);
        }
        this.f77078m3.clear();
        C15814d[] c15814dArr = f76983m9;
        this.f77083q3 = c15814dArr;
        this.f77087v3 = c15814dArr;
        this.f76998D3 = c15814dArr;
        clearRenderStateQueue();
        this.f77029M1 = -1;
        this.f77025L1 = -1;
        markChunkTilingDirty();
        this.f77000D5 = -1;
        this.f77008F5 = -1;
    }

    private void detachRuntimeState() {
        removeFromPhysics();
        for (int i10 = 0; i10 < this.f77078m3.size(); i10++) {
            this.f77078m3.get(i10).v(this);
        }
    }

    public void generateFromHeightMap(String file, Context context) {
        SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(context, 5);
        sweetAlertDialog.setTitle("Importing");
        sweetAlertDialog.setContentText("Please wait a second..");
        sweetAlertDialog.setCanceledOnTouchOutside(false);
        sweetAlertDialog.show();
        Thread thread = new Thread(new C(context, file, sweetAlertDialog));
        thread.setName("Terrain heightmap");
        thread.start();
    }

    private int getBestChunkResolutionForLod() {
        int b10 = this.quality.b();
        if (Nc.b.N(0, this.f77014H1) / 3 <= 0) {
            return b10;
        }
        return Nc.b.N(1, (int) Nc.b.j1(b10 / ((float) Math.sqrt((r1 * 0.1f) + 1.0f))));
    }

    private C13436b getBulletShapeChildrenCache() {
        if (this.f77019H6 == null) {
            this.f77019H6 = new C13436b();
        }
        return this.f77019H6;
    }

    private C15814d[] getChunksSortedByLodDistance() {
        C15814d[] c15814dArr = this.f77083q3;
        if (!this.f77056W8 || c15814dArr.length <= 1) {
            return c15814dArr;
        }
        int i10 = this.f77006F3;
        if (this.f76998D3 != c15814dArr) {
            C15814d[] c15814dArr2 = new C15814d[c15814dArr.length];
            this.f77087v3 = c15814dArr2;
            System.arraycopy(c15814dArr, 0, c15814dArr2, 0, c15814dArr.length);
            this.f76998D3 = c15814dArr;
            heapSortChunksByLodDistance(this.f77087v3);
            this.f77016H3 = i10;
        } else if (this.f77016H3 != i10) {
            insertionSortChunksByLodDistance(this.f77087v3);
            this.f77016H3 = i10;
        }
        return this.f77087v3;
    }

    private long[] getLayerNativeBufferPointers() {
        long[] jArr = new long[this.layers.size()];
        for (int i10 = 0; i10 < this.layers.size(); i10++) {
            C16061a m10 = this.f77005F2.m(i10);
            NativeFloatBuffer c10 = m10 != null ? m10.c() : null;
            if (c10 == null) {
                return null;
            }
            jArr[i10] = c10.getPointerCritical();
        }
        return jArr;
    }

    private a getProceduralBrushPreviewBrush() {
        O8.b bVar = K8.a.f10987r;
        if (bVar == null || bVar.b() <= 39) {
            return null;
        }
        return bVar.a(39);
    }

    private void heapSortChunksByLodDistance(C15814d[] chunks) {
        int length = chunks.length;
        for (int i10 = (length >>> 1) - 1; i10 >= 0; i10--) {
            siftDownChunk(chunks, i10, length);
        }
        for (int i11 = length - 1; i11 > 0; i11--) {
            C15814d c15814d = chunks[0];
            chunks[0] = chunks[i11];
            chunks[i11] = c15814d;
            siftDownChunk(chunks, 0, i11);
        }
    }

    private void inflateLayersEntries(Context context, List<C5.b> entries) {
        TerrainLayer selectedLayer = getSelectedLayer();
        getTerrainLayerSelector(entries, new C12788h());
        if (selectedLayer != null) {
            entries.add(new C5.b(new C12789i(context), Lang.l(Lang.T.DELETE_SELECTED), b.a.ButtonMatchParent));
        }
        if (selectedLayer != null) {
            entries.add(F5.c.i(Lang.l(Lang.T.SOURCE), TerrainLayer.a.class, selectedLayer.source, new C12790j(selectedLayer)));
            if (selectedLayer.source == TerrainLayer.a.PBRPreset) {
                entries.add(new C5.b(new C12792l(selectedLayer), com.itsmagic.engine2.R.layout.inspector_component_texture, (Object) null));
            } else {
                C12793m c12793m = new C12793m(selectedLayer);
                b.a aVar = b.a.Texture;
                entries.add(new C5.b(c12793m, "albedo", aVar, context));
                entries.add(new C5.b(new C12794n(selectedLayer), "normalMap", aVar, context));
                entries.add(new C5.b(new C12795o(selectedLayer), "metallic", aVar, context));
                entries.add(new C5.b(new C12796p(selectedLayer), "height", aVar, context));
            }
            entries.add(new C5.b(new C12797q(selectedLayer), Lang.l(Lang.T.SIZE), b.a.SLFloat));
            C12798r c12798r = new C12798r(selectedLayer);
            b.a aVar2 = b.a.SLFloat01;
            entries.add(new C5.b(c12798r, "Roughness", aVar2));
            entries.add(new C5.b(new C12799s(selectedLayer), "Specular", aVar2));
            entries.add(F5.c.d(getInspectorMemory(), Lang.l(Lang.T.HEIGHT), new C12800t(selectedLayer)));
            entries.add(F5.c.i(Lang.l(Lang.T.USE_AS), TerrainLayer.b.class, selectedLayer.useAs, new C12801u(selectedLayer)));
            C12803w c12803w = new C12803w(selectedLayer);
            String l10 = Lang.l(Lang.T.FILL_TERRAIN);
            b.a aVar3 = b.a.ButtonMatchParent;
            entries.add(new C5.b(c12803w, l10, aVar3));
            entries.add(new C5.b(new C12804x(), Lang.l(Lang.T.DEBUG_PERLIN), aVar3));
            entries.add(new C5.b(new C12805y(), Lang.l(Lang.T.DEBUG_RANDOM), aVar3));
        }
    }

    private void insertionSortChunksByLodDistance(C15814d[] chunks) {
        for (int i10 = 1; i10 < chunks.length; i10++) {
            C15814d c15814d = chunks[i10];
            float G10 = c15814d.G(this);
            int i11 = i10 - 1;
            while (i11 >= 0 && chunks[i11].G(this) > G10) {
                chunks[i11 + 1] = chunks[i11];
                i11--;
            }
            chunks[i11 + 1] = c15814d;
        }
    }

    private void loadScheduled() {
        Ac.b bVar = this.f77026L2;
        boolean z10 = true;
        boolean z11 = bVar != null && this.dataFile == null;
        if (z11 || (bVar != null && this.dataFile.Y(bVar))) {
            z10 = z11;
        }
        if (z10) {
            this.f77026L2 = this.dataFile;
            markChunkTilingDirty();
            Ac.b bVar2 = this.dataFile;
            if (bVar2 == null || bVar2.g0()) {
                this.f77005F2 = null;
                return;
            }
            String bVar3 = this.dataFile.toString();
            if (com.itsmagic.engine.Core.Components.ProjectController.a.R().contains("@@ASSET@@")) {
                bVar3 = Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R().replace("@@ASSET@@", "") + "/" + bVar3);
            }
            InputStream o10 = X7.a.o(bVar3);
            if (o10 != null) {
                this.f77005F2 = C15975a.g(o10);
                reloadInspector();
            }
        }
    }

    private void markChunkTilingDirty() {
        this.f77040Q8 = true;
    }

    public static native void nativeApplyLevel(long tablePointer, int resolution, int startX, int startY, int endX, int endY, float width, float size, float brushStartX, float brushStartY, float targetHeight, float intensityPercentage, long brushAlphaPointer, int brushWidth, int brushHeight);

    public static native void nativeApplyPaint(long targetLayerPointer, long[] otherLayerPointers, int resolution, int startX, int startY, int endX, int endY, float width, float size, float brushStartX, float brushStartY, float intensity, long brushAlphaPointer, int brushWidth, int brushHeight);

    public static native void nativeApplyRaiseLower(long tablePointer, int resolution, int startX, int startY, int endX, int endY, float width, float size, float brushStartX, float brushStartY, float increment, long brushAlphaPointer, int brushWidth, int brushHeight);

    private static native void nativeApplySlopeRockPaint(long heightTablePointer, long rockLayerPointer, long grassLayerPointer, long[] layerPointers, int resolution, int startX, int startY, int endX, int endY, float width, float size, float brushStartX, float brushStartY, float maxHeight, long brushAlphaPointer, int brushWidth, int brushHeight);

    public boolean nativeApplySlopeRockPaintIfReady(C16278e table, C16061a rockLayer, C16061a grassLayer, int startX, int startY, int endX, int endY, float width, float size, Vector2 brushStart, float maxHeight, NativeFloatBuffer brushAlpha, a brush) {
        NativeFloatBuffer c10 = table.c();
        NativeFloatBuffer c11 = rockLayer != null ? rockLayer.c() : null;
        NativeFloatBuffer c12 = grassLayer != null ? grassLayer.c() : null;
        long[] layerNativeBufferPointers = getLayerNativeBufferPointers();
        if (c10 == null || c11 == null || c12 == null || layerNativeBufferPointers == null) {
            return false;
        }
        nativeApplySlopeRockPaint(c10.getPointerCritical(), c11.getPointerCritical(), c12.getPointerCritical(), layerNativeBufferPointers, getResolution(), startX, startY, endX, endY, width, size, brushStart.f79838x, brushStart.f79839y, maxHeight, brushAlpha != null ? brushAlpha.getPointerCritical() : 0L, brush.f16548e, brush.f16549f);
        return true;
    }

    public static native void nativeApplySmooth(long tablePointer, int resolution, int startX, int startY, int endX, int endY, float width, float size, float brushStartX, float brushStartY, float intensityPercentage, long brushAlphaPointer, int brushWidth, int brushHeight);

    public static native boolean nativeRegenLevelTable(long levelTablePointer, int resolution, float width, float maxHeight, float terrainX, float terrainY, float terrainZ, long[] nativeLevelPointers);

    /* JADX WARN: Multi-variable type inference failed */
    public void normalizeAllLayers() {
        synchronized (this.layers) {
            try {
                List<Y> list = f76993w9.get();
                list.clear();
                synchronized (this.f77070f9) {
                    for (int i10 = 0; i10 < this.layers.size(); i10++) {
                        try {
                            TerrainLayer terrainLayer = this.layers.get(i10);
                            C16061a layerDataFor = layerDataFor(terrainLayer);
                            if (this.f77070f9.isEmpty()) {
                                list.add(new Y(terrainLayer, layerDataFor));
                            } else {
                                Y remove = this.f77070f9.remove(0);
                                remove.f77213a = terrainLayer;
                                remove.f77214b = layerDataFor;
                                list.add(remove);
                            }
                        } finally {
                        }
                    }
                }
                if (!list.isEmpty()) {
                    List<X> list2 = f76992v9.get();
                    list2.clear();
                    SteppedArrayList steppedArrayList = new SteppedArrayList();
                    for (int i11 = 0; i11 < getResolution(); i11++) {
                        for (int i12 = 0; i12 < getResolution(); i12++) {
                            float f10 = 0.0f;
                            for (int i13 = 0; i13 < list.size(); i13++) {
                                C16061a c16061a = list.get(i13).f77214b;
                                float e10 = c16061a.e(i11, i12);
                                if (e10 < 0.0f) {
                                    e10 = 0.0f;
                                }
                                if (steppedArrayList.isEmpty()) {
                                    list2.add(new X(e10, c16061a));
                                } else {
                                    X x10 = (X) steppedArrayList.remove(0);
                                    x10.f77211a = e10;
                                    x10.f77212b = c16061a;
                                    list2.add(x10);
                                }
                                f10 += e10;
                            }
                            for (int i14 = 0; i14 < list2.size(); i14++) {
                                X x11 = list2.get(i14);
                                x11.f77211a /= f10;
                                if (i14 == 0 && f10 == 0.0f) {
                                    x11.f77211a = 1.0f;
                                }
                                if (x11.f77211a < 0.0f) {
                                    x11.f77211a = 0.0f;
                                }
                                x11.f77212b.h(i11, i12, x11.f77211a);
                            }
                            steppedArrayList.addAll(list2);
                            list2.clear();
                        }
                    }
                }
                synchronized (this.f77070f9) {
                    this.f77070f9.addAll(list);
                }
                applyLayers();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void normalizeLayers(int x10, int y10) {
        int i10;
        synchronized (this.layers) {
            List<Y> list = f76993w9.get();
            list.clear();
            synchronized (this.f77070f9) {
                for (int i11 = 0; i11 < this.layers.size(); i11++) {
                    try {
                        TerrainLayer terrainLayer = this.layers.get(i11);
                        C16061a layerDataFor = layerDataFor(terrainLayer);
                        if (!this.f77070f9.isEmpty()) {
                            Y remove = this.f77070f9.remove(0);
                            remove.f77213a = terrainLayer;
                            remove.f77214b = layerDataFor;
                            list.add(remove);
                        } else {
                            list.add(new Y(terrainLayer, layerDataFor));
                        }
                    } finally {
                    }
                }
            }
            if (!list.isEmpty()) {
                List<X> list2 = f76992v9.get();
                list2.clear();
                synchronized (this.f77071g9) {
                    float f10 = 0.0f;
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        try {
                            C16061a c16061a = list.get(i12).f77214b;
                            float e10 = c16061a.e(x10, y10);
                            if (e10 < 0.0f) {
                                e10 = 0.0f;
                            }
                            if (!this.f77071g9.isEmpty()) {
                                X remove2 = this.f77071g9.remove(0);
                                remove2.f77211a = e10;
                                remove2.f77212b = c16061a;
                                list2.add(remove2);
                            } else {
                                list2.add(new X(e10, c16061a));
                            }
                            f10 += e10;
                        } finally {
                        }
                    }
                    for (i10 = 0; i10 < list2.size(); i10++) {
                        X x11 = list2.get(i10);
                        x11.f77211a /= f10;
                        if (i10 == 0 && f10 == 0.0f) {
                            x11.f77211a = 1.0f;
                        }
                        if (x11.f77211a < 0.0f) {
                            x11.f77211a = 0.0f;
                        }
                        x11.f77212b.h(x10, y10, x11.f77211a);
                    }
                    this.f77071g9.addAll(list2);
                }
                list2.clear();
            }
            synchronized (this.f77070f9) {
                this.f77070f9.addAll(list);
            }
        }
    }

    private void normalizeResolutionState() {
        if (this.quality == null) {
            this.quality = EnumC16280g.Medium;
        }
        if (this.lodAggressiveness == null) {
            this.lodAggressiveness = EnumC16276c.High;
        }
        this.width = Nc.b.E(32.0f, this.width, 1024.0f);
        updateResolutionsAndLodLevels();
    }

    public void notifyTerrainModifiedLocalArea(float minLocalX, float minLocalZ, float maxLocalX, float maxLocalZ) {
        float f10 = this.f77063a9;
        float f11 = this.f77067c9;
        notifyTerrainModifiedWorldArea(Nc.b.X0(minLocalX, maxLocalX) + f10, Nc.b.X0(minLocalZ, maxLocalZ) + f11, f10 + Nc.b.S0(minLocalX, maxLocalX), f11 + Nc.b.S0(minLocalZ, maxLocalZ));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void notifyTerrainModifiedWorldArea(float minWorldX, float minWorldZ, float maxWorldX, float maxWorldZ) {
        List<Component> h10 = R8.f.h(InterfaceC15583c.class);
        if (h10 == null || h10.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < h10.size(); i10++) {
            try {
                Component component = h10.get(i10);
                if ((component instanceof InterfaceC15583c) && component.isHierarchyActive()) {
                    InterfaceC15583c interfaceC15583c = (InterfaceC15583c) component;
                    float terrainListenerWorldX = interfaceC15583c.getTerrainListenerWorldX();
                    float terrainListenerWorldZ = interfaceC15583c.getTerrainListenerWorldZ();
                    float S02 = Nc.b.S0(0.0f, interfaceC15583c.getTerrainListenerRadius());
                    if (terrainListenerWorldX + S02 >= minWorldX && terrainListenerWorldX - S02 <= maxWorldX && terrainListenerWorldZ + S02 >= minWorldZ && terrainListenerWorldZ - S02 <= maxWorldZ) {
                        interfaceC15583c.onTerrainModifiedNear(this);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void paintRockAsync(C16061a rockLayer, C16061a grassLayer, int xv, int yv, float rockIntensity) {
        if (getResolution() == getResolution()) {
            paintRockForXYInLayersResolutionAsync(rockLayer, grassLayer, rockIntensity, xv, yv);
            return;
        }
        if (getResolution() < getResolution()) {
            paintRockForXYInLayersResolutionAsync(rockLayer, grassLayer, rockIntensity, (int) ((xv / getResolution()) * getResolution()), (int) ((yv / getResolution()) * getResolution()));
        } else if (getResolution() > getResolution()) {
            int D10 = (int) Nc.b.D(getResolution() / getResolution());
            float resolution = xv / getResolution();
            float resolution2 = yv / getResolution();
            for (int i10 = 0; i10 < D10; i10++) {
                for (int i11 = 0; i11 < D10; i11++) {
                    paintRockForXYInLayersResolutionAsync(rockLayer, grassLayer, rockIntensity, ((int) (getResolution() * resolution)) + i10, ((int) (getResolution() * resolution2)) + i11);
                }
            }
        }
    }

    private void paintRockForXYInLayersResolutionAsync(C16061a rockLayer, C16061a grassLayer, float rockIntensity, int x10, int y10) {
        int i10 = 0;
        if (rockIntensity >= 1.0f) {
            rockLayer.h(x10, y10, 1.0f);
            while (i10 < this.layers.size()) {
                C16061a m10 = this.f77005F2.m(i10);
                if (m10 != rockLayer) {
                    m10.h(x10, y10, 0.0f);
                }
                i10++;
            }
            return;
        }
        if (rockIntensity <= 0.0f) {
            grassLayer.h(x10, y10, 1.0f);
            while (i10 < this.layers.size()) {
                C16061a m11 = this.f77005F2.m(i10);
                if (m11 != grassLayer) {
                    m11.h(x10, y10, 0.0f);
                }
                i10++;
            }
            return;
        }
        float I10 = Nc.b.I(rockIntensity);
        float f10 = I10;
        for (int i11 = 0; i11 < this.layers.size(); i11++) {
            C16061a m12 = this.f77005F2.m(i11);
            if (m12 != rockLayer) {
                float e10 = m12.e(x10, y10);
                f10 += Nc.b.I(e10 - (I10 * e10));
            }
        }
        for (int i12 = 0; i12 < this.layers.size(); i12++) {
            C16061a m13 = this.f77005F2.m(i12);
            if (m13 != rockLayer) {
                float e11 = m13.e(x10, y10);
                m13.h(x10, y10, Nc.b.I(e11 - (I10 * e11)) / f10);
            }
        }
        rockLayer.h(x10, y10, I10 / f10);
        float I11 = Nc.b.I(1.0f - rockIntensity);
        float f11 = I11;
        for (int i13 = 0; i13 < this.layers.size(); i13++) {
            C16061a m14 = this.f77005F2.m(i13);
            if (m14 != grassLayer) {
                float e12 = m14.e(x10, y10);
                f11 += Nc.b.I(e12 - (I11 * e12));
            }
        }
        while (i10 < this.layers.size()) {
            C16061a m15 = this.f77005F2.m(i10);
            if (m15 != grassLayer) {
                float e13 = m15.e(x10, y10);
                m15.h(x10, y10, Nc.b.I(e13 - (I11 * e13)) / f11);
            }
            i10++;
        }
        grassLayer.h(x10, y10, I11 / f11);
    }

    private void prepareLocalRenderStateQueue() {
        C15814d c15814d;
        C15814d c15814d2 = null;
        int i10 = 0;
        C15814d c15814d3 = null;
        while (i10 < 16) {
            do {
                c15814d = this.f77031M3.get();
                if (c15814d == null) {
                    break;
                }
            } while (!androidx.lifecycle.c.a(this.f77031M3, c15814d, c15814d.H()));
            if (c15814d == null) {
                break;
            }
            c15814d.i0(c15814d2);
            if (c15814d3 == null) {
                c15814d3 = c15814d;
            }
            i10++;
            c15814d2 = c15814d;
        }
        if (c15814d3 != null) {
            C15814d c15814d4 = this.f77088v4;
            if (c15814d4 == null) {
                this.f77079m4 = c15814d2;
            } else {
                c15814d4.i0(c15814d2);
            }
            this.f77088v4 = c15814d3;
        }
    }

    private void refreshChunkTilingIfNeeded() {
        if (this.f77029M1 > 0 && this.f77025L1 > 0) {
            this.f77040Q8 = false;
            return;
        }
        if (this.f77040Q8) {
            this.f77040Q8 = false;
            if (getResolution() > 1) {
                C16274a.b b10 = C16274a.b(getResolution(), getBestChunkResolutionForLod());
                this.f77029M1 = b10.f130771c;
                this.f77025L1 = b10.f130770b;
            }
        }
    }

    private void refreshLayerSnapshot() {
        synchronized (this.layers) {
            this.f77003F = (TerrainLayer[]) this.layers.toArray(f76984n9);
        }
    }

    public void regenLevelTable() {
        if (!C14165a.a()) {
            this.f77038P8.set(false);
            return;
        }
        f terrainMatrix = getTerrainMatrix();
        C16278e leveledTable = getLeveledTable();
        O9.b.d(new E(R8.f.h(InterfaceC15582b.class), leveledTable, leveledTable.g(), terrainMatrix));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0011, code lost:
    
        if (r6.f77030M2.isEmpty() == false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0019, code lost:
    
        if (r0 >= r6.f77030M2.size()) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x001b, code lost:
    
        r3 = r6.f77030M2.get(r0).b();
        r4 = Cc.c.f2503k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0029, code lost:
    
        monitor-enter(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002a, code lost:
    
        r6.f77075i3.removeChildShape(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x002f, code lost:
    
        monitor-exit(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0030, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0038, code lost:
    
        r0 = r6.f77043R2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x003a, code lost:
    
        monitor-enter(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x003b, code lost:
    
        r6.f77043R2.addAll(r6.f77030M2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0042, code lost:
    
        monitor-exit(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0043, code lost:
    
        r6.f77030M2.clear();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void removeFromPhysics() {
        int i10 = 0;
        this.f77032M8 = false;
        if (this.f77075i3 != null) {
            try {
                synchronized (this.f77030M2) {
                    try {
                    } finally {
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f77075i3 = null;
        }
        i9.c cVar = this.f77018H5;
        if (cVar != null) {
            cVar.n();
            this.f77018H5 = null;
        }
        invalidateBulletShapeChildrenCache();
    }

    private void requestAllChunkRenderStates() {
        for (C15814d c15814d : this.f77083q3) {
            c15814d.f0(this);
        }
    }

    private boolean runScheduledOps() {
        boolean z10;
        boolean z11;
        synchronized (this.f77052V1) {
            try {
                z10 = true;
                if (this.f77052V1.isEmpty()) {
                    z11 = false;
                } else {
                    this.layers.addAll(this.f77052V1);
                    this.f77052V1.clear();
                    z11 = true;
                }
            } finally {
            }
        }
        synchronized (this.f77065b2) {
            try {
                if (this.f77065b2.isEmpty()) {
                    z10 = z11;
                } else {
                    this.layers.removeAll(this.f77065b2);
                    normalizeAllLayers();
                    this.f77065b2.clear();
                }
            } finally {
            }
        }
        return z10;
    }

    private float scaleBlendBrushIntensity(float perFrameIntensity, float brushFrameMultiplier) {
        float f10 = this.maxHeight;
        if (f10 <= 0.0f) {
            return 0.0f;
        }
        return Nc.b.I(1.0f - Nc.b.c1(1.0f - Nc.b.I(perFrameIntensity / f10), brushFrameMultiplier)) * this.maxHeight;
    }

    public void scheduleRegenLevelTable() {
        this.f77036O8 = true;
        if (this.f77038P8.compareAndSet(false, true)) {
            this.f77036O8 = false;
            K8.a.I(new D());
        }
    }

    private void siftDownChunk(C15814d[] chunks, int root, int count) {
        C15814d c15814d = chunks[root];
        float G10 = c15814d.G(this);
        int i10 = (root << 1) + 1;
        while (i10 < count) {
            int i11 = i10 + 1;
            if (i11 < count && chunks[i11].G(this) > chunks[i10].G(this)) {
                i10 = i11;
            }
            if (chunks[i10].G(this) <= G10) {
                break;
            }
            chunks[root] = chunks[i10];
            int i12 = i10;
            i10 = (i10 << 1) + 1;
            root = i12;
        }
        chunks[root] = c15814d;
    }

    private void unbindLodReferenceTransformListener() {
        Transform transform;
        GameObject gameObject = this.f77044R8;
        if (gameObject != null && (transform = gameObject.transform) != null) {
            transform.O2(this.f77069e9);
        }
        this.f77044R8 = null;
        if (this.f77056W8) {
            this.f77056W8 = false;
            this.f77006F3++;
        }
    }

    private void updateBrushPreviewLowTask() {
        a aVar;
        C12874b c12874b = this.f77041R;
        if (c12874b != null) {
            if (!this.f77045S || (aVar = this.f77047T) == null) {
                c12874b.g(this);
            } else {
                c12874b.k(this, aVar, this.f77049U, this.f77051V, this.f77055W, this.f77057X, this.f77059Y, this.f77061Z);
            }
        }
    }

    private void updateChunksCount(int chunkTextureResolution, int maxChunkResolution) {
        if (!this.f77078m3.isEmpty() && this.f77000D5 == getResolution() && this.f77008F5 == maxChunkResolution) {
            return;
        }
        this.f77008F5 = maxChunkResolution;
        this.f77000D5 = getResolution();
        for (int i10 = 0; i10 < this.f77078m3.size(); i10++) {
            this.f77078m3.get(i10).r(this);
        }
        this.f77078m3.clear();
        int resolution = getResolution() / maxChunkResolution;
        for (int i11 = 0; i11 < resolution; i11++) {
            for (int i12 = 0; i12 < resolution; i12++) {
                C15814d c15814d = new C15814d(i11 * maxChunkResolution, i12 * maxChunkResolution, maxChunkResolution, i11 * chunkTextureResolution, i12 * chunkTextureResolution);
                c15814d.i(this);
                this.f77078m3.add(c15814d);
                c15814d.f0(this);
            }
        }
        this.f77083q3 = (C15814d[]) this.f77078m3.toArray(f76983m9);
        this.f77006F3++;
    }

    private void updateLodReferenceBinding() {
        Transform transform;
        Camera mainCameraAllowEditor = Camera.mainCameraAllowEditor();
        float renderDistance = mainCameraAllowEditor != null ? mainCameraAllowEditor.getRenderDistance() : Float.POSITIVE_INFINITY;
        boolean z10 = mainCameraAllowEditor != null;
        if (this.f77060Y8 != z10 || Float.compare(this.f77058X8, renderDistance) != 0) {
            this.f77058X8 = renderDistance;
            this.f77060Y8 = z10;
            this.f77006F3++;
        }
        GameObject gameObject = mainCameraAllowEditor != null ? mainCameraAllowEditor.f79250n : null;
        if (this.f77044R8 == gameObject) {
            return;
        }
        unbindLodReferenceTransformListener();
        this.f77044R8 = gameObject;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            this.f77056W8 = false;
        } else {
            transform.u(this.f77069e9);
            applyLodReferenceTransform(this.f77044R8.transform.o0());
        }
    }

    private void updatePlanes(int maxChunkResolution) {
        if (this.f77010F7 != getResolution()) {
            this.f77010F7 = getResolution();
            for (int i10 = 0; i10 < chunksCount(); i10++) {
                chunkAt(i10).t();
            }
        }
    }

    private void updateResolutionsAndLodLevels() {
        int D10 = (int) Nc.b.D(this.quality.c() * this.width);
        int b10 = this.lodAggressiveness.b();
        boolean z10 = (D10 == getResolution() && b10 == this.f77014H1) ? false : true;
        this.f77004F1 = D10;
        this.f77014H1 = b10;
        if (z10) {
            markChunkTilingDirty();
            detachAll();
        }
    }

    private int updateResolutionsCache() {
        this.f77027L8.f130784a = getResolution();
        this.f77027L8.f130785b = getResolution();
        int calculateChunkLayerResolution = calculateChunkLayerResolution();
        this.f77027L8.f130786c = calculateChunkLayerResolution;
        return calculateChunkLayerResolution;
    }

    public void addCollider(C15811a chunkCollider) {
        synchronized (this.f77043R2) {
            this.f77043R2.add(chunkCollider);
        }
    }

    @Override
    public void addCollision(C13813a collision) {
        this.f77009F6.a(collision);
    }

    public void addLayer(TerrainLayer layer) {
        if (!canAddLayer()) {
            throw new RuntimeException("Max textures reached");
        }
        synchronized (this.f77052V1) {
            this.f77052V1.add(layer);
        }
    }

    public void applyBrushPress() {
        applyBrushPress(null);
    }

    public void applyHeight() {
        applyHeightmap();
    }

    public void applyHeightmap() {
        synchronized (this.f77078m3) {
            for (int i10 = 0; i10 < this.f77078m3.size(); i10++) {
                try {
                    this.f77078m3.get(i10).i(this);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            float f10 = this.width;
            notifyTerrainModifiedLocalArea(0.0f, 0.0f, f10, f10);
            this.f77015H2 = true;
        }
    }

    public void applyLayer(TerrainLayer layer) {
        for (int i10 = 0; i10 < this.f77078m3.size(); i10++) {
            this.f77078m3.get(i10).j(layer);
        }
        this.f77015H2 = true;
    }

    public void applyLayers() {
        for (int i10 = 0; i10 < this.f77078m3.size(); i10++) {
            this.f77078m3.get(i10).k();
        }
        this.f77015H2 = true;
    }

    public void applyLevel(float intensity, float levelHeight, float size, Vector2 worldLocation, a brush, boolean inputAutoPaint, Runnable afterFinish) {
        if (this.f77005F2 == null) {
            if (afterFinish != null) {
                afterFinish.run();
            }
        } else {
            if (size <= 0.0f) {
                if (afterFinish != null) {
                    afterFinish.run();
                    return;
                }
                return;
            }
            C16278e table = getTable();
            if (table != null) {
                O9.b.d(new I(inputAutoPaint, worldLocation, this.f77063a9, this.f77067c9, size, levelHeight, intensity, table, brush, afterFinish));
            } else if (afterFinish != null) {
                afterFinish.run();
            }
        }
    }

    public void applyPaint(float inputIntensity, float size, Vector2 worldLocation, a brush, int layerIndex, Runnable afterFinish) {
        C15975a c15975a = this.f77005F2;
        if (c15975a == null) {
            if (afterFinish != null) {
                afterFinish.run();
                return;
            }
            return;
        }
        if (size <= 0.0f) {
            if (afterFinish != null) {
                afterFinish.run();
                return;
            }
            return;
        }
        C16061a m10 = c15975a.m(layerIndex);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.layers.size(); i10++) {
            C16061a m11 = this.f77005F2.m(i10);
            if (m11 != null && m11 != m10) {
                steppedArrayList.add(m11);
            }
        }
        O9.b.d(new J(inputIntensity, worldLocation, this.f77063a9, this.f77067c9, size, m10, brush, steppedArrayList, afterFinish));
    }

    public void applyRaiseLower(float intensity, float size, Vector2 worldLocation, a brush, boolean inputAutoPaint, Runnable afterFinish) {
        if (this.f77005F2 == null) {
            if (afterFinish != null) {
                afterFinish.run();
            }
        } else {
            if (size <= 0.0f) {
                if (afterFinish != null) {
                    afterFinish.run();
                    return;
                }
                return;
            }
            C16278e table = getTable();
            if (table != null) {
                O9.b.d(new F(inputAutoPaint, worldLocation, this.f77063a9, this.f77067c9, size, intensity, table, brush, afterFinish));
            } else if (afterFinish != null) {
                afterFinish.run();
            }
        }
    }

    public void applySmooth(float intensity, float size, Vector2 worldLocation, a brush, boolean inputAutoPaint, Runnable afterFinish) {
        if (this.f77005F2 == null) {
            if (afterFinish != null) {
                afterFinish.run();
            }
        } else {
            if (size <= 0.0f) {
                if (afterFinish != null) {
                    afterFinish.run();
                    return;
                }
                return;
            }
            C16278e table = getTable();
            if (table != null) {
                O9.b.d(new H(inputAutoPaint, worldLocation, this.f77063a9, this.f77067c9, size, intensity, table, brush, afterFinish));
            } else if (afterFinish != null) {
                afterFinish.run();
            }
        }
    }

    @Override
    public void beforeCollisionEvents() {
        this.f77009F6.j(this.f79250n);
    }

    public void beginProceduralBrushStroke() {
        if (this.f76996D0) {
            return;
        }
        this.f76996D0 = true;
        long j10 = this.f77073i1;
        this.f77073i1 = j10 + 1;
        this.f77064b1 = j10;
        if (j10 <= 0) {
            this.f77073i1 = 2L;
            this.f77064b1 = 1L;
        }
        Vector2 vector2 = this.f77076m1;
        Vector2 vector22 = this.f77013H;
        vector2.w0(vector22.f79838x, vector22.f79839y);
        this.f77081q1.w0(1.0f, 0.0f);
    }

    public C15814d chunkAt(int idx) {
        return this.f77078m3.get(idx);
    }

    public int chunksCount() {
        return this.f77078m3.size();
    }

    @Override
    public int countAsync() {
        return 4;
    }

    @Override
    public void disabledUpdatePhysics() {
        i9.c cVar = this.f77018H5;
        if (cVar != null) {
            cVar.d(this.f79250n);
        }
    }

    public void drawLayerIconTo(ImageView imageView, TerrainLayer layer) {
        Context t10 = N7.c.t();
        TerrainLayer.a aVar = layer.source;
        if (aVar != TerrainLayer.a.Textures) {
            if (aVar == TerrainLayer.a.PBRPreset) {
                Vc.e.K(imageView, g.z1(layer.selectedMatcap), t10, new Vc.c());
                return;
            }
            return;
        }
        String f10 = layer.f();
        if (f10 == null || f10.isEmpty()) {
            Vc.e.V(imageView, com.itsmagic.engine2.R.drawable.fullwhite, t10);
            return;
        }
        String str = Tc.b.O(f10) + ".texture";
        if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(t10) + "/" + str).exists()) {
            Vc.e.Q(imageView, com.itsmagic.engine.Core.Components.ProjectController.a.S(t10) + "/" + str, t10, com.itsmagic.engine2.R.drawable.empty_image, i.f59186b);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        com.itsmagic.engine.Core.Components.ProjectController.a aVar2 = W7.b.f27302b;
        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(t10));
        sb2.append("/");
        sb2.append(f10);
        Vc.e.Q(imageView, sb2.toString(), t10, com.itsmagic.engine2.R.drawable.empty_image, i.f59186b);
    }

    @Override
    public boolean enableCollisionEvents() {
        return this.f77001D6;
    }

    public void endProceduralBrushStroke() {
        this.f76996D0 = false;
    }

    public void enqueueRenderState(C15814d chunk) {
        C15814d c15814d;
        if (chunk == null) {
            return;
        }
        do {
            c15814d = this.f77031M3.get();
            chunk.i0(c15814d);
        } while (!androidx.lifecycle.c.a(this.f77031M3, c15814d, chunk));
    }

    @Override
    public Collider findColliderFromHash(int hash) {
        return null;
    }

    @Override
    public C13813a findCollision(GameObject other) {
        return this.f77009F6.f(other);
    }

    public float getBrushIntensityMaxSliderValue() {
        return 1.0f;
    }

    public float getBrushIntensityMinSliderValue() {
        return 0.0f;
    }

    public float getBrushSizeMaxSliderValue() {
        return this.width / 4.0f;
    }

    public float getBrushSizeMinSliderValue() {
        return this.width / getResolution();
    }

    @Override
    public CompoundCollisionShape getBulletShape() {
        i9.c cVar = this.f77018H5;
        if (cVar != null) {
            return (CompoundCollisionShape) cVar.g();
        }
        return null;
    }

    @Override
    public ChildCollisionShape[] getBulletShapeChildren() {
        return getBulletShapeChildrenCache().b(getBulletShape());
    }

    public Vector3 getCachedGlobalPosition(Vector3 out) {
        return out.set(this.f77062Z8);
    }

    public float getCachedGlobalPositionX() {
        return this.f77063a9;
    }

    public float getCachedGlobalPositionY() {
        return this.f77066b9;
    }

    public float getCachedGlobalPositionZ() {
        return this.f77067c9;
    }

    public C15814d getChunkOf(int x10, int z10) {
        int chunksCount = chunksCount();
        for (int i10 = 0; i10 < chunksCount; i10++) {
            C15814d chunkAt = chunkAt(i10);
            if (chunkAt.Q(x10, z10)) {
                return chunkAt;
            }
        }
        return null;
    }

    public C15814d getChunkOfLayer(int x10, int z10) {
        int chunksCount = chunksCount();
        for (int i10 = 0; i10 < chunksCount; i10++) {
            C15814d chunkAt = chunkAt(i10);
            if (chunkAt.R(x10, z10, this.f77027L8)) {
                return chunkAt;
            }
        }
        return null;
    }

    public void getCustomTerrainLayerSelector(List<C5.b> entries, V selectorListener) {
        entries.add(new C5.b(new A(selectorListener), com.itsmagic.engine2.R.layout.inspector_component_terrain_layers, (Object) null));
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        Ac.b bVar = this.dataFile;
        if (bVar != null && !bVar.g0()) {
            c2632k.f9114a.add(this.dataFile.toString());
        }
        synchronized (this.layers) {
            for (int i10 = 0; i10 < this.layers.size(); i10++) {
                try {
                    this.layers.get(i10).g(c2632k);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return c2632k;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.TERRAIN);
    }

    @Override
    public GameObject getGameObjectForPhysics() {
        return this.f79250n;
    }

    public float getHeight(int x10, int y10) {
        if (x10 >= getResolution()) {
            throw new RuntimeException("x (" + x10 + ") can't be >= terrain resolution (" + getResolution() + ")");
        }
        if (y10 >= getResolution()) {
            throw new RuntimeException("y (" + x10 + ") can't be >= terrain resolution (" + getResolution() + ")");
        }
        if (x10 < 0) {
            throw new RuntimeException("x (" + x10 + ") can't be < 0");
        }
        if (y10 >= 0) {
            C16278e table = getTable();
            if (table != null) {
                return table.f(x10, y10);
            }
            return 0.0f;
        }
        throw new RuntimeException("y (" + x10 + ") can't be < 0");
    }

    @Override
    public int getIconResource() {
        return com.itsmagic.engine2.R.drawable.terrain_up_v2;
    }

    @Override
    public int getInspectorColor(Context context) {
        return com.itsmagic.engine2.R.color.inspector_terrain;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        C15975a c15975a = this.f77005F2;
        if (c15975a != null) {
            if (c15975a == null) {
                this.tab = Z.Data;
            }
            linkedList.add(new C5.b(new R(context), com.itsmagic.engine2.R.layout.inspector_component_terrain_tabs, (Object) null));
            Z z10 = this.tab;
            if (z10 == Z.Layers) {
                inflateLayersEntries(context, linkedList);
            } else if (z10 == Z.Data) {
                linkedList.add(new C5.b(new S(), Lang.l(Lang.T.TERRAIN_DATA), b.a.InputFile, ".tdata"));
                linkedList.add(F5.c.i("Quality", EnumC16280g.class, this.quality, new T()));
                linkedList.add(F5.c.e("Dimensions", new U()));
                linkedList.add(F5.c.e("Physics", new C12781a(context)));
                linkedList.add(F5.c.e(LOD.f73462H, new C12782b()));
            } else if (z10 == Z.HeightMap) {
                C12783c c12783c = new C12783c();
                String l10 = Lang.l(Lang.T.IMPORT_HEIGHTMAP_HEIGHT);
                b.a aVar = b.a.SLFloat;
                C5.b bVar = new C5.b(c12783c, l10, aVar);
                GameObject gameObject = this.f79250n;
                com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
                linkedList.add(bVar.d(gameObject, this, "importHeightMapHeight", cVar));
                linkedList.add(F5.c.c(Lang.l(Lang.T.IMPORT_HEIGHTMAP), new C12784d(context)));
                linkedList.add(new C5.b(new C12785e(), "Rebase height", aVar).d(this.f79250n, this, "rebaseTo", cVar));
                linkedList.add(F5.c.c(Lang.l(Lang.T.REBASE), new C12786f()));
            }
        } else {
            linkedList.add(new C5.b(new C12787g(), Lang.l(Lang.T.TERRAIN_DATA), b.a.InputFile, ".tdata"));
            linkedList.add(new C5.b(Lang.l(Lang.T.MISSING_TERRAIN_DATA_FILE), 12, com.itsmagic.engine2.R.color.theme_error));
        }
        return linkedList;
    }

    public float getLayerIntensity(int x10, int y10, int layerIndex) {
        if (x10 >= getResolution()) {
            throw new RuntimeException("x (" + x10 + ") can't be >= terrain layers resolution (" + getResolution() + ")");
        }
        if (y10 >= getResolution()) {
            throw new RuntimeException("y (" + x10 + ") can't be >= terrain layers resolution (" + getResolution() + ")");
        }
        if (x10 < 0) {
            throw new RuntimeException("x (" + x10 + ") can't be < 0");
        }
        if (y10 < 0) {
            throw new RuntimeException("y (" + x10 + ") can't be < 0");
        }
        if (layerIndex >= 0 && layerIndex < layersCount()) {
            return this.f77005F2.m(layerIndex).e(x10, y10);
        }
        throw new RuntimeException("Invalid layer index:" + layerIndex);
    }

    public int getLayerStructureRevision() {
        return this.f77086v2;
    }

    public float getLevelHeightMaxSliderValue() {
        return this.maxHeight;
    }

    public float getLevelHeightMinSliderValue() {
        return 0.0f;
    }

    public C16278e getLeveledTable() {
        C15975a c15975a;
        if (!C14165a.a() || (c15975a = this.f77005F2) == null) {
            return null;
        }
        c15975a.s(getResolution());
        return this.f77005F2.k();
    }

    public EnumC16276c getLodAggressiveness() {
        return this.lodAggressiveness;
    }

    @InterfaceC15237a
    public int getLodLevels() {
        return this.f77014H1;
    }

    public Vector3 getLodReferencePosition() {
        return this.f77046S8;
    }

    public float getLodReferenceX() {
        return this.f77048T8;
    }

    public float getLodReferenceY() {
        return this.f77050U8;
    }

    public float getLodReferenceZ() {
        return this.f77054V8;
    }

    public float getLodRenderDistance() {
        return this.f77058X8;
    }

    public float getMaxHeight() {
        return this.maxHeight;
    }

    public float getPaintBrushIntensityMaxSliderValue() {
        return 1.0f;
    }

    public float getPaintBrushIntensityMinSliderValue() {
        return 0.0f;
    }

    public float getPaintBrushSizeMaxSliderValue() {
        return this.width / 4.0f;
    }

    public float getPaintBrushSizeMinSliderValue() {
        return this.width / getResolution();
    }

    public AbstractC13004a getProceduralBrush() {
        if (this.f77033N == null) {
            this.f77033N = EnumC13007d.Mountain;
        }
        AbstractC13004a abstractC13004a = this.f77080q0;
        if (abstractC13004a == null || abstractC13004a.c() != this.f77033N) {
            this.f77080q0 = C13005b.a(this.f77033N);
        }
        return this.f77080q0;
    }

    public Vector2 getProceduralBrushDirection(Vector2 out) {
        if (out == null) {
            out = new Vector2();
        }
        Vector2 vector2 = this.f77081q1;
        out.w0(vector2.f79838x, vector2.f79839y);
        return out;
    }

    public long getProceduralBrushStrokeSeed() {
        if (this.f77064b1 <= 0) {
            this.f77064b1 = 1L;
        }
        return this.f77064b1;
    }

    public com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a getProceduralPaint() {
        if (this.f77035O == null) {
            this.f77035O = f4.c.Cliff;
        }
        com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a aVar = this.f77084v0;
        if (aVar == null || aVar.k() != this.f77035O) {
            this.f77084v0 = C13185a.a(this.f77035O);
        }
        return this.f77084v0;
    }

    public EnumC16280g getQuality() {
        return this.quality;
    }

    @Override
    public float getRenderBounding() {
        return this.width;
    }

    @Override
    public Vector3 getRenderCenter() {
        Vector3 vector3 = new Vector3();
        float f10 = this.width;
        vector3.set(f10 / 2.0f, this.maxHeight / 4.0f, f10 / 2.0f);
        return vector3;
    }

    public float[] getRenderMatrix() {
        return this.f77023K8;
    }

    public int getRenderedTrianglesCount() {
        ChunkSurface z10;
        int chunksCount = chunksCount();
        int i10 = 0;
        for (int i11 = 0; i11 < chunksCount; i11++) {
            C15814d chunkAt = chunkAt(i11);
            if (chunkAt != null && (z10 = chunkAt.z()) != null) {
                i10 += z10.v();
            }
        }
        return i10;
    }

    public int getRenderedVerticesCount() {
        ChunkSurface z10;
        int chunksCount = chunksCount();
        int i10 = 0;
        for (int i11 = 0; i11 < chunksCount; i11++) {
            C15814d chunkAt = chunkAt(i11);
            if (chunkAt != null && (z10 = chunkAt.z()) != null) {
                i10 += z10.y();
            }
        }
        return i10;
    }

    public int getResolution() {
        return this.f77004F1;
    }

    public a getSelectedBrush() {
        a aVar = this.f77021J;
        if (aVar == null || aVar.f16550g != this.selectedBrushID) {
            int i10 = this.selectedBrushID;
            O8.b bVar = K8.a.f10987r;
            if (i10 >= bVar.b()) {
                this.selectedBrushID = bVar.b();
            }
            if (this.selectedBrushID < 0) {
                this.selectedBrushID = 0;
            }
            if (bVar.b() > 0) {
                this.f77021J = bVar.a(this.selectedBrushID);
            }
        }
        return this.f77021J;
    }

    public TerrainLayer getSelectedLayer() {
        if (this.f76997D2 < 0) {
            this.f76997D2 = 0;
        }
        if (this.f76997D2 < this.layers.size()) {
            return this.layers.get(this.f76997D2);
        }
        if (this.layers.size() <= 0) {
            return null;
        }
        int size = this.layers.size() - 1;
        this.f76997D2 = size;
        return this.layers.get(size);
    }

    public synchronized C16282i getSurfaceTopologyCache() {
        try {
            if (this.f77017H4 == null) {
                this.f77017H4 = new C16282i();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f77017H4;
    }

    public C16278e getTable() {
        C15975a c15975a = this.f77005F2;
        if (c15975a == null) {
            return null;
        }
        if (c15975a.q(getResolution())) {
            this.f77015H2 = true;
        }
        return this.f77005F2.j();
    }

    public void getTerrainLayerSelector(List<C5.b> entries, W selectorListener) {
        entries.add(new C5.b(new C12806z(selectorListener), com.itsmagic.engine2.R.layout.inspector_component_terrain_layers, (Object) null));
    }

    public f getTerrainMatrix() {
        return this.f77034N8;
    }

    @Override
    public String getTitle() {
        return f76979i9;
    }

    public int getTotalChunksCount() {
        return this.f77029M1;
    }

    public float getWidth() {
        return this.width;
    }

    public float getWorldY(float x10, float z10) {
        if (this.f77005F2 != null) {
            Vector3 vector3 = f76994x9.get();
            vector3.set(x10, 0.0f, z10);
            return getWorldY(vector3);
        }
        throw new RuntimeException("Terrian data not loaded");
    }

    public boolean hasLodReferencePosition() {
        return this.f77056W8;
    }

    public boolean hasLodRenderDistance() {
        return this.f77060Y8;
    }

    @Override
    public boolean hasRenderBounding() {
        return true;
    }

    public boolean hasTable() {
        return this.f77005F2 != null;
    }

    @Override
    public int iconPriority() {
        return 3;
    }

    @Override
    public void invalidateBulletShapeChildrenCache() {
        getBulletShapeChildrenCache().c();
    }

    @Override
    public boolean isActiveForPhysics() {
        return isHierarchyActive();
    }

    public boolean isDataLoaded() {
        return this.f77005F2 != null;
    }

    public boolean isInsideBrush(Vector3 location) {
        Vector2 o02 = this.f77013H.o0(this.brushSize / 2.0f, new Vector2());
        Vector2 h10 = this.f77013H.h(this.brushSize / 2.0f, new Vector2());
        return o02.f79838x >= location.getX() && h10.f79838x <= location.getX() && o02.f79839y >= location.getY() && h10.f79839y <= location.getY();
    }

    public boolean isInsideTerrain(float x10, float z10) {
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        vector3.set(x10, 0.0f, z10);
        boolean isInsideTerrain = isInsideTerrain(vector3);
        JP.release(vector3);
        return isInsideTerrain;
    }

    public boolean isLower() {
        return this.f77024L;
    }

    public TerrainLayer layerAt(int i10) {
        TerrainLayer terrainLayer;
        synchronized (this.layers) {
            terrainLayer = this.layers.get(i10);
        }
        return terrainLayer;
    }

    public C16061a layerDataFor(TerrainLayer layer) {
        C15975a c15975a = this.f77005F2;
        if (c15975a != null) {
            return c15975a.n(layer);
        }
        return null;
    }

    public int layersCount() {
        int size;
        synchronized (this.layers) {
            size = this.layers.size();
        }
        return size;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        normalizeResolutionState();
        listener.d(0.0f);
        loadScheduled();
        listener.d(1.0f);
        listener.e();
        if (this.f77005F2 != null) {
            C16274a.b b10 = C16274a.b(getResolution(), getBestChunkResolutionForLod());
            this.f77029M1 = b10.f130771c;
            this.f77025L1 = b10.f130770b;
            int updateResolutionsCache = updateResolutionsCache();
            float calculateChunkWidth = calculateChunkWidth();
            listener.d(0.0f);
            updatePlanes(this.f77025L1);
            listener.d(1.0f);
            listener.e();
            listener.d(0.0f);
            updateChunksCount(updateResolutionsCache, this.f77025L1);
            listener.d(1.0f);
            listener.e();
            listener.d(0.0f);
            for (int i10 = 0; i10 < this.f77078m3.size(); i10++) {
                this.f77078m3.get(i10).W(this, this.f77027L8, this.width, calculateChunkWidth);
            }
            listener.d(1.0f);
            listener.e();
        }
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        boolean z10;
        int i10;
        super.lowTaskUpdate(gameObject, isEditor);
        loadScheduled();
        if (this.f77077m2.getAndSet(false)) {
            requestAllChunkRenderStates();
        }
        if (this.f77005F2 == null) {
            updateBrushPreviewLowTask();
            return;
        }
        boolean runScheduledOps = runScheduledOps();
        synchronized (this.layers) {
            try {
                if (this.f77005F2.r(this.layers, getResolution())) {
                    this.f77015H2 = true;
                    runScheduledOps = true;
                }
                z10 = false;
                i10 = 1;
                for (int i11 = 0; i11 < this.layers.size(); i11++) {
                    TerrainLayer terrainLayer = this.layers.get(i11);
                    i10 = (((i10 * 31) + System.identityHashCode(terrainLayer)) * 31) + terrainLayer.p();
                    if (terrainLayer.y()) {
                        z10 = true;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            this.f77074i2.set(true);
        }
        if (runScheduledOps) {
            this.f77086v2++;
            refreshLayerSnapshot();
            this.f77074i2.set(true);
        }
        if (runScheduledOps || this.f77082q2 != i10) {
            this.f77082q2 = i10;
            requestAllChunkRenderStates();
        }
        refreshChunkTilingIfNeeded();
        int updateResolutionsCache = updateResolutionsCache();
        float calculateChunkWidth = calculateChunkWidth();
        updatePlanes(this.f77025L1);
        updateChunksCount(updateResolutionsCache, this.f77025L1);
        updateBrushPreviewLowTask();
        for (C15814d c15814d : getChunksSortedByLodDistance()) {
            c15814d.X(this, this.f77027L8, this.width, calculateChunkWidth);
        }
    }

    @Override
    public void mousePick(C3595c ray, MousePicker.k listener) {
        GizmoObject gizmoObject;
        Transform transform = this.f79250n.transform;
        MousePicker.g b10 = listener.b();
        MousePicker.h config = listener.getConfig();
        Vertex vertex = b10.f71444d;
        boolean z10 = config.f71445a;
        if (z10) {
            gizmoObject = new GizmoObject(vertex.x2());
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            Quaternion quaternion = (Quaternion) JP.acquire(Quaternion.class);
            transform.u0(vector3);
            gizmoObject.setPosition(vector3.toJAVARuntime());
            transform.C0(quaternion);
            gizmoObject.setRotation(quaternion.N0());
            transform.K0(vector3);
            gizmoObject.setScale(vector3.toJAVARuntime());
            JP.release(vector3);
            JP.release(quaternion);
            gizmoObject.setColor(new Color(Random.range(0.0f, 0.9f), 0.0f, Random.range(0.0f, 0.1f)));
        } else {
            gizmoObject = null;
        }
        C3593a traceRay = traceRay(ray.h(), ray.e(), true);
        if (traceRay != null) {
            listener.c(new MousePicker.j(traceRay, gizmoObject, this));
        }
        if (z10) {
            MousePicker.l lVar = new MousePicker.l(gizmoObject, new O());
            listener.a(lVar);
            K8.a.J(lVar);
        }
    }

    public Point2 nearestLayerVerticeAt(Vector3 worldCoord) {
        JP.InnerJP jPForThread = JP.getJPForThread();
        Vector3 vector3 = (Vector3) jPForThread.acquire(Vector3.class);
        Vector3 vector32 = (Vector3) jPForThread.acquire(Vector3.class);
        Vector3 sub = worldCoord.sub(vector3.set(this.f77062Z8), vector32);
        sub.divLocal(this.width);
        int x10 = (int) (sub.getX() * (getResolution() - 1));
        int z10 = (int) (sub.getZ() * (getResolution() - 1));
        int F10 = Nc.b.F(0, x10, getResolution() - 1);
        int F11 = Nc.b.F(0, z10, getResolution() - 1);
        JP.release(vector3);
        JP.release(vector32);
        Point2 point2 = (Point2) jPForThread.acquire(Point2.class);
        point2.set(F10, F11);
        return point2;
    }

    public Point2 nearestVerticeAt(Vector3 worldCoord) {
        JP.InnerJP jPForThread = JP.getJPForThread();
        Vector3 vector3 = (Vector3) jPForThread.acquire(Vector3.class);
        Vector3 vector32 = (Vector3) jPForThread.acquire(Vector3.class);
        Vector3 sub = worldCoord.sub(vector3.set(this.f77062Z8), vector32);
        sub.divLocal(this.width);
        int x10 = (int) (sub.getX() * (getResolution() - 1));
        int z10 = (int) (sub.getZ() * (getResolution() - 1));
        int F10 = Nc.b.F(0, x10, getResolution() - 1);
        int F11 = Nc.b.F(0, z10, getResolution() - 1);
        JP.release(vector3);
        JP.release(vector32);
        Point2 point2 = (Point2) jPForThread.acquire(Point2.class);
        point2.set(F10, F11);
        return point2;
    }

    public void notifyColliderChanged() {
        this.f77032M8 = true;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        GameObject gameObject = this.f79250n;
        if (gameObject != null) {
            gameObject.transform.u(this.f77068d9);
            applyTerrainTransform(this.f79250n.transform.o0());
        }
        refreshLayerSnapshot();
        normalizeResolutionState();
    }

    @Override
    public void onDeserialized() {
        super.onDeserialized();
        if (this.tab == null) {
            this.tab = Z.Layers;
        }
        normalizeResolutionState();
    }

    @Override
    public void onDetach() {
        GameObject gameObject = this.f79250n;
        if (gameObject != null) {
            gameObject.transform.O2(this.f77068d9);
        }
        unbindLodReferenceTransformListener();
        detachAll();
        C12874b c12874b = this.f77041R;
        if (c12874b != null) {
            c12874b.c(this);
            this.f77041R = null;
        }
        super.onDetach();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (enabled) {
            requestAllChunkRenderStates();
        } else {
            unbindLodReferenceTransformListener();
            detachRuntimeState();
        }
    }

    @Override
    public void onPhysicsGetTransformations() {
        this.f77009F6.h(this.f79250n);
    }

    public void onProceduralBrushApplied(float minLocalX, float minLocalZ, float maxLocalX, float maxLocalZ) {
        this.f77015H2 = true;
        notifyTerrainModifiedLocalArea(minLocalX, minLocalZ, maxLocalX, maxLocalZ);
    }

    public void onProceduralPaintApplied(float minLocalX, float minLocalZ, float maxLocalX, float maxLocalZ) {
        this.f77015H2 = true;
        notifyTerrainModifiedLocalArea(minLocalX, minLocalZ, maxLocalX, maxLocalZ);
    }

    /* JADX WARN: Finally extract failed */
    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        p6.g L12 = p6.d.E1() ? p6.d.L1("Terrain - component preUpdate") : null;
        try {
            super.preUpdate(gameObject, isEditor);
            p6.d.J1(L12);
            L12 = p6.d.E1() ? p6.d.L1("Terrain - LOD binding") : null;
            try {
                updateLodReferenceBinding();
                p6.d.J1(L12);
                L12 = p6.d.E1() ? p6.d.L1("Terrain - render commits") : null;
                try {
                    this.f76999D4.c();
                    prepareLocalRenderStateQueue();
                    float calculateChunkWidth = calculateChunkWidth();
                    int i10 = 0;
                    while (true) {
                        C15814d c15814d = this.f77079m4;
                        if (c15814d == null || i10 >= 8) {
                            break;
                        }
                        C15814d H10 = c15814d.H();
                        this.f77079m4 = H10;
                        if (H10 == null) {
                            this.f77088v4 = null;
                        }
                        c15814d.i0(null);
                        c15814d.b0();
                        if (c15814d.m(this, this.f77027L8, this.width, calculateChunkWidth, this.f76999D4)) {
                            c15814d.f0(this);
                        }
                        i10++;
                    }
                    p6.d.J1(L12);
                    L12 = p6.d.E1() ? p6.d.L1("Terrain - visibility batch") : null;
                    try {
                        this.f76999D4.b(this.f77007F4);
                        p6.d.J1(L12);
                        L12 = p6.d.E1() ? p6.d.L1("Terrain - layer resources") : null;
                        try {
                            if (this.f77074i2.getAndSet(false)) {
                                boolean z10 = false;
                                for (TerrainLayer terrainLayer : this.f77003F) {
                                    if (terrainLayer.y()) {
                                        z10 |= terrainLayer.Q(this);
                                    }
                                }
                                if (z10) {
                                    this.f77077m2.set(true);
                                }
                            }
                            p6.d.J1(L12);
                            L12 = p6.d.E1() ? p6.d.L1("Terrain - brush preview") : null;
                            try {
                                boolean z11 = this.f77028M == a0.ProceduralBrush;
                                a proceduralBrushPreviewBrush = z11 ? getProceduralBrushPreviewBrush() : getSelectedBrush();
                                this.f77012G = false;
                                if ((proceduralBrushPreviewBrush != null || z11) && gameObject.Z0() && this.f77022K) {
                                    this.f77012G = true;
                                    if (proceduralBrushPreviewBrush != null && this.f77041R == null) {
                                        this.f77041R = new C12874b();
                                    }
                                    if (proceduralBrushPreviewBrush != null) {
                                        this.f77045S = true;
                                        this.f77047T = proceduralBrushPreviewBrush;
                                        Vector2 vector2 = this.f77049U;
                                        Vector2 vector22 = this.f77013H;
                                        vector2.w0(vector22.f79838x, vector22.f79839y);
                                        this.f77051V = this.brushSize;
                                        this.f77055W = this.brushIntensity;
                                        this.f77057X = this.f77085v1;
                                        this.f77059Y = this.f77028M;
                                        this.f77061Z = isLower();
                                    } else {
                                        this.f77045S = false;
                                        this.f77047T = null;
                                        C12874b c12874b = this.f77041R;
                                        if (c12874b != null) {
                                            c12874b.b();
                                            this.f77041R.g(this);
                                        }
                                    }
                                } else {
                                    this.f77045S = false;
                                    this.f77047T = null;
                                    C12874b c12874b2 = this.f77041R;
                                    if (c12874b2 != null) {
                                        c12874b2.b();
                                        this.f77041R.g(this);
                                    }
                                }
                                C12874b c12874b3 = this.f77041R;
                                if (c12874b3 != null) {
                                    c12874b3.m(this);
                                }
                                p6.d.J1(L12);
                                L12 = p6.d.E1() ? p6.d.L1("Terrain - editor physics") : null;
                                try {
                                    if (!c8.b.k()) {
                                        updatePhysics();
                                    }
                                } finally {
                                }
                            } finally {
                            }
                        } finally {
                        }
                    } finally {
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            } finally {
            }
        } finally {
        }
    }

    @Override
    public void propagateEditorViewModes(List<C13189d> viewModes) {
        super.propagateEditorViewModes(viewModes);
        viewModes.add(new C13808b(this));
        viewModes.add(new C13807a("Edit grass", this));
    }

    public void rebaseTo(float height) {
        N7.c.j0(new B(height));
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        BuildDicFile f10;
        Ac.b bVar = this.dataFile;
        if (bVar != null && !bVar.g0() && (f10 = dictionary.f(this.dataFile.toString())) != null) {
            dictionary.h("Terrain: REPLACING " + ((Object) this.dataFile) + " TO " + f10.b());
            this.dataFile = new Ac.b(f10.b());
        }
        synchronized (this.layers) {
            for (int i10 = 0; i10 < this.layers.size(); i10++) {
                try {
                    this.layers.get(i10).D(dictionary);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void removeCollider(C15811a chunkCollider) {
        synchronized (this.f77053V2) {
            this.f77053V2.add(chunkCollider);
        }
    }

    public boolean renderBrushes() {
        boolean z10 = this.f77012G;
        if (z10 && this.f77028M == a0.ProceduralBrush) {
            return true;
        }
        return z10 && getSelectedBrush() != null;
    }

    public void requestRegenLevelTable() {
        if (C14165a.a()) {
            scheduleRegenLevelTable();
        }
    }

    @Override
    public void resyncOnFrame() {
        this.f77009F6.i(this.f79250n);
    }

    @Override
    public JsonElement serialize(Context context) {
        if (this.f77015H2 && this.f77005F2 != null) {
            File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + ((Object) this.dataFile)));
            if (!file.exists()) {
                try {
                    file.createNewFile();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
            this.f77005F2.o(file);
            this.f77015H2 = false;
        }
        return super.serialize(context);
    }

    public void setHeight(int x10, int y10, float height) {
        if (x10 >= getResolution()) {
            throw new RuntimeException("x (" + x10 + ") can't be >= terrain resolution (" + getResolution() + ")");
        }
        if (y10 >= getResolution()) {
            throw new RuntimeException("y (" + x10 + ") can't be >= terrain resolution (" + getResolution() + ")");
        }
        if (x10 < 0) {
            throw new RuntimeException("x (" + x10 + ") can't be < 0");
        }
        if (y10 < 0) {
            throw new RuntimeException("y (" + x10 + ") can't be < 0");
        }
        C16278e table = getTable();
        if (table != null) {
            table.h(x10, y10, height);
            C15814d chunkOf = getChunkOf(x10, y10);
            if (chunkOf != null) {
                chunkOf.i(this);
            }
        }
    }

    public void setLayerIntensity(int x10, int y10, int layerIndex, float intensity) {
        if (x10 >= getResolution()) {
            throw new RuntimeException("x (" + x10 + ") can't be >= terrain layers resolution (" + getResolution() + ")");
        }
        if (y10 >= getResolution()) {
            throw new RuntimeException("y (" + x10 + ") can't be >= terrain layers resolution (" + getResolution() + ")");
        }
        if (x10 < 0) {
            throw new RuntimeException("x (" + x10 + ") can't be < 0");
        }
        if (y10 < 0) {
            throw new RuntimeException("y (" + x10 + ") can't be < 0");
        }
        if (layerIndex < 0 || layerIndex >= layersCount()) {
            throw new RuntimeException("Invalid layer index:" + layerIndex);
        }
        this.f77005F2.m(layerIndex).h(x10, y10, Nc.b.I(intensity));
        C15814d chunkOfLayer = getChunkOfLayer(x10, y10);
        if (chunkOfLayer != null) {
            chunkOfLayer.k();
        }
    }

    public void setLodAggressiveness(EnumC16276c lodAggressiveness) {
        boolean z10 = this.lodAggressiveness != lodAggressiveness;
        this.lodAggressiveness = lodAggressiveness;
        if (z10) {
            updateResolutionsAndLodLevels();
        }
    }

    public void setLower(boolean lower) {
        this.f77024L = lower;
    }

    public void setMaxHeight(float maxHeight) {
        float E10 = Nc.b.E(32.0f, maxHeight, 1024.0f);
        boolean z10 = this.maxHeight != E10;
        this.maxHeight = E10;
        if (z10) {
            updateResolutionsAndLodLevels();
        }
    }

    public void setProceduralHeightmapBrushType(EnumC13007d proceduralHeightmapBrushType) {
        if (proceduralHeightmapBrushType == null) {
            proceduralHeightmapBrushType = EnumC13007d.Mountain;
        }
        this.f77033N = proceduralHeightmapBrushType;
        this.f77080q0 = C13005b.a(proceduralHeightmapBrushType);
    }

    public void setProceduralPaintType(f4.c proceduralPaintType) {
        if (proceduralPaintType == null) {
            proceduralPaintType = f4.c.Cliff;
        }
        this.f77035O = proceduralPaintType;
        this.f77084v0 = C13185a.a(proceduralPaintType);
    }

    public void setQuality(EnumC16280g quality) {
        boolean z10 = this.quality != quality;
        this.quality = quality;
        if (z10) {
            updateResolutionsAndLodLevels();
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f77072h9 = run;
    }

    public void setTotalChunksCount(int totalChunksCount) {
        int F10 = Nc.b.F(4, totalChunksCount, 64);
        if (this.f77029M1 != F10) {
            this.f77029M1 = F10;
            markChunkTilingDirty();
        }
    }

    public void setWidth(float width) {
        float E10 = Nc.b.E(32.0f, width, 1024.0f);
        boolean z10 = this.width != E10;
        this.width = E10;
        if (z10) {
            updateResolutionsAndLodLevels();
            markChunkTilingDirty();
        }
    }

    public boolean shouldBuildCollision() {
        return this.enableCollision && isHierarchyActive();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f77072h9;
        if (component != null) {
            return component;
        }
        JAVARuntime.Terrain terrain = new JAVARuntime.Terrain(this);
        this.f77072h9 = terrain;
        return terrain;
    }

    public C3593a traceRay(Vector3 origin, Vector3 direction, boolean ignoreGizmo) {
        return traceRay(origin, direction, 0.0f, ignoreGizmo);
    }

    @Override
    public void updatePhysics() {
        int i10;
        if (shouldBuildCollision()) {
            if (this.f77032M8) {
                removeFromPhysics();
            }
            if (this.f77018H5 == null) {
                this.f77018H5 = new i9.c(new CompoundCollisionShape(), this);
            }
            this.f77018H5.m(this.layerReference);
            CompoundCollisionShape compoundCollisionShape = (CompoundCollisionShape) this.f77018H5.g();
            CompoundCollisionShape compoundCollisionShape2 = this.f77075i3;
            if (compoundCollisionShape != compoundCollisionShape2 && compoundCollisionShape2 != null) {
                removeFromPhysics();
            }
            this.f77075i3 = compoundCollisionShape;
            synchronized (this.f77053V2) {
                try {
                    if (!this.f77053V2.isEmpty()) {
                        synchronized (this.f77043R2) {
                            this.f77043R2.removeAll(this.f77053V2);
                        }
                        for (int i11 = 0; i11 < this.f77053V2.size(); i11++) {
                            C15811a c15811a = this.f77053V2.get(i11);
                            synchronized (Cc.c.f2503k) {
                                compoundCollisionShape.removeChildShape(c15811a.b());
                            }
                        }
                        this.f77018H5.j();
                        invalidateBulletShapeChildrenCache();
                        this.f77053V2.clear();
                    }
                } finally {
                }
            }
            synchronized (this.f77043R2) {
                try {
                    if (!this.f77043R2.isEmpty()) {
                        for (i10 = 0; i10 < this.f77043R2.size(); i10++) {
                            C15811a c15811a2 = this.f77043R2.get(i10);
                            CollisionShape b10 = c15811a2.b();
                            if (b10 != null) {
                                synchronized (Cc.c.f2503k) {
                                    compoundCollisionShape.addChildShape(b10, c15811a2.a());
                                }
                            }
                        }
                        this.f77018H5.j();
                        invalidateBulletShapeChildrenCache();
                        this.f77030M2.addAll(this.f77043R2);
                        this.f77043R2.clear();
                    }
                } finally {
                }
            }
        } else {
            removeFromPhysics();
        }
        i9.c cVar = this.f77018H5;
        if (cVar != null) {
            cVar.o(this.f79250n);
        }
    }

    public void updateProceduralBrushMotion(Vector2 worldLocation) {
        if (worldLocation == null) {
            return;
        }
        if (!this.f76996D0) {
            beginProceduralBrushStroke();
        }
        float f10 = worldLocation.f79838x;
        Vector2 vector2 = this.f77076m1;
        float f11 = f10 - vector2.f79838x;
        float f12 = worldLocation.f79839y - vector2.f79839y;
        float f13 = (f11 * f11) + (f12 * f12);
        if (f13 > 1.0E-4f) {
            float sqrt = (float) Math.sqrt(f13);
            this.f77081q1.w0(f11 / sqrt, f12 / sqrt);
            this.f77076m1.w0(worldLocation.f79838x, worldLocation.f79839y);
        }
    }

    public void applyBrushPress(Runnable afterFinish) {
        applyBrushPress(0.016666668f, afterFinish);
    }

    @Override
    public Component mo1248clone() {
        Terrain terrain = new Terrain();
        terrain.quality = this.quality;
        terrain.lodAggressiveness = this.lodAggressiveness;
        terrain.dataFile = this.dataFile;
        terrain.width = this.width;
        terrain.maxHeight = this.maxHeight;
        terrain.f77042R1 = this.f77042R1;
        terrain.importHeightMapHeight = this.importHeightMapHeight;
        terrain.layerReference = this.layerReference.clone();
        for (int i10 = 0; i10 < this.layers.size(); i10++) {
            terrain.layers.add(this.layers.get(i10).clone());
        }
        terrain.layersEditorScroll = this.layersEditorScroll;
        terrain.tab = this.tab;
        terrain.brushSize = this.brushSize;
        terrain.brushIntensity = this.brushIntensity;
        terrain.selectedBrushID = this.selectedBrushID;
        terrain.f77013H = this.f77013H.clone();
        return terrain;
    }

    public C3593a traceRay(Vector3 origin, Vector3 direction, float distance, boolean ignoreGizmo) {
        C3593a b10 = TerrainRaycaster.b(origin, direction, this, ignoreGizmo, distance);
        if (b10 == null) {
            return null;
        }
        if (distance <= 0.0f || b10.getDistance() <= distance) {
            return b10;
        }
        return null;
    }

    public void applyBrushPress(float deltaSeconds, Runnable afterFinish) {
        float E10 = Nc.b.E(0.0f, deltaSeconds * 60.0f, 15.0f);
        a0 a0Var = this.f77028M;
        if (a0Var == a0.ProceduralBrush) {
            beginProceduralBrushStroke();
            updateProceduralBrushMotion(this.f77013H);
            AbstractC13004a proceduralBrush = getProceduralBrush();
            if (proceduralBrush != null) {
                proceduralBrush.a(this, Nc.b.E(0.0f, this.brushIntensity * E10, 1.5f), this.brushSize, this.f77013H, afterFinish);
                return;
            } else {
                if (afterFinish != null) {
                    afterFinish.run();
                    return;
                }
                return;
            }
        }
        if (a0Var == a0.ProceduralPaint) {
            com.itsmagic.engine.Activities.Editor.Extensions.Terrain.ProceduralPaint.a proceduralPaint = getProceduralPaint();
            if (proceduralPaint != null) {
                proceduralPaint.e(this, Nc.b.E(0.0f, this.brushIntensity * E10, 1.5f), this.brushSize, this.f77013H, getSelectedBrush(), afterFinish);
                return;
            } else {
                if (afterFinish != null) {
                    afterFinish.run();
                    return;
                }
                return;
            }
        }
        if (a0Var == a0.Raise) {
            float f10 = this.brushIntensity * 0.5f * E10;
            if (isLower()) {
                f10 = -f10;
            }
            applyRaiseLower(f10, this.brushSize, this.f77013H, getSelectedBrush(), false, afterFinish);
            return;
        }
        if (a0Var == a0.Smooth) {
            applySmooth(scaleBlendBrushIntensity(this.brushIntensity * 2.0f, E10), this.brushSize, this.f77013H, getSelectedBrush(), false, afterFinish);
        } else if (a0Var == a0.Paint) {
            applyPaint(this.paintIntensity * E10, this.brushSize, this.f77013H, getSelectedBrush(), this.f76997D2, afterFinish);
        } else if (a0Var == a0.Level) {
            applyLevel(scaleBlendBrushIntensity(this.brushIntensity * 2.0f, E10), this.f77085v1, this.brushSize, this.f77013H, getSelectedBrush(), false, afterFinish);
        }
    }

    public boolean isInsideTerrain(Vector3 worldCoord) {
        JP.InnerJP jPForThread = JP.getJPForThread();
        Vector3 vector3 = (Vector3) jPForThread.acquire(Vector3.class);
        Vector3 vector32 = (Vector3) jPForThread.acquire(Vector3.class);
        Vector3 sub = worldCoord.sub(vector3.set(this.f77062Z8), vector32);
        boolean z10 = false;
        boolean z11 = sub.getX() >= 0.0f && sub.getX() <= this.width;
        if (sub.getZ() >= 0.0f && sub.getZ() <= this.width) {
            z10 = z11;
        }
        JP.release(vector3);
        JP.release(vector32);
        return z10;
    }

    public long[] getLayerNativeBufferPointers(List<C16061a> layerDataList) {
        long[] jArr = new long[layerDataList.size()];
        for (int i10 = 0; i10 < layerDataList.size(); i10++) {
            C16061a c16061a = layerDataList.get(i10);
            NativeFloatBuffer c10 = c16061a != null ? c16061a.c() : null;
            if (c10 == null) {
                return null;
            }
            jArr[i10] = c10.getPointerCritical();
        }
        return jArr;
    }

    public float getWorldY(Vector3 worldCoord) {
        if (this.f77005F2 != null) {
            if (isInsideTerrain(worldCoord)) {
                float f10 = this.f77066b9;
                float f11 = this.maxHeight;
                Vector3 vector3 = f76995y9.get();
                vector3.set(worldCoord.getX(), f10 + f11 + 2.0f, worldCoord.getZ());
                C3593a b10 = TerrainRaycaster.b(vector3, Vector3.down(), this, true, (f11 * 2.0f) + 4.0f);
                if (b10 != null && b10.i() != null) {
                    return b10.i().getY();
                }
                throw new IllegalArgumentException("Not inside terrain area");
            }
            throw new IndexOutOfBoundsException("Outside terrain");
        }
        throw new RuntimeException("Terrian data not loaded");
    }

    private void normalizeLayers(int x10, int y10, List<Y> layers) {
        synchronized (this.f77071g9) {
            try {
                if (!layers.isEmpty()) {
                    List<X> list = f76992v9.get();
                    list.clear();
                    float f10 = 0.0f;
                    for (int i10 = 0; i10 < layers.size(); i10++) {
                        C16061a c16061a = layers.get(i10).f77214b;
                        float I10 = Nc.b.I(c16061a.e(x10, y10));
                        if (!this.f77071g9.isEmpty()) {
                            X remove = this.f77071g9.remove(0);
                            remove.f77211a = I10;
                            remove.f77212b = c16061a;
                            list.add(remove);
                        } else {
                            list.add(new X(I10, c16061a));
                        }
                        f10 += I10;
                    }
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        X x11 = list.get(i11);
                        float f11 = x11.f77211a / f10;
                        x11.f77211a = f11;
                        x11.f77211a = Nc.b.I(f11);
                        if (i11 == 0 && f10 == 0.0f) {
                            x11.f77211a = 1.0f;
                        }
                        x11.f77212b.h(x10, y10, x11.f77211a);
                    }
                    this.f77071g9.addAll(list);
                    list.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
