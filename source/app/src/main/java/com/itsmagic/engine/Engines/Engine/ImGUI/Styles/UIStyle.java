package com.itsmagic.engine.Engines.Engine.ImGUI.Styles;

import C5.b;
import F5.c;
import N9.a;
import U9.EnumC3112a;
import U9.EnumC3113b;
import U9.EnumC3115d;
import U9.EnumC3116e;
import U9.InterfaceC3114c;
import android.content.Context;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.JsonElement;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Gradient.Entry;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine.Engines.Engine.ImGUI.Styles.UIStyle;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureRGB8;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureRGBA8;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.tonyodev.fetch2core.server.FileRequest;
import java.util.List;
import s8.InterfaceC15237a;
import ub.n;

public class UIStyle {

    public Runnable f78188a;

    public final float[] f78189b;

    @Expose
    private EnumC3113b bottomLeftCorner;

    @Expose
    private EnumC3113b bottomRightCorner;

    public JAVARuntime.UIStyle f78190c;

    @Expose
    private float hole;

    @Expose
    private ColorINT innerGlowColor;

    @Expose
    private float innerGlowSize;

    @Expose
    private float innerGlowSmooth;

    @Expose
    private float innerShadowAngle;

    @Expose
    private ColorINT innerShadowColor;

    @Expose
    private float innerShadowSize;

    @Expose
    private float innerShadowSmooth;

    @Expose
    private float maskAngle;

    @Expose
    private EnumC3116e maskMode;

    @Expose
    private float maskValue;

    @Expose
    private ColorINT outerGlowColor;

    @Expose
    private float outerGlowSize;

    @Expose
    private float outerGlowSmooth;

    @Expose
    private float outerShadowAngle;

    @Expose
    private ColorINT outerShadowColor;

    @Expose
    private float outerShadowSize;

    @Expose
    private float outerShadowSmooth;

    @Expose
    private EnumC3113b topLeftCorner;

    @Expose
    private EnumC3113b topRightCorner;

    @Expose
    private EnumC3115d gradientMode = EnumC3115d.Solid;

    @Expose
    private ColorINT color = new ColorINT();

    @Expose
    private ColorINT strokeColor = new ColorINT(222, 222, 222);

    @Expose
    private Gradient colorGradient = new Gradient();

    @Expose
    private float gradientAngle = 0.0f;

    @Expose
    private float corner = 8.0f;

    @Expose
    private float stroke = 0.0f;

    public class a implements c.o0 {

        public class C1308a implements D5.h {
            public C1308a() {
            }

            public final void b(Variable variable) {
                UIStyle.this.d1(variable.color_value);
            }

            @Override
            public Variable get() {
                return UIStyle.this.outerShadowColor != null ? new Variable("temp", UIStyle.this.outerShadowColor) : new Variable("", "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.a.C1308a.this.b(v10);
                        }
                    });
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            public void b(Variable variable) {
                UIStyle.this.e1(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIStyle.this.outerShadowSize + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.a.b.this.b(v10);
                        }
                    });
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            public void b(Variable variable) {
                UIStyle.this.f1(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIStyle.this.outerShadowSmooth + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.a.c.this.b(v10);
                        }
                    });
                }
            }
        }

        public class d implements D5.h {
            public d() {
            }

            public void b(Variable variable) {
                UIStyle.this.c1(variable.float_value * 360.0f);
            }

            @Override
            public Variable get() {
                return new Variable("", (UIStyle.this.outerShadowAngle / 360.0f) + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.a.d.this.b(v10);
                        }
                    });
                }
            }
        }

        public a() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> list) {
            list.add(new C5.b(new C1308a(), SerializableShaderEntry.f81153g, b.a.Color));
            b bVar = new b();
            b.a aVar = b.a.SLFloat;
            list.add(new C5.b(bVar, FileRequest.FIELD_SIZE, aVar));
            list.add(new C5.b(new c(), "Smooth", aVar));
            list.add(new C5.b(new d(), "Angle", b.a.SLFloat01));
            return list;
        }
    }

    public static class b {

        public static final int[] f78196a;

        static {
            int[] iArr = new int[EnumC3113b.values().length];
            f78196a = iArr;
            try {
                iArr[EnumC3113b.Round.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f78196a[EnumC3113b.InvertedRound.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f78196a[EnumC3113b.Bevel.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f78196a[EnumC3113b.Notch.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f78196a[EnumC3113b.Squircle.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        public void b(Variable variable) {
            UIStyle.this.K0(variable.float_value);
        }

        @Override
        public Variable get() {
            return new Variable("", UIStyle.this.corner + "");
        }

        @Override
        public void set(final Variable variable) {
            if (variable != null) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        UIStyle.c.this.b(variable);
                    }
                });
            }
        }
    }

    public class d implements c.o0 {

        public class a extends c.n0<EnumC3113b> {
            public a() {
            }

            public final void e(EnumC3113b enumC3113b) {
                UIStyle.this.j1(enumC3113b);
            }

            @Override
            public void set(final EnumC3113b value) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        UIStyle.d.a.this.e(value);
                    }
                });
            }
        }

        public class b extends c.n0<EnumC3113b> {
            public b() {
            }

            public void e(EnumC3113b enumC3113b) {
                UIStyle.this.k1(enumC3113b);
            }

            @Override
            public void set(final EnumC3113b value) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        UIStyle.d.b.this.e(value);
                    }
                });
            }
        }

        public class c extends c.n0<EnumC3113b> {
            public c() {
            }

            public void e(EnumC3113b enumC3113b) {
                UIStyle.this.H0(enumC3113b);
            }

            @Override
            public void set(final EnumC3113b value) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        UIStyle.d.c.this.e(value);
                    }
                });
            }
        }

        public class C1309d extends c.n0<EnumC3113b> {
            public C1309d() {
            }

            public void e(EnumC3113b enumC3113b) {
                UIStyle.this.G0(enumC3113b);
            }

            @Override
            public void set(final EnumC3113b value) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        UIStyle.d.C1309d.this.e(value);
                    }
                });
            }
        }

        public d() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> list) {
            list.add(F5.c.i("Top-left", EnumC3113b.class, UIStyle.this.topLeftCorner, new a()));
            list.add(F5.c.i("Top-right", EnumC3113b.class, UIStyle.this.topRightCorner, new b()));
            list.add(F5.c.i("Bottom-right", EnumC3113b.class, UIStyle.this.bottomRightCorner, new c()));
            list.add(F5.c.i("Bottom-left", EnumC3113b.class, UIStyle.this.bottomLeftCorner, new C1309d()));
            return list;
        }
    }

    public class e implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            public void b(Variable variable) {
                UIStyle.this.N0(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIStyle.this.hole + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.e.a.this.b(v10);
                        }
                    });
                }
            }
        }

        public e() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> list) {
            list.add(new C5.b(new a(), FileRequest.FIELD_SIZE, b.a.SLFloat01));
            return list;
        }
    }

    public class f implements c.o0 {

        public class a extends c.n0<EnumC3116e> {
            public a() {
            }

            public final void e(EnumC3116e enumC3116e) {
                UIStyle.this.W0(enumC3116e);
            }

            @Override
            public void set(final EnumC3116e value) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        UIStyle.f.a.this.e(value);
                    }
                });
            }
        }

        public class b implements D5.h {
            public b() {
            }

            public void b(Variable variable) {
                UIStyle.this.X0(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIStyle.this.maskValue + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.f.b.this.b(v10);
                        }
                    });
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            public void b(Variable variable) {
                UIStyle.this.V0(variable.float_value * 360.0f);
            }

            @Override
            public Variable get() {
                return new Variable("", (UIStyle.this.maskAngle / 360.0f) + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.f.c.this.b(v10);
                        }
                    });
                }
            }
        }

        public f() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> list) {
            list.add(F5.c.i("Mode", EnumC3116e.class, UIStyle.this.maskMode, new a()));
            b bVar = new b();
            b.a aVar = b.a.SLFloat01;
            list.add(new C5.b(bVar, XMLExporter.ELEMENT_VALUE, aVar));
            list.add(new C5.b(new c(), "Angle", aVar));
            return list;
        }
    }

    public class g implements c.o0 {

        public final Context f78209a;

        public class a extends c.n0<EnumC3115d> {
            public a() {
            }

            public final void e(EnumC3115d enumC3115d) {
                UIStyle.this.M0(enumC3115d);
            }

            @Override
            public void set(final EnumC3115d value) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        UIStyle.g.a.this.e(value);
                    }
                });
            }
        }

        public class b implements D5.h {
            public b() {
            }

            public void b(Variable variable) {
                UIStyle.this.I0(variable.color_value.clone());
            }

            @Override
            public Variable get() {
                return UIStyle.this.color != null ? new Variable("temp", UIStyle.this.color) : new Variable("", "");
            }

            @Override
            public void set(final Variable variable) {
                if (variable != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.g.b.this.b(variable);
                        }
                    });
                }
            }
        }

        public class c implements a.b {
            public c() {
            }

            @Override
            public void a() {
                if (UIStyle.this.f78188a != null) {
                    K8.a.I(UIStyle.this.f78188a);
                }
            }
        }

        public class d implements D5.h {
            public d() {
            }

            public void b(Variable variable) {
                UIStyle.this.L0(variable.float_value * 360.0f);
            }

            @Override
            public Variable get() {
                return new Variable("", (UIStyle.this.gradientAngle / 360.0f) + "");
            }

            @Override
            public void set(final Variable variable) {
                if (variable != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.g.d.this.b(variable);
                        }
                    });
                }
            }
        }

        public g(final Context val$context) {
            this.f78209a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> list) {
            list.add(F5.c.i("Gradient mode", EnumC3115d.class, UIStyle.this.gradientMode, new a()));
            list.add(new C5.b(new b(), SerializableShaderEntry.f81153g, b.a.Color));
            list.add(N9.a.b("Color gradient", UIStyle.this.colorGradient, this.f78209a, new c()));
            list.add(new C5.b(new d(), "Gradient angle", b.a.SLFloat01));
            return list;
        }
    }

    public class h implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            public void b(Variable variable) {
                UIStyle.this.i1(variable.color_value);
            }

            @Override
            public Variable get() {
                return UIStyle.this.strokeColor != null ? new Variable("temp", UIStyle.this.strokeColor) : new Variable("", "");
            }

            @Override
            public void set(final Variable variable) {
                if (variable != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.h.a.this.b(variable);
                        }
                    });
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            public void b(Variable variable) {
                UIStyle.this.h1(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIStyle.this.stroke + "");
            }

            @Override
            public void set(final Variable variable) {
                if (variable != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.h.b.this.b(variable);
                        }
                    });
                }
            }
        }

        public h() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> list) {
            list.add(new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color));
            list.add(new C5.b(new b(), FileRequest.FIELD_SIZE, b.a.SLFloat));
            return list;
        }
    }

    public class i implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            public void b(Variable variable) {
                UIStyle.this.O0(variable.color_value);
            }

            @Override
            public Variable get() {
                return UIStyle.this.innerGlowColor != null ? new Variable("temp", UIStyle.this.innerGlowColor) : new Variable("", "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.i.a.this.b(v10);
                        }
                    });
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            public void b(Variable variable) {
                UIStyle.this.P0(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIStyle.this.innerGlowSize + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.i.b.this.b(v10);
                        }
                    });
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            public void b(Variable variable) {
                UIStyle.this.Q0(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIStyle.this.innerGlowSmooth + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.i.c.this.b(v10);
                        }
                    });
                }
            }
        }

        public i() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> list) {
            list.add(new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color));
            b bVar = new b();
            b.a aVar = b.a.SLFloat;
            list.add(new C5.b(bVar, FileRequest.FIELD_SIZE, aVar));
            list.add(new C5.b(new c(), "Smooth", aVar));
            return list;
        }
    }

    public class j implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            public void b(Variable variable) {
                UIStyle.this.Z0(variable.color_value);
            }

            @Override
            public Variable get() {
                return UIStyle.this.outerGlowColor != null ? new Variable("temp", UIStyle.this.outerGlowColor) : new Variable("", "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.j.a.this.b(v10);
                        }
                    });
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            public void b(Variable variable) {
                UIStyle.this.a1(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIStyle.this.outerGlowSize + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.j.b.this.b(v10);
                        }
                    });
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            public void b(Variable variable) {
                UIStyle.this.b1(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIStyle.this.outerGlowSmooth + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.j.c.this.b(v10);
                        }
                    });
                }
            }
        }

        public j() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> list) {
            list.add(new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color));
            b bVar = new b();
            b.a aVar = b.a.SLFloat;
            list.add(new C5.b(bVar, FileRequest.FIELD_SIZE, aVar));
            list.add(new C5.b(new c(), "Smooth", aVar));
            return list;
        }
    }

    public class k implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            public void b(Variable variable) {
                UIStyle.this.S0(variable.color_value);
            }

            @Override
            public Variable get() {
                return UIStyle.this.innerShadowColor != null ? new Variable("temp", UIStyle.this.innerShadowColor) : new Variable("", "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.k.a.this.b(v10);
                        }
                    });
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            public void b(Variable variable) {
                UIStyle.this.T0(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIStyle.this.innerShadowSize + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.k.b.this.b(v10);
                        }
                    });
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            public void b(Variable variable) {
                UIStyle.this.U0(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIStyle.this.innerShadowSmooth + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.k.c.this.b(v10);
                        }
                    });
                }
            }
        }

        public class d implements D5.h {
            public d() {
            }

            public void b(Variable variable) {
                UIStyle.this.R0(variable.float_value * 360.0f);
            }

            @Override
            public Variable get() {
                return new Variable("", (UIStyle.this.innerShadowAngle / 360.0f) + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIStyle.k.d.this.b(v10);
                        }
                    });
                }
            }
        }

        public k() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> list) {
            list.add(new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color));
            b bVar = new b();
            b.a aVar = b.a.SLFloat;
            list.add(new C5.b(bVar, FileRequest.FIELD_SIZE, aVar));
            list.add(new C5.b(new c(), "Smooth", aVar));
            list.add(new C5.b(new d(), "Angle", b.a.SLFloat01));
            return list;
        }
    }

    static {
        System.loadLibrary("ui-style");
    }

    public UIStyle() {
        EnumC3113b enumC3113b = EnumC3113b.Round;
        this.topLeftCorner = enumC3113b;
        this.topRightCorner = enumC3113b;
        this.bottomRightCorner = enumC3113b;
        this.bottomLeftCorner = enumC3113b;
        this.hole = 0.0f;
        this.innerGlowSize = 0.0f;
        this.innerGlowSmooth = 0.0f;
        this.innerGlowColor = new ColorINT(0, 255, 0);
        this.outerGlowSize = 0.0f;
        this.outerGlowSmooth = 0.0f;
        this.outerGlowColor = new ColorINT(0, 255, 0);
        this.innerShadowSize = 0.0f;
        this.innerShadowSmooth = 0.0f;
        this.innerShadowAngle = 0.14f;
        this.innerShadowColor = new ColorINT(0, 0, 0);
        this.outerShadowSize = 0.0f;
        this.outerShadowSmooth = 0.0f;
        this.outerShadowAngle = 0.14f;
        this.outerShadowColor = new ColorINT(0, 0, 0);
        this.maskMode = EnumC3116e.Linear;
        this.maskValue = 0.0f;
        this.maskAngle = 0.0f;
        this.f78189b = new float[24];
    }

    public static EnumC3113b B0(EnumC3113b t10) {
        return t10 != null ? t10 : EnumC3113b.Round;
    }

    public static void C0(float px, float py, float rx, float ry, float rw, float rh2, EnumC3113b tTL, EnumC3113b tTR, EnumC3113b tBR, EnumC3113b tBL, float cTL, float cTR, float cBR, float cBL, float[] out2) {
        float y02 = y0(px + 1.0f, py, rx, ry, rw, rh2, tTL, tTR, tBR, tBL, cTL, cTR, cBR, cBL) - y0(px - 1.0f, py, rx, ry, rw, rh2, tTL, tTR, tBR, tBL, cTL, cTR, cBR, cBL);
        float y03 = y0(px, py + 1.0f, rx, ry, rw, rh2, tTL, tTR, tBR, tBL, cTL, cTR, cBR, cBL) - y0(px, py - 1.0f, rx, ry, rw, rh2, tTL, tTR, tBR, tBL, cTL, cTR, cBR, cBL);
        float f10 = (y02 * y02) + (y03 * y03);
        if (f10 < 1.0E-12f) {
            out2[0] = 0.0f;
            out2[1] = 0.0f;
        } else {
            float sqrt = (float) (1.0d / Math.sqrt(f10));
            out2[0] = y02 * sqrt;
            out2[1] = y03 * sqrt;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static float E(float currentSDF, float px, float py, float rx, float ry, float rw, float rh2, EnumC3112a id2, EnumC3113b type, float c10) {
        float f10;
        float f11;
        boolean z10;
        int i10;
        float f12;
        float f13;
        float f14;
        float f15;
        if (type == null) {
            type = EnumC3113b.Round;
        }
        if (type == EnumC3113b.Sharp || c10 <= 0.0f) {
            return currentSDF;
        }
        EnumC3112a enumC3112a = EnumC3112a.TL;
        if (id2 == enumC3112a) {
            f10 = px - rx;
        } else {
            if (id2 != EnumC3112a.TR) {
                f10 = id2 == EnumC3112a.BR ? (rx + rw) - px : px - rx;
                f11 = (ry + rh2) - py;
                z10 = f10 > c10 && f11 <= c10;
                if (z10 && (type == EnumC3113b.Round || type == EnumC3113b.Squircle)) {
                    return currentSDF;
                }
                if (z10 && type == EnumC3113b.InvertedRound) {
                    return currentSDF;
                }
                i10 = b.f78196a[type.ordinal()];
                if (i10 != 1) {
                    if (id2 == enumC3112a) {
                        f12 = rx + c10;
                    } else {
                        if (id2 != EnumC3112a.TR) {
                            f12 = id2 == EnumC3112a.BR ? (rx + rw) - c10 : rx + c10;
                            f13 = (ry + rh2) - c10;
                            float f16 = px - f12;
                            float f17 = py - f13;
                            return Math.max(currentSDF, ((float) Math.sqrt((f16 * f16) + (f17 * f17))) - c10);
                        }
                        f12 = (rx + rw) - c10;
                    }
                    f13 = ry + c10;
                    float f162 = px - f12;
                    float f172 = py - f13;
                    return Math.max(currentSDF, ((float) Math.sqrt((f162 * f162) + (f172 * f172))) - c10);
                }
                if (i10 == 2) {
                    if (id2 != enumC3112a) {
                        if (id2 == EnumC3112a.TR) {
                            rx += rw;
                        } else {
                            if (id2 == EnumC3112a.BR) {
                                rx += rw;
                            }
                            ry += rh2;
                        }
                    }
                    float f18 = px - rx;
                    float f19 = py - ry;
                    return Math.max(currentSDF, c10 - ((float) Math.sqrt((f18 * f18) + (f19 * f19))));
                }
                if (i10 == 3) {
                    return Math.max(currentSDF, (c10 - (f10 + f11)) * 0.70710677f);
                }
                if (i10 == 4) {
                    if (id2 != enumC3112a) {
                        if (id2 == EnumC3112a.TR) {
                            rx = (rx + rw) - c10;
                        } else {
                            if (id2 == EnumC3112a.BR) {
                                rx = (rx + rw) - c10;
                            }
                            ry = (ry + rh2) - c10;
                        }
                    }
                    return Math.max(currentSDF, -z0(px, py, rx, ry, c10, c10));
                }
                if (i10 != 5) {
                    return currentSDF;
                }
                float I10 = ((1.0f - Nc.b.I(c10 / 64.0f)) * 2.0f) + 2.0f;
                if (id2 == enumC3112a) {
                    f14 = rx + c10;
                } else {
                    if (id2 != EnumC3112a.TR) {
                        f14 = id2 == EnumC3112a.BR ? (rx + rw) - c10 : rx + c10;
                        f15 = (ry + rh2) - c10;
                        return Math.max(currentSDF, o1(px - f14, py - f15, c10, I10));
                    }
                    f14 = (rx + rw) - c10;
                }
                f15 = ry + c10;
                return Math.max(currentSDF, o1(px - f14, py - f15, c10, I10));
            }
            f10 = (rx + rw) - px;
        }
        f11 = py - ry;
        if (f10 > c10) {
        }
        if (z10) {
        }
        if (z10) {
        }
        i10 = b.f78196a[type.ordinal()];
        if (i10 != 1) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0150 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void F(n tex, EnumC3116e mode, float maskValue01, float maskAngleDeg) {
        int i10;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        int i11;
        float f16;
        float f17;
        float f18;
        float floor;
        float I10 = I(maskValue01);
        if (I10 <= 0.0f) {
            return;
        }
        int width = tex.getWidth();
        int height = tex.getHeight();
        float f19 = width;
        float f20 = f19 * 0.5f;
        float f21 = height;
        float f22 = f21 * 0.5f;
        EnumC3116e enumC3116e = mode != null ? mode : EnumC3116e.Linear;
        if (enumC3116e == EnumC3116e.Linear) {
            double radians = (float) Math.toRadians(maskAngleDeg);
            i10 = width;
            float cos = (float) Math.cos(radians);
            float sin = (float) Math.sin(radians);
            if ((cos * cos) + (sin * sin) < 1.0E-12f) {
                cos = 1.0f;
                sin = 0.0f;
            }
            float f23 = cos * 0.5f;
            float f24 = sin * 0.5f;
            float f25 = f23 + f24;
            float f26 = (f19 - 0.5f) * cos;
            float f27 = f26 + f24;
            float f28 = (f21 - 0.5f) * sin;
            float f29 = f23 + f28;
            float f30 = f26 + f28;
            float f31 = cos;
            float min = Math.min(Math.min(f25, f27), Math.min(f29, f30));
            float max = Math.max(Math.max(f25, f27), Math.max(f29, f30)) - min;
            f13 = max > 1.0E-8f ? 1.0f / max : 0.0f;
            f12 = sin;
            f11 = min;
            f10 = f31;
        } else {
            i10 = width;
            f10 = 1.0f;
            f11 = 0.0f;
            f12 = 0.0f;
            f13 = 0.0f;
        }
        if (enumC3116e == EnumC3116e.Radial) {
            float max2 = Math.max(f20 - 0.5f, (f19 - 0.5f) - f20);
            float max3 = Math.max(f22 - 0.5f, (f21 - 0.5f) - f22);
            float sqrt = (float) Math.sqrt((max2 * max2) + (max3 * max3));
            if (sqrt > 1.0E-8f) {
                f14 = 1.0f / sqrt;
                if (enumC3116e != EnumC3116e.Sweep) {
                    float f32 = maskAngleDeg / 360.0f;
                    f15 = f32 - ((float) Math.floor(f32));
                } else {
                    f15 = 0.0f;
                }
                for (i11 = 0; i11 < height; i11++) {
                    float f33 = 0.5f;
                    float f34 = i11 + 0.5f;
                    int i12 = 0;
                    while (i12 < i10) {
                        int i13 = height;
                        float f35 = i12 + f33;
                        if (enumC3116e == EnumC3116e.Linear) {
                            floor = (((f35 * f10) + (f34 * f12)) - f11) * f13;
                            if (floor < 0.0f) {
                                floor = 0.0f;
                            } else if (floor > 1.0f) {
                                floor = 1.0f;
                            }
                            f16 = f10;
                            f17 = f11;
                        } else if (enumC3116e == EnumC3116e.Radial) {
                            float f36 = f35 - f20;
                            float f37 = f34 - f22;
                            float f38 = (f36 * f36) + (f37 * f37);
                            f16 = f10;
                            f17 = f11;
                            float sqrt2 = ((float) Math.sqrt(f38)) * f14;
                            if (sqrt2 > 1.0f) {
                                sqrt2 = 1.0f;
                            }
                            floor = sqrt2;
                        } else {
                            f16 = f10;
                            f17 = f11;
                            f18 = f14;
                            float atan2 = ((float) Math.atan2(f34 - f22, f35 - f20)) * 0.15915494f;
                            if (atan2 < 0.0f) {
                                atan2 += 1.0f;
                            }
                            float f39 = atan2 + f15;
                            floor = f39 - ((float) Math.floor(f39));
                            if (floor > I10) {
                                tex.f0(i12, i11, 0.0f, 0.0f, 0.0f, 0.0f);
                            }
                            i12++;
                            f10 = f16;
                            height = i13;
                            f11 = f17;
                            f14 = f18;
                            f33 = 0.5f;
                        }
                        f18 = f14;
                        if (floor > I10) {
                        }
                        i12++;
                        f10 = f16;
                        height = i13;
                        f11 = f17;
                        f14 = f18;
                        f33 = 0.5f;
                    }
                }
            }
        }
        f14 = 0.0f;
        if (enumC3116e != EnumC3116e.Sweep) {
        }
        while (i11 < height) {
        }
    }

    public static void H(float baseR, float baseG, float baseB, float baseA, ColorINT effectColor, float effectK, float[] outRGBA, boolean respectBaseAlpha) {
        float r10 = effectColor.r() * effectK;
        if (respectBaseAlpha) {
            r10 *= baseA;
        }
        if (r10 <= 0.0f) {
            outRGBA[0] = baseR;
            outRGBA[1] = baseG;
            outRGBA[2] = baseB;
            outRGBA[3] = baseA;
            return;
        }
        if (r10 > 1.0f) {
            r10 = 1.0f;
        }
        float w10 = effectColor.w();
        float u10 = effectColor.u();
        float s10 = effectColor.s();
        float f10 = 1.0f - r10;
        outRGBA[0] = (baseR * f10) + (w10 * r10);
        outRGBA[1] = (baseG * f10) + (u10 * r10);
        outRGBA[2] = (baseB * f10) + (s10 * r10);
        outRGBA[3] = baseA;
    }

    public static float I(float v10) {
        float f10 = 0.0f;
        if (v10 >= 0.0f) {
            f10 = 1.0f;
            if (v10 <= 1.0f) {
                return v10;
            }
        }
        return f10;
    }

    public static float J(float v10, float mn2, float mx) {
        return v10 < mn2 ? mn2 : v10 > mx ? mx : v10;
    }

    public static float K(float c10, float w10, float h10) {
        return Math.max(0.0f, Math.min(c10, Math.min(w10, h10) * 0.5f));
    }

    public static void L(n tex) {
        int width = tex.getWidth();
        int height = tex.getHeight();
        for (int i10 = 0; i10 < height; i10++) {
            for (int i11 = 0; i11 < width; i11++) {
                tex.f0(i11, i10, 0.0f, 0.0f, 0.0f, 0.0f);
            }
        }
    }

    public static float N(EnumC3113b t10, float base) {
        if (t10 == null) {
            t10 = EnumC3113b.Round;
        }
        if (t10 == EnumC3113b.Sharp) {
            return 0.0f;
        }
        return base;
    }

    public static UIStyle O(String json) {
        try {
            return (UIStyle) X7.a.m().fromJson(json, UIStyle.class);
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static float[] P(float angleDeg) {
        double radians = (float) Math.toRadians(angleDeg);
        return new float[]{(float) Math.cos(radians), (float) Math.sin(radians)};
    }

    public static float Q(float dist, float sizePx, float smoothPx) {
        if (sizePx <= 0.0f && smoothPx <= 0.0f) {
            return 0.0f;
        }
        if (dist <= sizePx) {
            return 1.0f;
        }
        if (smoothPx <= 0.0f) {
            return 0.0f;
        }
        return 1.0f - n1((dist - sizePx) / smoothPx);
    }

    public static float l1(float px, float py, float sdx, float sdy, float sizePx, float smoothPx, float rx, float ry, float rw, float rh2, EnumC3113b tTL, EnumC3113b tTR, EnumC3113b tBR, EnumC3113b tBL, float cTL, float cTR, float cBR, float cBL) {
        if (sizePx <= 0.0f) {
            return 0.0f;
        }
        float f10 = -y0(px - (sdx * sizePx), py - (sdy * sizePx), rx, ry, rw, rh2, tTL, tTR, tBR, tBL, cTL, cTR, cBR, cBL);
        if (f10 > 0.0f) {
            return 0.0f;
        }
        if (smoothPx <= 0.0f) {
            return 1.0f;
        }
        float f11 = (-f10) / smoothPx;
        if (f11 >= 1.0f) {
            return 1.0f;
        }
        return n1(f11);
    }

    public static float m1(float px, float py, float sdx, float sdy, float sizePx, float smoothPx, float rx, float ry, float rw, float rh2, EnumC3113b tTL, EnumC3113b tTR, EnumC3113b tBR, EnumC3113b tBL, float cTL, float cTR, float cBR, float cBL) {
        if (sizePx <= 0.0f) {
            return 0.0f;
        }
        float y02 = y0(px - (sdx * sizePx), py - (sdy * sizePx), rx, ry, rw, rh2, tTL, tTR, tBR, tBL, cTL, cTR, cBR, cBL);
        if (y02 > 0.0f) {
            return 0.0f;
        }
        if (smoothPx <= 0.0f) {
            return 1.0f;
        }
        float f10 = (-y02) / smoothPx;
        if (f10 >= 1.0f) {
            return 1.0f;
        }
        return n1(f10);
    }

    public static float n1(float t10) {
        if (t10 <= 0.0f) {
            return 0.0f;
        }
        if (t10 >= 1.0f) {
            return 1.0f;
        }
        return t10 * t10 * (3.0f - (t10 * 2.0f));
    }

    private static native boolean nativePaint(long verticesPointer, int textureType, float cornerPx, float strokePx, float hole, float innerGlowSizePx, float innerGlowSmoothPx, float outerGlowSizePx, float outerGlowSmoothPx, float innerShadowSizePx, float innerShadowSmoothPx, float innerShadowAngleDeg, float outerShadowSizePx, float outerShadowSmoothPx, float outerShadowAngleDeg, int gradientMode, float gradientAngle, int maskMode, float maskValue, float maskAngle, int topLeftCorner, int topRightCorner, int bottomRightCorner, int bottomLeftCorner, float[] colors, int gradientCount, float[] gradientPositions, float[] gradientColors);

    public static float o1(float vx, float vy, float r10, float p10) {
        float abs = Math.abs(vx);
        float abs2 = Math.abs(vy);
        double d10 = abs;
        double d11 = p10;
        double d12 = abs2;
        float pow = ((float) Math.pow(d10, d11)) + ((float) Math.pow(d12, d11));
        if (pow < 1.0E-12f) {
            return -r10;
        }
        double d13 = pow;
        float pow2 = ((float) Math.pow(d13, 1.0f / p10)) - r10;
        float pow3 = (float) Math.pow(d13, r3 - 1.0f);
        float pow4 = abs > 0.0f ? (float) (Math.pow(d10, p10 - 1.0f) * pow3) : 0.0f;
        float pow5 = abs2 > 0.0f ? (float) (Math.pow(d12, p10 - 1.0f) * pow3) : 0.0f;
        float sqrt = (float) Math.sqrt((pow4 * pow4) + (pow5 * pow5));
        return sqrt < 1.0E-6f ? pow2 : pow2 / sqrt;
    }

    public static void q1(float[] colors, int offset, ColorINT colorINT) {
        if (colorINT == null) {
            colors[offset] = 0.0f;
            colors[offset + 1] = 0.0f;
            colors[offset + 2] = 0.0f;
            colors[offset + 3] = 0.0f;
            return;
        }
        colors[offset] = colorINT.w();
        colors[offset + 1] = colorINT.u();
        colors[offset + 2] = colorINT.s();
        colors[offset + 3] = colorINT.r();
    }

    public static float y0(float px, float py, float rx, float ry, float rw, float rh2, EnumC3113b tTL, EnumC3113b tTR, EnumC3113b tBR, EnumC3113b tBL, float cTL, float cTR, float cBR, float cBL) {
        float z02 = z0(px, py, rx, ry, rw, rh2);
        float f10 = ry + (0.5f * rh2);
        boolean z10 = px < rx + (rw * 0.5f);
        boolean z11 = py < f10;
        if (z10 && z11) {
            z02 = E(z02, px, py, rx, ry, rw, rh2, EnumC3112a.TL, B0(tTL), cTL);
        }
        float f11 = z02;
        if (!z10 && z11) {
            f11 = E(f11, px, py, rx, ry, rw, rh2, EnumC3112a.TR, B0(tTR), cTR);
        }
        if (!z10 && !z11) {
            f11 = E(f11, px, py, rx, ry, rw, rh2, EnumC3112a.BR, B0(tBR), cBR);
        }
        return (!z10 || z11) ? f11 : E(f11, px, py, rx, ry, rw, rh2, EnumC3112a.BL, B0(tBL), cBL);
    }

    public static float z0(float px, float py, float rx, float ry, float rw, float rh2) {
        float f10 = rw * 0.5f;
        float f11 = rh2 * 0.5f;
        float abs = Math.abs(px - (rx + f10)) - f10;
        float abs2 = Math.abs(py - (ry + f11)) - f11;
        float max = Math.max(abs, 0.0f);
        float max2 = Math.max(abs2, 0.0f);
        return ((float) Math.sqrt((max * max) + (max2 * max2))) + Math.min(Math.max(abs, abs2), 0.0f);
    }

    public void A0() {
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    public JsonElement D0(Context context) {
        JsonElement jsonTree = X7.a.m().toJsonTree(this);
        return jsonTree;
    }

    public String E0() {
        return D0(N7.c.t()).toString();
    }

    public String F0(Context context) {
        return D0(context).toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01e9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void G(n tex, float ox, float oy, float ow, float oh2, EnumC3113b oTLT, EnumC3113b oTRT, EnumC3113b oBRT, EnumC3113b oBLT, float cOTL, float cOTR, float cOBR, float cOBL, boolean useHole, float ix, float iy, float iw, float ih2, EnumC3113b iTLT, EnumC3113b iTRT, EnumC3113b iBRT, EnumC3113b iBLT, float cITL, float cITR, float cIBR, float cIBL, float strokePx, ColorINT strokeColor, float oGlowSizePx, float oGlowSmoothPx, ColorINT oGlowColor, float oShadowSizePx, float oShadowSmoothPx, float oShadowAngleDeg, ColorINT oShadowColor) {
        float f10;
        float f11;
        int i10;
        float f12;
        float f13;
        float f14;
        int i11;
        int i12;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float l12;
        int width = tex.getWidth();
        int height = tex.getHeight();
        int i13 = 0;
        int i14 = 1;
        boolean z10 = strokeColor != null && strokeColor.r() > 0.0f && strokePx > 0.0f;
        boolean z11 = oGlowColor != null && oGlowColor.r() > 0.0f && (oGlowSizePx > 0.0f || oGlowSmoothPx > 0.0f);
        boolean z12 = oShadowColor != null && oShadowColor.r() > 0.0f && oShadowSizePx > 0.0f;
        if (z12) {
            float[] P10 = P(oShadowAngleDeg);
            float f20 = P10[0];
            f10 = P10[1];
            f11 = f20;
        } else {
            f10 = 0.0f;
            f11 = 1.0f;
        }
        int i15 = 0;
        while (i15 < height) {
            float f21 = i15 + 0.5f;
            int i16 = i13;
            while (i16 < width) {
                float f22 = i16 + 0.5f;
                float y02 = y0(f22, f21, ox, oy, ow, oh2, oTLT, oTRT, oBRT, oBLT, cOTL, cOTR, cOBR, cOBL);
                float y03 = useHole ? y0(f22, f21, ix, iy, iw, ih2, iTLT, iTRT, iBRT, iBLT, cITL, cITR, cIBR, cIBL) : 999999.0f;
                if (y02 > 0.0f || (useHole && y03 < 0.0f)) {
                    int i17 = y02 > 0.0f ? i14 : i13;
                    int i18 = (!useHole || y02 > 0.0f || y03 > 0.0f) ? i13 : i14;
                    if (i17 != 0 || i18 != 0) {
                        if (i17 != 0) {
                            i10 = i13;
                            f12 = y02;
                        } else {
                            i10 = i14;
                            f12 = -y03;
                        }
                        if (z12) {
                            if (i10 == 0) {
                                f13 = f12;
                                f14 = y03;
                                i11 = i16;
                                i12 = i15;
                                l12 = m1(f22, f21, f11, f10, oShadowSizePx, oShadowSmoothPx, ox, oy, ow, oh2, oTLT, oTRT, oBRT, oBLT, cOTL, cOTR, cOBR, cOBL);
                            } else {
                                f13 = f12;
                                f14 = y03;
                                i11 = i16;
                                i12 = i15;
                                l12 = l1(f22, f21, f11, f10, oShadowSizePx, oShadowSmoothPx, ix, iy, iw, ih2, iTLT, iTRT, iBRT, iBLT, cITL, cITR, cIBR, cIBL);
                            }
                            if (l12 > 0.0f) {
                                float r10 = oShadowColor.r() * l12;
                                if (r10 > 1.0f) {
                                    r10 = 1.0f;
                                }
                                float f23 = (1.0f - r10) * 0.0f;
                                f15 = (oShadowColor.w() * r10) + f23;
                                f17 = (oShadowColor.u() * r10) + f23;
                                f18 = (oShadowColor.s() * r10) + f23;
                                f16 = r10 + f23;
                                if (z11) {
                                    float Q10 = Q(f13, oGlowSizePx, oGlowSmoothPx);
                                    if (Q10 > 0.0f) {
                                        float r11 = oGlowColor.r() * Q10;
                                        if (r11 > 1.0f) {
                                            r11 = 1.0f;
                                        }
                                        float f24 = 1.0f - r11;
                                        f15 = (f15 * f24) + (oGlowColor.w() * r11);
                                        f17 = (f17 * f24) + (oGlowColor.u() * r11);
                                        f18 = (f18 * f24) + (oGlowColor.s() * r11);
                                        f16 = (f16 * f24) + r11;
                                    }
                                }
                                if (z10 || (i10 != 0 ? (-f14) > strokePx : y02 > strokePx)) {
                                    f19 = f16;
                                } else {
                                    float r12 = strokeColor.r();
                                    if (r12 > 1.0f) {
                                        r12 = 1.0f;
                                    }
                                    float f25 = 1.0f - r12;
                                    f15 = (f15 * f25) + (strokeColor.w() * r12);
                                    f17 = (f17 * f25) + (strokeColor.u() * r12);
                                    f18 = (f18 * f25) + (strokeColor.s() * r12);
                                    f19 = r12 + (f16 * f25);
                                }
                                if (f19 <= 0.0f) {
                                    tex.f0(i11, i12, f15 / f19, f17 / f19, f18 / f19, f19);
                                }
                                i16 = i11 + 1;
                                i15 = i12;
                                i13 = 0;
                                i14 = 1;
                            }
                        } else {
                            f13 = f12;
                            f14 = y03;
                            i11 = i16;
                            i12 = i15;
                        }
                        f15 = 0.0f;
                        f16 = 0.0f;
                        f17 = 0.0f;
                        f18 = 0.0f;
                        if (z11) {
                        }
                        if (z10) {
                        }
                        f19 = f16;
                        if (f19 <= 0.0f) {
                        }
                        i16 = i11 + 1;
                        i15 = i12;
                        i13 = 0;
                        i14 = 1;
                    }
                }
                i11 = i16;
                i12 = i15;
                i16 = i11 + 1;
                i15 = i12;
                i13 = 0;
                i14 = 1;
            }
            i15++;
            i13 = 0;
            i14 = 1;
        }
    }

    @InterfaceC15237a
    public void G0(EnumC3113b v10) {
        this.bottomLeftCorner = B0(v10);
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public void H0(EnumC3113b v10) {
        this.bottomRightCorner = B0(v10);
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public void I0(ColorINT v10) {
        this.color = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public void J0(Gradient v10) {
        this.colorGradient = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public void K0(float v10) {
        this.corner = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public void L0(float v10) {
        this.gradientAngle = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    public UIStyle clone() {
        UIStyle uIStyle = new UIStyle();
        uIStyle.gradientMode = this.gradientMode;
        uIStyle.color = ColorINT.k(this.color);
        uIStyle.strokeColor = ColorINT.k(this.strokeColor);
        Gradient gradient = this.colorGradient;
        uIStyle.colorGradient = gradient != null ? gradient.clone() : new Gradient();
        uIStyle.gradientAngle = this.gradientAngle;
        uIStyle.corner = this.corner;
        uIStyle.stroke = this.stroke;
        uIStyle.topLeftCorner = this.topLeftCorner;
        uIStyle.topRightCorner = this.topRightCorner;
        uIStyle.bottomRightCorner = this.bottomRightCorner;
        uIStyle.bottomLeftCorner = this.bottomLeftCorner;
        uIStyle.hole = this.hole;
        uIStyle.innerGlowSize = this.innerGlowSize;
        uIStyle.innerGlowSmooth = this.innerGlowSmooth;
        uIStyle.innerGlowColor = ColorINT.k(this.innerGlowColor);
        uIStyle.outerGlowSize = this.outerGlowSize;
        uIStyle.outerGlowSmooth = this.outerGlowSmooth;
        uIStyle.outerGlowColor = ColorINT.k(this.outerGlowColor);
        uIStyle.innerShadowSize = this.innerShadowSize;
        uIStyle.innerShadowSmooth = this.innerShadowSmooth;
        uIStyle.innerShadowAngle = this.innerShadowAngle;
        uIStyle.innerShadowColor = ColorINT.k(this.innerShadowColor);
        uIStyle.outerShadowSize = this.outerShadowSize;
        uIStyle.outerShadowSmooth = this.outerShadowSmooth;
        uIStyle.outerShadowAngle = this.outerShadowAngle;
        uIStyle.outerShadowColor = ColorINT.k(this.outerShadowColor);
        uIStyle.maskMode = this.maskMode;
        uIStyle.maskValue = this.maskValue;
        uIStyle.maskAngle = this.maskAngle;
        return uIStyle;
    }

    @InterfaceC15237a
    public void M0(EnumC3115d v10) {
        this.gradientMode = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public void N0(float v10) {
        this.hole = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public void O0(ColorINT v10) {
        this.innerGlowColor = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public void P0(float v10) {
        this.innerGlowSize = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public void Q0(float v10) {
        this.innerGlowSmooth = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:93:0x0204, code lost:
    
        if (r4 > 1.0f) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0206, code lost:
    
        r4 = 1.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0220, code lost:
    
        if (r4 > 1.0f) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void R(n tex, Gradient gradient, float angleDeg, float ox, float oy, float ow, float oh2, EnumC3113b oTLT, EnumC3113b oTRT, EnumC3113b oBRT, EnumC3113b oBLT, float cOTL, float cOTR, float cOBR, float cOBL, boolean useHole, float ix, float iy, float iw, float ih2, EnumC3113b iTLT, EnumC3113b iTRT, EnumC3113b iBRT, EnumC3113b iBLT, float cITL, float cITR, float cIBR, float cIBL, float innerGlowSizePx, float innerGlowSmoothPx, ColorINT innerGlowColor, float innerShadowSizePx, float innerShadowSmoothPx, float innerShadowAngleDeg, ColorINT innerShadowColor) {
        float f10;
        float f11;
        float[] fArr;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float floor;
        float w10;
        float u10;
        float s10;
        float r10;
        ColorINT colorINT;
        float f19;
        float f20;
        float f21;
        float f22;
        float f23;
        float f24;
        int width = tex.getWidth();
        int height = tex.getHeight();
        boolean z10 = innerGlowColor != null && innerGlowColor.r() > 0.0f && (innerGlowSizePx > 0.0f || innerGlowSmoothPx > 0.0f);
        boolean z11 = innerShadowColor != null && innerShadowColor.r() > 0.0f && (innerShadowSizePx > 0.0f || innerShadowSmoothPx > 0.0f);
        if (z11) {
            float[] P10 = P(innerShadowAngleDeg);
            float f25 = P10[0];
            f10 = P10[1];
            f11 = f25;
        } else {
            f10 = 0.0f;
            f11 = 1.0f;
        }
        ColorINT colorINT2 = new ColorINT();
        float[] fArr2 = new float[4];
        float[] fArr3 = new float[2];
        if (this.gradientMode == EnumC3115d.Linear) {
            double radians = (float) Math.toRadians(angleDeg);
            fArr = fArr2;
            float cos = (float) Math.cos(radians);
            float sin = (float) Math.sin(radians);
            if ((cos * cos) + (sin * sin) < 1.0E-12f) {
                sin = 0.0f;
                cos = 1.0f;
            }
            float f26 = (ox + 0.5f) * cos;
            float f27 = (oy + 0.5f) * sin;
            float f28 = f26 + f27;
            float f29 = ((ox + ow) - 0.5f) * cos;
            float f30 = f27 + f29;
            float f31 = ((oy + oh2) - 0.5f) * sin;
            float f32 = f26 + f31;
            float f33 = f29 + f31;
            float f34 = sin;
            float f35 = cos;
            float min = Math.min(Math.min(f28, f30), Math.min(f32, f33));
            float max = Math.max(Math.max(f28, f30), Math.max(f32, f33)) - min;
            f13 = min;
            f14 = max > 1.0E-8f ? 1.0f / max : 0.0f;
            f12 = f34;
            f15 = f35;
        } else {
            fArr = fArr2;
            f12 = 0.0f;
            f13 = 0.0f;
            f14 = 1.0f;
            f15 = 1.0f;
        }
        float f36 = ox + (ow * 0.5f);
        float f37 = oy + (oh2 * 0.5f);
        if (this.gradientMode == EnumC3115d.Radial) {
            float max2 = Math.max(f36 - ox, (ox + ow) - f36);
            float max3 = Math.max(f37 - oy, (oy + oh2) - f37);
            float sqrt = (float) Math.sqrt((max2 * max2) + (max3 * max3));
            f16 = sqrt > 1.0E-8f ? 1.0f / sqrt : 0.0f;
        } else {
            f16 = 0.0f;
        }
        if (this.gradientMode == EnumC3115d.Sweep) {
            float f38 = angleDeg / 360.0f;
            f17 = f38 - ((float) Math.floor(f38));
        } else {
            f17 = 0.0f;
        }
        int i10 = 0;
        while (i10 < height) {
            float f39 = i10 + 0.5f;
            int i11 = 0;
            while (i11 < width) {
                float f40 = i11 + 0.5f;
                float[] fArr4 = fArr3;
                int i12 = i11;
                int i13 = i10;
                float[] fArr5 = fArr;
                ColorINT colorINT3 = colorINT2;
                int i14 = height;
                int i15 = width;
                float y02 = y0(f40, f39, ox, oy, ow, oh2, oTLT, oTRT, oBRT, oBLT, cOTL, cOTR, cOBR, cOBL);
                if (y02 > 0.0f) {
                    tex.f0(i12, i13, 0.0f, 0.0f, 0.0f, 0.0f);
                } else {
                    if (useHole) {
                        f18 = y0(f40, f39, ix, iy, iw, ih2, iTLT, iTRT, iBRT, iBLT, cITL, cITR, cIBR, cIBL);
                        if (f18 <= 0.0f) {
                            tex.f0(i12, i13, 0.0f, 0.0f, 0.0f, 0.0f);
                        }
                    } else {
                        f18 = 999999.0f;
                    }
                    EnumC3115d enumC3115d = this.gradientMode;
                    if (enumC3115d == EnumC3115d.Solid) {
                        w10 = this.color.w();
                        u10 = this.color.u();
                        s10 = this.color.s();
                        r10 = this.color.r();
                    } else {
                        if (enumC3115d == EnumC3115d.Linear) {
                            floor = (((f40 * f15) + (f39 * f12)) - f13) * f14;
                            if (floor < 0.0f) {
                                floor = 0.0f;
                            }
                            gradient.l(floor, colorINT3);
                            w10 = colorINT3.w() * this.color.w();
                            u10 = colorINT3.u() * this.color.u();
                            s10 = colorINT3.s() * this.color.s();
                            r10 = colorINT3.r() * this.color.r();
                        } else {
                            if (enumC3115d == EnumC3115d.Radial) {
                                float f41 = f40 - f36;
                                float f42 = f39 - f37;
                                floor = ((float) Math.sqrt((f41 * f41) + (f42 * f42))) * f16;
                            } else {
                                float atan2 = ((float) Math.atan2(f39 - f37, f40 - f36)) * 0.15915494f;
                                if (atan2 < 0.0f) {
                                    atan2 += 1.0f;
                                }
                                float f43 = atan2 + f17;
                                floor = f43 - ((float) Math.floor(f43));
                            }
                            gradient.l(floor, colorINT3);
                            w10 = colorINT3.w() * this.color.w();
                            u10 = colorINT3.u() * this.color.u();
                            s10 = colorINT3.s() * this.color.s();
                            r10 = colorINT3.r() * this.color.r();
                        }
                        i11 = i12 + 1;
                        fArr3 = fArr4;
                        fArr = fArr5;
                        i10 = i13;
                        height = i14;
                        width = i15;
                        colorINT2 = colorINT;
                    }
                    float f44 = r10;
                    float f45 = -y02;
                    float f46 = useHole ? f18 : 999999.0f;
                    float min2 = Math.min(f45, f46);
                    boolean z12 = useHole && f46 < f45;
                    colorINT = colorINT3;
                    if (z10) {
                        float Q10 = Q(min2, innerGlowSizePx, innerGlowSmoothPx);
                        if (Q10 > 0.0f) {
                            H(w10, u10, s10, f44, innerGlowColor, Q10, fArr5, true);
                            f19 = fArr5[0];
                            f20 = fArr5[1];
                            f21 = fArr5[2];
                            if (z11) {
                                float Q11 = Q(min2, innerShadowSizePx, innerShadowSmoothPx);
                                if (Q11 > 0.0f) {
                                    if (z12) {
                                        C0(f40, f39, ix, iy, iw, ih2, iTLT, iTRT, iBRT, iBLT, cITL, cITR, cIBR, cIBL, fArr4);
                                        fArr4[0] = -fArr4[0];
                                        fArr4[1] = -fArr4[1];
                                    } else {
                                        C0(f40, f39, ox, oy, ow, oh2, oTLT, oTRT, oBRT, oBLT, cOTL, cOTR, cOBR, cOBL, fArr4);
                                    }
                                    float I10 = Q11 * I((fArr4[0] * f11) + (fArr4[1] * f10));
                                    if (I10 > 0.0f) {
                                        H(f19, f20, f21, f44, innerShadowColor, I10, fArr5, true);
                                        f22 = fArr5[0];
                                        f23 = fArr5[1];
                                        f24 = fArr5[2];
                                        tex.f0(i12, i13, f22, f23, f24, f44);
                                        i11 = i12 + 1;
                                        fArr3 = fArr4;
                                        fArr = fArr5;
                                        i10 = i13;
                                        height = i14;
                                        width = i15;
                                        colorINT2 = colorINT;
                                    }
                                }
                            }
                            f22 = f19;
                            f23 = f20;
                            f24 = f21;
                            tex.f0(i12, i13, f22, f23, f24, f44);
                            i11 = i12 + 1;
                            fArr3 = fArr4;
                            fArr = fArr5;
                            i10 = i13;
                            height = i14;
                            width = i15;
                            colorINT2 = colorINT;
                        }
                    }
                    f19 = w10;
                    f20 = u10;
                    f21 = s10;
                    if (z11) {
                    }
                    f22 = f19;
                    f23 = f20;
                    f24 = f21;
                    tex.f0(i12, i13, f22, f23, f24, f44);
                    i11 = i12 + 1;
                    fArr3 = fArr4;
                    fArr = fArr5;
                    i10 = i13;
                    height = i14;
                    width = i15;
                    colorINT2 = colorINT;
                }
                colorINT = colorINT3;
                i11 = i12 + 1;
                fArr3 = fArr4;
                fArr = fArr5;
                i10 = i13;
                height = i14;
                width = i15;
                colorINT2 = colorINT;
            }
            i10++;
        }
    }

    @InterfaceC15237a
    public void R0(float v10) {
        this.innerShadowAngle = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public EnumC3113b S() {
        return this.bottomLeftCorner;
    }

    @InterfaceC15237a
    public void S0(ColorINT v10) {
        this.innerShadowColor = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public EnumC3113b T() {
        return this.bottomRightCorner;
    }

    @InterfaceC15237a
    public void T0(float v10) {
        this.innerShadowSize = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public ColorINT U() {
        return this.color;
    }

    @InterfaceC15237a
    public void U0(float v10) {
        this.innerShadowSmooth = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public Gradient V() {
        return this.colorGradient;
    }

    @InterfaceC15237a
    public void V0(float v10) {
        this.maskAngle = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public float W() {
        return this.corner;
    }

    @InterfaceC15237a
    public void W0(EnumC3116e v10) {
        this.maskMode = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public float X() {
        return this.gradientAngle;
    }

    @InterfaceC15237a
    public void X0(float v10) {
        this.maskValue = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public EnumC3115d Y() {
        return this.gradientMode;
    }

    public void Y0(Runnable onRequestDrawRunnable) {
        if (this.f78188a == onRequestDrawRunnable) {
            return;
        }
        this.f78188a = onRequestDrawRunnable;
    }

    @InterfaceC15237a
    public float Z() {
        return this.hole;
    }

    @InterfaceC15237a
    public void Z0(ColorINT v10) {
        this.outerGlowColor = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public ColorINT a0() {
        return this.innerGlowColor;
    }

    @InterfaceC15237a
    public void a1(float v10) {
        this.outerGlowSize = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public float b0() {
        return this.innerGlowSize;
    }

    @InterfaceC15237a
    public void b1(float v10) {
        this.outerGlowSmooth = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public float c0() {
        return this.innerGlowSmooth;
    }

    @InterfaceC15237a
    public void c1(float v10) {
        this.outerShadowAngle = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public float d0() {
        return this.innerShadowAngle;
    }

    @InterfaceC15237a
    public void d1(ColorINT v10) {
        this.outerShadowColor = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public ColorINT e0() {
        return this.innerShadowColor;
    }

    @InterfaceC15237a
    public void e1(float v10) {
        this.outerShadowSize = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public float f0() {
        return this.innerShadowSize;
    }

    @InterfaceC15237a
    public void f1(float v10) {
        this.outerShadowSmooth = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public float g0() {
        return this.innerShadowSmooth;
    }

    public void g1(JAVARuntime.UIStyle run) {
        this.f78190c = run;
    }

    public List<C5.b> h0(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (context == null) {
            return steppedArrayList;
        }
        steppedArrayList.add(new C5.b(new c(), "Corner", b.a.SLFloat));
        steppedArrayList.add(F5.c.e("Corners", new d()));
        steppedArrayList.add(F5.c.e("Hole", new e()));
        steppedArrayList.add(F5.c.e("Mask", new f()));
        steppedArrayList.add(F5.c.e(SerializableShaderEntry.f81153g, new g(context)));
        steppedArrayList.add(F5.c.e("Stroke", new h()));
        steppedArrayList.add(F5.c.e("Inner glow", new i()));
        steppedArrayList.add(F5.c.e("Outer glow", new j()));
        steppedArrayList.add(F5.c.e("Inner shadow", new k()));
        steppedArrayList.add(F5.c.e("Outer shadow", new a()));
        return steppedArrayList;
    }

    @InterfaceC15237a
    public void h1(float v10) {
        this.stroke = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public float i0() {
        return this.maskAngle;
    }

    @InterfaceC15237a
    public void i1(ColorINT v10) {
        this.strokeColor = v10;
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public EnumC3116e j0() {
        return this.maskMode;
    }

    @InterfaceC15237a
    public void j1(EnumC3113b v10) {
        this.topLeftCorner = B0(v10);
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    @InterfaceC15237a
    public float k0() {
        return this.maskValue;
    }

    @InterfaceC15237a
    public void k1(EnumC3113b v10) {
        this.topRightCorner = B0(v10);
        Runnable runnable = this.f78188a;
        if (runnable != null) {
            runnable.run();
        }
    }

    public Runnable l0() {
        return this.f78188a;
    }

    @InterfaceC15237a
    public ColorINT m0() {
        return this.outerGlowColor;
    }

    @InterfaceC15237a
    public float n0() {
        return this.outerGlowSize;
    }

    @InterfaceC15237a
    public float o0() {
        return this.outerGlowSmooth;
    }

    @InterfaceC15237a
    public float p0() {
        return this.outerShadowAngle;
    }

    public JAVARuntime.UIStyle p1() {
        JAVARuntime.UIStyle uIStyle = this.f78190c;
        if (uIStyle != null) {
            return uIStyle;
        }
        JAVARuntime.UIStyle uIStyle2 = new JAVARuntime.UIStyle(this);
        this.f78190c = uIStyle2;
        return uIStyle2;
    }

    @InterfaceC15237a
    public ColorINT q0() {
        return this.outerShadowColor;
    }

    @InterfaceC15237a
    public float r0() {
        return this.outerShadowSize;
    }

    @InterfaceC15237a
    public float s0() {
        return this.outerShadowSmooth;
    }

    @InterfaceC15237a
    public float t0() {
        return this.stroke;
    }

    @InterfaceC15237a
    public ColorINT u0() {
        return this.strokeColor;
    }

    @InterfaceC15237a
    public EnumC3113b v0() {
        return this.topLeftCorner;
    }

    @InterfaceC15237a
    public EnumC3113b w0() {
        return this.topRightCorner;
    }

    public boolean x0(n scratchTexture, InterfaceC3114c DPConversor) {
        int i10;
        float[] fArr;
        float[] fArr2;
        scratchTexture.getWidth();
        scratchTexture.getHeight();
        float a10 = DPConversor.a(this.corner);
        float a11 = DPConversor.a(this.stroke);
        float a12 = DPConversor.a(this.innerGlowSize);
        float a13 = DPConversor.a(this.innerGlowSmooth);
        float a14 = DPConversor.a(this.outerGlowSize);
        float a15 = DPConversor.a(this.outerGlowSmooth);
        float a16 = DPConversor.a(this.innerShadowSize);
        float a17 = DPConversor.a(this.innerShadowSmooth);
        float a18 = DPConversor.a(this.outerShadowSize);
        float a19 = DPConversor.a(this.outerShadowSmooth);
        com.itsmagic.engine.Engines.Engine.Texture.Data.a x10 = scratchTexture.x();
        if (x10 instanceof NativeTextureRGBA8) {
            i10 = 0;
        } else {
            if (!(x10 instanceof NativeTextureRGB8)) {
                throw new RuntimeException("Unsupported texture type");
            }
            i10 = 1;
        }
        q1(this.f78189b, 0, this.color);
        q1(this.f78189b, 4, this.strokeColor);
        q1(this.f78189b, 8, this.innerGlowColor);
        q1(this.f78189b, 12, this.outerGlowColor);
        q1(this.f78189b, 16, this.innerShadowColor);
        q1(this.f78189b, 20, this.outerShadowColor);
        Gradient gradient = this.colorGradient;
        int j10 = gradient != null ? gradient.j() : 0;
        if (j10 > 0) {
            float[] fArr3 = new float[j10];
            float[] fArr4 = new float[j10 * 4];
            for (int i11 = 0; i11 < j10; i11++) {
                Entry i12 = this.colorGradient.i(i11);
                fArr3[i11] = i12.d();
                ColorINT c10 = i12.c();
                int i13 = i11 * 4;
                fArr4[i13] = c10.w();
                fArr4[i13 + 1] = c10.u();
                fArr4[i13 + 2] = c10.s();
                fArr4[i13 + 3] = c10.r();
            }
            fArr = fArr3;
            fArr2 = fArr4;
        } else {
            fArr = null;
            fArr2 = null;
        }
        EnumC3115d enumC3115d = this.gradientMode;
        if (enumC3115d == null) {
            enumC3115d = EnumC3115d.Solid;
        }
        int ordinal = enumC3115d.ordinal();
        EnumC3116e enumC3116e = this.maskMode;
        if (enumC3116e == null) {
            enumC3116e = EnumC3116e.Linear;
        }
        if (nativePaint(x10.getPointerCritical(), i10, a10, a11, this.hole, a12, a13, a14, a15, a16, a17, this.innerShadowAngle, a18, a19, this.outerShadowAngle, ordinal, this.gradientAngle, enumC3116e.ordinal(), this.maskValue, this.maskAngle, B0(this.topLeftCorner).ordinal(), B0(this.topRightCorner).ordinal(), B0(this.bottomRightCorner).ordinal(), B0(this.bottomLeftCorner).ordinal(), this.f78189b, j10, fArr, fArr2)) {
            return true;
        }
        throw new RuntimeException("Native paint failed");
    }
}
