package com.itsmagic.engine.Engines.Engine.NoCode;

import Ic.C2629h;
import Ic.C2632k;
import Tc.b;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeInputDefault;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ga.C13303A;
import ga.D;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.y;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.Predicate;
import yb.C16165b;

public abstract class NoCodeNode {

    public transient NoCodeData f79021a;

    public transient boolean f79022b;

    public transient NoCodeNode f79023c;

    @Expose
    public boolean exposeInInspector;

    @Expose
    public String f79027id;

    @Expose
    public String serializedNodeType;

    @Expose
    public float f79028x = Float.NaN;

    @Expose
    public float f79029y = Float.NaN;

    @Expose
    public float xDP = Float.NaN;

    @Expose
    public float yDP = Float.NaN;

    @Expose
    public String inspectorAttributeName = "Name";

    @Expose
    public List<NoCodeInputDefault> inputDefaults = new SteppedArrayList();

    public transient IdentityHashMap<NoCodeSlot, Object> f79024d = new IdentityHashMap<>();

    public transient long f79025e = Long.MIN_VALUE;

    public final NoCodeSlot[] f79026f = new NoCodeSlot[0];

    public NoCodeNode() {
        String str = this.f79027id;
        if (str == null || str.isEmpty()) {
            this.f79027id = b.L();
        }
    }

    public static boolean e0(NoCodeInputDefault noCodeInputDefault, NoCodeInputDefault noCodeInputDefault2) {
        return noCodeInputDefault2 != null && noCodeInputDefault2.inputIndex == noCodeInputDefault.inputIndex;
    }

    public static float p0(float px, Context context) {
        return px / v(context);
    }

    public static float v(Context context) {
        if (context == null) {
            return 1.0f;
        }
        float f10 = context.getResources().getDisplayMetrics().density;
        if (f10 > 0.0f) {
            return f10;
        }
        return 1.0f;
    }

    public NoCodeData A() {
        return this.f79021a;
    }

    public boolean A0() {
        return (b0() || a0() || W()) ? false : true;
    }

    public String B() {
        String str = this.f79027id;
        if (str == null || str.isEmpty()) {
            this.f79027id = b.L();
        }
        return this.f79027id;
    }

    public void B0() {
        this.f79022b = false;
    }

    public NoCodeNode C() {
        return this.f79023c;
    }

    public final void C0(long version) {
        if (this.f79025e == version) {
            return;
        }
        Y();
        this.f79025e = version;
    }

    public NoCodeInputDefault D(int inputIndex) {
        List<NoCodeInputDefault> list = this.inputDefaults;
        if (list == null) {
            return null;
        }
        for (NoCodeInputDefault noCodeInputDefault : list) {
            if (noCodeInputDefault != null && noCodeInputDefault.inputIndex == inputIndex) {
                return noCodeInputDefault;
            }
        }
        return null;
    }

    public void D0(float dx, float dy, float scale, Context context) {
        float max = Math.max(1.0E-4f, scale);
        float f10 = dx / max;
        float f11 = dy / max;
        g0(context);
        float v10 = v(context);
        if (Float.isNaN(this.xDP)) {
            this.xDP = 0.0f;
        }
        if (Float.isNaN(this.yDP)) {
            this.yDP = 0.0f;
        }
        this.xDP += f10 / v10;
        this.yDP += f11 / v10;
        this.f79028x = Float.NaN;
        this.f79029y = Float.NaN;
    }

    public int E(NoCodeData graphData, int uiIndex) {
        return uiIndex;
    }

    public void E0() {
    }

    public NoCodeSlot[] F() {
        return this.f79026f;
    }

    public void F0() {
    }

    public NoCodeSlot[] G(NoCodeData graphData) {
        return F();
    }

    public String H(NoCodeData graphData) {
        String str = this.inspectorAttributeName;
        if (str != null) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                return trim;
            }
        }
        return (EditorSettings.a() == null || !EditorSettings.a().translateNoCodeV2) ? N(graphData) : x(graphData);
    }

    public List<C5.b> I(Context context) {
        return null;
    }

    public NoCodeSlot[] J() {
        return this.f79026f;
    }

    public NoCodeSlot[] K(NoCodeData graphData) {
        return J();
    }

    public String L() {
        return getClass().getSimpleName();
    }

    @Deprecated
    public abstract EnumC13304B M();

    public abstract String N(NoCodeData graphData);

    public Ac.b O() {
        return Theme.T.PANEL_TOPBAR;
    }

    public int P() {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData == null) {
            return Integer.MIN_VALUE;
        }
        return noCodeData.l0(this);
    }

    public Object Q(NoCodeSlot slot) {
        if (slot == null) {
            return null;
        }
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData == null) {
            if (this.f79024d.containsKey(slot)) {
                return this.f79024d.get(slot);
            }
            return null;
        }
        C0(noCodeData.n0());
        if (this.f79024d.containsKey(slot)) {
            return this.f79024d.get(slot);
        }
        Object m02 = this.f79021a.m0(this, slot);
        this.f79024d.put(slot, m02);
        return m02;
    }

    public final boolean R() {
        NoCodeSlot[] F10 = F();
        if (F10 == null) {
            return false;
        }
        for (NoCodeSlot noCodeSlot : F10) {
            if (noCodeSlot != null && noCodeSlot.type == H.BRANCH) {
                return true;
            }
        }
        return false;
    }

    public final boolean S() {
        NoCodeSlot[] J10 = J();
        if (J10 == null) {
            return false;
        }
        for (NoCodeSlot noCodeSlot : J10) {
            if (noCodeSlot != null && noCodeSlot.type == H.BRANCH) {
                return true;
            }
        }
        return false;
    }

    public final boolean T() {
        NoCodeSlot[] F10 = F();
        return F10 != null && F10.length > 0;
    }

    public boolean U() {
        return (Float.isNaN(this.f79028x) || Float.isNaN(this.f79029y)) ? false : true;
    }

    public final boolean V() {
        NoCodeSlot[] J10 = J();
        return J10 != null && J10.length > 0;
    }

    public final boolean W() {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData == null) {
            return S();
        }
        C13303A c13303a = new C13303A(noCodeData);
        NoCodeSlot[] J10 = J();
        if (J10 == null || J10.length <= 0) {
            return t0(0, c13303a) == H.BRANCH;
        }
        for (int i10 = 0; i10 < J10.length; i10++) {
            if (t0(i10, c13303a) == H.BRANCH) {
                return true;
            }
        }
        return false;
    }

    public boolean X() {
        return (Float.isNaN(this.xDP) || Float.isNaN(this.yDP)) ? false : true;
    }

    public final void Y() {
        IdentityHashMap<NoCodeSlot, Object> identityHashMap = this.f79024d;
        if (identityHashMap == null) {
            this.f79024d = new IdentityHashMap<>();
        } else {
            identityHashMap.clear();
        }
        this.f79025e = Long.MIN_VALUE;
    }

    public final boolean Z(NoCodeInputDefault inputDefault) {
        String str;
        NoCodeData noCodeData;
        return (inputDefault == null || inputDefault.type != H.TEXTURE || (str = inputDefault.fileIPP) == null || str.isEmpty() || ((noCodeData = this.f79021a) != null && noCodeData.Q(B(), inputDefault.inputIndex) != null)) ? false : true;
    }

    public boolean a0() {
        return false;
    }

    public boolean b0() {
        return false;
    }

    public boolean c0() {
        return false;
    }

    public final ColorINT d(Object value) {
        ColorINT colorINT = (ColorINT) e(ColorINT.class);
        m.R(value, colorINT);
        return colorINT;
    }

    public boolean d0() {
        return this.f79022b;
    }

    public final <T> T e(Class<T> cls) {
        NoCodeData noCodeData = this.f79021a;
        return noCodeData != null ? (T) noCodeData.e(this, cls) : (T) y.c(cls);
    }

    public final Quaternion f(Object value) {
        Quaternion quaternion = (Quaternion) e(Quaternion.class);
        m.g0(value, quaternion);
        return quaternion;
    }

    public void f0(Lb.a listener) {
        if (this.inputDefaults == null) {
            return;
        }
        for (int i10 = 0; i10 < this.inputDefaults.size(); i10++) {
            NoCodeInputDefault noCodeInputDefault = this.inputDefaults.get(i10);
            if (Z(noCodeInputDefault)) {
                if (listener != null) {
                    listener.b("(NoCode),(" + N(this.f79021a) + "),(Texture),(Loading),(" + noCodeInputDefault.fileIPP + ")");
                }
                noCodeInputDefault.f79016a = C16165b.x(noCodeInputDefault.fileIPP);
                if (listener != null) {
                    listener.e();
                }
            }
        }
    }

    public final Vector2 g(Object value) {
        Vector2 vector2 = (Vector2) e(Vector2.class);
        m.m0(value, vector2);
        return vector2;
    }

    public void g0(Context context) {
        if (!Float.isNaN(this.f79028x)) {
            if (Float.isNaN(this.xDP)) {
                this.xDP = p0(this.f79028x, context);
            }
            this.f79028x = Float.NaN;
        }
        if (Float.isNaN(this.f79029y)) {
            return;
        }
        if (Float.isNaN(this.yDP)) {
            this.yDP = p0(this.f79029y, context);
        }
        this.f79029y = Float.NaN;
    }

    public final Vector3 h(Object value) {
        Vector3 vector3 = (Vector3) e(Vector3.class);
        m.o0(value, vector3);
        return vector3;
    }

    public void h0(float dxDp, float dyDp, Context context) {
        g0(context);
        if (Float.isNaN(this.xDP)) {
            this.xDP = 0.0f;
        }
        if (Float.isNaN(this.yDP)) {
            this.yDP = 0.0f;
        }
        this.xDP += dxDp;
        this.yDP += dyDp;
        this.f79028x = Float.NaN;
        this.f79029y = Float.NaN;
    }

    public final Vector4 i(Object value) {
        Vector4 vector4 = (Vector4) e(Vector4.class);
        m.q0(value, vector4);
        return vector4;
    }

    public void i0() {
    }

    public void j(NoCodeData data) {
        this.f79021a = data;
        Y();
    }

    public void j0() {
    }

    public void k(NoCodeNode rootEventNode) {
        if (rootEventNode == null) {
            rootEventNode = this;
        }
        this.f79023c = rootEventNode;
        this.f79022b = true;
    }

    public void k0() {
    }

    public void l() {
        B0();
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData == null) {
            return;
        }
        noCodeData.i(this);
        k0();
    }

    public void l0() {
    }

    public boolean m() {
        return true;
    }

    public void m0() {
    }

    public boolean n() {
        return false;
    }

    public final void n0() {
        m0();
    }

    public boolean o() {
        return false;
    }

    public boolean o0() {
        return false;
    }

    public boolean p() {
        return false;
    }

    public int q() {
        if (this.inputDefaults == null) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.inputDefaults.size(); i11++) {
            if (Z(this.inputDefaults.get(i11))) {
                i10++;
            }
        }
        return i10;
    }

    public final void q0(Object value) {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData != null) {
            noCodeData.K0(this, value);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0023 A[Catch: Exception -> 0x000b, TRY_LEAVE, TryCatch #0 {Exception -> 0x000b, blocks: (B:2:0x0000, B:4:0x0004, B:7:0x0011, B:9:0x0023, B:13:0x000d), top: B:1:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public NoCodeNode r() {
        NoCodeNode c10;
        try {
            String str = this.serializedNodeType;
            if (str != null) {
                if (str.isEmpty()) {
                }
                c10 = o.c(str, X7.a.m().toJsonTree(this).getAsJsonObject());
                if (c10 != null) {
                    c10.f79027id = b.L();
                }
                return c10;
            }
            str = L();
            c10 = o.c(str, X7.a.m().toJsonTree(this).getAsJsonObject());
            if (c10 != null) {
            }
            return c10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public void r0(BuildDictionary dictionary) {
        for (int i10 = 0; i10 < this.inputDefaults.size(); i10++) {
            NoCodeInputDefault noCodeInputDefault = this.inputDefaults.get(i10);
            if (noCodeInputDefault != null) {
                noCodeInputDefault.z(dictionary);
            }
        }
    }

    public void s() {
        B0();
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData == null) {
            return;
        }
        noCodeData.F(this);
        k0();
    }

    public void s0() {
        this.f79022b = false;
        this.f79023c = null;
        Y();
    }

    public void t() {
        B0();
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData == null) {
            return;
        }
        noCodeData.K(this);
        k0();
    }

    public H t0(int index, D resolver) {
        NoCodeSlot[] J10 = J();
        return (J10 == null || index < 0 || index >= J10.length) ? H.NUMBER : J10[index].type;
    }

    public void u(NoCodeSlot slot) {
        B0();
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData == null) {
            return;
        }
        noCodeData.M(this, slot);
        k0();
    }

    public void u0(float xDp, float yDp) {
        this.xDP = xDp;
        this.yDP = yDp;
        this.f79028x = Float.NaN;
        this.f79029y = Float.NaN;
    }

    public void v0(float layoutX, float layoutY, Context context) {
        this.xDP = p0(layoutX, context);
        this.yDP = p0(layoutY, context);
        this.f79028x = Float.NaN;
        this.f79029y = Float.NaN;
    }

    public C2632k w(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        for (int i10 = 0; i10 < this.inputDefaults.size(); i10++) {
            NoCodeInputDefault noCodeInputDefault = this.inputDefaults.get(i10);
            if (noCodeInputDefault != null) {
                c2632k.f9114a.addAll(noCodeInputDefault.b(dependencyRequest).f9114a);
            }
        }
        return c2632k;
    }

    public void w0(final NoCodeInputDefault def) {
        if (def == null) {
            return;
        }
        if (this.inputDefaults == null) {
            this.inputDefaults = new SteppedArrayList();
        }
        this.inputDefaults.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean e02;
                e02 = NoCodeNode.e0(NoCodeInputDefault.this, (NoCodeInputDefault) obj);
                return e02;
            }
        });
        this.inputDefaults.add(def);
        Y();
    }

    public String x(NoCodeData graphData) {
        return N(graphData);
    }

    public void x0(String value) {
        if (value == null) {
            value = "";
        }
        this.inspectorAttributeName = value;
    }

    public float y(Context context) {
        if (!Float.isNaN(this.xDP)) {
            return Nc.b.n0(this.xDP, context);
        }
        if (Float.isNaN(this.f79028x)) {
            return 0.0f;
        }
        return this.f79028x;
    }

    public void y0(NoCodeSlot slot, Object value) {
        if (slot == null) {
            return;
        }
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData == null) {
            this.f79024d.put(slot, value);
            return;
        }
        Object Z02 = noCodeData.Z0(this, slot, value);
        C0(this.f79021a.n0());
        this.f79024d.put(slot, Z02);
    }

    public float z(Context context) {
        if (!Float.isNaN(this.yDP)) {
            return Nc.b.n0(this.yDP, context);
        }
        if (Float.isNaN(this.f79029y)) {
            return 0.0f;
        }
        return this.f79029y;
    }

    public boolean z0() {
        return (b0() || R()) ? false : true;
    }
}
