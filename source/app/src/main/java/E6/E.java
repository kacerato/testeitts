package e6;

import C5.b;
import Ic.C2633l;
import JAVARuntime.Component;
import JAVARuntime.InputDialog;
import N9.a;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.widget.ImageViewCompat;
import androidx.exifinterface.media.ExifInterface;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeInputDefault;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNodeConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Input.Files.RawAnimationFileNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Input.Files.RawAnimationMaskFileNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Input.Files.RawCubemapNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Input.Files.RawObjectFileNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Input.Files.RawTextureNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawColorNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawFloat2Node;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawFloat3Node;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawFloat4Node;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawGradientNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawMat3Node;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawMat4Node;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawNumberNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawObjectNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawSliderNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.RawTextNode;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.ObjectReferencing.AdvObjectReference;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import dd.C12908b;
import ec.EnumC13053a;
import ga.C13303A;
import ga.C13305a;
import ga.C13308d;
import ga.C13309e;
import gb.C13317e;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.eclipse.jdt.core.Signature;
import org.openjdk.tools.doclint.DocLint;
import r4.C15147a;
import w2.C15883c;
import yd.C16181m;

public class E extends FrameLayout {

    public K f85067A;

    public View[] f85068B;

    public View[] f85069C;

    public View f85070D;

    public View f85071E;

    public View[] f85072F;

    public TextView[] f85073G;

    public ImageView[] f85074H;

    public K[] f85075I;

    public boolean[] f85076J;

    public int[] f85077K;

    public TextView[] f85078L;

    public TextView[] f85079M;

    public boolean f85080N;

    public boolean f85081O;

    public boolean f85082P;

    public boolean f85083Q;

    public int f85084R;

    public boolean f85085S;

    public boolean f85086T;

    public float f85087U;

    public float f85088V;

    public boolean f85089W;

    public final NoCodeNode f85090b;

    public final X f85091c;

    public final GradientDrawable f85092d;

    public GradientDrawable f85093e;

    public String f85094f;

    public final Paint f85095g;

    public float f85096h;

    public FrameLayout f85097i;

    public int f85098j;

    public TextView f85099k;

    public FrameLayout f85100l;

    public LinearLayout f85101m;

    public LinearLayout f85102n;

    public LinearLayout f85103o;

    public LinearLayout f85104p;

    public LinearLayout.LayoutParams f85105q;

    public LinearLayout.LayoutParams f85106r;

    public ImageView f85107s;

    public ImageView f85108t;

    public int f85109u;

    public boolean f85110v;

    public boolean f85111w;

    public K[] f85112x;

    public K[] f85113y;

    public K f85114z;

    public class A implements D5.h {

        public final Vector4 f85115a;

        public A(final Vector4 val$value) {
            this.f85115a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f85115a != null) {
                str = this.f85115a.getZ() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85115a.p(variable.float_value);
                E.this.f85091c.i0();
            }
        }
    }

    public class B implements D5.h {

        public final Vector4 f85117a;

        public B(final Vector4 val$value) {
            this.f85117a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f85117a != null) {
                str = this.f85117a.f() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85117a.m(variable.float_value);
                E.this.f85091c.i0();
            }
        }
    }

    public static class C {

        public static final int[] f85119a;

        static {
            int[] iArr = new int[ga.H.values().length];
            f85119a = iArr;
            try {
                iArr[ga.H.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f85119a[ga.H.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f85119a[ga.H.COLOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f85119a[ga.H.FLOAT2.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f85119a[ga.H.FLOAT3.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f85119a[ga.H.DIRECTION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f85119a[ga.H.FLOAT4.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f85119a[ga.H.QUATERNION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f85119a[ga.H.TEXT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f85119a[ga.H.GAME_OBJECT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f85119a[ga.H.MATERIAL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f85119a[ga.H.OBJECT_FILE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f85119a[ga.H.SOUND_FILE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f85119a[ga.H.TEXTURE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f85119a[ga.H.CUBEMAP.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f85119a[ga.H.BLENDING_MODE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f85119a[ga.H.UV_SOURCE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f85119a[ga.H.INPUT_DIALOG_TYPE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f85119a[ga.H.POPUP_DIALOG_TYPE.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f85119a[ga.H.WORLD_FILE.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
        }
    }

    public class D implements D5.h {

        public final int f85120a;

        public final int f85121b;

        public final ga.H f85122c;

        public D(final int val$actualIndex, final int val$inputIndex, final ga.H val$type) {
            this.f85120a = val$actualIndex;
            this.f85121b = val$inputIndex;
            this.f85122c = val$type;
        }

        @Override
        public Variable get() {
            NoCodeInputDefault D10 = E.this.f85090b.D(this.f85120a);
            String j02 = D10 != null ? D10.stringValue : E.this.j0(this.f85121b, this.f85122c);
            if (j02 == null) {
                j02 = "";
            }
            return new Variable("", j02);
        }

        @Override
        public void set(Variable variable) {
            String str;
            if (variable == null || (str = variable.str_value) == null) {
                str = "";
            }
            E.this.f85090b.w0(NoCodeInputDefault.w(this.f85120a, str));
            E.this.i1(this.f85121b, this.f85122c);
            E.this.f85091c.i0();
        }
    }

    public class C1583E implements D5.h {

        public final int f85124a;

        public final int f85125b;

        public final ga.H f85126c;

        public C1583E(final int val$actualIndex, final int val$inputIndex, final ga.H val$type) {
            this.f85124a = val$actualIndex;
            this.f85125b = val$inputIndex;
            this.f85126c = val$type;
        }

        @Override
        public Variable get() {
            return new Variable("", E.this.W(this.f85125b) + "");
        }

        @Override
        public void set(Variable variable) {
            Boolean bool;
            E.this.f85090b.w0(NoCodeInputDefault.f(this.f85124a, (variable == null || (bool = variable.booolean_value) == null) ? variable != null && "true".equalsIgnoreCase(variable.str_value) : bool.booleanValue()));
            E.this.i1(this.f85125b, this.f85126c);
            E.this.f85091c.i0();
        }
    }

    public class F implements D5.k {

        public final int f85128a;

        public final int f85129b;

        public final ga.H f85130c;

        public F(final int val$actualIndex, final int val$inputIndex, final ga.H val$type) {
            this.f85128a = val$actualIndex;
            this.f85129b = val$inputIndex;
            this.f85130c = val$type;
        }

        @Override
        public boolean allowSelect() {
            return true;
        }

        @Override
        public GameObject get() {
            GameObject V02 = E.this.V0(E.this.f85090b.D(this.f85128a));
            if (C13317e.J(V02)) {
                return V02;
            }
            NoCodeData graphData = E.this.f85091c.getGraphData();
            if (graphData != null) {
                return graphData.h0();
            }
            return null;
        }

        @Override
        public String getExtraTittle() {
            return " (Object)";
        }

        @Override
        public GameObject getParent() {
            return null;
        }

        @Override
        public void set(GameObject gameObject) {
            if (C13317e.J(gameObject)) {
                E.this.f85090b.w0(NoCodeInputDefault.p(this.f85128a, E.this.Q(gameObject), gameObject.getName()));
            } else {
                E.this.f85090b.w0(NoCodeInputDefault.p(this.f85128a, "", "owner"));
            }
            E.this.i1(this.f85129b, this.f85130c);
            E.this.f85091c.i0();
        }
    }

    public class G implements D5.h {

        public final int f85132a;

        public final int f85133b;

        public final int f85134c;

        public final ga.H f85135d;

        public G(final int val$inputIndex, final int val$compIndex, final int val$actualIndex, final ga.H val$type) {
            this.f85132a = val$inputIndex;
            this.f85133b = val$compIndex;
            this.f85134c = val$actualIndex;
            this.f85135d = val$type;
        }

        @Override
        public Variable get() {
            Quaternion b02 = E.this.b0(this.f85132a);
            int i10 = this.f85133b;
            if (i10 == 0) {
                return new Variable("", b02.D());
            }
            if (i10 == 1) {
                return new Variable("", b02.E());
            }
            return new Variable("", b02.F() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable == null) {
                return;
            }
            Quaternion b02 = E.this.b0(this.f85132a);
            Vector3 B10 = b02.B();
            float x10 = B10.getX();
            float y10 = B10.getY();
            float z10 = B10.getZ();
            int i10 = this.f85133b;
            if (i10 == 0) {
                x10 = variable.float_value;
            }
            if (i10 == 1) {
                y10 = variable.float_value;
            }
            if (i10 == 2) {
                z10 = variable.float_value;
            }
            b02.v(x10, y10, z10);
            E.this.f85090b.w0(NoCodeInputDefault.u(this.f85134c, b02.getX(), b02.getY(), b02.getZ(), b02.I()));
            E.this.i1(this.f85132a, this.f85135d);
            E.this.f85091c.i0();
        }
    }

    public class H implements D5.h {

        public final int f85137a;

        public final ga.H f85138b;

        public final int f85139c;

        public final int f85140d;

        public final ga.H f85141e;

        public H(final int val$inputIndex, final ga.H val$editorType, final int val$compIndex, final int val$actualIndex, final ga.H val$type) {
            this.f85137a = val$inputIndex;
            this.f85138b = val$editorType;
            this.f85139c = val$compIndex;
            this.f85140d = val$actualIndex;
            this.f85141e = val$type;
        }

        @Override
        public Variable get() {
            return new Variable("", E.this.c0(this.f85137a, this.f85138b)[this.f85139c] + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable == null) {
                return;
            }
            float[] c02 = E.this.c0(this.f85137a, this.f85138b);
            float f10 = c02[0];
            float f11 = c02[1];
            float f12 = c02[2];
            float f13 = c02[3];
            int i10 = this.f85139c;
            if (i10 == 0) {
                f10 = variable.float_value;
            }
            if (i10 == 1) {
                f11 = variable.float_value;
            }
            if (i10 == 2) {
                f12 = variable.float_value;
            }
            if (i10 == 3) {
                f13 = variable.float_value;
            }
            ga.H h10 = this.f85138b;
            E.this.f85090b.w0(h10 == ga.H.FLOAT2 ? NoCodeInputDefault.m(this.f85140d, f10, f11) : h10 == ga.H.FLOAT3 ? NoCodeInputDefault.n(this.f85140d, f10, f11, f12) : NoCodeInputDefault.o(this.f85140d, f10, f11, f12, f13));
            E.this.i1(this.f85137a, this.f85141e);
            E.this.f85091c.i0();
        }
    }

    public class I implements D5.h {

        public final int f85143a;

        public final int f85144b;

        public final ga.H f85145c;

        public I(final int val$actualIndex, final int val$inputIndex, final ga.H val$type) {
            this.f85143a = val$actualIndex;
            this.f85144b = val$inputIndex;
            this.f85145c = val$type;
        }

        @Override
        public Variable get() {
            String str;
            NoCodeInputDefault D10 = E.this.f85090b.D(this.f85143a);
            if (D10 == null || (str = D10.fileIPP) == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable == null) {
                return;
            }
            String str = variable.str_value;
            if (str == null) {
                str = "";
            }
            E.this.f85090b.w0(NoCodeInputDefault.x(this.f85143a, str));
            E.this.i1(this.f85144b, this.f85145c);
            E.this.f85091c.i0();
        }
    }

    public class J implements D5.h {

        public final int f85147a;

        public final int f85148b;

        public final ga.H f85149c;

        public J(final int val$actualIndex, final int val$inputIndex, final ga.H val$type) {
            this.f85147a = val$actualIndex;
            this.f85148b = val$inputIndex;
            this.f85149c = val$type;
        }

        @Override
        public Variable get() {
            String str;
            NoCodeInputDefault D10 = E.this.f85090b.D(this.f85147a);
            if (D10 == null || (str = D10.fileIPP) == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable == null) {
                return;
            }
            String str = variable.str_value;
            if (str == null) {
                str = "";
            }
            E.this.f85090b.w0(NoCodeInputDefault.i(this.f85147a, str));
            E.this.i1(this.f85148b, this.f85149c);
            E.this.f85091c.i0();
        }
    }

    public class C13010a implements D5.h {

        public final int f85151a;

        public final int f85152b;

        public final ga.H f85153c;

        public C13010a(final int val$actualIndex, final int val$inputIndex, final ga.H val$type) {
            this.f85151a = val$actualIndex;
            this.f85152b = val$inputIndex;
            this.f85153c = val$type;
        }

        @Override
        public Variable get() {
            String str;
            NoCodeInputDefault D10 = E.this.f85090b.D(this.f85151a);
            if (D10 == null || (str = D10.fileIPP) == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable == null) {
                return;
            }
            String str = variable.str_value;
            if (str == null) {
                str = "";
            }
            E.this.f85090b.w0(NoCodeInputDefault.s(this.f85151a, str));
            E.this.i1(this.f85152b, this.f85153c);
            E.this.f85091c.i0();
        }
    }

    public class C13011b implements D5.h {

        public final int f85155a;

        public final int f85156b;

        public final ga.H f85157c;

        public C13011b(final int val$actualIndex, final int val$inputIndex, final ga.H val$type) {
            this.f85155a = val$actualIndex;
            this.f85156b = val$inputIndex;
            this.f85157c = val$type;
        }

        @Override
        public Variable get() {
            String str;
            NoCodeInputDefault D10 = E.this.f85090b.D(this.f85155a);
            if (D10 == null || (str = D10.fileIPP) == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable == null) {
                return;
            }
            String str = variable.str_value;
            if (str == null) {
                str = "";
            }
            E.this.f85090b.w0(NoCodeInputDefault.y(this.f85155a, str));
            E.this.i1(this.f85156b, this.f85157c);
            E.this.f85091c.i0();
        }
    }

    public class C13012c implements D5.h {

        public final int f85159a;

        public final int f85160b;

        public final ga.H f85161c;

        public C13012c(final int val$actualIndex, final int val$inputIndex, final ga.H val$type) {
            this.f85159a = val$actualIndex;
            this.f85160b = val$inputIndex;
            this.f85161c = val$type;
        }

        @Override
        public Variable get() {
            String str;
            NoCodeInputDefault D10 = E.this.f85090b.D(this.f85159a);
            if (D10 == null || (str = D10.fileIPP) == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable == null) {
                return;
            }
            String str = variable.str_value;
            if (str == null) {
                str = "";
            }
            E.this.f85090b.w0(NoCodeInputDefault.v(this.f85159a, str));
            E.this.i1(this.f85160b, this.f85161c);
            E.this.f85091c.i0();
        }
    }

    public class C13013d implements D5.h {
        public C13013d() {
        }

        @Override
        public Variable get() {
            return new Variable("", E.this.f85090b.inspectorAttributeName != null ? E.this.f85090b.inspectorAttributeName : "");
        }

        @Override
        public void set(Variable variable) {
            E.this.f85090b.x0(variable != null ? variable.d() : "");
        }
    }

    public class e implements D5.h {

        public final RawNumberNode f85164a;

        public e(final RawNumberNode val$raw) {
            this.f85164a = val$raw;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f85164a.value);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85164a.value = variable.float_value;
                E.this.f85091c.i0();
            }
        }
    }

    public class C13014f implements D5.h {

        public final RawTextNode f85166a;

        public C13014f(final RawTextNode val$raw) {
            this.f85166a = val$raw;
        }

        @Override
        public Variable get() {
            String str = this.f85166a.value;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            this.f85166a.value = variable != null ? variable.str_value : "";
            E.this.f85091c.i0();
        }
    }

    public class C13015g implements D5.k {

        public final RawObjectNode f85168a;

        public C13015g(final RawObjectNode val$raw) {
            this.f85168a = val$raw;
        }

        @Override
        public boolean allowSelect() {
            return true;
        }

        @Override
        public GameObject get() {
            return this.f85168a.H0();
        }

        @Override
        public String getExtraTittle() {
            return " (Object)";
        }

        @Override
        public GameObject getParent() {
            NoCodeData graphData = E.this.f85091c.getGraphData();
            if (graphData != null) {
                return graphData.h0();
            }
            return null;
        }

        @Override
        public void set(GameObject gameObject) {
            this.f85168a.K0(gameObject);
            E.this.f85091c.i0();
        }
    }

    public class C13016h implements D5.h {

        public final RawSliderNode f85170a;

        public C13016h(final RawSliderNode val$raw) {
            this.f85170a = val$raw;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f85170a.value);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85170a.value = variable.float_value;
                E.this.f85091c.i0();
            }
        }
    }

    public class C13017i implements D5.h {

        public final RawColorNode f85172a;

        public C13017i(final RawColorNode val$raw) {
            this.f85172a = val$raw;
        }

        @Override
        public Variable get() {
            ColorINT colorINT = this.f85172a.value;
            return new Variable("", colorINT != null ? colorINT.clone() : new ColorINT(1.0f, 1.0f, 1.0f, 1.0f));
        }

        @Override
        public void set(Variable variable) {
            ColorINT colorINT;
            if (variable == null || (colorINT = variable.color_value) == null) {
                return;
            }
            this.f85172a.value = colorINT.clone();
            E.this.f85091c.i0();
        }
    }

    public class C13018j implements D5.h {

        public final RawTextureNode f85174a;

        public C13018j(final RawTextureNode val$raw) {
            this.f85174a = val$raw;
        }

        @Override
        public Variable get() {
            String str = this.f85174a.textureFile;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85174a.I0(variable.str_value);
                E.this.f85091c.i0();
            }
        }
    }

    public class k implements D5.h {

        public final int f85176a;

        public final int f85177b;

        public final ga.H f85178c;

        public k(final int val$actualIndex, final int val$inputIndex, final ga.H val$type) {
            this.f85176a = val$actualIndex;
            this.f85177b = val$inputIndex;
            this.f85178c = val$type;
        }

        @Override
        public Variable get() {
            return new Variable("", E.this.a0(this.f85177b) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable == null) {
                return;
            }
            E.this.f85090b.w0(NoCodeInputDefault.r(this.f85176a, variable.float_value));
            E.this.i1(this.f85177b, this.f85178c);
            E.this.f85091c.i0();
        }
    }

    public class l implements D5.h {

        public final RawCubemapNode f85180a;

        public l(final RawCubemapNode val$raw) {
            this.f85180a = val$raw;
        }

        @Override
        public Variable get() {
            String str = this.f85180a.cubemapFile;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85180a.H0(variable.str_value);
                E.this.f85091c.i0();
            }
        }
    }

    public class m implements D5.h {

        public final RawObjectFileNode f85182a;

        public m(final RawObjectFileNode val$raw) {
            this.f85182a = val$raw;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f85182a.H0());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85182a.I0(variable.str_value);
                E.this.f85091c.i0();
            }
        }
    }

    public class n implements D5.h {

        public final RawAnimationFileNode f85184a;

        public n(final RawAnimationFileNode val$raw) {
            this.f85184a = val$raw;
        }

        @Override
        public Variable get() {
            String str = this.f85184a.animationFile;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85184a.H0(variable.str_value);
                E.this.f85091c.i0();
            }
        }
    }

    public class o implements D5.h {

        public final RawAnimationMaskFileNode f85186a;

        public o(final RawAnimationMaskFileNode val$raw) {
            this.f85186a = val$raw;
        }

        @Override
        public Variable get() {
            String str = this.f85186a.animationMaskFile;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85186a.H0(variable.str_value);
                E.this.f85091c.i0();
            }
        }
    }

    public class p implements D5.b {

        public final Sa.a f85188a;

        public class a implements H3.e {
            public a() {
            }

            @Override
            public String getSelected() {
                return p.this.f85188a.G0();
            }

            @Override
            public void onSelected(String file) {
                p.this.f85188a.H0(file);
                E.this.J();
                E.this.P0();
                E.this.f85091c.i0();
            }
        }

        public p(final Sa.a val$raw) {
            this.f85188a = val$raw;
        }

        @Override
        public void a(View view) {
            H3.g.K1(view, C15147a.e.Left, new a());
        }
    }

    public class q implements D5.h {

        public final Sa.a f85191a;

        public q(final Sa.a val$raw) {
            this.f85191a = val$raw;
        }

        @Override
        public Variable get() {
            return new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            this.f85191a.H0("");
            E.this.J();
            E.this.P0();
            E.this.f85091c.i0();
        }
    }

    public class r implements a.b {
        public r() {
        }

        @Override
        public void a() {
            E.this.f85091c.i0();
        }
    }

    public class s implements D5.h {

        public final Vector2 f85194a;

        public s(final Vector2 val$value) {
            this.f85194a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f85194a != null) {
                str = this.f85194a.f79838x + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85194a.f79838x = variable.float_value;
                E.this.f85091c.i0();
            }
        }
    }

    public class t implements D5.h {

        public final Vector2 f85196a;

        public t(final Vector2 val$value) {
            this.f85196a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f85196a != null) {
                str = this.f85196a.f79839y + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85196a.f79839y = variable.float_value;
                E.this.f85091c.i0();
            }
        }
    }

    public class u implements D5.h {

        public final Vector3 f85198a;

        public u(final Vector3 val$value) {
            this.f85198a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f85198a != null) {
                str = this.f85198a.getX() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85198a.setX(variable.float_value);
                E.this.f85091c.i0();
            }
        }
    }

    public class v implements D5.h {

        public final int f85200a;

        public final int f85201b;

        public final ga.H f85202c;

        public v(final int val$actualIndex, final int val$inputIndex, final ga.H val$type) {
            this.f85200a = val$actualIndex;
            this.f85201b = val$inputIndex;
            this.f85202c = val$type;
        }

        @Override
        public Variable get() {
            return new Variable("", E.this.X(this.f85201b));
        }

        @Override
        public void set(Variable variable) {
            ColorINT colorINT;
            if (variable == null || (colorINT = variable.color_value) == null) {
                return;
            }
            E.this.f85090b.w0(NoCodeInputDefault.g(this.f85200a, colorINT.w(), colorINT.u(), colorINT.s(), colorINT.r()));
            E.this.i1(this.f85201b, this.f85202c);
            E.this.f85091c.i0();
        }
    }

    public class w implements D5.h {

        public final Vector3 f85204a;

        public w(final Vector3 val$value) {
            this.f85204a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f85204a != null) {
                str = this.f85204a.getY() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85204a.setY(variable.float_value);
                E.this.f85091c.i0();
            }
        }
    }

    public class x implements D5.h {

        public final Vector3 f85206a;

        public x(final Vector3 val$value) {
            this.f85206a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f85206a != null) {
                str = this.f85206a.getZ() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85206a.setZ(variable.float_value);
                E.this.f85091c.i0();
            }
        }
    }

    public class y implements D5.h {

        public final Vector4 f85208a;

        public y(final Vector4 val$value) {
            this.f85208a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f85208a != null) {
                str = this.f85208a.getX() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85208a.n(variable.float_value);
                E.this.f85091c.i0();
            }
        }
    }

    public class z implements D5.h {

        public final Vector4 f85210a;

        public z(final Vector4 val$value) {
            this.f85210a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f85210a != null) {
                str = this.f85210a.getY() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f85210a.o(variable.float_value);
                E.this.f85091c.i0();
            }
        }
    }

    public E(Context context, NoCodeNode node, X graphView) {
        super(context);
        this.f85092d = new GradientDrawable();
        this.f85095g = new Paint(1);
        this.f85084R = -1;
        this.f85090b = node;
        this.f85091c = graphView;
        setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        setClipToPadding(false);
        setClipChildren(false);
        I();
        P0();
    }

    public static String N0(String expr) {
        if (expr == null) {
            return null;
        }
        String replace = expr.replace(" ", "");
        if (replace.contains("getUV0()") || replace.contains("v.uv0")) {
            return "mesh uv";
        }
        if (replace.contains("getUserWorldPosition()") || replace.contains("v.worldPosition")) {
            return "world pos";
        }
        if (replace.contains("getWorldNormalVector()") || replace.contains("v.worldNormal") || replace.contains("getWorldGeometricNormalVector()")) {
            return "world normal";
        }
        if (replace.contains("getWorldViewVector()")) {
            return "view dir";
        }
        return null;
    }

    public static String S(String expr) {
        if (expr == null) {
            return "-";
        }
        String trim = expr.trim();
        if (trim.isEmpty()) {
            return "-";
        }
        if (trim.length() <= 18) {
            return trim;
        }
        return trim.substring(0, 15) + "...";
    }

    public static String T(float v10, int decimals) {
        return d1(Tc.b.p(v10, decimals));
    }

    public static String U(String token) {
        return (token == null || token.trim().isEmpty()) ? "-" : Tc.b.d(token.trim().replace('_', C15883c.f126249O).toLowerCase(Locale.ROOT));
    }

    public static String d1(String s10) {
        if (s10 == null) {
            return "";
        }
        int indexOf = s10.indexOf(46);
        if (indexOf < 0) {
            return s10.equals("-0") ? "0.0" : s10;
        }
        int length = s10.length();
        while (length > indexOf + 1 && s10.charAt(length - 1) == '0') {
            length--;
        }
        if (length > indexOf && s10.charAt(length - 1) == '.') {
            length--;
        }
        String substring = s10.substring(0, length);
        return substring.equals("-0") ? "0.0" : substring;
    }

    public static ColorINT e1(String expr) {
        if (expr == null) {
            return null;
        }
        String trim = expr.trim();
        if (trim.isEmpty()) {
            return null;
        }
        if (trim.startsWith(C16181m.f130230g)) {
            return new ColorINT(trim);
        }
        float[] g12 = g1(trim, 4);
        if (g12 != null) {
            return new ColorINT(g12[3], g12[0], g12[1], g12[2]);
        }
        float[] g13 = g1(trim, 3);
        if (g13 != null) {
            return new ColorINT(1.0f, g13[0], g13[1], g13[2]);
        }
        Float f12 = f1(trim);
        if (f12 != null) {
            return new ColorINT(1.0f, f12.floatValue(), f12.floatValue(), f12.floatValue());
        }
        return null;
    }

    public static Float f1(String expr) {
        if (expr == null) {
            return null;
        }
        String trim = expr.trim();
        if (trim.isEmpty() || !trim.matches("[-+]?\\d*\\.?\\d+(?:[eE][-+]?\\d+)?")) {
            return null;
        }
        try {
            return Float.valueOf(Float.parseFloat(trim));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static float[] g1(String expr, int comps) {
        if (expr == null) {
            return null;
        }
        String replace = expr.replace(" ", "");
        String str = comps == 2 ? "float2(" : comps == 3 ? "float3(" : "float4(";
        if (replace.startsWith(str) && replace.endsWith(")")) {
            String substring = replace.substring(str.length(), replace.length() - 1);
            if (substring.isEmpty()) {
                return null;
            }
            String[] split = substring.split(DocLint.SEPARATOR);
            float[] fArr = new float[comps];
            try {
                int i10 = 0;
                if (split.length == 1) {
                    Float f12 = f1(split[0]);
                    if (f12 == null) {
                        return null;
                    }
                    while (i10 < comps) {
                        fArr[i10] = f12.floatValue();
                        i10++;
                    }
                    return fArr;
                }
                if (split.length < comps) {
                    return null;
                }
                while (i10 < comps) {
                    Float f13 = f1(split[i10]);
                    if (f13 == null) {
                        return null;
                    }
                    fArr[i10] = f13.floatValue();
                    i10++;
                }
                return fArr;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public final void A0(int i10, InputDialog.Type type, int i11, ga.H h10, View view) {
        this.f85090b.w0(NoCodeInputDefault.k(i10, ga.H.INPUT_DIALOG_TYPE, type.name()));
        i1(i11, h10);
        this.f85091c.i0();
    }

    public final void B0(int i10, ga.G g10, int i11, ga.H h10, View view) {
        this.f85090b.w0(NoCodeInputDefault.k(i10, ga.H.POPUP_DIALOG_TYPE, g10.name()));
        i1(i11, h10);
        this.f85091c.i0();
    }

    public final void C0(int i10, ga.H h10, int i11, ga.H h11, View view) {
        this.f85090b.w0(NoCodeInputDefault.h(i10, h10, "", C13308d.f88188b));
        i1(i11, h11);
        this.f85091c.i0();
    }

    public final void D(boolean stretch) {
        LinearLayout linearLayout = this.f85104p;
        if (linearLayout == null || this.f85105q == null || this.f85106r == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            int i10 = stretch ? -1 : -2;
            if (layoutParams2.width != i10) {
                layoutParams2.width = i10;
                this.f85104p.setLayoutParams(layoutParams2);
            }
            int i11 = stretch ? 0 : -2;
            float f10 = stretch ? 1.0f : 0.0f;
            LinearLayout.LayoutParams layoutParams3 = this.f85105q;
            if (layoutParams3.width != i11 || layoutParams3.weight != f10) {
                layoutParams3.width = i11;
                layoutParams3.weight = f10;
                this.f85101m.setLayoutParams(layoutParams3);
            }
            LinearLayout.LayoutParams layoutParams4 = this.f85106r;
            if (layoutParams4.width == i11 && layoutParams4.weight == f10) {
                return;
            }
            layoutParams4.width = i11;
            layoutParams4.weight = f10;
            this.f85102n.setLayoutParams(layoutParams4);
        }
    }

    public final void D0(int i10, ga.H h10, int i11, ga.H h11, View view) {
        this.f85090b.w0(NoCodeInputDefault.h(i10, h10, "", C13308d.f88187a));
        i1(i11, h11);
        this.f85091c.i0();
    }

    public final void E() {
        ImageView imageView = this.f85108t;
        if (imageView == null) {
            return;
        }
        boolean z10 = this.f85090b.exposeInInspector;
        imageView.setImageResource(z10 ? R.drawable.vision : R.drawable.vision_off);
        Vc.e.x(this.f85108t, getContext(), Theme.i(z10 ? Theme.T.PRIMARY : Theme.T.ACCENT));
        this.f85108t.setAlpha(1.0f);
    }

    public final void E0(Component component, GameObject gameObject, int i10, int i11, ga.H h10, View view) {
        this.f85090b.w0(NoCodeInputDefault.h(i10, C13308d.m(component), C13308d.d(component, gameObject), C13308d.p(component)));
        i1(i11, h10);
        this.f85091c.i0();
    }

    public final void F() {
        if (!(this.f85090b instanceof RawGradientNode) || this.f85086T || this.f85101m == null || this.f85105q == null) {
            return;
        }
        int max = Math.max(this.f85101m.getWidth(), Nc.b.k0(60.0f));
        LinearLayout.LayoutParams layoutParams = this.f85105q;
        if (layoutParams.width != max) {
            layoutParams.width = max;
            this.f85101m.setLayoutParams(layoutParams);
        }
        this.f85086T = true;
    }

    public final void F0(int i10, String str, int i11, ga.H h10, View view) {
        this.f85090b.w0(NoCodeInputDefault.j(i10, str));
        i1(i11, h10);
        this.f85091c.i0();
    }

    public final void G(boolean invalidate) {
        this.f85092d.setColor(Theme.i(Theme.T.CARD));
        this.f85092d.setStroke(Nc.b.k0(1.0f), C13309e.d());
        this.f85095g.setColor(C13309e.c());
        GradientDrawable gradientDrawable = this.f85093e;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(Theme.i(Theme.T.PANEL_TOPBAR));
            this.f85093e.setStroke(Nc.b.k0(1.0f), C13309e.d());
        }
        E();
        if (invalidate) {
            invalidate();
        }
    }

    public final void G0(int i10, EnumC13053a enumC13053a, int i11, ga.H h10, View view) {
        this.f85090b.w0(NoCodeInputDefault.k(i10, ga.H.BLENDING_MODE, enumC13053a.name()));
        i1(i11, h10);
        this.f85091c.i0();
    }

    public final void H(TextView label, NoCodeSlot slot, boolean input, int index) {
        if (label == null) {
            return;
        }
        ga.H W02 = W0(slot, input, index, input ? this.f85090b.E(this.f85091c.getGraphData(), index) : index, this.f85091c.getGraphData());
        label.setText(k0(slot, W02, input));
        label.setTextColor(l0(slot, W02, input));
    }

    public final int H0(int uiIndex) {
        int[] iArr = this.f85077K;
        return (iArr == null || uiIndex < 0 || uiIndex >= iArr.length) ? uiIndex : iArr[uiIndex];
    }

    public final void I() {
        int k02 = Nc.b.k0(4.0f);
        setBackground(null);
        setPadding(0, 0, 0, 0);
        this.f85092d.setColor(Theme.i(Theme.T.CARD));
        float f10 = k02;
        this.f85092d.setCornerRadius(f10);
        this.f85092d.setStroke(Nc.b.k0(1.0f), C13309e.d());
        this.f85096h = Nc.b.k0(2.0f);
        this.f85095g.setStyle(Paint.Style.STROKE);
        this.f85095g.setStrokeWidth(this.f85096h);
        this.f85095g.setColor(C13309e.c());
        if (this.f85090b.c0()) {
            this.f85098j = 0;
        } else {
            this.f85098j = Nc.b.k0(110.0f) + Nc.b.k0(30.0f) + Nc.b.k0(16.0f);
        }
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f85097i = frameLayout;
        frameLayout.setBackground(this.f85092d);
        int k03 = Nc.b.k0(2.0f);
        this.f85097i.setPadding(k03, k03, k03, k03);
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.f85103o = linearLayout;
        linearLayout.setOrientation(1);
        this.f85090b.c0();
        int k04 = Nc.b.k0(-2.0f);
        this.f85109u = k04;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = this.f85098j;
        addView(this.f85097i, layoutParams);
        this.f85097i.addView(linearLayout, new FrameLayout.LayoutParams(k04, -2));
        NoCodeSlot[] G10 = this.f85090b.G(this.f85091c.getGraphData());
        if (this.f85090b.b0() && (G10 == null || G10.length == 0)) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            this.f85093e = gradientDrawable;
            gradientDrawable.setColor(Theme.i(Theme.T.PANEL_TOPBAR));
            gradientDrawable.setCornerRadius(Nc.b.k0(999.0f));
            gradientDrawable.setStroke(Nc.b.k0(1.0f), C13309e.d());
            removeAllViews();
            this.f85097i = null;
            setBackground(gradientDrawable);
            int k05 = Nc.b.k0(2.0f);
            setPadding(k05, k05, k05, k05);
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(16);
            int k06 = Nc.b.k0(8.0f);
            linearLayout2.setPadding(k06, k06, k06, k06);
            addView(linearLayout2, new FrameLayout.LayoutParams(-2, -2));
            int k07 = Nc.b.k0(10.0f);
            this.f85070D = new View(getContext());
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(k07, k07);
            this.f85070D.setLayoutParams(layoutParams2);
            this.f85070D.setVisibility(4);
            linearLayout2.addView(this.f85070D, layoutParams2);
            TextView textView = new TextView(getContext());
            this.f85099k = textView;
            textView.setTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
            this.f85099k.setTextSize(2, 12.0f);
            this.f85099k.setTypeface(Typeface.DEFAULT_BOLD);
            this.f85099k.setSingleLine(true);
            this.f85099k.setEllipsize(TextUtils.TruncateAt.END);
            linearLayout2.addView(this.f85099k, new LinearLayout.LayoutParams(-2, -2));
            this.f85071E = new View(getContext());
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(k07, k07);
            layoutParams3.leftMargin = Nc.b.k0(4.0f);
            this.f85071E.setLayoutParams(layoutParams3);
            this.f85071E.setVisibility(4);
            linearLayout2.addView(this.f85071E, layoutParams3);
            NoCodeSlot[] J10 = this.f85090b.J();
            if (J10 != null && J10.length > 0) {
                this.f85069C = new View[J10.length];
                View view = new View(getContext());
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(k07, k07);
                view.setLayoutParams(layoutParams4);
                view.setVisibility(4);
                view.setPadding(Nc.b.k0(6.0f), 0, 0, 0);
                linearLayout2.addView(view, layoutParams4);
                this.f85069C[0] = view;
                this.f85081O = true;
            }
            this.f85068B = new View[0];
            this.f85080N = false;
            m1();
            setOnTouchListener(new View.OnTouchListener() {
                @Override
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    boolean s02;
                    s02 = E.this.s0(view2, motionEvent);
                    return s02;
                }
            });
            return;
        }
        if (this.f85090b.c0()) {
            LinearLayout linearLayout3 = new LinearLayout(getContext());
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(Theme.i(Theme.T.PANEL_TOPBAR));
            gradientDrawable2.setCornerRadii(new float[]{f10, f10, f10, f10, 0.0f, 0.0f, 0.0f, 0.0f});
            linearLayout3.setBackground(gradientDrawable2);
            linearLayout3.setOrientation(0);
            linearLayout3.setGravity(8388629);
            linearLayout3.setPadding(Nc.b.k0(4.0f), Nc.b.k0(2.0f), Nc.b.k0(4.0f), Nc.b.k0(2.0f));
            linearLayout.addView(linearLayout3, new LinearLayout.LayoutParams(-1, -2));
            this.f85108t = new ImageView(getContext());
            int k08 = Nc.b.k0(16.0f);
            linearLayout3.addView(this.f85108t, new LinearLayout.LayoutParams(k08, k08));
            E();
            this.f85108t.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    E.this.t0(view2);
                }
            });
        } else {
            FrameLayout frameLayout2 = new FrameLayout(getContext());
            GradientDrawable gradientDrawable3 = new GradientDrawable();
            gradientDrawable3.setColor(Theme.i(this.f85090b.O()));
            gradientDrawable3.setCornerRadii(new float[]{f10, f10, f10, f10, 0.0f, 0.0f, 0.0f, 0.0f});
            frameLayout2.setBackground(gradientDrawable3);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, -2));
            int k09 = Nc.b.k0(10.0f);
            if (this.f85090b.z0()) {
                this.f85070D = new View(getContext());
                FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(k09, k09);
                layoutParams5.gravity = 8388627;
                this.f85070D.setLayoutParams(layoutParams5);
                this.f85070D.setVisibility(4);
                frameLayout2.addView(this.f85070D, layoutParams5);
            } else {
                this.f85070D = null;
            }
            if (this.f85090b.A0()) {
                this.f85071E = new View(getContext());
                FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(k09, k09);
                layoutParams6.gravity = 8388629;
                this.f85071E.setLayoutParams(layoutParams6);
                this.f85071E.setVisibility(4);
                frameLayout2.addView(this.f85071E, layoutParams6);
            } else {
                this.f85071E = null;
            }
            TextView textView2 = new TextView(getContext());
            this.f85099k = textView2;
            textView2.setTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
            this.f85099k.setTextSize(2, 12.0f);
            this.f85099k.setTypeface(Typeface.DEFAULT_BOLD);
            this.f85099k.setSingleLine(true);
            this.f85099k.setEllipsize(TextUtils.TruncateAt.END);
            int k010 = Nc.b.k0(6.0f);
            this.f85099k.setPadding((this.f85090b.z0() ? Nc.b.k0(10.0f) : 0) + k010, k010, (this.f85090b.A0() ? Nc.b.k0(10.0f) : 0) + k010, k010);
            FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams7.gravity = 17;
            frameLayout2.addView(this.f85099k, layoutParams7);
        }
        o0(linearLayout);
        LinearLayout linearLayout4 = new LinearLayout(getContext());
        this.f85104p = linearLayout4;
        linearLayout4.setOrientation(0);
        linearLayout4.setPadding(0, Nc.b.k0(1.0f), 0, Nc.b.k0(1.0f));
        linearLayout.addView(linearLayout4, new LinearLayout.LayoutParams(-2, -2));
        Ac.b bVar = Theme.T.PANEL;
        linearLayout4.setBackgroundColor(Theme.i(bVar));
        LinearLayout linearLayout5 = new LinearLayout(getContext());
        this.f85101m = linearLayout5;
        linearLayout5.setOrientation(1);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-2, -2);
        this.f85105q = layoutParams8;
        linearLayout4.addView(this.f85101m, layoutParams8);
        this.f85101m.setPadding(Nc.b.k0(0.0f), 0, Nc.b.k0(4.0f), 0);
        LinearLayout linearLayout6 = this.f85101m;
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        linearLayout6.setBackgroundColor(Theme.i(bVar2));
        LinearLayout linearLayout7 = new LinearLayout(getContext());
        this.f85102n = linearLayout7;
        linearLayout7.setOrientation(1);
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
        this.f85106r = layoutParams9;
        linearLayout4.addView(this.f85102n, layoutParams9);
        this.f85102n.setPadding(Nc.b.k0(4.0f), 0, Nc.b.k0(0.0f), 0);
        this.f85102n.setBackgroundColor(Theme.i(bVar));
        if (this.f85090b.c0()) {
            setPreviewEnabled(false);
        } else {
            FrameLayout frameLayout3 = new FrameLayout(getContext());
            this.f85100l = frameLayout3;
            frameLayout3.setBackgroundColor(Theme.i(bVar2));
            linearLayout.addView(this.f85100l, new LinearLayout.LayoutParams(-1, -2));
            ImageView imageView = new ImageView(getContext());
            this.f85107s = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.f85100l.addView(this.f85107s, new FrameLayout.LayoutParams(-1, -1));
            this.f85100l.setClickable(false);
            this.f85100l.setFocusable(false);
            this.f85107s.setClickable(false);
            setPreviewEnabled(EditorSettings.a() != null && EditorSettings.a().materialGraphPreviewsEnabled);
        }
        K();
        J();
        m1();
        post(new Runnable() {
            @Override
            public final void run() {
                E.this.F();
            }
        });
        setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean u02;
                u02 = E.this.u0(view2, motionEvent);
                return u02;
            }
        });
    }

    public final int I0(int actualIndex) {
        if (this.f85077K == null) {
            return actualIndex;
        }
        int i10 = 0;
        while (true) {
            int[] iArr = this.f85077K;
            if (i10 >= iArr.length) {
                return -1;
            }
            if (iArr[i10] == actualIndex) {
                return i10;
            }
            i10++;
        }
    }

    public final void J() {
        if (!this.f85090b.c0()) {
            h1(false);
            return;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (this.f85090b.exposeInInspector) {
            steppedArrayList.add(new C5.b(new C13013d(), (String) null, b.a.SLStringWrap).l(true));
        }
        NoCodeNode noCodeNode = this.f85090b;
        if (noCodeNode instanceof RawNumberNode) {
            steppedArrayList.add(new C5.b(new e((RawNumberNode) noCodeNode), (String) null, b.a.SLFloatWrap).l(true));
        } else if (noCodeNode instanceof RawTextNode) {
            steppedArrayList.add(new C5.b(new C13014f((RawTextNode) noCodeNode), (String) null, b.a.SLStringWrap).l(true));
        } else if (noCodeNode instanceof RawObjectNode) {
            steppedArrayList.add(new C5.b(new C13015g((RawObjectNode) noCodeNode), ""));
        } else if (noCodeNode instanceof RawSliderNode) {
            steppedArrayList.add(new C5.b(new C13016h((RawSliderNode) noCodeNode), (String) null, b.a.SLFloat01).l(true));
        } else if (noCodeNode instanceof RawFloat2Node) {
            steppedArrayList.add(N("", ((RawFloat2Node) noCodeNode).value));
        } else if (noCodeNode instanceof RawFloat3Node) {
            steppedArrayList.add(O("", ((RawFloat3Node) noCodeNode).value));
        } else if (noCodeNode instanceof RawFloat4Node) {
            steppedArrayList.add(P("", ((RawFloat4Node) noCodeNode).value));
        } else if (noCodeNode instanceof RawMat3Node) {
            RawMat3Node rawMat3Node = (RawMat3Node) noCodeNode;
            steppedArrayList.add(O("C0", rawMat3Node.f79128c0));
            steppedArrayList.add(O("C1", rawMat3Node.f79129c1));
            steppedArrayList.add(O("C2", rawMat3Node.f79130c2));
        } else if (noCodeNode instanceof RawMat4Node) {
            RawMat4Node rawMat4Node = (RawMat4Node) noCodeNode;
            steppedArrayList.add(P("C0", rawMat4Node.f79133c0));
            steppedArrayList.add(P("C1", rawMat4Node.f79134c1));
            steppedArrayList.add(P("C2", rawMat4Node.f79135c2));
            steppedArrayList.add(P("C3", rawMat4Node.f79136c3));
        } else if (noCodeNode instanceof RawColorNode) {
            steppedArrayList.add(new C5.b(new C13017i((RawColorNode) noCodeNode), (String) null, b.a.Color).l(true));
        } else if (noCodeNode instanceof RawTextureNode) {
            steppedArrayList.add(new C5.b(new C13018j((RawTextureNode) noCodeNode), (String) null, b.a.Texture).l(true));
        } else if (noCodeNode instanceof RawCubemapNode) {
            steppedArrayList.add(new C5.b(new l((RawCubemapNode) noCodeNode), (String) null, b.a.CubemapOrGallery).l(true));
        } else if (noCodeNode instanceof RawObjectFileNode) {
            steppedArrayList.add(new C5.b(new m((RawObjectFileNode) noCodeNode), (String) null, b.a.InputFile, ".go").l(true));
        } else if (noCodeNode instanceof RawAnimationFileNode) {
            steppedArrayList.add(new C5.b(new n((RawAnimationFileNode) noCodeNode), (String) null, b.a.InputFile, ".anim").l(true));
        } else if (noCodeNode instanceof RawAnimationMaskFileNode) {
            steppedArrayList.add(new C5.b(new o((RawAnimationMaskFileNode) noCodeNode), (String) null, b.a.InputFile, ".amask").l(true));
        } else if (noCodeNode instanceof Sa.a) {
            Sa.a aVar = (Sa.a) noCodeNode;
            String G02 = aVar.G0();
            steppedArrayList.add(new C5.b("Selected: " + ((G02 == null || G02.isEmpty()) ? "None" : H3.g.w1(G02)), 12));
            p pVar = new p(aVar);
            b.a aVar2 = b.a.Button;
            steppedArrayList.add(new C5.b(pVar, "Select Preset", aVar2).l(true));
            steppedArrayList.add(new C5.b(new q(aVar), "Clear Preset", aVar2).l(true));
        } else if (noCodeNode instanceof RawGradientNode) {
            steppedArrayList.add(N9.a.b("", ((RawGradientNode) noCodeNode).gradient, getContext(), new r()));
        }
        Z0(steppedArrayList, this.f85101m);
        h1(!steppedArrayList.isEmpty());
    }

    public final int J0(LinearLayout column) {
        if (column == null || column.getVisibility() != 0) {
            return 0;
        }
        int paddingTop = column.getPaddingTop() + column.getPaddingBottom();
        for (int i10 = 0; i10 < column.getChildCount(); i10++) {
            View childAt = column.getChildAt(i10);
            if (childAt != null && childAt.getVisibility() != 8) {
                paddingTop += childAt.getMeasuredHeight();
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    paddingTop += marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                }
            }
        }
        return paddingTop;
    }

    public final void K() {
        NoCodeData graphData = this.f85091c.getGraphData();
        NoCodeSlot[] G10 = this.f85090b.G(graphData);
        NoCodeSlot[] K10 = this.f85090b.K(graphData);
        this.f85080N = G10 != null && G10.length > 0;
        this.f85081O = K10 != null && K10.length > 0;
        if (G10 != null) {
            this.f85068B = new View[G10.length];
            this.f85072F = new View[G10.length];
            this.f85073G = new TextView[G10.length];
            this.f85075I = new K[G10.length];
            this.f85074H = new ImageView[G10.length];
            this.f85076J = new boolean[G10.length];
            this.f85077K = new int[G10.length];
            this.f85078L = new TextView[G10.length];
            for (int i10 = 0; i10 < G10.length; i10++) {
                NoCodeSlot noCodeSlot = G10[i10];
                this.f85077K[i10] = this.f85090b.E(graphData, i10);
                this.f85068B[i10] = M(this.f85101m, noCodeSlot, true, i10);
            }
        } else {
            this.f85077K = null;
            this.f85078L = null;
        }
        if (K10 != null) {
            this.f85069C = new View[K10.length];
            this.f85079M = new TextView[K10.length];
            for (int i11 = 0; i11 < K10.length; i11++) {
                this.f85069C[i11] = M(this.f85102n, K10[i11], false, i11);
            }
        } else {
            this.f85079M = null;
        }
        T0(graphData);
        Q0(graphData);
    }

    public final int K0() {
        if (this.f85104p == null) {
            return 0;
        }
        D(false);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f85104p.measure(makeMeasureSpec, makeMeasureSpec);
        return this.f85104p.getMeasuredWidth();
    }

    public final View L(final int inputIndex, final NoCodeSlot slot) {
        ga.H h10;
        ImageView imageView = null;
        if (slot == null || this.f85090b.c0() || (h10 = slot.type) == null) {
            return null;
        }
        if (!C13308d.n(h10)) {
            switch (C.f85119a[slot.type.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    break;
                default:
                    return null;
            }
        }
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        FrameLayout frameLayout = new FrameLayout(getContext());
        int k02 = Nc.b.k0(4.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        Ac.b bVar = Theme.T.PANEL_TOPBAR;
        gradientDrawable.setColor(Theme.i(bVar));
        gradientDrawable.setCornerRadius(k02);
        gradientDrawable.setStroke(Nc.b.k0(1.0f), Theme.i(Theme.T.CARD));
        frameLayout.setBackground(gradientDrawable);
        int k03 = Nc.b.k0(22.0f);
        ga.H h11 = slot.type;
        ga.H h12 = ga.H.COLOR;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(Nc.b.k0(h11 == h12 ? 38.0f : (h11 == ga.H.TEXTURE || h11 == ga.H.CUBEMAP || h11 == ga.H.TEXT || h11 == ga.H.GAME_OBJECT || h11 == ga.H.MATERIAL || h11 == ga.H.OBJECT_FILE || h11 == ga.H.SOUND_FILE || h11 == ga.H.DIRECTION || h11 == ga.H.BLENDING_MODE || h11 == ga.H.UV_SOURCE || h11 == ga.H.INPUT_DIALOG_TYPE || h11 == ga.H.POPUP_DIALOG_TYPE || C13308d.n(h11)) ? 75.0f : 50.0f), k03);
        layoutParams.rightMargin = Nc.b.k0(4.0f);
        linearLayout.addView(frameLayout, layoutParams);
        TextView textView = new TextView(getContext());
        textView.setTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
        textView.setTextSize(2, 10.0f);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        ga.H h13 = slot.type;
        if (h13 == h12) {
            frameLayout.setBackgroundResource(R.drawable.color_entry);
            if (frameLayout.getBackground() != null) {
                frameLayout.getBackground().setTint(Theme.i(bVar));
            }
            imageView = new ImageView(getContext());
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            imageView.setImageResource(R.drawable.color_entry_internal);
            int k04 = Nc.b.k0(2.0f);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
            layoutParams2.setMargins(k04, k04, k04, k04);
            frameLayout.addView(imageView, layoutParams2);
            textView.setVisibility(8);
        } else if (h13 == ga.H.TEXTURE || h13 == ga.H.CUBEMAP) {
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(16);
            int k05 = Nc.b.k0(4.0f);
            linearLayout2.setPadding(k05, 0, k05, 0);
            frameLayout.addView(linearLayout2, new FrameLayout.LayoutParams(-1, -1));
            ImageView imageView2 = new ImageView(getContext());
            imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
            int k06 = Nc.b.k0(16.0f);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(k06, k06);
            layoutParams3.rightMargin = Nc.b.k0(4.0f);
            linearLayout2.addView(imageView2, layoutParams3);
            textView.setGravity(8388627);
            linearLayout2.addView(textView, new LinearLayout.LayoutParams(0, -2, 1.0f));
            imageView = imageView2;
        } else {
            textView.setGravity(17);
            frameLayout.addView(textView, new FrameLayout.LayoutParams(-1, -1));
        }
        K k10 = new K(getContext());
        k10.setType(slot.type);
        k10.setClickable(false);
        int k07 = Nc.b.k0(30.0f);
        linearLayout.addView(k10, new LinearLayout.LayoutParams(k07, k07));
        View[] viewArr = this.f85072F;
        if (viewArr != null && inputIndex >= 0 && inputIndex < viewArr.length) {
            viewArr[inputIndex] = linearLayout;
            this.f85073G[inputIndex] = textView;
            this.f85074H[inputIndex] = imageView;
            if (this.f85075I == null) {
                this.f85075I = new K[viewArr.length];
            }
            this.f85075I[inputIndex] = k10;
        }
        i1(inputIndex, slot.type);
        frameLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                E.this.v0(inputIndex, slot, view);
            }
        });
        addView(linearLayout, new FrameLayout.LayoutParams(-2, -2));
        linearLayout.bringToFront();
        return linearLayout;
    }

    public final void L0(float dx, float dy) {
        this.f85090b.D0(dx, dy, Math.max(1.0E-4f, this.f85091c.getScale()), getContext());
        P0();
    }

    public final View M(LinearLayout column, NoCodeSlot slot, boolean input, int index) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(input ? 8388627 : 8388629);
        linearLayout.setPadding(0, Nc.b.k0(2.0f), 0, Nc.b.k0(2.0f));
        int k02 = Nc.b.k0(10.0f);
        View view = new View(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(k02, k02);
        view.setLayoutParams(layoutParams);
        view.setVisibility(4);
        TextView textView = new TextView(getContext());
        textView.setTextSize(2, 11.0f);
        textView.setPadding(Nc.b.k0(2.0f), 0, Nc.b.k0(2.0f), 0);
        H(textView, slot, input, index);
        if (input) {
            linearLayout.addView(view, layoutParams);
            linearLayout.addView(textView);
            TextView[] textViewArr = this.f85078L;
            if (textViewArr != null && index >= 0 && index < textViewArr.length) {
                textViewArr[index] = textView;
            }
            L(index, slot);
        } else {
            linearLayout.addView(textView);
            linearLayout.addView(view, layoutParams);
            TextView[] textViewArr2 = this.f85079M;
            if (textViewArr2 != null && index >= 0 && index < textViewArr2.length) {
                textViewArr2[index] = textView;
            }
        }
        column.addView(linearLayout, new LinearLayout.LayoutParams(-2, -2));
        return view;
    }

    public void M0() {
        this.f85094f = Theme.n();
        G(true);
        T0(this.f85091c.getGraphData());
    }

    public final C5.b N(String title, Vector2 value) {
        C5.b bVar = new C5.b(title, b.a.Vector, new C5.b[2]);
        C5.b[] bVarArr = bVar.f2081p;
        s sVar = new s(value);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(sVar, "X", aVar).l(true);
        bVar.f2081p[1] = new C5.b(new t(value), "Y", aVar).l(true);
        return bVar;
    }

    public final C5.b O(String title, Vector3 value) {
        C5.b bVar = new C5.b(title, b.a.Vector, new C5.b[3]);
        C5.b[] bVarArr = bVar.f2081p;
        u uVar = new u(value);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(uVar, "X", aVar).l(true);
        bVar.f2081p[1] = new C5.b(new w(value), "Y", aVar).l(true);
        bVar.f2081p[2] = new C5.b(new x(value), Signature.SIG_BOOLEAN, aVar).l(true);
        return bVar;
    }

    public final void O0() {
        PointF m02;
        if (this.f85097i == null || this.f85072F == null) {
            return;
        }
        float k02 = Nc.b.k0(0.0f) / Math.max(1.0E-4f, this.f85091c.getScale());
        int left = this.f85097i.getLeft();
        int i10 = 0;
        while (true) {
            View[] viewArr = this.f85072F;
            if (i10 >= viewArr.length) {
                this.f85091c.j0();
                return;
            }
            View view = viewArr[i10];
            if (view != null && (m02 = m0(true, i10)) != null) {
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                if (measuredWidth > 0 && measuredHeight > 0) {
                    K[] kArr = this.f85075I;
                    K k10 = (kArr == null || i10 < 0 || i10 >= kArr.length) ? null : kArr[i10];
                    int measuredWidth2 = k10 != null ? k10.getMeasuredWidth() : Nc.b.k0(30.0f);
                    float f10 = m02.f32426y - (measuredHeight * 0.5f);
                    view.setX(((left - measuredWidth) + (measuredWidth2 * 0.5f)) - k02);
                    view.setY(f10);
                }
            }
            i10++;
        }
    }

    public final C5.b P(String title, Vector4 value) {
        C5.b bVar = new C5.b(title, b.a.Vector, new C5.b[4]);
        C5.b[] bVarArr = bVar.f2081p;
        y yVar = new y(value);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(yVar, "X", aVar).l(true);
        bVar.f2081p[1] = new C5.b(new z(value), "Y", aVar).l(true);
        bVar.f2081p[2] = new C5.b(new A(value), Signature.SIG_BOOLEAN, aVar).l(true);
        bVar.f2081p[3] = new C5.b(new B(value), ExifInterface.LONGITUDE_WEST, aVar).l(true);
        return bVar;
    }

    public void P0() {
        float scale = this.f85091c.getScale();
        float panX = this.f85091c.getPanX();
        float panY = this.f85091c.getPanY();
        this.f85090b.g0(getContext());
        setX((this.f85090b.y(getContext()) * scale) + panX);
        setY((this.f85090b.z(getContext()) * scale) + panY);
        setPivotX(0.0f);
        setPivotY(0.0f);
        setScaleX(scale);
        setScaleY(scale);
        m1();
    }

    public final String Q(GameObject gameObject) {
        if (!C13317e.J(gameObject)) {
            return "";
        }
        try {
            AdvObjectReference advObjectReference = new AdvObjectReference(gameObject);
            X x10 = this.f85091c;
            NoCodeData graphData = x10 != null ? x10.getGraphData() : null;
            advObjectReference.o(graphData != null ? graphData.h0() : null);
            advObjectReference.q();
            return advObjectReference.r();
        } catch (Exception unused) {
            return "";
        }
    }

    public void Q0(NoCodeData data) {
        boolean z10;
        NoCodeSlot[] G10;
        NoCodeSlot noCodeSlot;
        List<NoCodeNodeConnection> list;
        if (this.f85072F == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            View[] viewArr = this.f85072F;
            if (i10 >= viewArr.length) {
                post(new Runnable() {
                    @Override
                    public final void run() {
                        E.this.O0();
                    }
                });
                return;
            }
            View view = viewArr[i10];
            if (view != null) {
                int H02 = H0(i10);
                if (data != null && (list = data.connections) != null) {
                    for (NoCodeNodeConnection noCodeNodeConnection : list) {
                        if (noCodeNodeConnection != null && this.f85090b.B().equals(noCodeNodeConnection.toNodeId) && noCodeNodeConnection.toSlot == H02) {
                            z10 = true;
                            break;
                        }
                    }
                }
                z10 = false;
                view.setVisibility(z10 ? 8 : 0);
                if (!z10 && (G10 = this.f85090b.G(data)) != null && i10 < G10.length && (noCodeSlot = G10[i10]) != null) {
                    i1(i10, noCodeSlot.type);
                }
            }
            i10++;
        }
    }

    public final void R() {
        String n10 = Theme.n();
        if (n10 == null || n10.equals(this.f85094f)) {
            return;
        }
        this.f85094f = n10;
        G(false);
        T0(this.f85091c.getGraphData());
    }

    public final void R0(NoCodeData data) {
        NoCodeSlot[] G10 = this.f85090b.G(data);
        if (G10 == null) {
            return;
        }
        for (int i10 = 0; i10 < G10.length; i10++) {
            NoCodeSlot noCodeSlot = G10[i10];
            TextView[] textViewArr = this.f85078L;
            if (textViewArr != null && i10 < textViewArr.length) {
                H(textViewArr[i10], noCodeSlot, true, i10);
            }
            K[] kArr = this.f85112x;
            if (kArr != null && i10 < kArr.length && kArr[i10] != null) {
                this.f85112x[i10].setType(W0(noCodeSlot, true, i10, this.f85090b.E(data, i10), data));
            }
        }
    }

    public final void S0(NoCodeData data) {
        NoCodeSlot[] K10 = this.f85090b.K(data);
        if (K10 == null) {
            return;
        }
        for (int i10 = 0; i10 < K10.length; i10++) {
            NoCodeSlot noCodeSlot = K10[i10];
            TextView[] textViewArr = this.f85079M;
            if (textViewArr != null && i10 < textViewArr.length) {
                H(textViewArr[i10], noCodeSlot, false, i10);
            }
            K[] kArr = this.f85113y;
            if (kArr != null && i10 < kArr.length && kArr[i10] != null) {
                this.f85113y[i10].setType(W0(noCodeSlot, false, i10, i10, data));
            }
        }
    }

    public void T0(NoCodeData data) {
        R0(data);
        S0(data);
    }

    public final Component U0(NoCodeInputDefault inputDefault, ga.H slotType, String providerExpr) {
        X x10 = this.f85091c;
        NoCodeData graphData = x10 != null ? x10.getGraphData() : null;
        return C13308d.v(inputDefault, graphData != null ? graphData.h0() : null, graphData != null ? graphData.i0() : null, slotType, providerExpr);
    }

    public final PointF V(View anchorView) {
        if (anchorView == null) {
            return null;
        }
        float f10 = 0.0f;
        float f11 = 0.0f;
        for (View view = anchorView; view != null && view != this; view = (View) view.getParent()) {
            f10 += view.getX();
            f11 += view.getY();
            if (!(view.getParent() instanceof View)) {
                break;
            }
        }
        return new PointF(f10 + (anchorView.getWidth() * 0.5f), f11 + (anchorView.getHeight() * 0.5f));
    }

    public final GameObject V0(NoCodeInputDefault inputDefault) {
        if (inputDefault != null && inputDefault.type == ga.H.GAME_OBJECT) {
            String str = inputDefault.jsonData;
            if (str == null) {
                str = "";
            }
            if (str.trim().isEmpty()) {
                return null;
            }
            try {
                AdvObjectReference advObjectReference = (AdvObjectReference) X7.a.m().fromJson(str, AdvObjectReference.class);
                if (advObjectReference == null) {
                    return null;
                }
                X x10 = this.f85091c;
                NoCodeData graphData = x10 != null ? x10.getGraphData() : null;
                advObjectReference.o(graphData != null ? graphData.h0() : null);
                return advObjectReference.k();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public final boolean W(int inputIndex) {
        NoCodeInputDefault D10 = this.f85090b.D(H0(inputIndex));
        if (D10 != null) {
            String str = D10.stringValue;
            if (str == null || str.trim().isEmpty()) {
                return false;
            }
            String trim = str.trim();
            if ("1".equals(trim)) {
                return true;
            }
            if ("0".equals(trim)) {
                return false;
            }
            return Boolean.parseBoolean(trim);
        }
        String j02 = j0(inputIndex, ga.H.BOOLEAN);
        if (j02 == null || j02.trim().isEmpty()) {
            return false;
        }
        String trim2 = j02.trim();
        if ("1".equals(trim2)) {
            return true;
        }
        if ("0".equals(trim2)) {
            return false;
        }
        return Boolean.parseBoolean(trim2);
    }

    public final ga.H W0(NoCodeSlot slot, boolean input, int uiIndex, int actualIndex, NoCodeData data) {
        ga.H h10;
        if (slot == null || (h10 = slot.type) == null) {
            h10 = ga.H.NUMBER;
        }
        if (data == null) {
            return h10;
        }
        C13303A c13303a = new C13303A(data);
        ga.H b10 = input ? c13303a.b(this.f85090b, actualIndex) : this.f85090b.t0(uiIndex, c13303a);
        return b10 != null ? b10 : h10;
    }

    public final ColorINT X(int inputIndex) {
        NoCodeInputDefault D10 = this.f85090b.D(H0(inputIndex));
        if (D10 != null && D10.type == ga.H.COLOR) {
            return new ColorINT(D10.f79017w, D10.f79018x, D10.f79019y, D10.f79020z);
        }
        ColorINT e12 = e1(j0(inputIndex, ga.H.COLOR));
        return e12 != null ? e12 : new ColorINT(1.0f, 1.0f, 1.0f, 1.0f);
    }

    public final void X0() {
        if (this.f85090b.c0() || this.f85085S) {
            return;
        }
        this.f85085S = true;
        post(new Runnable() {
            @Override
            public final void run() {
                E.this.w0();
            }
        });
    }

    public final String Y(int inputIndex) {
        NoCodeInputDefault D10 = this.f85090b.D(H0(inputIndex));
        return ga.m.n(D10 != null ? D10.stringValue : j0(inputIndex, ga.H.DIRECTION));
    }

    public final void Y0(int targetHeight) {
        this.f85084R = targetHeight;
        if (this.f85083Q) {
            return;
        }
        this.f85083Q = true;
        post(new Runnable() {
            @Override
            public final void run() {
                E.this.x0();
            }
        });
    }

    public final String Z(int inputIndex, ga.H type) {
        NoCodeInputDefault D10 = this.f85090b.D(H0(inputIndex));
        String j02 = D10 != null ? D10.stringValue : j0(inputIndex, type);
        return type == ga.H.BLENDING_MODE ? ga.m.N(j02).name() : type == ga.H.UV_SOURCE ? ga.m.k0(j02).name() : type == ga.H.INPUT_DIALOG_TYPE ? ga.m.Y(j02).name() : type == ga.H.POPUP_DIALOG_TYPE ? ga.m.d0(j02).name() : j02 != null ? j02 : "";
    }

    public final void Z0(final List<C5.b> entries, final LinearLayout content) {
        if (content == null) {
            return;
        }
        content.removeAllViews();
        if (entries == null) {
            return;
        }
        for (int i10 = 0; i10 < entries.size(); i10++) {
            C5.b bVar = entries.get(i10);
            b.a aVar = bVar.f2079n;
            if (aVar == b.a.Vector) {
                C5.h.y(content, N7.c.B(), bVar, 0, getContext());
            } else if (aVar == b.a.Component) {
                C5.h.w(content, N7.c.B(), bVar, 0, getContext(), new C5.n() {
                    @Override
                    public final void refresh(int i11) {
                        E.this.y0(entries, content, i11);
                    }
                });
            } else {
                C5.h.x(content, N7.c.B(), bVar, 0, true, getContext());
            }
        }
    }

    public final float a0(int inputIndex) {
        NoCodeInputDefault D10 = this.f85090b.D(H0(inputIndex));
        if (D10 != null) {
            return D10.f79018x;
        }
        Float f12 = f1(j0(inputIndex, ga.H.NUMBER));
        if (f12 != null) {
            return f12.floatValue();
        }
        return 0.0f;
    }

    public final void a1(View anchor, final int inputIndex, final ga.H type) {
        PopupWindow popupWindow;
        int i10;
        if (anchor == null || type == null) {
            return;
        }
        boolean[] zArr = this.f85076J;
        if (zArr == null || inputIndex < 0 || inputIndex >= zArr.length || zArr[inputIndex]) {
            final ga.H d02 = d0(type);
            final int H02 = H0(inputIndex);
            if (C13308d.n(d02)) {
                X x10 = this.f85091c;
                NoCodeData graphData = x10 != null ? x10.getGraphData() : null;
                GameObject h02 = graphData != null ? graphData.h0() : null;
                boolean z10 = d02 == ga.H.ANY_COMPONENT && (graphData != null ? graphData.i0() : null) != null;
                List f10 = C13317e.J(h02) ? C13308d.f(h02, d02) : new SteppedArrayList();
                if (f10.isEmpty() && !z10) {
                    if (C13317e.J(h02)) {
                        N7.c.v0("No eligible components found on [Pick first].");
                        return;
                    } else {
                        N7.c.v0("No component defaults are available here.");
                        return;
                    }
                }
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                if (z10) {
                    steppedArrayList.add(new C12908b(C13308d.f88188b, new dd.d() {
                        @Override
                        public final void onSelected(View view) {
                            E.this.C0(H02, d02, inputIndex, type, view);
                        }
                    }));
                }
                if (!f10.isEmpty()) {
                    steppedArrayList.add(new C12908b(C13308d.f88187a, new dd.d() {
                        @Override
                        public final void onSelected(View view) {
                            E.this.D0(H02, d02, inputIndex, type, view);
                        }
                    }));
                }
                for (Iterator it = f10.iterator(); it.hasNext(); it = it) {
                    final Component component = (Component) it.next();
                    final GameObject gameObject = h02;
                    steppedArrayList.add(new C12908b(C13308d.p(component), new dd.d() {
                        @Override
                        public final void onSelected(View view) {
                            E.this.E0(component, gameObject, H02, inputIndex, type, view);
                        }
                    }));
                }
                Y6.a.F1(anchor, C15147a.e.Below, steppedArrayList);
                return;
            }
            if (d02 == ga.H.DIRECTION) {
                SteppedArrayList steppedArrayList2 = new SteppedArrayList();
                String[] strArr = {"forward", ga.m.f88233b, ga.m.f88234c, "right", ga.m.f88236e, ga.m.f88237f};
                for (int i11 = 0; i11 < 6; i11++) {
                    final String str = strArr[i11];
                    steppedArrayList2.add(new C12908b(Tc.b.d(str), new dd.d() {
                        @Override
                        public final void onSelected(View view) {
                            E.this.F0(H02, str, inputIndex, type, view);
                        }
                    }));
                }
                Y6.a.F1(anchor, C15147a.e.Below, steppedArrayList2);
                return;
            }
            if (d02 == ga.H.BLENDING_MODE) {
                SteppedArrayList steppedArrayList3 = new SteppedArrayList();
                EnumC13053a[] values = EnumC13053a.values();
                int length = values.length;
                int i12 = 0;
                while (i12 < length) {
                    final EnumC13053a enumC13053a = values[i12];
                    steppedArrayList3.add(new C12908b(U(enumC13053a.name()), new dd.d() {
                        @Override
                        public final void onSelected(View view) {
                            E.this.G0(H02, enumC13053a, inputIndex, type, view);
                        }
                    }));
                    i12++;
                    values = values;
                }
                Y6.a.F1(anchor, C15147a.e.Below, steppedArrayList3);
                return;
            }
            if (d02 == ga.H.UV_SOURCE) {
                SteppedArrayList steppedArrayList4 = new SteppedArrayList();
                cc.e[] values2 = cc.e.values();
                int length2 = values2.length;
                int i13 = 0;
                while (i13 < length2) {
                    final cc.e eVar = values2[i13];
                    steppedArrayList4.add(new C12908b(U(eVar.name()), new dd.d() {
                        @Override
                        public final void onSelected(View view) {
                            E.this.z0(H02, eVar, inputIndex, type, view);
                        }
                    }));
                    i13++;
                    values2 = values2;
                }
                Y6.a.F1(anchor, C15147a.e.Below, steppedArrayList4);
                return;
            }
            if (d02 == ga.H.INPUT_DIALOG_TYPE) {
                SteppedArrayList steppedArrayList5 = new SteppedArrayList();
                InputDialog.Type[] valuesCustom = InputDialog.Type.valuesCustom();
                int length3 = valuesCustom.length;
                int i14 = 0;
                while (i14 < length3) {
                    final InputDialog.Type type2 = valuesCustom[i14];
                    steppedArrayList5.add(new C12908b(U(type2.name()), new dd.d() {
                        @Override
                        public final void onSelected(View view) {
                            E.this.A0(H02, type2, inputIndex, type, view);
                        }
                    }));
                    i14++;
                    valuesCustom = valuesCustom;
                }
                Y6.a.F1(anchor, C15147a.e.Below, steppedArrayList5);
                return;
            }
            if (d02 == ga.H.POPUP_DIALOG_TYPE) {
                SteppedArrayList steppedArrayList6 = new SteppedArrayList();
                ga.G[] values3 = ga.G.values();
                int length4 = values3.length;
                int i15 = 0;
                while (i15 < length4) {
                    final ga.G g10 = values3[i15];
                    steppedArrayList6.add(new C12908b(U(g10.name()), new dd.d() {
                        @Override
                        public final void onSelected(View view) {
                            E.this.B0(H02, g10, inputIndex, type, view);
                        }
                    }));
                    i15++;
                    values3 = values3;
                }
                Y6.a.F1(anchor, C15147a.e.Below, steppedArrayList6);
                return;
            }
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setOrientation(1);
            int k02 = Nc.b.k0(8.0f);
            linearLayout.setPadding(k02, k02, k02, k02);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(Theme.i(Theme.T.CARD));
            gradientDrawable.setCornerRadius(Nc.b.k0(6.0f));
            linearLayout.setBackground(gradientDrawable);
            PopupWindow popupWindow2 = new PopupWindow((View) linearLayout, Nc.b.k0(260.0f), -2, true);
            popupWindow2.setOutsideTouchable(true);
            popupWindow2.setFocusable(true);
            if (d02 == ga.H.NUMBER) {
                C5.h.x(linearLayout, N7.c.B(), new C5.b(new k(H02, inputIndex, type), (String) null, b.a.SLFloatWrap).l(true), 0, true, getContext());
            } else {
                E e10 = this;
                if (d02 == ga.H.COLOR) {
                    C5.h.x(linearLayout, N7.c.B(), new C5.b(new v(H02, inputIndex, type), (String) null, b.a.Color).l(true), 0, true, getContext());
                } else if (d02 == ga.H.TEXT) {
                    C5.h.x(linearLayout, N7.c.B(), new C5.b(new D(H02, inputIndex, type), (String) null, b.a.SLStringWrap).l(true), 0, true, getContext());
                } else if (d02 == ga.H.BOOLEAN) {
                    C5.h.x(linearLayout, N7.c.B(), new C5.b(new C1583E(H02, inputIndex, type), (String) null, b.a.SLBooleanWrap).l(true), 0, true, getContext());
                } else {
                    if (d02 != ga.H.GAME_OBJECT) {
                        if (d02 == ga.H.QUATERNION) {
                            C5.b bVar = new C5.b((String) null, b.a.Vector, new C5.b[3]);
                            String[] strArr2 = {"X", "Y", Signature.SIG_BOOLEAN};
                            int i16 = 0;
                            for (int i17 = 3; i16 < i17; i17 = 3) {
                                int i18 = i16;
                                bVar.f2081p[i18] = new C5.b(new G(inputIndex, i16, H02, type), strArr2[i18], b.a.SLFloatWrap).l(true);
                                i16 = i18 + 1;
                                e10 = e10;
                            }
                            i10 = 0;
                            C5.h.y(linearLayout, N7.c.B(), bVar, 0, getContext());
                            popupWindow = popupWindow2;
                        } else {
                            ga.H h10 = ga.H.FLOAT2;
                            if (d02 == h10 || d02 == ga.H.FLOAT3 || d02 == ga.H.FLOAT4) {
                                int i19 = d02 == h10 ? 2 : d02 == ga.H.FLOAT3 ? 3 : 4;
                                C5.b bVar2 = new C5.b((String) null, b.a.Vector, new C5.b[i19]);
                                String[] strArr3 = i19 == 2 ? new String[]{"X", "Y"} : i19 == 3 ? new String[]{"X", "Y", Signature.SIG_BOOLEAN} : new String[]{"X", "Y", Signature.SIG_BOOLEAN, ExifInterface.LONGITUDE_WEST};
                                int i20 = 0;
                                while (i20 < i19) {
                                    int i21 = i20;
                                    bVar2.f2081p[i21] = new C5.b(new H(inputIndex, d02, i20, H02, type), strArr3[i21], b.a.SLFloatWrap).l(true);
                                    i20 = i21 + 1;
                                    popupWindow2 = popupWindow2;
                                }
                                popupWindow = popupWindow2;
                                i10 = 0;
                                C5.h.y(linearLayout, N7.c.B(), bVar2, 0, getContext());
                            } else if (d02 == ga.H.TEXTURE) {
                                C5.h.x(linearLayout, N7.c.B(), new C5.b(new I(H02, inputIndex, type), (String) null, b.a.Texture).l(true), 0, true, getContext());
                            } else if (d02 == ga.H.CUBEMAP) {
                                C5.h.x(linearLayout, N7.c.B(), new C5.b(new J(H02, inputIndex, type), (String) null, b.a.CubemapOrGallery).l(true), 0, true, getContext());
                            } else if (d02 == ga.H.OBJECT_FILE) {
                                C5.h.x(linearLayout, N7.c.B(), new C5.b(new C13010a(H02, inputIndex, type), (String) null, b.a.InputFile, ".go").l(true), 0, true, getContext());
                            } else if (d02 == ga.H.WORLD_FILE) {
                                C5.h.x(linearLayout, N7.c.B(), new C5.b(new C13011b(H02, inputIndex, type), (String) null, b.a.InputFile, ".world").l(true), 0, true, getContext());
                            } else if (d02 == ga.H.SOUND_FILE) {
                                C5.h.x(linearLayout, N7.c.B(), new C5.b(new C13012c(H02, inputIndex, type), (String) null, b.a.InputFile, C2633l.d(".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv", ".imvs", ".sound")).l(true), 0, true, getContext());
                            }
                        }
                        popupWindow.showAsDropDown(anchor, i10, Nc.b.k0(4.0f));
                    }
                    C5.h.x(linearLayout, N7.c.B(), new C5.b(new F(H02, inputIndex, type), (String) null), 0, true, getContext());
                }
            }
            popupWindow = popupWindow2;
            i10 = 0;
            popupWindow.showAsDropDown(anchor, i10, Nc.b.k0(4.0f));
        }
    }

    public final Quaternion b0(int inputIndex) {
        NoCodeData noCodeData;
        NoCodeInputDefault D10 = this.f85090b.D(H0(inputIndex));
        if (D10 != null) {
            ga.H h10 = D10.type;
            if (h10 == ga.H.QUATERNION || h10 == ga.H.FLOAT4) {
                return new Quaternion(D10.f79017w, D10.f79018x, D10.f79019y, D10.f79020z);
            }
            NoCodeNode noCodeNode = this.f85090b;
            return ga.m.f0(ga.m.e(noCodeNode, inputIndex, h10, D10, (noCodeNode == null || (noCodeData = noCodeNode.f79021a) == null) ? null : noCodeData.h0()));
        }
        String j02 = j0(inputIndex, ga.H.QUATERNION);
        float[] g12 = g1(j02, 4);
        if (g12 != null) {
            return new Quaternion(g12[3], g12[0], g12[1], g12[2]);
        }
        float[] g13 = g1(j02, 3);
        if (g13 == null) {
            Float f12 = f1(j02);
            return f12 != null ? new Quaternion(f12.floatValue(), f12.floatValue(), f12.floatValue(), f12.floatValue()) : new Quaternion();
        }
        Quaternion quaternion = new Quaternion();
        quaternion.v(g13[0], g13[1], g13[2]);
        return quaternion;
    }

    public final void b1() {
        LinearLayout linearLayout;
        ViewGroup.LayoutParams layoutParams;
        if (this.f85090b.c0() || (linearLayout = this.f85103o) == null || this.f85099k == null || this.f85104p == null || (layoutParams = linearLayout.getLayoutParams()) == null) {
            return;
        }
        int ceil = this.f85099k.getText() != null ? ((int) Math.ceil(this.f85099k.getPaint().measureText(r1.toString()))) + this.f85099k.getPaddingLeft() + this.f85099k.getPaddingRight() : 0;
        int K02 = K0();
        int i10 = 0;
        for (int i11 = 0; i11 < this.f85103o.getChildCount(); i11++) {
            View childAt = this.f85103o.getChildAt(i11);
            if (childAt != null && childAt != this.f85104p && childAt != this.f85099k) {
                i10 = Math.max(i10, childAt.getMeasuredWidth());
            }
        }
        int max = Math.max(this.f85109u, Math.max(ceil, Math.max(K02, i10)));
        D(max > K02);
        if (layoutParams.width != max) {
            layoutParams.width = max;
            this.f85103o.setLayoutParams(layoutParams);
        }
    }

    public final float[] c0(int inputIndex, ga.H type) {
        int i10 = 0;
        if (type == ga.H.QUATERNION) {
            Quaternion b02 = b0(inputIndex);
            return new float[]{b02.getX(), b02.getY(), b02.getZ(), b02.I()};
        }
        if (type == ga.H.DIRECTION) {
            X x10 = this.f85091c;
            NoCodeData graphData = x10 != null ? x10.getGraphData() : null;
            Vector3 z10 = ga.m.z(Y(inputIndex), graphData != null ? graphData.h0() : null);
            return new float[]{z10.getX(), z10.getY(), z10.getZ(), 0.0f};
        }
        int i11 = type == ga.H.FLOAT2 ? 2 : type == ga.H.FLOAT3 ? 3 : 4;
        NoCodeInputDefault D10 = this.f85090b.D(H0(inputIndex));
        float[] fArr = new float[4];
        if (D10 != null) {
            fArr[0] = D10.f79018x;
            fArr[1] = D10.f79019y;
            fArr[2] = D10.f79020z;
            fArr[3] = D10.f79017w;
            return fArr;
        }
        String j02 = j0(inputIndex, type);
        float[] g12 = g1(j02, i11);
        if (g12 != null) {
            while (i10 < i11) {
                fArr[i10] = g12[i10];
                i10++;
            }
            return fArr;
        }
        Float f12 = f1(j02);
        if (f12 != null) {
            while (i10 < i11) {
                fArr[i10] = f12.floatValue();
                i10++;
            }
        }
        return fArr;
    }

    public final void c1() {
        LinearLayout linearLayout = this.f85101m;
        if (linearLayout == null || this.f85102n == null) {
            return;
        }
        int max = Math.max(J0(linearLayout), J0(this.f85102n));
        if (this.f85101m.getMinimumHeight() != max) {
            this.f85101m.setMinimumHeight(max);
        }
        if (this.f85102n.getMinimumHeight() != max) {
            this.f85102n.setMinimumHeight(max);
        }
    }

    public final ga.H d0(ga.H type) {
        return (type == null || type == ga.H.DYNAMIC) ? ga.H.NUMBER : type;
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        float width;
        float height;
        float f10;
        float f11;
        R();
        super.dispatchDraw(canvas);
        if (this.f85082P) {
            float f12 = this.f85096h * 0.5f;
            if (this.f85097i != null) {
                width = this.f85097i.getRight() - f12;
                height = this.f85097i.getBottom() - f12;
                f10 = r1.getLeft() + f12;
                f11 = this.f85097i.getTop() + f12;
            } else {
                width = getWidth() - f12;
                height = getHeight() - f12;
                f10 = f12;
                f11 = f10;
            }
            float f13 = width;
            float f14 = height;
            float k02 = Nc.b.k0(4.0f);
            canvas.drawRoundRect(f10, f11, f13, f14, k02, k02, this.f85095g);
        }
    }

    public K e0(int index) {
        K[] kArr = this.f85075I;
        if (kArr == null || index < 0 || index >= kArr.length) {
            return null;
        }
        return kArr[index];
    }

    public int f0(int uiIndex) {
        return H0(uiIndex);
    }

    public K g0(int index) {
        K[] kArr = this.f85112x;
        if (kArr == null || index < 0 || index >= kArr.length) {
            return null;
        }
        return kArr[index];
    }

    public PointF getBranchAnchorLocal() {
        return getBranchInputAnchorLocal();
    }

    public PointF getBranchInputAnchorLocal() {
        return V(this.f85070D);
    }

    public K getBranchInputSocket() {
        return this.f85114z;
    }

    public PointF getBranchOutputAnchorLocal() {
        return V(this.f85071E);
    }

    public K getBranchOutputSocket() {
        return this.f85067A;
    }

    public K getBranchSocket() {
        return getBranchInputSocket();
    }

    public float getCardLeftLocal() {
        if (this.f85097i != null) {
            return r0.getLeft();
        }
        return 0.0f;
    }

    public float getCardRightLocal() {
        return this.f85097i != null ? r0.getRight() : getWidth();
    }

    public K[] getInputSockets() {
        return this.f85112x;
    }

    public NoCodeNode getNode() {
        return this.f85090b;
    }

    public K[] getOutputSockets() {
        return this.f85113y;
    }

    public K h0(int slotIndex) {
        return g0(I0(slotIndex));
    }

    public final void h1(boolean hasRawEntries) {
        boolean z10 = this.f85080N || hasRawEntries;
        boolean z11 = this.f85081O;
        this.f85101m.setVisibility(z10 ? 0 : 8);
        this.f85102n.setVisibility(z11 ? 0 : 8);
    }

    public K i0(int index) {
        K[] kArr = this.f85113y;
        if (kArr == null || index < 0 || index >= kArr.length) {
            return null;
        }
        return kArr[index];
    }

    /* JADX WARN: Code restructure failed: missing block: B:323:0x0067, code lost:
    
        if (f1(r7) != null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x006a, code lost:
    
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0075, code lost:
    
        if (e1(r7) != null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x0086, code lost:
    
        if (g1(r7, 3) == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x00c1, code lost:
    
        if (g1(r7, 3) == null) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i1(int inputIndex, ga.H type) {
        TextView textView;
        String str;
        boolean z10;
        boolean z11;
        boolean[] zArr;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        TextView[] textViewArr = this.f85073G;
        if (textViewArr == null || inputIndex < 0 || inputIndex >= textViewArr.length || (textView = textViewArr[inputIndex]) == null || type == null) {
            return;
        }
        ga.H d02 = d0(type);
        NoCodeInputDefault D10 = this.f85090b.D(H0(inputIndex));
        ImageView imageView = null;
        String j02 = D10 == null ? j0(inputIndex, d02) : null;
        ga.H h10 = ga.H.MATERIAL;
        String str8 = C13308d.f88188b;
        if (d02 != h10) {
            if (D10 == null && j02 != null && !j02.trim().isEmpty()) {
                if (d02 != ga.H.NUMBER) {
                    if (d02 != ga.H.COLOR) {
                        if (d02 == ga.H.DIRECTION) {
                            if (!ga.m.l(j02)) {
                            }
                            z11 = true;
                        } else {
                            ga.H h11 = ga.H.FLOAT2;
                            if (d02 == h11 || d02 == ga.H.FLOAT3 || d02 == ga.H.FLOAT4 || d02 == ga.H.QUATERNION) {
                                z11 = (g1(j02, d02 == h11 ? 2 : d02 == ga.H.FLOAT3 ? 3 : 4) == null && f1(j02) == null) ? false : true;
                                if (d02 == ga.H.QUATERNION) {
                                    if (!z11) {
                                    }
                                }
                            }
                            z11 = true;
                        }
                    }
                }
                if (!z11) {
                    str = N0(j02);
                    if (str == null) {
                        str = S(j02);
                    }
                }
            }
            str = null;
            z10 = true;
            zArr = this.f85076J;
            if (zArr != null && inputIndex >= 0 && inputIndex < zArr.length) {
                zArr[inputIndex] = z10;
            }
            str2 = "-";
            if (z10) {
                textView.setVisibility(0);
                textView.setText(str != null ? Tc.b.d(str) : "-");
                ImageView[] imageViewArr = this.f85074H;
                ImageView imageView2 = (imageViewArr == null || inputIndex < 0 || inputIndex >= imageViewArr.length) ? null : imageViewArr[inputIndex];
                if (imageView2 != null) {
                    imageView2.setImageDrawable(null);
                    imageView2.setVisibility(8);
                    return;
                }
                return;
            }
            str3 = "";
            if (C13308d.n(d02)) {
                String str9 = D10 != null ? D10.stringValue : j02;
                str3 = D10 != null ? D10.jsonData : "";
                boolean z12 = (str3 == null || str3.trim().isEmpty()) && (str9 == null || str9.trim().isEmpty() || C13308d.f88187a.equalsIgnoreCase(str9.trim()));
                boolean z13 = d02 == ga.H.ANY_COMPONENT && str3 != null && str3.trim().isEmpty() && str9 != null && C13308d.f88188b.equalsIgnoreCase(str9.trim());
                if (z12) {
                    textView.setText(C13308d.f88187a);
                } else if (z13) {
                    textView.setText(C13308d.f88188b);
                } else {
                    Component U02 = U0(D10, type, j02);
                    if (U02 != null) {
                        textView.setText(C13308d.p(U02));
                    } else {
                        if (str9 == null || str9.trim().isEmpty()) {
                            str9 = C13308d.f88187a;
                        }
                        textView.setText(str9);
                    }
                }
                ImageView[] imageViewArr2 = this.f85074H;
                ImageView imageView3 = (imageViewArr2 == null || inputIndex < 0 || inputIndex >= imageViewArr2.length) ? null : imageViewArr2[inputIndex];
                if (imageView3 != null) {
                    imageView3.setImageDrawable(null);
                    imageView3.setVisibility(8);
                    return;
                }
                return;
            }
            switch (C.f85119a[d02.ordinal()]) {
                case 1:
                    textView.setText(T(D10 != null ? D10.f79018x : a0(inputIndex), 6));
                    return;
                case 2:
                    textView.setText(String.valueOf(W(inputIndex)));
                    return;
                case 3:
                    ColorINT X10 = (D10 == null || D10.type != ga.H.COLOR) ? X(inputIndex) : new ColorINT(D10.f79017w, D10.f79018x, D10.f79019y, D10.f79020z);
                    textView.setText("");
                    textView.setVisibility(8);
                    ImageView[] imageViewArr3 = this.f85074H;
                    if (imageViewArr3 != null && inputIndex >= 0 && inputIndex < imageViewArr3.length) {
                        imageView = imageViewArr3[inputIndex];
                    }
                    if (imageView != null) {
                        imageView.setImageResource(R.drawable.color_entry_internal);
                        ImageViewCompat.setImageTintList(imageView, ColorStateList.valueOf(X10.intColor));
                        imageView.setVisibility(0);
                        return;
                    }
                    return;
                case 4:
                    float[] c02 = c0(inputIndex, ga.H.FLOAT2);
                    textView.setText(T(c02[0], 6) + DocLint.SEPARATOR + T(c02[1], 6));
                    return;
                case 5:
                    float[] c03 = c0(inputIndex, ga.H.FLOAT3);
                    textView.setText(T(c03[0], 6) + DocLint.SEPARATOR + T(c03[1], 6) + DocLint.SEPARATOR + T(c03[2], 6));
                    return;
                case 6:
                    textView.setText(Tc.b.d(Y(inputIndex)));
                    ImageView[] imageViewArr4 = this.f85074H;
                    ImageView imageView4 = (imageViewArr4 == null || inputIndex < 0 || inputIndex >= imageViewArr4.length) ? null : imageViewArr4[inputIndex];
                    if (imageView4 != null) {
                        imageView4.setImageDrawable(null);
                        imageView4.setVisibility(8);
                        return;
                    }
                    return;
                case 7:
                    float[] c04 = c0(inputIndex, ga.H.FLOAT4);
                    textView.setText(T(c04[0], 6) + DocLint.SEPARATOR + T(c04[1], 6) + DocLint.SEPARATOR + T(c04[2], 6) + DocLint.SEPARATOR + T(c04[3], 6));
                    return;
                case 8:
                    Quaternion b02 = b0(inputIndex);
                    textView.setText(T(b02.D(), 6) + DocLint.SEPARATOR + T(b02.E(), 6) + DocLint.SEPARATOR + T(b02.F(), 6));
                    return;
                case 9:
                    if (D10 != null) {
                        j02 = D10.stringValue;
                    } else if (j02 == null) {
                        j02 = "";
                    }
                    if (j02 != null && !j02.isEmpty()) {
                        str2 = j02;
                    }
                    textView.setText(str2);
                    return;
                case 10:
                    GameObject V02 = V0(D10);
                    if (C13317e.J(V02)) {
                        textView.setText(V02.getName());
                    } else {
                        String str10 = "owner";
                        if (D10 != null) {
                            j02 = D10.stringValue;
                        } else if (j02 == null) {
                            j02 = "owner";
                        }
                        if (j02 != null && !j02.trim().isEmpty()) {
                            str10 = j02;
                        }
                        textView.setText(str10);
                    }
                    ImageView[] imageViewArr5 = this.f85074H;
                    ImageView imageView5 = (imageViewArr5 == null || inputIndex < 0 || inputIndex >= imageViewArr5.length) ? null : imageViewArr5[inputIndex];
                    if (imageView5 != null) {
                        imageView5.setImageDrawable(null);
                        imageView5.setVisibility(8);
                        return;
                    }
                    return;
                case 11:
                    if (D10 != null) {
                        j02 = D10.stringValue;
                    } else if (j02 == null) {
                        j02 = C13308d.f88188b;
                    }
                    if (j02 != null && !j02.trim().isEmpty()) {
                        str8 = j02;
                    }
                    textView.setText(str8);
                    ImageView[] imageViewArr6 = this.f85074H;
                    ImageView imageView6 = (imageViewArr6 == null || inputIndex < 0 || inputIndex >= imageViewArr6.length) ? null : imageViewArr6[inputIndex];
                    if (imageView6 != null) {
                        imageView6.setImageDrawable(null);
                        imageView6.setVisibility(8);
                        return;
                    }
                    return;
                case 12:
                    if (D10 != null && (str4 = D10.fileIPP) != null) {
                        str3 = str4;
                    }
                    if (str3.isEmpty()) {
                        textView.setText("-");
                    } else {
                        int max = Math.max(str3.lastIndexOf(47), str3.lastIndexOf(92));
                        if (max >= 0) {
                            str3 = str3.substring(max + 1);
                        }
                        textView.setText(Tc.b.d(str3));
                    }
                    ImageView[] imageViewArr7 = this.f85074H;
                    ImageView imageView7 = (imageViewArr7 == null || inputIndex < 0 || inputIndex >= imageViewArr7.length) ? null : imageViewArr7[inputIndex];
                    if (imageView7 != null) {
                        imageView7.setImageDrawable(null);
                        imageView7.setVisibility(8);
                        return;
                    }
                    return;
                case 13:
                    if (D10 != null && (str5 = D10.fileIPP) != null) {
                        str3 = str5;
                    }
                    if (str3.isEmpty()) {
                        textView.setText("-");
                    } else {
                        int max2 = Math.max(str3.lastIndexOf(47), str3.lastIndexOf(92));
                        if (max2 >= 0) {
                            str3 = str3.substring(max2 + 1);
                        }
                        textView.setText(Tc.b.d(str3));
                    }
                    ImageView[] imageViewArr8 = this.f85074H;
                    ImageView imageView8 = (imageViewArr8 == null || inputIndex < 0 || inputIndex >= imageViewArr8.length) ? null : imageViewArr8[inputIndex];
                    if (imageView8 != null) {
                        imageView8.setImageDrawable(null);
                        imageView8.setVisibility(8);
                        return;
                    }
                    return;
                case 14:
                case 15:
                    if (D10 != null && (str6 = D10.fileIPP) != null) {
                        str3 = str6;
                    }
                    ImageView[] imageViewArr9 = this.f85074H;
                    ImageView imageView9 = (imageViewArr9 == null || inputIndex < 0 || inputIndex >= imageViewArr9.length) ? null : imageViewArr9[inputIndex];
                    if (!str3.isEmpty()) {
                        int max3 = Math.max(str3.lastIndexOf(47), str3.lastIndexOf(92));
                        textView.setText(Tc.b.d(max3 >= 0 ? str3.substring(max3 + 1) : str3));
                        k1(imageView9, type, str3);
                        return;
                    } else {
                        textView.setText("-");
                        if (imageView9 != null) {
                            imageView9.setImageDrawable(null);
                            imageView9.setVisibility(8);
                            return;
                        }
                        return;
                    }
                case 16:
                case 17:
                    textView.setText(U(Z(inputIndex, type)));
                    ImageView[] imageViewArr10 = this.f85074H;
                    ImageView imageView10 = (imageViewArr10 == null || inputIndex < 0 || inputIndex >= imageViewArr10.length) ? null : imageViewArr10[inputIndex];
                    if (imageView10 != null) {
                        imageView10.setImageDrawable(null);
                        imageView10.setVisibility(8);
                        return;
                    }
                    return;
                case 18:
                    textView.setText(U(Z(inputIndex, type)));
                    ImageView[] imageViewArr11 = this.f85074H;
                    ImageView imageView11 = (imageViewArr11 == null || inputIndex < 0 || inputIndex >= imageViewArr11.length) ? null : imageViewArr11[inputIndex];
                    if (imageView11 != null) {
                        imageView11.setImageDrawable(null);
                        imageView11.setVisibility(8);
                        return;
                    }
                    return;
                case 19:
                    textView.setText(U(Z(inputIndex, type)));
                    ImageView[] imageViewArr12 = this.f85074H;
                    ImageView imageView12 = (imageViewArr12 == null || inputIndex < 0 || inputIndex >= imageViewArr12.length) ? null : imageViewArr12[inputIndex];
                    if (imageView12 != null) {
                        imageView12.setImageDrawable(null);
                        imageView12.setVisibility(8);
                        return;
                    }
                    return;
                case 20:
                    if (D10 != null && (str7 = D10.fileIPP) != null) {
                        str3 = str7;
                    }
                    if (str3.isEmpty()) {
                        textView.setText("-");
                    } else {
                        int max4 = Math.max(str3.lastIndexOf(47), str3.lastIndexOf(92));
                        if (max4 >= 0) {
                            str3 = str3.substring(max4 + 1);
                        }
                        textView.setText(Tc.b.d(str3));
                    }
                    ImageView[] imageViewArr13 = this.f85074H;
                    ImageView imageView13 = (imageViewArr13 == null || inputIndex < 0 || inputIndex >= imageViewArr13.length) ? null : imageViewArr13[inputIndex];
                    if (imageView13 != null) {
                        imageView13.setImageDrawable(null);
                        imageView13.setVisibility(8);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
        str = D10 != null ? D10.stringValue : j02;
        if (str == null || str.trim().isEmpty()) {
            str = C13308d.f88188b;
        }
        z10 = false;
        zArr = this.f85076J;
        if (zArr != null) {
            zArr[inputIndex] = z10;
        }
        str2 = "-";
        if (z10) {
        }
    }

    public final String j0(int inputIndex, ga.H desiredType) {
        Object obj = this.f85090b;
        if (!(obj instanceof ga.F)) {
            return null;
        }
        try {
            return ((ga.F) obj).a(H0(inputIndex), desiredType);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public final void j1() {
        FrameLayout frameLayout = this.f85100l;
        if (frameLayout == null) {
            return;
        }
        int i10 = (this.f85110v && this.f85111w) ? 0 : 8;
        if (frameLayout.getVisibility() != i10) {
            this.f85100l.setVisibility(i10);
            requestLayout();
        }
    }

    public final String k0(NoCodeSlot slot, ga.H effectiveType, boolean input) {
        if (slot == null) {
            return "";
        }
        String str = slot.name;
        if (str == null) {
            str = "";
        }
        String a10 = (EditorSettings.a() == null || !EditorSettings.a().translateNoCodeV2) ? str : slot.a();
        String str2 = a10 != null ? a10 : "";
        if (!input && "item".equalsIgnoreCase(str) && effectiveType != null && effectiveType != ga.H.DYNAMIC) {
            str2 = C13305a.d(effectiveType).toLowerCase(Locale.ROOT);
        }
        if (input) {
            return str2;
        }
        if (effectiveType == ga.H.FLOAT2 || effectiveType == ga.H.FLOAT3 || effectiveType == ga.H.DIRECTION || effectiveType == ga.H.FLOAT4 || effectiveType == ga.H.QUATERNION) {
            return str2 + "(" + ga.C.j(effectiveType) + ")";
        }
        if (effectiveType != ga.H.LIST) {
            return str2;
        }
        return str2 + okhttp3.v.f99450n;
    }

    public final void k1(ImageView thumb, ga.H type, String file) {
        if (thumb == null) {
            return;
        }
        if (file == null) {
            file = "";
        }
        if (file.isEmpty()) {
            thumb.setImageDrawable(null);
            thumb.setVisibility(8);
            return;
        }
        thumb.setVisibility(0);
        String S10 = com.itsmagic.engine.Core.Components.ProjectController.a.S(getContext());
        if (file.startsWith("/")) {
            file = file.substring(1);
        }
        if (S10 != null && !S10.isEmpty() && !file.contains(S10) && !file.startsWith("/storage/emulated/0/")) {
            file = S10 + "/" + file;
        }
        File file2 = new File(file);
        if (type != ga.H.CUBEMAP) {
            File file3 = new File(Tc.b.O(file) + ".texture");
            if (file3.exists()) {
                Vc.e.F(thumb, file3);
                return;
            } else {
                Vc.e.F(thumb, file2);
                return;
            }
        }
        File file4 = new File(Tc.b.O(file) + ".meta/thumb.png");
        if (file4.exists()) {
            Vc.e.F(thumb, file4);
            return;
        }
        try {
            D7.a.c(file2, thumb);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final int l0(NoCodeSlot slot, ga.H effectiveType, boolean input) {
        return (input || slot == null || !"item".equalsIgnoreCase(slot.name) || effectiveType == null || effectiveType == ga.H.DYNAMIC) ? Theme.i(Theme.T.HIGH_TEXT_COLOR) : C13309e.a(effectiveType);
    }

    public void l1() {
        boolean z10 = false;
        if (this.f85090b.c0()) {
            setPreviewEnabled(false);
            return;
        }
        if (EditorSettings.a() != null && EditorSettings.a().materialGraphPreviewsEnabled) {
            z10 = true;
        }
        setPreviewEnabled(z10);
    }

    public PointF m0(boolean input, int index) {
        View view;
        View[] viewArr = input ? this.f85068B : this.f85069C;
        if (viewArr == null || index < 0 || index >= viewArr.length || (view = viewArr[index]) == null) {
            return null;
        }
        float f10 = 0.0f;
        float f11 = 0.0f;
        for (View view2 = view; view2 != null && view2 != this; view2 = (View) view2.getParent()) {
            f10 += view2.getX();
            f11 += view2.getY();
            if (!(view2.getParent() instanceof View)) {
                break;
            }
        }
        return new PointF(f10 + (view.getWidth() * 0.5f), f11 + (view.getHeight() * 0.5f));
    }

    public final void m1() {
        if (this.f85099k == null) {
            return;
        }
        NoCodeData graphData = this.f85091c.getGraphData();
        this.f85099k.setText((EditorSettings.a() == null || !EditorSettings.a().translateNoCodeV2) ? this.f85090b.N(graphData) : this.f85090b.x(graphData));
        X0();
    }

    public PointF n0(boolean input, int index) {
        View view;
        View[] viewArr = input ? this.f85068B : this.f85069C;
        if (viewArr == null || index < 0 || index >= viewArr.length || (view = viewArr[index]) == null) {
            return null;
        }
        view.getLocationOnScreen(new int[2]);
        return new PointF(r5[0] + (view.getWidth() * 0.5f), r5[1] + (view.getHeight() * 0.5f));
    }

    public final void o0(LinearLayout root) {
        List<C5.b> I10;
        if (root == null || (I10 = this.f85090b.I(getContext())) == null || I10.isEmpty()) {
            return;
        }
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(Theme.i(Theme.T.PANEL));
        int k02 = Nc.b.k0(4.0f);
        int k03 = Nc.b.k0(2.0f);
        linearLayout.setPadding(k02, k03, k02, k03);
        root.addView(linearLayout, new LinearLayout.LayoutParams(-1, -2));
        for (C5.b bVar : I10) {
            if (bVar != null) {
                if (bVar.f2079n == b.a.Vector) {
                    C5.h.y(linearLayout, N7.c.B(), bVar, 0, getContext());
                } else {
                    C5.h.x(linearLayout, N7.c.B(), bVar, 0, true, getContext());
                }
            }
        }
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int width;
        super.onLayout(changed, left, top, right, bottom);
        FrameLayout frameLayout = this.f85100l;
        if (frameLayout != null && frameLayout.getVisibility() == 0 && (width = getWidth()) > 0 && this.f85100l.getLayoutParams() != null && this.f85100l.getLayoutParams().height != width) {
            Y0(width);
        }
        O0();
        c1();
        X0();
    }

    public final boolean p0(View v10, float localX, float localY) {
        return localX >= v10.getX() && localX <= v10.getX() + ((float) v10.getWidth()) && localY >= v10.getY() && localY <= v10.getY() + ((float) v10.getHeight());
    }

    public boolean q0() {
        return this.f85082P;
    }

    public boolean r0(float localX, float localY) {
        if (localX >= 0.0f && localY >= 0.0f && localX <= getWidth() && localY <= getHeight()) {
            FrameLayout frameLayout = this.f85097i;
            if (frameLayout == null || p0(frameLayout, localX, localY)) {
                return true;
            }
            View[] viewArr = this.f85072F;
            if (viewArr != null) {
                for (View view : viewArr) {
                    if (view != null && view.getVisibility() == 0 && p0(view, localX, localY)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean s0(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (!r0(motionEvent.getX(), motionEvent.getY())) {
                return false;
            }
            boolean z10 = this.f85091c.getSelectedNodeView() == this;
            this.f85091c.r0(this);
            if (this.f85091c.T()) {
                this.f85089W = false;
                return true;
            }
            this.f85089W = z10;
            this.f85087U = motionEvent.getRawX();
            this.f85088V = motionEvent.getRawY();
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (this.f85089W) {
                    float rawX = motionEvent.getRawX() - this.f85087U;
                    float rawY = motionEvent.getRawY() - this.f85088V;
                    this.f85087U = motionEvent.getRawX();
                    this.f85088V = motionEvent.getRawY();
                    L0(rawX, rawY);
                    this.f85091c.j0();
                }
                return true;
            }
            if (actionMasked != 3) {
                return false;
            }
        }
        this.f85089W = false;
        return true;
    }

    public void setBranchInputSocket(K socket) {
        this.f85114z = socket;
    }

    public void setBranchOutputSocket(K socket) {
        this.f85067A = socket;
    }

    public void setBranchSocket(K socket) {
        setBranchInputSocket(socket);
    }

    public void setInputSockets(K[] sockets) {
        this.f85112x = sockets;
    }

    public void setOutputSockets(K[] sockets) {
        this.f85113y = sockets;
    }

    public void setPreviewBitmap(Bitmap bmp) {
        this.f85111w = bmp != null;
        ImageView imageView = this.f85107s;
        if (imageView != null) {
            if (bmp != null) {
                imageView.setImageBitmap(bmp);
            } else {
                imageView.setImageDrawable(null);
            }
        }
        j1();
    }

    public void setPreviewEnabled(boolean enabled) {
        if (this.f85100l == null) {
            return;
        }
        this.f85110v = enabled && !this.f85090b.c0();
        j1();
    }

    @Override
    public void setSelected(boolean selected) {
        this.f85082P = selected;
        invalidate();
    }

    public final void t0(View view) {
        this.f85090b.exposeInInspector = !r2.exposeInInspector;
        E();
        J();
        this.f85091c.i0();
    }

    public final boolean u0(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (!r0(motionEvent.getX(), motionEvent.getY())) {
                return false;
            }
            boolean z10 = this.f85091c.getSelectedNodeView() == this;
            this.f85091c.r0(this);
            if (this.f85091c.T()) {
                this.f85089W = false;
                return true;
            }
            this.f85089W = z10;
            this.f85087U = motionEvent.getRawX();
            this.f85088V = motionEvent.getRawY();
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (this.f85089W) {
                    float rawX = motionEvent.getRawX() - this.f85087U;
                    float rawY = motionEvent.getRawY() - this.f85088V;
                    this.f85087U = motionEvent.getRawX();
                    this.f85088V = motionEvent.getRawY();
                    L0(rawX, rawY);
                    this.f85091c.j0();
                }
                return true;
            }
            if (actionMasked != 3) {
                return false;
            }
        }
        this.f85089W = false;
        return true;
    }

    public final void v0(int i10, NoCodeSlot noCodeSlot, View view) {
        boolean[] zArr = this.f85076J;
        if (zArr == null || i10 < 0 || i10 >= zArr.length || zArr[i10]) {
            a1(view, i10, noCodeSlot.type);
        }
    }

    public final void w0() {
        this.f85085S = false;
        b1();
    }

    public final void x0() {
        ViewGroup.LayoutParams layoutParams;
        int i10;
        this.f85083Q = false;
        FrameLayout frameLayout = this.f85100l;
        if (frameLayout == null || frameLayout.getVisibility() != 0 || (layoutParams = this.f85100l.getLayoutParams()) == null || (i10 = this.f85084R) <= 0 || layoutParams.height == i10) {
            return;
        }
        layoutParams.height = i10;
        this.f85100l.setLayoutParams(layoutParams);
    }

    public final void y0(List list, LinearLayout linearLayout, int i10) {
        Z0(list, linearLayout);
    }

    public final void z0(int i10, cc.e eVar, int i11, ga.H h10, View view) {
        this.f85090b.w0(NoCodeInputDefault.k(i10, ga.H.UV_SOURCE, eVar.name()));
        i1(i11, h10);
        this.f85091c.i0();
    }
}
