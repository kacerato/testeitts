package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import F5.c;
import JAVARuntime.Component;
import N9.a;
import U9.C3118g;
import U9.EnumC3113b;
import U9.EnumC3115d;
import U9.EnumC3116e;
import U9.InterfaceC3114c;
import android.content.Context;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiRenderableComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.ImGui;
import com.itsmagic.engine.Engines.Engine.ImGUI.Styles.UIStyle;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIShape;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.tonyodev.fetch2core.server.FileRequest;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.List;
import s8.InterfaceC15237a;
import ub.p;
import yb.C16165b;

public class UIShape extends ImGuiRenderableComponent {

    public static final String f78706V = "UIShape";

    public static final Class f78707W = UIShape.class;

    public boolean f78708P;

    public final UIStyle f78709Q;

    public C3118g f78710R;

    public UIController f78711S;

    public final InterfaceC3114c f78712T;

    public Component f78713U;

    @Expose
    private EnumC3113b bottomLeftCorner;

    @Expose
    private EnumC3113b bottomRightCorner;

    @Expose
    @eb.f
    private ColorINT color;

    @Expose
    private Gradient colorGradient;

    @Expose
    @eb.f
    private float corner;

    @Expose
    @eb.f
    private float gradientAngle;

    @Expose
    private EnumC3115d gradientMode;

    @Expose
    @eb.f
    private float hole;

    @Expose
    @eb.f
    private ColorINT innerGlowColor;

    @Expose
    @eb.f
    private float innerGlowSize;

    @Expose
    @eb.f
    private float innerGlowSmooth;

    @Expose
    @eb.f
    private float innerShadowAngle;

    @Expose
    @eb.f
    private ColorINT innerShadowColor;

    @Expose
    @eb.f
    private float innerShadowSize;

    @Expose
    @eb.f
    private float innerShadowSmooth;

    @Expose
    @eb.f
    private float maskAngle;

    @Expose
    private EnumC3116e maskMode;

    @Expose
    @eb.f
    private float maskValue;

    @Expose
    @eb.f
    private ColorINT outerGlowColor;

    @Expose
    @eb.f
    private float outerGlowSize;

    @Expose
    @eb.f
    private float outerGlowSmooth;

    @Expose
    @eb.f
    private float outerShadowAngle;

    @Expose
    @eb.f
    private ColorINT outerShadowColor;

    @Expose
    @eb.f
    private float outerShadowSize;

    @Expose
    @eb.f
    private float outerShadowSmooth;

    @Expose
    @eb.f
    private float quality;

    @Expose
    @eb.f
    private float stroke;

    @Expose
    @eb.f
    private ColorINT strokeColor;

    @Expose
    private EnumC3113b topLeftCorner;

    @Expose
    private EnumC3113b topRightCorner;

    public class a implements c.o0 {

        public class C1327a implements D5.h {
            public C1327a() {
            }

            public void b(Variable variable) {
                UIShape.this.setInnerGlowColor(variable.color_value);
            }

            @Override
            public Variable get() {
                return UIShape.this.innerGlowColor != null ? new Variable("temp", UIShape.this.innerGlowColor) : new Variable("", "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.a.C1327a.this.b(v10);
                        }
                    });
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            public void b(Variable variable) {
                UIShape.this.setInnerGlowSize(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIShape.this.innerGlowSize + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.a.b.this.b(v10);
                        }
                    });
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            public void b(Variable variable) {
                UIShape.this.setInnerGlowSmooth(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIShape.this.innerGlowSmooth + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.a.c.this.b(v10);
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
            C5.b bVar = new C5.b(new C1327a(), SerializableShaderEntry.f81153g, b.a.Color);
            UIShape uIShape = UIShape.this;
            list.add(bVar.d(uIShape.f79250n, uIShape, "innerGlowColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            b bVar2 = new b();
            b.a aVar = b.a.SLFloat;
            C5.b bVar3 = new C5.b(bVar2, FileRequest.FIELD_SIZE, aVar);
            UIShape uIShape2 = UIShape.this;
            GameObject gameObject = uIShape2.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            list.add(bVar3.d(gameObject, uIShape2, "innerGlowSize", cVar));
            C5.b bVar4 = new C5.b(new c(), "Smooth", aVar);
            UIShape uIShape3 = UIShape.this;
            list.add(bVar4.d(uIShape3.f79250n, uIShape3, "innerGlowSmooth", cVar));
            return list;
        }
    }

    public class b implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            public void b(Variable variable) {
                UIShape.this.setOuterGlowColor(variable.color_value);
            }

            @Override
            public Variable get() {
                return UIShape.this.outerGlowColor != null ? new Variable("temp", UIShape.this.outerGlowColor) : new Variable("", "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.b.a.this.b(v10);
                        }
                    });
                }
            }
        }

        public class C1328b implements D5.h {
            public C1328b() {
            }

            public void b(Variable variable) {
                UIShape.this.setOuterGlowSize(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIShape.this.outerGlowSize + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.b.C1328b.this.b(v10);
                        }
                    });
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            public void b(Variable variable) {
                UIShape.this.setOuterGlowSmooth(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIShape.this.outerGlowSmooth + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.b.c.this.b(v10);
                        }
                    });
                }
            }
        }

        public b() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> list) {
            C5.b bVar = new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color);
            UIShape uIShape = UIShape.this;
            list.add(bVar.d(uIShape.f79250n, uIShape, "outerGlowColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            C1328b c1328b = new C1328b();
            b.a aVar = b.a.SLFloat;
            C5.b bVar2 = new C5.b(c1328b, FileRequest.FIELD_SIZE, aVar);
            UIShape uIShape2 = UIShape.this;
            GameObject gameObject = uIShape2.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            list.add(bVar2.d(gameObject, uIShape2, "outerGlowSize", cVar));
            C5.b bVar3 = new C5.b(new c(), "Smooth", aVar);
            UIShape uIShape3 = UIShape.this;
            list.add(bVar3.d(uIShape3.f79250n, uIShape3, "outerGlowSmooth", cVar));
            return list;
        }
    }

    public class c implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            public void b(Variable variable) {
                UIShape.this.setInnerShadowColor(variable.color_value);
            }

            @Override
            public Variable get() {
                return UIShape.this.innerShadowColor != null ? new Variable("temp", UIShape.this.innerShadowColor) : new Variable("", "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.c.a.this.b(v10);
                        }
                    });
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            public void b(Variable variable) {
                UIShape.this.setInnerShadowSize(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIShape.this.innerShadowSize + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.c.b.this.b(v10);
                        }
                    });
                }
            }
        }

        public class C1329c implements D5.h {
            public C1329c() {
            }

            public void b(Variable variable) {
                UIShape.this.setInnerShadowSmooth(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIShape.this.innerShadowSmooth + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.c.C1329c.this.b(v10);
                        }
                    });
                }
            }
        }

        public class d implements D5.h {
            public d() {
            }

            public void b(Variable variable) {
                UIShape.this.setInnerShadowAngle(variable.float_value * 360.0f);
            }

            @Override
            public Variable get() {
                return new Variable("", (UIShape.this.innerShadowAngle / 360.0f) + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.c.d.this.b(v10);
                        }
                    });
                }
            }
        }

        public c() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> list) {
            C5.b bVar = new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color);
            UIShape uIShape = UIShape.this;
            list.add(bVar.d(uIShape.f79250n, uIShape, "innerShadowColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            b bVar2 = new b();
            b.a aVar = b.a.SLFloat;
            C5.b bVar3 = new C5.b(bVar2, FileRequest.FIELD_SIZE, aVar);
            UIShape uIShape2 = UIShape.this;
            GameObject gameObject = uIShape2.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            list.add(bVar3.d(gameObject, uIShape2, "innerShadowSize", cVar));
            C5.b bVar4 = new C5.b(new C1329c(), "Smooth", aVar);
            UIShape uIShape3 = UIShape.this;
            list.add(bVar4.d(uIShape3.f79250n, uIShape3, "innerShadowSmooth", cVar));
            C5.b bVar5 = new C5.b(new d(), "Angle", b.a.SLFloat01);
            UIShape uIShape4 = UIShape.this;
            list.add(bVar5.d(uIShape4.f79250n, uIShape4, "innerShadowAngle", cVar));
            return list;
        }
    }

    public class d implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            public void b(Variable variable) {
                UIShape.this.setOuterShadowColor(variable.color_value);
            }

            @Override
            public Variable get() {
                return UIShape.this.outerShadowColor != null ? new Variable("temp", UIShape.this.outerShadowColor) : new Variable("", "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.d.a.this.b(v10);
                        }
                    });
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            public void b(Variable variable) {
                UIShape.this.setOuterShadowSize(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIShape.this.outerShadowSize + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.d.b.this.b(v10);
                        }
                    });
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            public void b(Variable variable) {
                UIShape.this.setOuterShadowSmooth(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIShape.this.outerShadowSmooth + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.d.c.this.b(v10);
                        }
                    });
                }
            }
        }

        public class C1330d implements D5.h {
            public C1330d() {
            }

            public void b(Variable variable) {
                UIShape.this.setOuterShadowAngle(variable.float_value * 360.0f);
            }

            @Override
            public Variable get() {
                return new Variable("", (UIShape.this.outerShadowAngle / 360.0f) + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.d.C1330d.this.b(v10);
                        }
                    });
                }
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
            C5.b bVar = new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color);
            UIShape uIShape = UIShape.this;
            list.add(bVar.d(uIShape.f79250n, uIShape, "outerShadowColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            b bVar2 = new b();
            b.a aVar = b.a.SLFloat;
            C5.b bVar3 = new C5.b(bVar2, FileRequest.FIELD_SIZE, aVar);
            UIShape uIShape2 = UIShape.this;
            GameObject gameObject = uIShape2.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            list.add(bVar3.d(gameObject, uIShape2, "outerShadowSize", cVar));
            C5.b bVar4 = new C5.b(new c(), "Smooth", aVar);
            UIShape uIShape3 = UIShape.this;
            list.add(bVar4.d(uIShape3.f79250n, uIShape3, "outerShadowSmooth", cVar));
            C5.b bVar5 = new C5.b(new C1330d(), "Angle", b.a.SLFloat01);
            UIShape uIShape4 = UIShape.this;
            list.add(bVar5.d(uIShape4.f79250n, uIShape4, "outerShadowAngle", cVar));
            return list;
        }
    }

    public class e implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            public void b(Variable variable) {
                UIShape.this.setQuality(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIShape.this.quality + "");
            }

            @Override
            public void set(final Variable variable) {
                if (variable != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.e.a.this.b(variable);
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
            C5.b bVar = new C5.b(new a(), "Quality", b.a.SLFloat01);
            UIShape uIShape = UIShape.this;
            list.add(bVar.d(uIShape.f79250n, uIShape, "quality", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            return list;
        }
    }

    public class f extends AbstractC13203c {
        @Override
        public Class b() {
            return UIShape.f78707W;
        }

        @Override
        public String c() {
            return UIShape.f78706V;
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return "Shape";
        }
    }

    public class g implements InterfaceC3114c {
        public g() {
        }

        @Override
        public float a(float px) {
            return UIShape.this.f78711S.dpToPx(px) * UIShape.this.quality;
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override
        public void run() {
            UIShape.this.requestUIDirty();
        }
    }

    public class i implements D5.h {
        public i() {
        }

        public void b(Variable variable) {
            UIShape.this.setCorner(variable.float_value);
        }

        @Override
        public Variable get() {
            return new Variable("", UIShape.this.corner + "");
        }

        @Override
        public void set(final Variable variable) {
            if (variable != null) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        UIShape.i.this.b(variable);
                    }
                });
            }
        }
    }

    public class j implements c.o0 {

        public class a extends c.n0<EnumC3113b> {
            public a() {
            }

            public void e(EnumC3113b enumC3113b) {
                UIShape.this.setTopLeftCorner(enumC3113b);
            }

            @Override
            public void set(final EnumC3113b value) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        UIShape.j.a.this.e(value);
                    }
                });
            }
        }

        public class b extends c.n0<EnumC3113b> {
            public b() {
            }

            public void e(EnumC3113b enumC3113b) {
                UIShape.this.setTopRightCorner(enumC3113b);
            }

            @Override
            public void set(final EnumC3113b value) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        UIShape.j.b.this.e(value);
                    }
                });
            }
        }

        public class c extends c.n0<EnumC3113b> {
            public c() {
            }

            public void e(EnumC3113b enumC3113b) {
                UIShape.this.setBottomRightCorner(enumC3113b);
            }

            @Override
            public void set(final EnumC3113b value) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        UIShape.j.c.this.e(value);
                    }
                });
            }
        }

        public class d extends c.n0<EnumC3113b> {
            public d() {
            }

            public void e(EnumC3113b enumC3113b) {
                UIShape.this.setBottomLeftCorner(enumC3113b);
            }

            @Override
            public void set(final EnumC3113b value) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        UIShape.j.d.this.e(value);
                    }
                });
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
            list.add(F5.c.i("Top-left", EnumC3113b.class, UIShape.this.topLeftCorner, new a()));
            list.add(F5.c.i("Top-right", EnumC3113b.class, UIShape.this.topRightCorner, new b()));
            list.add(F5.c.i("Bottom-right", EnumC3113b.class, UIShape.this.bottomRightCorner, new c()));
            list.add(F5.c.i("Bottom-left", EnumC3113b.class, UIShape.this.bottomLeftCorner, new d()));
            return list;
        }
    }

    public class k implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            public void b(Variable variable) {
                UIShape.this.setHole(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIShape.this.hole + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.k.a.this.b(v10);
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
            C5.b bVar = new C5.b(new a(), FileRequest.FIELD_SIZE, b.a.SLFloat01);
            UIShape uIShape = UIShape.this;
            list.add(bVar.d(uIShape.f79250n, uIShape, "hole", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            return list;
        }
    }

    public class l implements c.o0 {

        public class a extends c.n0<EnumC3116e> {
            public a() {
            }

            public void e(EnumC3116e enumC3116e) {
                UIShape.this.setMaskMode(enumC3116e);
            }

            @Override
            public void set(final EnumC3116e value) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        UIShape.l.a.this.e(value);
                    }
                });
            }
        }

        public class b implements D5.h {
            public b() {
            }

            public void b(Variable variable) {
                UIShape.this.setMaskValue(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIShape.this.maskValue + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.l.b.this.b(v10);
                        }
                    });
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            public void b(Variable variable) {
                UIShape.this.setMaskAngle(variable.float_value * 360.0f);
            }

            @Override
            public Variable get() {
                return new Variable("", (UIShape.this.maskAngle / 360.0f) + "");
            }

            @Override
            public void set(final Variable v10) {
                if (v10 != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.l.c.this.b(v10);
                        }
                    });
                }
            }
        }

        public l() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> list) {
            list.add(F5.c.i("Mode", EnumC3116e.class, UIShape.this.maskMode, new a()));
            b bVar = new b();
            b.a aVar = b.a.SLFloat01;
            C5.b bVar2 = new C5.b(bVar, XMLExporter.ELEMENT_VALUE, aVar);
            UIShape uIShape = UIShape.this;
            GameObject gameObject = uIShape.f79250n;
            com.itsmagic.engine.Engines.Engine.Animation.c cVar = com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT;
            list.add(bVar2.d(gameObject, uIShape, "maskValue", cVar));
            C5.b bVar3 = new C5.b(new c(), "Angle", aVar);
            UIShape uIShape2 = UIShape.this;
            list.add(bVar3.d(uIShape2.f79250n, uIShape2, "maskAngle", cVar));
            return list;
        }
    }

    public class m implements c.o0 {

        public final Context f78748a;

        public class a extends c.n0<EnumC3115d> {
            public a() {
            }

            public void e(EnumC3115d enumC3115d) {
                UIShape.this.setGradientMode(enumC3115d);
            }

            @Override
            public void set(final EnumC3115d value) {
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        UIShape.m.a.this.e(value);
                    }
                });
            }
        }

        public class b implements D5.h {
            public b() {
            }

            public void b(Variable variable) {
                UIShape.this.setColor(variable.color_value.clone());
            }

            @Override
            public Variable get() {
                return UIShape.this.color != null ? new Variable("temp", UIShape.this.color) : new Variable("", "");
            }

            @Override
            public void set(final Variable variable) {
                if (variable != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.m.b.this.b(variable);
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
                K8.a.I(new Runnable() {
                    @Override
                    public final void run() {
                        UIShape.m.c.this.c();
                    }
                });
            }

            public final void c() {
                UIShape.this.requestDraw();
            }
        }

        public class d implements D5.h {
            public d() {
            }

            public void b(Variable variable) {
                UIShape.this.setGradientAngle(variable.float_value * 360.0f);
            }

            @Override
            public Variable get() {
                return new Variable("", (UIShape.this.gradientAngle / 360.0f) + "");
            }

            @Override
            public void set(final Variable variable) {
                if (variable != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.m.d.this.b(variable);
                        }
                    });
                }
            }
        }

        public m(final Context val$context) {
            this.f78748a = val$context;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> list) {
            list.add(F5.c.i("Gradient mode", EnumC3115d.class, UIShape.this.gradientMode, new a()));
            C5.b bVar = new C5.b(new b(), SerializableShaderEntry.f81153g, b.a.Color);
            UIShape uIShape = UIShape.this;
            list.add(bVar.d(uIShape.f79250n, uIShape, "color", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            list.add(N9.a.b("Color gradient", UIShape.this.colorGradient, this.f78748a, new c()));
            C5.b bVar2 = new C5.b(new d(), "Gradient angle", b.a.SLFloat01);
            UIShape uIShape2 = UIShape.this;
            list.add(bVar2.d(uIShape2.f79250n, uIShape2, "gradientAngle", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            return list;
        }
    }

    public class n implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            public void b(Variable variable) {
                UIShape.this.setStrokeColor(variable.color_value);
            }

            @Override
            public Variable get() {
                return UIShape.this.strokeColor != null ? new Variable("temp", UIShape.this.strokeColor) : new Variable("", "");
            }

            @Override
            public void set(final Variable variable) {
                if (variable != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.n.a.this.b(variable);
                        }
                    });
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            public void b(Variable variable) {
                UIShape.this.setStroke(variable.float_value);
            }

            @Override
            public Variable get() {
                return new Variable("", UIShape.this.stroke + "");
            }

            @Override
            public void set(final Variable variable) {
                if (variable != null) {
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            UIShape.n.b.this.b(variable);
                        }
                    });
                }
            }
        }

        public n() {
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> list) {
            C5.b bVar = new C5.b(new a(), SerializableShaderEntry.f81153g, b.a.Color);
            UIShape uIShape = UIShape.this;
            list.add(bVar.d(uIShape.f79250n, uIShape, "strokeColor", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
            C5.b bVar2 = new C5.b(new b(), FileRequest.FIELD_SIZE, b.a.SLFloat);
            UIShape uIShape2 = UIShape.this;
            list.add(bVar2.d(uIShape2.f79250n, uIShape2, "stroke", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
            return list;
        }
    }

    static {
        C13201a.b(new f());
    }

    public UIShape() {
        super(f78706V);
        this.gradientMode = EnumC3115d.Solid;
        this.color = new ColorINT();
        this.strokeColor = new ColorINT(222, 222, 222);
        this.colorGradient = new Gradient();
        this.gradientAngle = 0.0f;
        this.corner = 8.0f;
        this.stroke = 0.0f;
        this.quality = 0.8f;
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
        this.f78708P = false;
        this.f78709Q = new UIStyle();
        this.f78710R = null;
        this.f78712T = new g();
        this.colorGradient.n();
    }

    private void syncStyleRuntime() {
        this.f78709Q.M0(this.gradientMode);
        this.f78709Q.I0(this.color);
        this.f78709Q.i1(this.strokeColor);
        this.f78709Q.J0(this.colorGradient);
        this.f78709Q.L0(this.gradientAngle);
        this.f78709Q.K0(this.corner);
        this.f78709Q.h1(this.stroke);
        this.f78709Q.j1(this.topLeftCorner);
        this.f78709Q.k1(this.topRightCorner);
        this.f78709Q.H0(this.bottomRightCorner);
        this.f78709Q.G0(this.bottomLeftCorner);
        this.f78709Q.N0(this.hole);
        this.f78709Q.P0(this.innerGlowSize);
        this.f78709Q.Q0(this.innerGlowSmooth);
        this.f78709Q.O0(this.innerGlowColor);
        this.f78709Q.a1(this.outerGlowSize);
        this.f78709Q.b1(this.outerGlowSmooth);
        this.f78709Q.Z0(this.outerGlowColor);
        this.f78709Q.T0(this.innerShadowSize);
        this.f78709Q.U0(this.innerShadowSmooth);
        this.f78709Q.R0(this.innerShadowAngle);
        this.f78709Q.S0(this.innerShadowColor);
        this.f78709Q.e1(this.outerShadowSize);
        this.f78709Q.f1(this.outerShadowSmooth);
        this.f78709Q.c1(this.outerShadowAngle);
        this.f78709Q.d1(this.outerShadowColor);
        this.f78709Q.W0(this.maskMode);
        this.f78709Q.X0(this.maskValue);
        this.f78709Q.V0(this.maskAngle);
    }

    @Override
    public void calculateInternalSizeEnd(UIController controller) {
    }

    @Override
    public void calculateInternalSizeStart(UIController controller) {
        if (getUIRectComponent() == null) {
            return;
        }
        setInternalWidgetRect(0, 0, r6, r7, r6, r7);
    }

    @InterfaceC15237a
    public EnumC3113b getBottomLeftCorner() {
        return this.bottomLeftCorner;
    }

    @InterfaceC15237a
    public EnumC3113b getBottomRightCorner() {
        return this.bottomRightCorner;
    }

    @InterfaceC15237a
    public ColorINT getColor() {
        return this.color;
    }

    @InterfaceC15237a
    public Gradient getColorGradient() {
        return this.colorGradient;
    }

    @InterfaceC15237a
    public float getCorner() {
        return this.corner;
    }

    @InterfaceC15237a
    public float getGradientAngle() {
        return this.gradientAngle;
    }

    @InterfaceC15237a
    public EnumC3115d getGradientMode() {
        return this.gradientMode;
    }

    @InterfaceC15237a
    public float getHole() {
        return this.hole;
    }

    @Override
    public int getIconResource() {
        return R.drawable.sui_button_v3;
    }

    @InterfaceC15237a
    public ColorINT getInnerGlowColor() {
        return this.innerGlowColor;
    }

    @InterfaceC15237a
    public float getInnerGlowSize() {
        return this.innerGlowSize;
    }

    @InterfaceC15237a
    public float getInnerGlowSmooth() {
        return this.innerGlowSmooth;
    }

    @InterfaceC15237a
    public float getInnerShadowAngle() {
        return this.innerShadowAngle;
    }

    @InterfaceC15237a
    public ColorINT getInnerShadowColor() {
        return this.innerShadowColor;
    }

    @InterfaceC15237a
    public float getInnerShadowSize() {
        return this.innerShadowSize;
    }

    @InterfaceC15237a
    public float getInnerShadowSmooth() {
        return this.innerShadowSmooth;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        List<C5.b> inspectorEntries = super.getInspectorEntries(context);
        if (inspectorEntries == null) {
            inspectorEntries = new SteppedArrayList<>();
        }
        if (context == null) {
            return inspectorEntries;
        }
        inspectorEntries.add(new C5.b(new i(), "Corner", b.a.SLFloat).d(this.f79250n, this, "corner", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Corners", new j()));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Hole", new k()));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Mask", new l()));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), SerializableShaderEntry.f81153g, new m(context)));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Stroke", new n()));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Inner glow", new a()));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Outer glow", new b()));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Inner shadow", new c()));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Outer shadow", new d()));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Others", new e()));
        return inspectorEntries;
    }

    @InterfaceC15237a
    public float getMaskAngle() {
        return this.maskAngle;
    }

    @InterfaceC15237a
    public EnumC3116e getMaskMode() {
        return this.maskMode;
    }

    @InterfaceC15237a
    public float getMaskValue() {
        return this.maskValue;
    }

    @InterfaceC15237a
    public ColorINT getOuterGlowColor() {
        return this.outerGlowColor;
    }

    @InterfaceC15237a
    public float getOuterGlowSize() {
        return this.outerGlowSize;
    }

    @InterfaceC15237a
    public float getOuterGlowSmooth() {
        return this.outerGlowSmooth;
    }

    @InterfaceC15237a
    public float getOuterShadowAngle() {
        return this.outerShadowAngle;
    }

    @InterfaceC15237a
    public ColorINT getOuterShadowColor() {
        return this.outerShadowColor;
    }

    @InterfaceC15237a
    public float getOuterShadowSize() {
        return this.outerShadowSize;
    }

    @InterfaceC15237a
    public float getOuterShadowSmooth() {
        return this.outerShadowSmooth;
    }

    @InterfaceC15237a
    public float getQuality() {
        return this.quality;
    }

    @InterfaceC15237a
    public float getStroke() {
        return this.stroke;
    }

    @InterfaceC15237a
    public ColorINT getStrokeColor() {
        return this.strokeColor;
    }

    @Override
    public String getTitle() {
        return "Shape";
    }

    @InterfaceC15237a
    public EnumC3113b getTopLeftCorner() {
        return this.topLeftCorner;
    }

    @InterfaceC15237a
    public EnumC3113b getTopRightCorner() {
        return this.topRightCorner;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        C3118g c3118g = this.f78710R;
        if (c3118g != null) {
            c3118g.i();
            this.f78710R = null;
        }
    }

    @Override
    public void onDrawFrame() {
        super.onDrawFrame();
        C3118g c3118g = this.f78710R;
        if (c3118g != null) {
            c3118g.s();
        }
    }

    @Override
    public void onGuiEnd(UIController controller) {
    }

    @Override
    public void onGuiStart(UIController controller) {
        if (getUIRectComponent() == null) {
            return;
        }
        ImGui.nativeSetCursorPos(getUIRectComponent().getGlobalPosition().f(), getUIRectComponent().getGlobalPosition().g());
        p pVar = C16165b.f130161g;
        C3118g c3118g = this.f78710R;
        if (c3118g != null && c3118g.p()) {
            pVar = this.f78710R.n();
        }
        ImGui.g(pVar, getUIRectComponent().getGlobalSize().e(), getUIRectComponent().getGlobalSize().f());
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        C3118g c3118g;
        super.onHierarchyActiveChanged(enabled);
        if (!enabled || (c3118g = this.f78710R) == null) {
            return;
        }
        c3118g.r();
        requestUIDirty();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.f78711S = getUIControllerComponent();
        if (getUIRectComponent() == null) {
            return;
        }
        W9.c screenRect = getUIRectComponent().getScreenRect();
        int M10 = (int) Nc.b.M(1.0f, screenRect.c() * this.quality);
        int M11 = (int) Nc.b.M(1.0f, screenRect.b() * this.quality);
        C3118g c3118g = this.f78710R;
        if (c3118g == null) {
            this.f78710R = new C3118g(M10, M11, this.f78712T, new h());
            this.f78708P = true;
        } else if (c3118g.y(M10, M11)) {
            this.f78708P = true;
        }
        if (this.f78708P) {
            this.f78710R.r();
            syncStyleRuntime();
            this.f78708P = false;
        }
        this.f78710R.z(this.f78709Q);
        this.f78710R.w(null);
        this.f78710R.j();
    }

    @InterfaceC15237a
    public void requestDraw() {
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setBottomLeftCorner(EnumC3113b v10) {
        EnumC3113b B02 = UIStyle.B0(v10);
        if (this.bottomLeftCorner == B02) {
            return;
        }
        this.bottomLeftCorner = B02;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setBottomRightCorner(EnumC3113b v10) {
        EnumC3113b B02 = UIStyle.B0(v10);
        if (this.bottomRightCorner == B02) {
            return;
        }
        this.bottomRightCorner = B02;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setColor(ColorINT v10) {
        ColorINT colorINT = this.color;
        if (colorINT == null && v10 == null) {
            return;
        }
        if (colorINT == null || v10 == null || colorINT.intColor != v10.intColor) {
            this.color = v10;
            this.f78708P = true;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setColorGradient(Gradient v10) {
        if (this.colorGradient == v10) {
            return;
        }
        this.colorGradient = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setCorner(float v10) {
        if (this.corner == v10) {
            return;
        }
        this.corner = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setGradientAngle(float v10) {
        if (this.gradientAngle == v10) {
            return;
        }
        this.gradientAngle = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setGradientMode(EnumC3115d v10) {
        if (this.gradientMode == v10) {
            return;
        }
        this.gradientMode = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setHole(float v10) {
        if (this.hole == v10) {
            return;
        }
        this.hole = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setInnerGlowColor(ColorINT v10) {
        ColorINT colorINT = this.innerGlowColor;
        if (colorINT == null && v10 == null) {
            return;
        }
        if (colorINT == null || v10 == null || colorINT.intColor != v10.intColor) {
            this.innerGlowColor = v10;
            this.f78708P = true;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setInnerGlowSize(float v10) {
        if (this.innerGlowSize == v10) {
            return;
        }
        this.innerGlowSize = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setInnerGlowSmooth(float v10) {
        if (this.innerGlowSmooth == v10) {
            return;
        }
        this.innerGlowSmooth = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setInnerShadowAngle(float v10) {
        if (this.innerShadowAngle == v10) {
            return;
        }
        this.innerShadowAngle = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setInnerShadowColor(ColorINT v10) {
        ColorINT colorINT = this.innerShadowColor;
        if (colorINT == null && v10 == null) {
            return;
        }
        if (colorINT == null || v10 == null || colorINT.intColor != v10.intColor) {
            this.innerShadowColor = v10;
            this.f78708P = true;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setInnerShadowSize(float v10) {
        if (this.innerShadowSize == v10) {
            return;
        }
        this.innerShadowSize = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setInnerShadowSmooth(float v10) {
        if (this.innerShadowSmooth == v10) {
            return;
        }
        this.innerShadowSmooth = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setMaskAngle(float v10) {
        if (this.maskAngle == v10) {
            return;
        }
        this.maskAngle = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setMaskMode(EnumC3116e v10) {
        if (this.maskMode == v10) {
            return;
        }
        this.maskMode = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setMaskValue(float v10) {
        if (this.maskValue == v10) {
            return;
        }
        this.maskValue = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setOuterGlowColor(ColorINT v10) {
        ColorINT colorINT = this.outerGlowColor;
        if (colorINT == null && v10 == null) {
            return;
        }
        if (colorINT == null || v10 == null || colorINT.intColor != v10.intColor) {
            this.outerGlowColor = v10;
            this.f78708P = true;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setOuterGlowSize(float v10) {
        if (this.outerGlowSize == v10) {
            return;
        }
        this.outerGlowSize = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setOuterGlowSmooth(float v10) {
        if (this.outerGlowSmooth == v10) {
            return;
        }
        this.outerGlowSmooth = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setOuterShadowAngle(float v10) {
        if (this.outerShadowAngle == v10) {
            return;
        }
        this.outerShadowAngle = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setOuterShadowColor(ColorINT v10) {
        ColorINT colorINT = this.outerShadowColor;
        if (colorINT == null && v10 == null) {
            return;
        }
        if (colorINT == null || v10 == null || colorINT.intColor != v10.intColor) {
            this.outerShadowColor = v10;
            this.f78708P = true;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setOuterShadowSize(float v10) {
        if (this.outerShadowSize == v10) {
            return;
        }
        this.outerShadowSize = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setOuterShadowSmooth(float v10) {
        if (this.outerShadowSmooth == v10) {
            return;
        }
        this.outerShadowSmooth = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setQuality(float v10) {
        if (this.quality == v10) {
            return;
        }
        this.quality = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @Override
    public void setRuntime(Component run) {
        this.f78713U = run;
    }

    @InterfaceC15237a
    public void setStroke(float v10) {
        if (this.stroke == v10) {
            return;
        }
        this.stroke = v10;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setStrokeColor(ColorINT v10) {
        ColorINT colorINT = this.strokeColor;
        if (colorINT == null && v10 == null) {
            return;
        }
        if (colorINT == null || v10 == null || colorINT.intColor != v10.intColor) {
            this.strokeColor = v10;
            this.f78708P = true;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setTopLeftCorner(EnumC3113b v10) {
        EnumC3113b B02 = UIStyle.B0(v10);
        if (this.topLeftCorner == B02) {
            return;
        }
        this.topLeftCorner = B02;
        this.f78708P = true;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setTopRightCorner(EnumC3113b v10) {
        EnumC3113b B02 = UIStyle.B0(v10);
        if (this.topRightCorner == B02) {
            return;
        }
        this.topRightCorner = B02;
        this.f78708P = true;
        requestUIDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f78713U;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIShape uIShape = new JAVARuntime.UIShape(this);
        this.f78713U = uIShape;
        return uIShape;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIShape uIShape = new UIShape();
        uIShape.gradientMode = this.gradientMode;
        uIShape.color = ColorINT.k(this.color);
        uIShape.strokeColor = ColorINT.k(this.strokeColor);
        Gradient gradient = this.colorGradient;
        uIShape.colorGradient = gradient != null ? gradient.clone() : new Gradient();
        uIShape.gradientAngle = this.gradientAngle;
        uIShape.corner = this.corner;
        uIShape.stroke = this.stroke;
        uIShape.quality = this.quality;
        uIShape.topLeftCorner = this.topLeftCorner;
        uIShape.topRightCorner = this.topRightCorner;
        uIShape.bottomRightCorner = this.bottomRightCorner;
        uIShape.bottomLeftCorner = this.bottomLeftCorner;
        uIShape.hole = this.hole;
        uIShape.innerGlowSize = this.innerGlowSize;
        uIShape.innerGlowSmooth = this.innerGlowSmooth;
        uIShape.innerGlowColor = ColorINT.k(this.innerGlowColor);
        uIShape.outerGlowSize = this.outerGlowSize;
        uIShape.outerGlowSmooth = this.outerGlowSmooth;
        uIShape.outerGlowColor = ColorINT.k(this.outerGlowColor);
        uIShape.innerShadowSize = this.innerShadowSize;
        uIShape.innerShadowSmooth = this.innerShadowSmooth;
        uIShape.innerShadowAngle = this.innerShadowAngle;
        uIShape.innerShadowColor = ColorINT.k(this.innerShadowColor);
        uIShape.outerShadowSize = this.outerShadowSize;
        uIShape.outerShadowSmooth = this.outerShadowSmooth;
        uIShape.outerShadowAngle = this.outerShadowAngle;
        uIShape.outerShadowColor = ColorINT.k(this.outerShadowColor);
        uIShape.maskMode = this.maskMode;
        uIShape.maskValue = this.maskValue;
        uIShape.maskAngle = this.maskAngle;
        return uIShape;
    }
}
