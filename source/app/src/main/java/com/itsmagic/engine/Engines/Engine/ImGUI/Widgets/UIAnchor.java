package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import F5.c;
import JAVARuntime.Color;
import JAVARuntime.Component;
import JAVARuntime.Gizmo;
import JAVARuntime.GizmoPath;
import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiLayoutComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ImGUI.Enums.HorizontalConstraintTarget;
import com.itsmagic.engine.Engines.Engine.ImGUI.Enums.VerticalConstraintTarget;
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.HorizontalUIAnchorObject;
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.VerticalUIAnchorObject;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Square5I;
import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Vec2I;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import s8.InterfaceC15237a;

public class UIAnchor extends ImGuiLayoutComponent {

    public static final String f78357S = "UIAnchor";

    public static final Class f78358T = UIAnchor.class;

    public final Map<String, GizmoPath> f78359P;

    public final Set<GizmoPath> f78360Q;

    public Component f78361R;

    @Expose
    public VerticalUIAnchorObject bottomAnchor;

    @Expose
    public boolean expandH;

    @Expose
    public boolean expandW;

    @Expose
    public HorizontalUIAnchorObject leftAnchor;

    @Expose
    public HorizontalUIAnchorObject rightAnchor;

    @Expose
    public VerticalUIAnchorObject topAnchor;

    public class a implements D5.k {

        public final T9.h f78362a;

        public a(final T9.h val$dualEntryListener) {
            this.f78362a = val$dualEntryListener;
        }

        @Override
        public boolean allowSelect() {
            return true;
        }

        @Override
        public GameObject get() {
            return this.f78362a.e();
        }

        @Override
        public String getExtraTittle() {
            return " (" + Lang.l(Lang.T.OBJECT) + ")";
        }

        @Override
        public GameObject getParent() {
            GameObject gameObject = UIAnchor.this.f79250n;
            if (gameObject != null) {
                return gameObject.f79294k;
            }
            return null;
        }

        @Override
        public void set(GameObject gameObject) {
            this.f78362a.d(gameObject);
        }
    }

    public class b implements T9.g {

        public final T9.h f78364a;

        public b(final T9.h val$dualEntryListener) {
            this.f78364a = val$dualEntryListener;
        }

        @Override
        public void a() {
            this.f78364a.a();
        }

        @Override
        public void b(VerticalConstraintTarget value) {
            this.f78364a.b(value);
        }
    }

    public class c implements T9.c {

        public final T9.d f78366a;

        public c(final T9.d val$dualEntryListener) {
            this.f78366a = val$dualEntryListener;
        }

        @Override
        public void a() {
            this.f78366a.a();
        }

        @Override
        public void b(HorizontalConstraintTarget value) {
            this.f78366a.e(value);
        }
    }

    public class d implements D5.k {

        public final T9.d f78368a;

        public d(final T9.d val$dualEntryListener) {
            this.f78368a = val$dualEntryListener;
        }

        @Override
        public boolean allowSelect() {
            return true;
        }

        @Override
        public GameObject get() {
            return this.f78368a.b();
        }

        @Override
        public String getExtraTittle() {
            return " (" + Lang.l(Lang.T.OBJECT) + ")";
        }

        @Override
        public GameObject getParent() {
            GameObject gameObject = UIAnchor.this.f79250n;
            if (gameObject != null) {
                return gameObject.f79294k;
            }
            return null;
        }

        @Override
        public void set(GameObject gameObject) {
            this.f78368a.d(gameObject);
        }
    }

    public class e implements T9.c {

        public final T9.d f78370a;

        public e(final T9.d val$dualEntryListener) {
            this.f78370a = val$dualEntryListener;
        }

        @Override
        public void a() {
            this.f78370a.a();
        }

        @Override
        public void b(HorizontalConstraintTarget value) {
            this.f78370a.e(value);
        }
    }

    public class f extends c.n0<VerticalConstraintTarget> {

        public final T9.g f78372a;

        public f(final T9.g val$unitTypeEntryListener) {
            this.f78372a = val$unitTypeEntryListener;
        }

        @Override
        public void a() {
            this.f78372a.a();
        }

        @Override
        public void set(VerticalConstraintTarget value) {
            this.f78372a.b(value);
            this.f78372a.a();
        }

        @Override
        public String c(VerticalConstraintTarget enumObject) {
            int i10 = h.f78377b[enumObject.ordinal()];
            return i10 != 1 ? i10 != 2 ? i10 != 3 ? enumObject.toString() : Lang.l(Lang.T.UNFIXED) : Lang.l(Lang.T.TO_BOTTOM_OF) : Lang.l(Lang.T.TO_TOP_OF);
        }
    }

    public class g extends c.n0<HorizontalConstraintTarget> {

        public final T9.c f78374a;

        public g(final T9.c val$unitTypeEntryListener) {
            this.f78374a = val$unitTypeEntryListener;
        }

        @Override
        public void a() {
            this.f78374a.a();
        }

        @Override
        public void set(HorizontalConstraintTarget value) {
            this.f78374a.b(value);
            this.f78374a.a();
        }

        @Override
        public String c(HorizontalConstraintTarget enumObject) {
            int i10 = h.f78376a[enumObject.ordinal()];
            return i10 != 1 ? i10 != 2 ? i10 != 3 ? enumObject.toString() : Lang.l(Lang.T.UNFIXED) : Lang.l(Lang.T.TO_RIGHT_OF) : Lang.l(Lang.T.TO_LEFT_OF);
        }
    }

    public static class h {

        public static final int[] f78376a;

        public static final int[] f78377b;

        static {
            int[] iArr = new int[VerticalConstraintTarget.values().length];
            f78377b = iArr;
            try {
                iArr[VerticalConstraintTarget.ToTopOf.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f78377b[VerticalConstraintTarget.ToBottomOf.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f78377b[VerticalConstraintTarget.Unfixed.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[HorizontalConstraintTarget.values().length];
            f78376a = iArr2;
            try {
                iArr2[HorizontalConstraintTarget.ToLeftOf.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f78376a[HorizontalConstraintTarget.ToRightOf.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f78376a[HorizontalConstraintTarget.Unfixed.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public class i extends AbstractC13203c {
        @Override
        public Class b() {
            return UIAnchor.f78358T;
        }

        @Override
        public String c() {
            return UIAnchor.f78357S;
        }

        @Override
        public String e() {
            return "UI/Utils";
        }

        @Override
        public String h(boolean translate) {
            return "Anchor";
        }
    }

    public class j implements BiConsumer<String, GizmoPath> {

        public final List f78378a;

        public j(final List val$staleKeys) {
            this.f78378a = val$staleKeys;
        }

        @Override
        public void accept(String key, GizmoPath gizmoPath) {
            if (UIAnchor.this.f78360Q.contains(gizmoPath)) {
                return;
            }
            this.f78378a.add(key);
        }
    }

    public class k implements T9.e {
        public k() {
        }

        @Override
        public void a() {
            UIAnchor.this.reloadInspector();
        }
    }

    public class l implements c.o0 {

        public class a implements D5.h {
            public a() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIAnchor.this.leftAnchor.p() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIAnchor.this.setLeftOffset(variable.int_value);
                }
            }
        }

        public class b implements D5.h {
            public b() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIAnchor.this.topAnchor.p() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIAnchor.this.setTopOffset(variable.int_value);
                }
            }
        }

        public class c implements D5.h {
            public c() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIAnchor.this.rightAnchor.p() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIAnchor.this.setRightOffset(variable.int_value);
                }
            }
        }

        public class d implements D5.h {
            public d() {
            }

            @Override
            public Variable get() {
                return new Variable("", UIAnchor.this.bottomAnchor.p() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    UIAnchor.this.setBottomOffset(variable.int_value);
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
        public List<C5.b> b(List<C5.b> entries) {
            a aVar = new a();
            b.a aVar2 = b.a.SLInt;
            entries.add(new C5.b(aVar, "Left", aVar2));
            entries.add(new C5.b(new b(), "Top", aVar2));
            entries.add(new C5.b(new c(), "Right", aVar2));
            entries.add(new C5.b(new d(), "Bottom", aVar2));
            return entries;
        }
    }

    public class m implements D5.h {
        public m() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIAnchor.this.expandW + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIAnchor.this.setExpandW(variable.booolean_value.booleanValue());
            }
        }
    }

    public class n implements D5.h {
        public n() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIAnchor.this.expandH + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIAnchor.this.setExpandH(variable.booolean_value.booleanValue());
            }
        }
    }

    public class o implements T9.h {

        public final T9.e f78388a;

        public final VerticalUIAnchorObject f78389b;

        public o(final T9.e val$injectionEntryListener, final VerticalUIAnchorObject val$UIAnchorObject) {
            this.f78388a = val$injectionEntryListener;
            this.f78389b = val$UIAnchorObject;
        }

        @Override
        public void a() {
            this.f78388a.a();
        }

        @Override
        public void b(VerticalConstraintTarget value) {
            this.f78389b.q(value);
            UIAnchor.this.markLayoutDirty();
        }

        @Override
        public VerticalConstraintTarget c() {
            return this.f78389b.o();
        }

        @Override
        public void d(GameObject object) {
            this.f78389b.h(object);
            UIAnchor.this.markLayoutDirty();
        }

        @Override
        public GameObject e() {
            return this.f78389b.e();
        }
    }

    public class p implements T9.d {

        public final T9.e f78391a;

        public final HorizontalUIAnchorObject f78392b;

        public p(final T9.e val$injectionEntryListener, final HorizontalUIAnchorObject val$UIAnchorObject) {
            this.f78391a = val$injectionEntryListener;
            this.f78392b = val$UIAnchorObject;
        }

        @Override
        public void a() {
            this.f78391a.a();
        }

        @Override
        public GameObject b() {
            return this.f78392b.e();
        }

        @Override
        public HorizontalConstraintTarget c() {
            return this.f78392b.o();
        }

        @Override
        public void d(GameObject object) {
            this.f78392b.h(object);
            UIAnchor.this.markLayoutDirty();
        }

        @Override
        public void e(HorizontalConstraintTarget value) {
            this.f78392b.q(value);
            UIAnchor.this.markLayoutDirty();
        }
    }

    public class q implements T9.g {

        public final T9.h f78394a;

        public q(final T9.h val$dualEntryListener) {
            this.f78394a = val$dualEntryListener;
        }

        @Override
        public void a() {
            this.f78394a.a();
        }

        @Override
        public void b(VerticalConstraintTarget value) {
            this.f78394a.b(value);
        }
    }

    static {
        C13201a.b(new i());
    }

    public UIAnchor() {
        super(f78357S);
        this.leftAnchor = new HorizontalUIAnchorObject();
        this.topAnchor = new VerticalUIAnchorObject();
        this.rightAnchor = new HorizontalUIAnchorObject();
        this.bottomAnchor = new VerticalUIAnchorObject();
        this.expandW = false;
        this.expandH = false;
        this.f78359P = new HashMap();
        this.f78360Q = new HashSet();
    }

    public C5.b createAnchorObjectEntry(Context context, VerticalUIAnchorObject UIAnchorObject, String tittle, T9.e injectionEntryListener) {
        return createDualConstraint(context, tittle, new o(injectionEntryListener, UIAnchorObject));
    }

    public C5.b createConstraintEntry(String tittle, Context context, VerticalConstraintTarget currentType, T9.g unitTypeEntryListener) {
        return F5.c.i(tittle, VerticalConstraintTarget.class, currentType, new f(unitTypeEntryListener));
    }

    public C5.b createDualConstraint(Context context, String varName, T9.h dualEntryListener) {
        if (dualEntryListener.c() == VerticalConstraintTarget.Unfixed) {
            return createConstraintEntry(varName + " to", context, dualEntryListener.c(), new q(dualEntryListener));
        }
        C5.b bVar = new C5.b((String) null, b.a.Vector, new C5.b[2]);
        bVar.f2081p[0] = new C5.b(new a(dualEntryListener), varName);
        bVar.f2081p[1] = createConstraintEntry(TypedValues.TransitionType.S_TO, context, dualEntryListener.c(), new b(dualEntryListener));
        return bVar;
    }

    public void drawAnchor(Vector3 from, Vector3 to, float scaler, boolean drawEndBall) {
        float f10 = scaler * 20.0f;
        Gizmo.drawSphere(from.toJAVARuntime(), new JAVARuntime.Vector3(f10, f10, 1.0f), new Color(214, 78, 69));
        if (drawEndBall) {
            Gizmo.drawSphere(to.toJAVARuntime(), new JAVARuntime.Vector3(f10, f10, 1.0f), new Color(214, 113, 69));
        }
        String str = from.toString() + "-" + to.toString();
        GizmoPath gizmoPath = this.f78359P.get(str);
        if (gizmoPath != null) {
            this.f78360Q.add(gizmoPath);
            Ub.a.a(gizmoPath);
            return;
        }
        GizmoPath gizmoPath2 = new GizmoPath();
        gizmoPath2.addLine(from.toJAVARuntime(), to.toJAVARuntime());
        gizmoPath2.setColor(new Color(255, 60, 46));
        Ub.a.a(gizmoPath2);
        this.f78360Q.add(gizmoPath2);
        this.f78359P.put(str, gizmoPath2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void drawGizmos(float scaler, boolean drawEndBall) {
        if (super.getUIRectComponent() != null) {
            getUIControllerScreenRect().c();
            float b10 = getUIControllerScreenRect().b();
            if (getTopAnchorPoints() != null) {
                drawAnchor(new Vector3(-r1.a().f(), b10 - r1.a().g(), 5000.0f), new Vector3(-r1.c().f(), b10 - r1.c().g(), 5000.0f), scaler, drawEndBall);
            }
            if (getBottomAnchorPoints() != null) {
                drawAnchor(new Vector3(-r1.a().f(), b10 - r1.a().g(), 5000.0f), new Vector3(-r1.c().f(), b10 - r1.c().g(), 5000.0f), scaler, drawEndBall);
            }
            if (getLeftAnchorPoints() != null) {
                drawAnchor(new Vector3(-r1.a().f(), b10 - r1.a().g(), 5000.0f), new Vector3(-r1.c().f(), b10 - r1.c().g(), 5000.0f), scaler, drawEndBall);
            }
            if (getRightAnchorPoints() != null) {
                drawAnchor(new Vector3(-r1.a().f(), b10 - r1.a().g(), 5000.0f), new Vector3(-r1.c().f(), b10 - r1.c().g(), 5000.0f), scaler, drawEndBall);
            }
        }
        try {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            this.f78359P.forEach(new j(steppedArrayList));
            for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                this.f78359P.remove((String) steppedArrayList.get(i10));
            }
        } catch (ConcurrentModificationException unused) {
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f78360Q.clear();
    }

    @InterfaceC15237a
    public VerticalConstraintTarget getBottomAnchor() {
        return this.bottomAnchor.constraintTarget;
    }

    public V9.j getBottomAnchorPoints() {
        UIRect n10;
        if (super.getUIRectComponent() == null || (n10 = this.bottomAnchor.n()) == null) {
            return null;
        }
        Vector3 vector3 = new Vector3();
        Vector3 vector32 = new Vector3();
        vector3.setX(r0.getScreenRect().d() + (r0.getScreenRect().c() / 2.0f));
        vector3.setY(r0.getScreenRect().e() + r0.getScreenRect().b());
        vector32.setX(n10.getScreenRect().d() + (n10.getScreenRect().c() / 2.0f));
        int i10 = h.f78377b[this.bottomAnchor.constraintTarget.ordinal()];
        if (i10 == 1) {
            vector32.setY(n10.getScreenRect().e());
        } else if (i10 == 2) {
            vector32.setY(n10.getScreenRect().e() + n10.getScreenRect().b());
        }
        return new V9.j(new Vec2I((int) vector3.getX(), (int) vector3.getY()), new Vec2I((int) vector32.getX(), (int) vector32.getY()), n10.f79250n);
    }

    @InterfaceC15237a
    public int getBottomOffset() {
        return this.bottomAnchor.p();
    }

    @InterfaceC15237a
    public GameObject getBottomTarget() {
        if (this.bottomAnchor.o() == VerticalConstraintTarget.Unfixed) {
            return null;
        }
        return this.bottomAnchor.e();
    }

    @Override
    public int getIconResource() {
        return R.drawable.sui_constraint;
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
        k kVar = new k();
        inspectorEntries.add(createAnchorObjectEntry(context, this.leftAnchor, Lang.l(Lang.T.LEFT), kVar));
        inspectorEntries.add(createAnchorObjectEntry(context, this.topAnchor, Lang.l(Lang.T.TOP), kVar));
        inspectorEntries.add(createAnchorObjectEntry(context, this.rightAnchor, Lang.l(Lang.T.RIGHT), kVar));
        inspectorEntries.add(createAnchorObjectEntry(context, this.bottomAnchor, Lang.l(Lang.T.BOTTOM), kVar));
        inspectorEntries.add(F5.c.d(getInspectorMemory(), "Margin", new l()));
        m mVar = new m();
        b.a aVar = b.a.SLBoolean;
        inspectorEntries.add(new C5.b(mVar, "Expand width", aVar));
        inspectorEntries.add(new C5.b(new n(), "Expand height", aVar));
        return inspectorEntries;
    }

    @Override
    public int getLayoutDependencyStamp() {
        int ordinal = ((((this.leftAnchor.o().ordinal() + 31) * 31) + this.leftAnchor.p()) * 31) + (this.leftAnchor.c() != null ? this.leftAnchor.c().hashCode() : 0);
        UIRect n10 = this.leftAnchor.n();
        int layoutStamp = (((((((ordinal * 31) + (n10 != null ? n10.getLayoutStamp() : 0)) * 31) + this.rightAnchor.o().ordinal()) * 31) + this.rightAnchor.p()) * 31) + (this.rightAnchor.c() != null ? this.rightAnchor.c().hashCode() : 0);
        UIRect n11 = this.rightAnchor.n();
        int layoutStamp2 = (((((((layoutStamp * 31) + (n11 != null ? n11.getLayoutStamp() : 0)) * 31) + this.topAnchor.o().ordinal()) * 31) + this.topAnchor.p()) * 31) + (this.topAnchor.c() != null ? this.topAnchor.c().hashCode() : 0);
        UIRect n12 = this.topAnchor.n();
        int layoutStamp3 = (((((((layoutStamp2 * 31) + (n12 != null ? n12.getLayoutStamp() : 0)) * 31) + this.bottomAnchor.o().ordinal()) * 31) + this.bottomAnchor.p()) * 31) + (this.bottomAnchor.c() != null ? this.bottomAnchor.c().hashCode() : 0);
        UIRect n13 = this.bottomAnchor.n();
        return (((((layoutStamp3 * 31) + (n13 != null ? n13.getLayoutStamp() : 0)) * 31) + (this.expandW ? 1 : 0)) * 31) + (this.expandH ? 1 : 0);
    }

    @Override
    public int getLayoutLayer() {
        return 1;
    }

    @InterfaceC15237a
    public HorizontalConstraintTarget getLeftAnchor() {
        return this.leftAnchor.constraintTarget;
    }

    public V9.j getLeftAnchorPoints() {
        UIRect n10;
        if (super.getUIRectComponent() == null || (n10 = this.leftAnchor.n()) == null) {
            return null;
        }
        Vector3 vector3 = new Vector3();
        Vector3 vector32 = new Vector3();
        vector3.setX(r0.getScreenRect().d());
        vector3.setY(r0.getScreenRect().e() + (r0.getScreenRect().b() / 2.0f));
        int i10 = h.f78376a[this.leftAnchor.constraintTarget.ordinal()];
        if (i10 == 1) {
            vector32.setX(n10.getScreenRect().d());
        } else if (i10 == 2) {
            vector32.setX(n10.getScreenRect().d() + n10.getScreenRect().c());
        }
        vector32.setY(n10.getScreenRect().e() + (n10.getScreenRect().b() / 2.0f));
        return new V9.j(new Vec2I((int) vector3.getX(), (int) vector3.getY()), new Vec2I((int) vector32.getX(), (int) vector32.getY()), n10.f79250n);
    }

    @InterfaceC15237a
    public int getLeftOffset() {
        return this.leftAnchor.p();
    }

    @InterfaceC15237a
    public GameObject getLeftTarget() {
        if (this.leftAnchor.o() == HorizontalConstraintTarget.Unfixed) {
            return null;
        }
        return this.leftAnchor.e();
    }

    @InterfaceC15237a
    public HorizontalConstraintTarget getRightAnchor() {
        return this.rightAnchor.constraintTarget;
    }

    public V9.j getRightAnchorPoints() {
        UIRect n10;
        if (super.getUIRectComponent() == null || (n10 = this.rightAnchor.n()) == null) {
            return null;
        }
        Vector3 vector3 = new Vector3();
        Vector3 vector32 = new Vector3();
        vector3.setX(r0.getScreenRect().d() + r0.getScreenRect().c());
        vector3.setY(r0.getScreenRect().e() + (r0.getScreenRect().b() / 2.0f));
        int i10 = h.f78376a[this.rightAnchor.constraintTarget.ordinal()];
        if (i10 == 1) {
            vector32.setX(n10.getScreenRect().d());
        } else if (i10 == 2) {
            vector32.setX(n10.getScreenRect().d() + n10.getScreenRect().c());
        }
        vector32.setY(n10.getScreenRect().e() + (n10.getScreenRect().b() / 2.0f));
        return new V9.j(new Vec2I((int) vector3.getX(), (int) vector3.getY()), new Vec2I((int) vector32.getX(), (int) vector32.getY()), n10.f79250n);
    }

    @InterfaceC15237a
    public int getRightOffset() {
        return this.rightAnchor.p();
    }

    @InterfaceC15237a
    public GameObject getRightTarget() {
        if (this.rightAnchor.o() == HorizontalConstraintTarget.Unfixed) {
            return null;
        }
        return this.rightAnchor.e();
    }

    @Override
    public String getTitle() {
        return "Anchor";
    }

    @InterfaceC15237a
    public VerticalConstraintTarget getTopAnchor() {
        return this.topAnchor.constraintTarget;
    }

    public V9.j getTopAnchorPoints() {
        UIRect n10;
        if (super.getUIRectComponent() == null || (n10 = this.topAnchor.n()) == null) {
            return null;
        }
        Vector3 vector3 = new Vector3();
        Vector3 vector32 = new Vector3();
        vector3.setX(r0.getScreenRect().d() + (r0.getScreenRect().c() / 2.0f));
        vector3.setY(r0.getScreenRect().e());
        vector32.setX(n10.getScreenRect().d() + (n10.getScreenRect().c() / 2.0f));
        int i10 = h.f78377b[this.topAnchor.constraintTarget.ordinal()];
        if (i10 == 1) {
            vector32.setY(n10.getScreenRect().e());
        } else if (i10 == 2) {
            vector32.setY(n10.getScreenRect().e() + n10.getScreenRect().b());
        }
        return new V9.j(new Vec2I((int) vector3.getX(), (int) vector3.getY()), new Vec2I((int) vector32.getX(), (int) vector32.getY()), n10.f79250n);
    }

    @InterfaceC15237a
    public int getTopOffset() {
        return this.topAnchor.p();
    }

    @InterfaceC15237a
    public GameObject getTopTarget() {
        if (this.topAnchor.o() == VerticalConstraintTarget.Unfixed) {
            return null;
        }
        return this.topAnchor.e();
    }

    @Override
    public Component.e getType() {
        return Component.e.UIAnchor;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @InterfaceC15237a
    public boolean isExpandH() {
        return this.expandH;
    }

    @InterfaceC15237a
    public boolean isExpandW() {
        return this.expandW;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x01bc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x023b  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayout(UIController controller) {
        float f10;
        int p10;
        float f11;
        boolean z10;
        int f12;
        int p11;
        UIRect n10;
        int g10;
        int p12;
        if (getUIRectComponent() == null) {
            return;
        }
        this.leftAnchor.j();
        this.topAnchor.j();
        this.rightAnchor.j();
        this.bottomAnchor.j();
        UIRect uIRectComponent = super.getUIRectComponent();
        W9.c uIControllerScreenRect = super.getUIControllerScreenRect();
        UIRect parent = super.getUIRectComponent().getParent();
        Square5I parentPadding = uIRectComponent.getParentPadding();
        if (parentPadding == null) {
            return;
        }
        uIControllerScreenRect.c();
        uIControllerScreenRect.b();
        if (parent != null) {
            parent.getGlobalPosition().f();
            parent.getGlobalPosition().g();
            parent.getGlobalSize().e();
            parent.getGlobalSize().f();
            parent.isAutoSW();
            parent.isAutoSH();
        }
        float e10 = uIRectComponent.getGlobalSize().e();
        float f13 = uIRectComponent.getGlobalSize().f();
        int dp = dp(parentPadding.e());
        int dp2 = dp(parentPadding.f());
        int dp3 = dp(parentPadding.g());
        int dp4 = dp(parentPadding.c());
        int dp5 = dp(uIRectComponent.getMargin().e()) + dp;
        int dp6 = dp(uIRectComponent.getMargin().f()) + dp2;
        int dp7 = dp(uIRectComponent.getMargin().g()) + dp3;
        int dp8 = dp(uIRectComponent.getMargin().c()) + dp4;
        float f14 = uIRectComponent.getGlobalPosition().f();
        float g11 = uIRectComponent.getGlobalPosition().g();
        UIRect n11 = this.leftAnchor.n();
        UIRect n12 = this.rightAnchor.n();
        boolean z11 = true;
        if (n11 != null && n12 != null) {
            f14 = n11.getGlobalPosition().f() + this.leftAnchor.p() + dp5;
            float f15 = ((n12.getGlobalPosition().f() + n12.getGlobalSize().e()) - this.rightAnchor.p()) - dp6;
            if (this.expandW) {
                uIRectComponent.setGlobalWidth((int) (f15 - f14));
                z10 = true;
                n10 = this.topAnchor.n();
                UIRect n13 = this.bottomAnchor.n();
                if (n10 == null) {
                }
                if (n10 != null) {
                }
                if (z10) {
                }
                if (z11) {
                }
                uIRectComponent.setGlobalPosition((int) Nc.b.j1(f14), (int) Nc.b.j1(g11), false);
            }
            f10 = (f14 + f15) * 0.5f;
            f11 = e10 * 0.5f;
            f14 = f10 - f11;
            z10 = true;
            n10 = this.topAnchor.n();
            UIRect n132 = this.bottomAnchor.n();
            if (n10 == null) {
            }
            if (n10 != null) {
            }
            if (z10) {
            }
            if (z11) {
            }
            uIRectComponent.setGlobalPosition((int) Nc.b.j1(f14), (int) Nc.b.j1(g11), false);
        }
        if (n11 != null) {
            int i10 = h.f78376a[this.leftAnchor.o().ordinal()];
            if (i10 == 1) {
                f12 = n11.getGlobalPosition().f() + dp5;
                p11 = this.leftAnchor.p();
            } else if (i10 == 2) {
                f12 = n11.getGlobalPosition().f() + n11.getGlobalSize().e() + dp5;
                p11 = this.leftAnchor.p();
            }
            f14 = f12 + p11;
            z10 = true;
            n10 = this.topAnchor.n();
            UIRect n1322 = this.bottomAnchor.n();
            if (n10 == null && n1322 != null) {
                float g12 = n10.getGlobalPosition().g() + this.topAnchor.p() + dp7;
                float g13 = ((n1322.getGlobalPosition().g() + n1322.getGlobalSize().f()) - this.bottomAnchor.p()) - dp8;
                if (this.expandH) {
                    uIRectComponent.setGlobalHeight((int) (g13 - g12));
                } else {
                    g12 = ((g12 + g13) * 0.5f) - (f13 * 0.5f);
                }
                g11 = g12;
            } else if (n10 != null) {
                int i11 = h.f78377b[this.topAnchor.o().ordinal()];
                if (i11 != 1) {
                    if (i11 == 2) {
                        g10 = n10.getGlobalPosition().g() + n10.getGlobalSize().f() + dp7;
                        p12 = this.topAnchor.p();
                    }
                    z11 = false;
                } else {
                    g10 = n10.getGlobalPosition().g() + dp8;
                    p12 = this.topAnchor.p();
                }
                g11 = g10 + p12;
            } else {
                if (n1322 != null) {
                    int i12 = h.f78377b[this.bottomAnchor.o().ordinal()];
                    if (i12 == 1) {
                        g11 = (n1322.getGlobalPosition().g() - f13) + dp8 + this.bottomAnchor.p();
                    } else if (i12 == 2) {
                        g11 = (((n1322.getGlobalPosition().g() + n1322.getGlobalSize().f()) + this.bottomAnchor.p()) - f13) - dp8;
                    }
                }
                z11 = false;
            }
            if (z10) {
                f14 += dp(uIRectComponent.getLocalPosition().f());
            }
            if (z11) {
                g11 += dp(uIRectComponent.getLocalPosition().g());
            }
            uIRectComponent.setGlobalPosition((int) Nc.b.j1(f14), (int) Nc.b.j1(g11), false);
        }
        if (n12 != null) {
            int i13 = h.f78376a[this.rightAnchor.o().ordinal()];
            if (i13 == 1) {
                f10 = (n12.getGlobalPosition().f() - e10) - dp6;
                p10 = this.rightAnchor.p();
            } else if (i13 == 2) {
                f10 = ((n12.getGlobalPosition().f() + n12.getGlobalSize().e()) - e10) - dp6;
                p10 = this.rightAnchor.p();
            }
            f11 = p10;
            f14 = f10 - f11;
            z10 = true;
            n10 = this.topAnchor.n();
            UIRect n13222 = this.bottomAnchor.n();
            if (n10 == null) {
            }
            if (n10 != null) {
            }
            if (z10) {
            }
            if (z11) {
            }
            uIRectComponent.setGlobalPosition((int) Nc.b.j1(f14), (int) Nc.b.j1(g11), false);
        }
        z10 = false;
        n10 = this.topAnchor.n();
        UIRect n132222 = this.bottomAnchor.n();
        if (n10 == null) {
        }
        if (n10 != null) {
        }
        if (z10) {
        }
        if (z11) {
        }
        uIRectComponent.setGlobalPosition((int) Nc.b.j1(f14), (int) Nc.b.j1(g11), false);
    }

    @InterfaceC15237a
    public void setBottomAnchor(VerticalConstraintTarget bottomAnchor) {
        if (bottomAnchor == null) {
            throw new NullPointerException("value can`t be null");
        }
        VerticalUIAnchorObject verticalUIAnchorObject = this.bottomAnchor;
        if (verticalUIAnchorObject.constraintTarget == bottomAnchor) {
            return;
        }
        verticalUIAnchorObject.constraintTarget = bottomAnchor;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setBottomOffset(int offset) {
        if (this.bottomAnchor.p() == offset) {
            return;
        }
        this.bottomAnchor.r(offset);
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setBottomTarget(GameObject gameObject) {
        if (this.bottomAnchor.e() == gameObject) {
            return;
        }
        this.bottomAnchor.h(gameObject);
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setExpandH(boolean expandH) {
        if (this.expandH == expandH) {
            return;
        }
        this.expandH = expandH;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setExpandW(boolean expandW) {
        if (this.expandW == expandW) {
            return;
        }
        this.expandW = expandW;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setLeftAnchor(HorizontalConstraintTarget leftAnchor) {
        if (leftAnchor == null) {
            throw new NullPointerException("value can`t be null");
        }
        HorizontalUIAnchorObject horizontalUIAnchorObject = this.leftAnchor;
        if (horizontalUIAnchorObject.constraintTarget == leftAnchor) {
            return;
        }
        horizontalUIAnchorObject.constraintTarget = leftAnchor;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setLeftOffset(int offset) {
        if (this.leftAnchor.p() == offset) {
            return;
        }
        this.leftAnchor.r(offset);
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setLeftTarget(GameObject gameObject) {
        if (this.leftAnchor.e() == gameObject) {
            return;
        }
        this.leftAnchor.h(gameObject);
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setRightAnchor(HorizontalConstraintTarget rightAnchor) {
        if (rightAnchor == null) {
            throw new NullPointerException("value can`t be null");
        }
        HorizontalUIAnchorObject horizontalUIAnchorObject = this.rightAnchor;
        if (horizontalUIAnchorObject.constraintTarget == rightAnchor) {
            return;
        }
        horizontalUIAnchorObject.constraintTarget = rightAnchor;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setRightOffset(int offset) {
        if (this.rightAnchor.p() == offset) {
            return;
        }
        this.rightAnchor.r(offset);
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setRightTarget(GameObject gameObject) {
        if (this.rightAnchor.e() == gameObject) {
            return;
        }
        this.rightAnchor.h(gameObject);
        markLayoutDirty();
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78361R = run;
    }

    @InterfaceC15237a
    public void setTopAnchor(VerticalConstraintTarget topAnchor) {
        if (topAnchor == null) {
            throw new NullPointerException("value can`t be null");
        }
        VerticalUIAnchorObject verticalUIAnchorObject = this.topAnchor;
        if (verticalUIAnchorObject.constraintTarget == topAnchor) {
            return;
        }
        verticalUIAnchorObject.constraintTarget = topAnchor;
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setTopOffset(int offset) {
        if (this.topAnchor.p() == offset) {
            return;
        }
        this.topAnchor.r(offset);
        markLayoutDirty();
    }

    @InterfaceC15237a
    public void setTopTarget(GameObject gameObject) {
        if (this.topAnchor.e() == gameObject) {
            return;
        }
        this.topAnchor.h(gameObject);
        markLayoutDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78361R;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIAnchor uIAnchor = new JAVARuntime.UIAnchor(this);
        this.f78361R = uIAnchor;
        return uIAnchor;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIAnchor uIAnchor = new UIAnchor();
        uIAnchor.leftAnchor = this.leftAnchor.clone();
        uIAnchor.topAnchor = this.topAnchor.clone();
        uIAnchor.rightAnchor = this.rightAnchor.clone();
        uIAnchor.bottomAnchor = this.bottomAnchor.clone();
        uIAnchor.expandW = this.expandW;
        uIAnchor.expandH = this.expandH;
        return uIAnchor;
    }

    public C5.b createAnchorObjectEntry(Context context, HorizontalUIAnchorObject UIAnchorObject, String tittle, T9.e injectionEntryListener) {
        return createDualConstraint(context, tittle, new p(injectionEntryListener, UIAnchorObject));
    }

    public C5.b createConstraintEntry(String tittle, Context context, HorizontalConstraintTarget currentType, T9.c unitTypeEntryListener) {
        return F5.c.i(tittle, HorizontalConstraintTarget.class, currentType, new g(unitTypeEntryListener));
    }

    public C5.b createDualConstraint(Context context, String varName, T9.d dualEntryListener) {
        if (dualEntryListener.c() == HorizontalConstraintTarget.Unfixed) {
            return createConstraintEntry(varName + " to", context, dualEntryListener.c(), new c(dualEntryListener));
        }
        C5.b bVar = new C5.b((String) null, b.a.Vector, new C5.b[2]);
        bVar.f2081p[0] = new C5.b(new d(dualEntryListener), varName);
        bVar.f2081p[1] = createConstraintEntry(TypedValues.TransitionType.S_TO, context, dualEntryListener.c(), new e(dualEntryListener));
        return bVar;
    }
}
