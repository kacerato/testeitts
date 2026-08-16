package i5;

import C5.b;
import F5.c;
import Ic.C2633l;
import JAVARuntime.GUIUtils;
import JAVARuntime.Runnable;
import JAVARuntime.Vertex;
import M7.c;
import M7.r;
import aa.C3593a;
import aa.C3595c;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vertex.Data.MeshSerializer;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import f5.C13189d;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import org.ITsMagic.Atlas.BakeOptions;
import org.ITsMagic.Atlas.e;
import r4.C15147a;
import t5.f;
import t5.i;
import t5.l;
import yb.C16165b;

@Deprecated
public class C13586b extends C13189d {

    public P4.c f91450F;

    public final ModelRenderer f91451g;

    public Vertex f91452h;

    public String f91453i;

    public String f91454j;

    public String f91455k;

    public String f91456l;

    public O8.a f91457m;

    public int f91458n;

    public int f91459o;

    public int f91460p;

    public float f91461q;

    public boolean f91462r;

    public boolean f91463s;

    public boolean f91464t;

    public ub.g f91465u;

    public Bb.b f91466v;

    public Ib.c f91467w;

    public Bb.b f91469y;

    public String f91470z;

    public final ColorINT f91468x = new ColorINT(255, 0, 0);

    public p f91445A = p.Grid;

    public final HashMap<Panel3DView, tc.h> f91446B = new HashMap<>();

    public final Vector2 f91447C = new Vector2();

    public final aa.d f91448D = new aa.d();

    public final aa.d f91449E = new aa.d();

    public class a implements Runnable {

        public class C1753a extends l.b {

            public class C1754a extends AbstractViewOnClickListenerC12733a {

                public final t5.l f91473b;

                public C1754a(final t5.l val$panel) {
                    this.f91473b = val$panel;
                }

                @Override
                public void click(View v10) {
                    this.f91473b.R0();
                    C13586b.this.E();
                }
            }

            public C1753a() {
            }

            @Override
            public void b(View v10, t5.l panel) {
                ((TextView) v10.findViewById(R.id.text)).setText(Lang.l(Lang.T.UV_PAINT_WITHOUT_VERTEX_MODEL_RENDERER_WARNING));
                ((Button) v10.findViewById(R.id.auto_close)).setOnClickListener(new C1754a(panel));
            }
        }

        public a() {
        }

        @Override
        public void run() {
            t5.l.p1(250, 120, R.layout.uv_paint_simple_error, new C1753a()).E1(true);
        }
    }

    public class C1755b implements M7.d {

        public class a extends i.d {
            public a() {
            }

            @Override
            public void a(float value) {
                C13586b.this.f91459o = (int) value;
            }

            @Override
            public float get() {
                return C13586b.this.f91459o;
            }

            @Override
            public float getMax() {
                return 500.0f;
            }

            @Override
            public float getMin() {
                return 0.0f;
            }
        }

        public C1755b() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            t5.i.a(v10, Lang.l(Lang.T.SIZE_IN_PIXELS), context, C15147a.e.Below, new a());
        }
    }

    public class c implements M7.d {

        public class a extends i.d {
            public a() {
            }

            @Override
            public void a(float value) {
                C13586b.this.f91461q = value;
            }

            @Override
            public float get() {
                return C13586b.this.f91461q;
            }

            @Override
            public float getMax() {
                return 1.0f;
            }

            @Override
            public float getMin() {
                return 0.0f;
            }
        }

        public c() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            t5.i.a(v10, Lang.l(Lang.T.INTENSITY), context, C15147a.e.Below, new a());
        }
    }

    public class d implements r {
        public d() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (value) {
                C13586b.this.f91462r = false;
            }
        }
    }

    public class e implements r {
        public e() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            if (value) {
                C13586b.this.f91462r = true;
            }
        }
    }

    public class f implements M7.d {

        public final Panel3DView f91481a;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                f.this.f91481a.s1();
            }
        }

        public f(final Panel3DView val$panel3DView) {
            this.f91481a = val$panel3DView;
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            K8.a.I(new a());
        }
    }

    public class g implements P4.a {
        public g() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b() {
            C13586b.this.f91450F = null;
        }
    }

    public class h implements Runnable {

        public class a extends l.b {

            public class C1756a extends AbstractViewOnClickListenerC12733a {

                public final t5.l f91487b;

                public C1756a(final t5.l val$panel) {
                    this.f91487b = val$panel;
                }

                @Override
                public void click(View v10) {
                    this.f91487b.R0();
                    C13586b.this.E();
                }
            }

            public a() {
            }

            @Override
            public void b(View v10, t5.l panel) {
                ((TextView) v10.findViewById(R.id.text)).setText(Lang.l(Lang.T.UV_PAINT_NOT_USE_WITH_PRIMITIVE_MR_WARNING));
                ((Button) v10.findViewById(R.id.auto_close)).setOnClickListener(new C1756a(panel));
            }
        }

        public h() {
        }

        @Override
        public void run() {
            t5.l.p1(250, 120, R.layout.uv_paint_simple_error, new a()).E1(true);
        }
    }

    public class i implements Runnable {

        public class a extends l.b {

            public class C1757a extends AbstractViewOnClickListenerC12733a {

                public final t5.l f91491b;

                public C1757a(final t5.l val$panel) {
                    this.f91491b = val$panel;
                }

                @Override
                public void click(View v10) {
                    this.f91491b.R0();
                    C13586b.this.E();
                }
            }

            public a() {
            }

            @Override
            public void b(View v10, t5.l panel) {
                ((TextView) v10.findViewById(R.id.text)).setText(Lang.l(Lang.T.UV_PAINT_NOT_USE_WITH_OBJ_MODEL_WARNING));
                ((Button) v10.findViewById(R.id.auto_close)).setOnClickListener(new C1757a(panel));
            }
        }

        public i() {
        }

        @Override
        public void run() {
            t5.l.p1(250, 120, R.layout.uv_paint_simple_error, new a()).E1(true);
        }
    }

    public class j implements Runnable {

        public class a extends l.b {

            public class C1758a extends AbstractViewOnClickListenerC12733a {

                public final t5.l f91495b;

                public C1758a(final t5.l val$panel) {
                    this.f91495b = val$panel;
                }

                @Override
                public void click(View v10) {
                    this.f91495b.R0();
                    C13586b.this.E();
                }
            }

            public class C1759b extends AbstractViewOnClickListenerC12733a {

                public final EditText f91497b;

                public final t5.l f91498c;

                public final CheckBox f91499d;

                public final CheckBox f91500e;

                public class C1760a implements Runnable {

                    public final int f91502b;

                    public C1760a(final int val$finalResoPixels) {
                        this.f91502b = val$finalResoPixels;
                    }

                    @Override
                    public void run() {
                        C1759b c1759b = C1759b.this;
                        C13586b.this.r0(c1759b.f91499d.isChecked(), C1759b.this.f91500e.isChecked(), this.f91502b);
                    }
                }

                public C1759b(final EditText val$resolution, final t5.l val$panel, final CheckBox val$genTex, final CheckBox val$genUV) {
                    this.f91497b = val$resolution;
                    this.f91498c = val$panel;
                    this.f91499d = val$genTex;
                    this.f91500e = val$genUV;
                }

                @Override
                public void click(View v10) {
                    String obj = this.f91497b.getText().toString();
                    if (obj == null || obj.isEmpty()) {
                        this.f91497b.setError("Invalid resolution.");
                        return;
                    }
                    int x12 = Nc.b.x1(obj, -1);
                    if (x12 <= 0) {
                        this.f91497b.setError("Invalid resolution.");
                    } else {
                        if (x12 > 4096) {
                            this.f91497b.setError("Resolution too big.");
                            return;
                        }
                        this.f91497b.setError(null);
                        this.f91498c.R0();
                        K8.a.I(new C1760a(x12));
                    }
                }
            }

            public a() {
            }

            @Override
            public void b(View v10, t5.l panel) {
                CheckBox checkBox = (CheckBox) v10.findViewById(R.id.genUV);
                CheckBox checkBox2 = (CheckBox) v10.findViewById(R.id.genTex);
                EditText editText = (EditText) v10.findViewById(R.id.resolution);
                ((TextView) v10.findViewById(R.id.text)).setText(Lang.l(Lang.T.UV_PAINT_GENERATE_UV_TEXT));
                checkBox.setText(Lang.l(Lang.T.GENERATE_NEW_UV));
                checkBox2.setText(Lang.l(Lang.T.GENERATE_NEW_BLANK_TEXTURE));
                Button button = (Button) v10.findViewById(R.id.cancel);
                button.setText(Lang.l(Lang.T.CANCEL));
                button.setOnClickListener(new C1758a(panel));
                Button button2 = (Button) v10.findViewById(R.id.generate);
                button2.setText(Lang.l(Lang.T.GENERATE));
                button2.setOnClickListener(new C1759b(editText, panel, checkBox2, checkBox));
            }
        }

        public j() {
        }

        @Override
        public void run() {
            t5.l.p1(320, 170, R.layout.uv_paint_preparation, new a()).E1(true);
        }
    }

    public class k implements Runnable {

        public final O8.a f91504b;

        public k(final O8.a val$brush) {
            this.f91504b = val$brush;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x011f  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            float f10;
            int i10;
            int i11;
            int i12;
            int i13;
            int i14;
            int i15;
            ColorINT colorINT;
            Ib.c cVar = C13586b.this.f91467w;
            C3595c c3595c = new C3595c(C13586b.this.f91449E);
            Vertex.RayMode rayMode = Vertex.RayMode.ClosestPoint;
            C3593a a10 = cVar.a(c3595c, rayMode);
            if (a10 != null) {
                int p10 = (int) (a10.p().f79838x * C13586b.this.f91466v.p());
                int l10 = (C13586b.this.f91466v.l() - ((int) (a10.p().f79839y * C13586b.this.f91466v.l()))) - 1;
                float d02 = Nc.b.d0(90.0f);
                float m12 = Nc.b.m1(90.0f);
                float f11 = C13586b.this.f91459o / C13586b.this.f91460p;
                float f12 = 0.0f;
                boolean z10 = false;
                if (C13586b.this.f91469y != null) {
                    C3593a a11 = C13586b.this.f91467w.a(new C3595c(C13586b.this.f91448D), rayMode);
                    boolean z11 = a11 != null && Nc.b.k(a11.p().f79838x - a10.p().f79838x) > Nc.b.k(a11.p().f79839y - a10.p().f79839y);
                    if (C13586b.this.f91445A == p.Grid) {
                        float f13 = a10.p().f79838x;
                        z10 = z11;
                        f10 = (a10.p().f79839y / (1.0f / (C13586b.this.f91466v.l() / C13586b.this.f91460p))) - ((int) r1);
                        f12 = (f13 / (1.0f / (C13586b.this.f91466v.p() / C13586b.this.f91460p))) - ((int) r3);
                        i10 = C13586b.this.f91459o / 2;
                        ColorINT colorINT2 = new ColorINT();
                        ColorINT colorINT3 = new ColorINT();
                        ColorINT colorINT4 = new ColorINT();
                        int i16 = p10 - i10;
                        i11 = i16;
                        while (i11 < p10 + i10) {
                            int i17 = l10 - i10;
                            int i18 = p10;
                            ColorINT colorINT5 = colorINT2;
                            int i19 = i17;
                            while (i19 < l10 + i10) {
                                if (i11 < 0 || i11 >= C13586b.this.f91466v.p() || i19 < 0 || i19 >= C13586b.this.f91466v.l()) {
                                    i12 = i10;
                                    i13 = l10;
                                    i14 = i17;
                                    i15 = i16;
                                    colorINT = colorINT5;
                                } else {
                                    i13 = l10;
                                    float f14 = i10 * 2;
                                    float f15 = (i11 - i16) / f14;
                                    i12 = i10;
                                    float f16 = (i19 - i17) / f14;
                                    i14 = i17;
                                    float c10 = this.f91504b.c(f15, f16) * C13586b.this.f91461q;
                                    if (C13586b.this.f91469y != null) {
                                        i15 = i16;
                                        if (C13586b.this.f91445A == p.Grid) {
                                            float f17 = ((f15 - 0.5f) * f11) + f12;
                                            float f18 = f10 - ((f16 - 0.5f) * f11);
                                            if (z10) {
                                                float f19 = (f17 * d02) - (f18 * m12);
                                                f18 = (f18 * d02) + (f17 * m12);
                                                f17 = f19;
                                            }
                                            C13586b.this.f91469y.m(f17, f18, colorINT4);
                                        } else {
                                            if (z10) {
                                                float f20 = (f15 * d02) - (f16 * m12);
                                                f16 = (f16 * d02) + (f15 * m12);
                                                f15 = f20;
                                            }
                                            C13586b.this.f91469y.m(f15, f16, colorINT4);
                                        }
                                    } else {
                                        i15 = i16;
                                    }
                                    C13586b.this.f91466v.h(i11, i19, colorINT3);
                                    colorINT = colorINT5;
                                    colorINT.K(C13586b.this.f91468x);
                                    colorINT.H(colorINT4);
                                    colorINT.i(colorINT3, 1.0f - c10);
                                    C13586b.this.f91466v.t(i11, i19, colorINT);
                                }
                                i19++;
                                colorINT5 = colorINT;
                                l10 = i13;
                                i10 = i12;
                                i17 = i14;
                                i16 = i15;
                            }
                            colorINT2 = colorINT5;
                            i11++;
                            p10 = i18;
                            i10 = i10;
                        }
                        C13586b.this.f91466v.c();
                    }
                    z10 = z11;
                }
                f10 = 0.0f;
                i10 = C13586b.this.f91459o / 2;
                ColorINT colorINT22 = new ColorINT();
                ColorINT colorINT32 = new ColorINT();
                ColorINT colorINT42 = new ColorINT();
                int i162 = p10 - i10;
                i11 = i162;
                while (i11 < p10 + i10) {
                }
                C13586b.this.f91466v.c();
            }
        }
    }

    public class l implements Runnable {

        public final org.ITsMagic.Atlas.e f91506b;

        public final boolean f91507c;

        public class a extends e.b {

            public class RunnableC1761a implements Runnable {

                public class C1762a extends l.b {

                    public class C1763a extends AbstractViewOnClickListenerC12733a {

                        public final t5.l f91512b;

                        public C1763a(final t5.l val$panel) {
                            this.f91512b = val$panel;
                        }

                        @Override
                        public void click(View v10) {
                            this.f91512b.R0();
                            C13586b.this.E();
                        }
                    }

                    public C1762a() {
                    }

                    @Override
                    public void b(View v10, t5.l panel) {
                        ((TextView) v10.findViewById(R.id.text)).setText("Oops! something wen't wrong");
                        ((Button) v10.findViewById(R.id.auto_close)).setOnClickListener(new C1763a(panel));
                    }
                }

                public RunnableC1761a() {
                }

                @Override
                public void run() {
                    t5.l.p1(250, 120, R.layout.uv_paint_simple_error, new C1762a()).E1(true);
                }
            }

            public class C1764b implements Runnable {

                public final com.itsmagic.engine.Engines.Engine.Vertex.Vertex f91514b;

                public C1764b(final com.itsmagic.engine.Engines.Engine.Vertex.Vertex val$outputVertex) {
                    this.f91514b = val$outputVertex;
                }

                @Override
                public void run() {
                    C13586b.this.f91451g.setModel(this.f91514b);
                    l lVar = l.this;
                    if (lVar.f91507c) {
                        C13586b.this.f91451g.f73747F.h0("albedo", C13586b.this.f91465u);
                        C13586b.this.f91451g.f73747F.b0("diffuse", ColorINT.h0());
                    }
                    C13586b.this.f91452h = this.f91514b;
                    C13586b.this.f91452h.f79981s = true;
                    C13586b.this.f91464t = true;
                }
            }

            public a() {
            }

            @Override
            public void c(com.itsmagic.engine.Engines.Engine.Vertex.Vertex outputVertex, ub.n atlasTexture) {
                if (outputVertex == null) {
                    N7.c.j0(new RunnableC1761a());
                    return;
                }
                outputVertex.f79981s = true;
                String str = Tc.b.O(C13586b.this.f91453i) + "_uvpaint.png";
                if (!C13586b.this.f91453i.contains("_uvpaint")) {
                    str = Tc.b.O(C13586b.this.f91453i) + "_uvpaint.png";
                    C13586b.this.f91453i = Tc.b.O(C13586b.this.f91453i) + "_uvpaint.mesh";
                }
                C13586b.this.q0(outputVertex);
                l lVar = l.this;
                if (lVar.f91507c) {
                    C13586b.this.p0(str, atlasTexture);
                    C13586b.this.f91456l = str;
                    C13586b.this.f91465u = C16165b.u(str);
                } else {
                    C13586b c13586b = C13586b.this;
                    c13586b.f91456l = c13586b.f91451g.f73747F.w("albedo");
                    C13586b c13586b2 = C13586b.this;
                    c13586b2.f91465u = (ub.g) c13586b2.f91451g.f73747F.v("albedo");
                }
                if (C13586b.this.f91465u != null) {
                    String file = C13586b.this.f91465u.getFile();
                    TextureConfig textureConfig = new TextureConfig();
                    textureConfig.allowModifications = true;
                    C13586b.this.f91465u = new ub.g(file, textureConfig);
                }
                C13586b c13586b3 = C13586b.this;
                c13586b3.f91466v = Bb.b.z(c13586b3.f91465u, 50.0f);
                C13586b c13586b4 = C13586b.this;
                c13586b4.f91467w = Ib.c.d(outputVertex, c13586b4.f91451g.getRenderMatrix());
                K8.a.I(new C1764b(outputVertex));
            }
        }

        public l(final org.ITsMagic.Atlas.e val$uvGenerator, final boolean val$genTexture) {
            this.f91506b = val$uvGenerator;
            this.f91507c = val$genTexture;
        }

        @Override
        public void run() {
            C13585a.w1(true, this.f91506b, new a());
        }
    }

    public class m implements M7.d {

        public G4.c f91516a;

        public class a implements F5.a {
            public a() {
            }

            @Override
            public void b(int idx) {
                C13586b.this.f91458n = idx;
            }

            @Override
            public int getSelected() {
                return C13586b.this.f91458n;
            }
        }

        public class C1765b implements G4.d {
            public C1765b() {
            }

            @Override
            public void a(G4.c entriesClassPanel) {
                m.this.f91516a = null;
            }

            @Override
            public void b(G4.c entriesClassPanel) {
            }
        }

        public m() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(F5.c.b(context, null, new a()));
            G4.c e10 = C15147a.e(v10, steppedArrayList, "Brush", C15147a.e.Below, new C1765b(), N7.c.g(306), N7.c.f(200), true, true, true);
            this.f91516a = e10;
            F5.c.Y(e10.f7543Z);
        }
    }

    public class n implements M7.d {

        public class a implements f.j {

            public final M7.c f91521a;

            public a(final M7.c val$tbButton) {
                this.f91521a = val$tbButton;
            }

            @Override
            public void a(ColorINT color) {
                C13586b.this.f91468x.K(color);
                this.f91521a.e0(C13586b.this.f91468x);
            }
        }

        public n() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            t5.f.L1(C13586b.this.f91468x, v10, context, C15147a.e.Below, new a(tbButton));
        }
    }

    public class o implements M7.d {

        public G4.c f91523a;

        public class a implements D5.h {

            public final M7.c f91525a;

            public final Context f91526b;

            public class RunnableC1766a implements Runnable {

                public final Variable f91528b;

                public class C1767a implements Runnable {

                    public final Bb.b f91530b;

                    public C1767a(final Bb.b val$finalNewBrushImage) {
                        this.f91530b = val$finalNewBrushImage;
                    }

                    @Override
                    public void run() {
                        C13586b.this.f91469y = this.f91530b;
                        RunnableC1766a runnableC1766a = RunnableC1766a.this;
                        C13586b.this.f91470z = runnableC1766a.f91528b.str_value;
                    }
                }

                public RunnableC1766a(final Variable val$variable) {
                    this.f91528b = val$variable;
                }

                @Override
                public void run() {
                    TextureConfig textureConfig = new TextureConfig();
                    textureConfig.allowModifications = true;
                    K8.a.I(new C1767a(Bb.b.y(new ub.g(this.f91528b.str_value, textureConfig))));
                }
            }

            public class C1768b implements Runnable {
                public C1768b() {
                }

                @Override
                public void run() {
                    C13586b.this.f91469y = null;
                    C13586b.this.f91470z = null;
                }
            }

            public a(final M7.c val$tbButton, final Context val$context) {
                this.f91525a = val$tbButton;
                this.f91526b = val$context;
            }

            @Override
            public Variable get() {
                return new Variable("temp", C13586b.this.f91470z);
            }

            @Override
            public void set(Variable variable) {
                try {
                    this.f91525a.W(true);
                    if (variable == null || variable.str_value.isEmpty()) {
                        this.f91525a.f0(null);
                    } else {
                        String str = Tc.b.O(variable.str_value) + ".texture";
                        if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f91526b) + "/" + str).exists()) {
                            this.f91525a.f0(new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f91526b) + "/" + str)));
                        } else {
                            this.f91525a.f0(new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f91526b) + "/" + variable.str_value)));
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                if (variable == null || variable.str_value.isEmpty()) {
                    K8.a.I(new C1768b());
                } else {
                    new Thread(new RunnableC1766a(variable)).start();
                }
            }
        }

        public class C1769b extends c.n0 {

            public final View f91533a;

            public final Context f91534b;

            public final M7.c f91535c;

            public C1769b(final View val$v, final Context val$context, final M7.c val$tbButton) {
                this.f91533a = val$v;
                this.f91534b = val$context;
                this.f91535c = val$tbButton;
            }

            @Override
            public void a() {
                o.this.onClick(this.f91533a, this.f91534b, this.f91535c);
            }

            @Override
            public void set(Object value) {
                C13586b.this.f91445A = (p) value;
                o.this.onClick(this.f91533a, this.f91534b, this.f91535c);
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", C13586b.this.f91460p + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    C13586b.this.f91460p = variable.int_value;
                }
            }
        }

        public class d implements G4.d {
            public d() {
            }

            @Override
            public void a(G4.c entriesClassPanel) {
                o.this.f91523a = null;
            }

            @Override
            public void b(G4.c entriesClassPanel) {
            }
        }

        public o() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            G4.c cVar = this.f91523a;
            if (cVar != null) {
                cVar.R0();
            }
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            steppedArrayList.add(new C5.b(new a(tbButton, context), Lang.l(Lang.T.TEXTURE) + " ", b.a.Texture, context));
            steppedArrayList.add(F5.c.i(Lang.l(Lang.T.DRAW_MODE) + " ", p.class, C13586b.this.f91445A, new C1769b(v10, context, tbButton)));
            if (C13586b.this.f91445A == p.Grid) {
                steppedArrayList.add(new C5.b(new c(), Lang.l(Lang.T.GRID_SIZE) + " ", b.a.SLIntSlider, 0.0f, 1000.0f, 0.0f));
            }
            this.f91523a = C15147a.e(v10, steppedArrayList, "Options", C15147a.e.Below, new d(), N7.c.g(300), N7.c.f(170), true, true, true);
        }
    }

    public enum p {
        Grid,
        Free
    }

    public C13586b(ModelRenderer mr) {
        this.f91451g = mr;
        t0();
    }

    private void u0() {
        p0(this.f91456l, this.f91465u);
    }

    private void w0() {
        if (this.f91463s) {
            return;
        }
        this.f91463s = true;
        String str = this.f91453i;
        if (str == null || str.isEmpty() || this.f91452h == null) {
            N7.c.j0(new a());
            return;
        }
        if (this.f91453i.contains("@@ASSET@@")) {
            N7.c.j0(new h());
            return;
        }
        if (!C2633l.b(this.f91455k, ".vertex")) {
            N7.c.j0(new i());
        } else if (this.f91452h.f79981s) {
            x0();
        } else {
            N7.c.j0(new j());
        }
    }

    @Override
    public boolean d() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
    
        if (r1.q() != false) goto L26;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void e() {
        w0();
        if (this.f91464t) {
            v0();
            this.f91451g.setMeshFile(this.f91453i);
            if (this.f91462r) {
                Panel3DView h10 = h();
                tc.h hVar = this.f91446B.get(h10);
                tc.h hVar2 = null;
                if (hVar != null && hVar.q() && !h10.s0(hVar)) {
                    hVar = null;
                }
                if (hVar == null) {
                    hVar = h10.y(GUIUtils.TouchFilter.Down, true);
                }
                if (hVar != null && h10.w(GUIUtils.TouchFilter.Pressed, 1) != null) {
                    hVar = null;
                }
                if (hVar != null) {
                    h10.a0(hVar, this.f91447C);
                    o0(this.f91447C, h10);
                    if (!hVar.t()) {
                    }
                    this.f91446B.put(h10, hVar2);
                }
                hVar2 = hVar;
                this.f91446B.put(h10, hVar2);
            }
        }
    }

    @Override
    public MousePicker.i g() {
        return MousePicker.f71420T;
    }

    @Override
    public String i() {
        if (this.f91454j == null) {
            return Lang.l(Lang.T.UV_PAINT);
        }
        return Lang.l(Lang.T.UV_PAINT) + " - " + Tc.b.Y(this.f91454j, 20);
    }

    @Override
    public void o(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.o(elements, activity, panel3DView);
        elements.add(new M7.k(Nc.b.l0(2.0f, activity)));
        M7.o oVar = new M7.o(R.drawable.touch, new d(), c.b.Top, activity);
        Ac.b bVar = C13189d.f86106b;
        M7.o N02 = oVar.N0(bVar);
        Ac.b bVar2 = C13189d.f86107c;
        N02.B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        M7.o oVar2 = new M7.o(R.drawable.terrain_paint_v1, new e(), c.b.Middle, activity);
        oVar2.N0(bVar).B0(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height));
        M7.p pVar = new M7.p(activity);
        pVar.s(oVar);
        pVar.s(oVar2);
        pVar.B(null);
        if (this.f91462r) {
            pVar.y(1);
        } else {
            pVar.y(0);
        }
        elements.add(pVar);
        elements.add(new M7.c(R.drawable.camera_zoom_v2, new f(panel3DView), activity).U(bVar).M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
    }

    public final void o0(Vector2 touchPos, Panel3DView editor3DViewer) {
        O8.a s02 = s0();
        editor3DViewer.f71460a0.f97746a.screenPointToWorldRay(touchPos.e(0.0f, Nc.b.k0(4.0f)), this.f91448D);
        editor3DViewer.f71460a0.f97746a.screenPointToWorldRay(touchPos, this.f91449E);
        O9.b.d(new k(s02));
    }

    public final void p0(String path, ub.p atlasTexture) {
        File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + path));
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        TextureConfig textureConfig = new TextureConfig();
        textureConfig.maxResolutionID = 16;
        textureConfig.m0(TextureConfig.d.RGB8);
        com.itsmagic.engine.Engines.Engine.Texture.Utils.b.c(atlasTexture, file, textureConfig);
    }

    public final void q0(com.itsmagic.engine.Engines.Engine.Vertex.Vertex outputVertex) {
        MeshSerializer.p(MeshSerializer.m(this.f91453i), outputVertex, true);
    }

    @Override
    public void r(List<M7.g> elements, Activity activity, Panel3DView panel3DView) {
        super.r(elements, activity, panel3DView);
        elements.add(new M7.k(Nc.b.l0(2.0f, activity)));
        M7.c cVar = new M7.c(R.drawable.brush, new m(), c.b.Disconnected, activity);
        Ac.b bVar = C13189d.f86106b;
        M7.c U10 = cVar.U(bVar);
        Ac.b bVar2 = C13189d.f86107c;
        elements.add(U10.M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        elements.add(new M7.k(Nc.b.l0(2.0f, activity)));
        n nVar = new n();
        c.b bVar3 = c.b.Left;
        elements.add(new M7.c(R.drawable.nse_circle, nVar, bVar3, activity).U(bVar).M(bVar2).e0(this.f91468x).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        o oVar = new o();
        c.b bVar4 = c.b.Right;
        elements.add(new M7.c(R.drawable.terrain_paint_v1, oVar, bVar4, activity).U(bVar).M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        elements.add(new M7.k(Nc.b.l0(2.0f, activity)));
        elements.add(new M7.c(R.drawable.brush_size, new C1755b(), bVar3, activity).U(bVar).M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
        elements.add(new M7.c(R.drawable.brush_intensity, new c(), bVar4, activity).U(bVar).M(bVar2).m0((int) activity.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) activity.getResources().getDimension(R.dimen.view3d_button_height)));
    }

    public final void r0(boolean genTexture, boolean genUV, int resolution) {
        if (genUV) {
            BakeOptions bakeOptions = new BakeOptions();
            bakeOptions.f99793a = resolution;
            bakeOptions.texture = genTexture;
            N7.c.j0(new l(new org.ITsMagic.Atlas.e(this.f91451g, com.itsmagic.engine.Engines.Engine.Vector.f.y(), bakeOptions), genTexture));
            return;
        }
        if (!genTexture) {
            x0();
            return;
        }
        String str = this.f91453i.contains("_uvpaint") ? Tc.b.O(this.f91453i.replaceAll("_uvpaint", "")) + "_uvpaint.png" : Tc.b.O(this.f91453i) + "_uvpaint.png";
        ub.n nVar = new ub.n(resolution, resolution);
        for (int i10 = 0; i10 < resolution; i10++) {
            for (int i11 = 0; i11 < resolution; i11++) {
                nVar.Y(i10, i11, ColorINT.h0());
            }
        }
        nVar.apply();
        p0(str, nVar);
        this.f91456l = str;
        this.f91465u = C16165b.u(str);
        this.f91467w = Ib.c.d(this.f91452h, this.f91451g.getRenderMatrix());
        this.f91464t = true;
    }

    @Override
    public void s(Activity activity, Panel3DView panel3DView) {
        t0();
    }

    public O8.a s0() {
        O8.a aVar = this.f91457m;
        if (aVar == null || aVar.f16550g != this.f91458n) {
            int i10 = this.f91458n;
            O8.b bVar = K8.a.f10987r;
            if (i10 >= bVar.b()) {
                this.f91458n = bVar.b();
            }
            if (this.f91458n < 0) {
                this.f91458n = 0;
            }
            if (bVar.b() > 0) {
                this.f91457m = bVar.a(this.f91458n);
            }
        }
        return this.f91457m;
    }

    @Override
    public void t() {
        if (this.f91464t) {
            u0();
        }
    }

    public void t0() {
        this.f91458n = 1;
        this.f91459o = 10;
        this.f91460p = 100;
        this.f91461q = 0.25f;
        this.f91462r = false;
        this.f91463s = false;
        this.f91464t = false;
        this.f91452h = this.f91451g.getVertex();
        String meshFile = this.f91451g.getMeshFile();
        this.f91453i = meshFile;
        this.f91454j = Tc.b.w(meshFile, true);
        this.f91455k = Tc.b.t(this.f91453i);
        this.f91469y = null;
    }

    @Override
    public void u(Activity activity, Panel3DView panel3DView) {
        panel3DView.S1(Panel3DView.j.Disable, true, true);
        t0();
    }

    public final void v0() {
        if (this.f91450F == null) {
            this.f91450F = new P4.c(this, new g());
        }
        if (v3.c.b() == null || v3.c.b() != this.f91450F) {
            v3.c.e(this.f91450F);
        }
    }

    public final void x0() {
        this.f91456l = this.f91451g.f73747F.w("albedo");
        ub.g gVar = (ub.g) this.f91451g.f73747F.v("albedo");
        this.f91465u = gVar;
        if (gVar != null) {
            String file = gVar.getFile();
            TextureConfig textureConfig = new TextureConfig();
            textureConfig.allowModifications = true;
            ub.g gVar2 = new ub.g(file, textureConfig);
            this.f91465u = gVar2;
            this.f91451g.f73747F.h0("albedo", gVar2);
        }
        this.f91466v = Bb.b.z(this.f91465u, 50.0f);
        this.f91467w = Ib.c.d(this.f91452h, this.f91451g.getRenderMatrix());
        this.f91464t = true;
    }
}
