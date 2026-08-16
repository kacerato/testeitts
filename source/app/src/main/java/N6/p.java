package N6;

import C5.b;
import N9.a;
import android.content.Context;
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
import androidx.exifinterface.media.ExifInterface;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.PbrPresetNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawColorNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawCubemapNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawFloat2Node;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawFloat3Node;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawFloat4Node;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawGradientNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawMat3Node;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawMat4Node;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawNumberNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawSliderNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawTextureNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphInputDefault;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNodeConnection;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.core.Signature;
import org.openjdk.tools.doclint.DocLint;
import r4.C15147a;

public class p extends FrameLayout {

    public boolean[] f15611A;

    public int[] f15612B;

    public boolean f15613C;

    public boolean f15614D;

    public boolean f15615E;

    public boolean f15616F;

    public int f15617G;

    public float f15618H;

    public float f15619I;

    public boolean f15620J;

    public final ShaderGraphNode f15621b;

    public final H f15622c;

    public final GradientDrawable f15623d;

    public GradientDrawable f15624e;

    public String f15625f;

    public final Paint f15626g;

    public float f15627h;

    public FrameLayout f15628i;

    public int f15629j;

    public TextView f15630k;

    public FrameLayout f15631l;

    public LinearLayout f15632m;

    public LinearLayout f15633n;

    public ImageView f15634o;

    public ImageView f15635p;

    public N6.w[] f15636q;

    public N6.w[] f15637r;

    public N6.w f15638s;

    public View[] f15639t;

    public View[] f15640u;

    public View f15641v;

    public View[] f15642w;

    public TextView[] f15643x;

    public ImageView[] f15644y;

    public N6.w[] f15645z;

    public class a implements D5.h {

        public final RawSliderNode f15646a;

        public a(final RawSliderNode val$raw) {
            this.f15646a = val$raw;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f15646a.value);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f15646a.value = variable.float_value;
                p.this.f15622c.b0();
            }
        }
    }

    public class b implements D5.h {

        public final RawColorNode f15648a;

        public b(final RawColorNode val$raw) {
            this.f15648a = val$raw;
        }

        @Override
        public Variable get() {
            ColorINT colorINT = this.f15648a.value;
            return new Variable("", colorINT != null ? colorINT.clone() : new ColorINT(1.0f, 1.0f, 1.0f, 1.0f));
        }

        @Override
        public void set(Variable variable) {
            ColorINT colorINT;
            if (variable == null || (colorINT = variable.color_value) == null) {
                return;
            }
            this.f15648a.value = colorINT.clone();
            p.this.f15622c.b0();
        }
    }

    public class c implements D5.h {

        public final RawTextureNode f15650a;

        public c(final RawTextureNode val$raw) {
            this.f15650a = val$raw;
        }

        @Override
        public Variable get() {
            String str = this.f15650a.textureFile;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f15650a.J(variable.str_value);
                p.this.f15622c.b0();
            }
        }
    }

    public class d implements D5.h {

        public final RawCubemapNode f15652a;

        public d(final RawCubemapNode val$raw) {
            this.f15652a = val$raw;
        }

        @Override
        public Variable get() {
            String str = this.f15652a.cubemapFile;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f15652a.J(variable.str_value);
                p.this.f15622c.b0();
            }
        }
    }

    public class e implements D5.b {

        public final PbrPresetNode f15654a;

        public class a implements H3.e {
            public a() {
            }

            @Override
            public String getSelected() {
                return e.this.f15654a.K();
            }

            @Override
            public void onSelected(String file) {
                e.this.f15654a.P(file);
                p.this.t();
                p.this.f0();
                p.this.f15622c.b0();
            }
        }

        public e(final PbrPresetNode val$raw) {
            this.f15654a = val$raw;
        }

        @Override
        public void a(View view) {
            H3.g.K1(view, C15147a.e.Left, new a());
        }
    }

    public class f implements D5.h {

        public final PbrPresetNode f15657a;

        public f(final PbrPresetNode val$raw) {
            this.f15657a = val$raw;
        }

        @Override
        public Variable get() {
            return new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            this.f15657a.P("");
            p.this.t();
            p.this.f0();
            p.this.f15622c.b0();
        }
    }

    public class g implements a.b {
        public g() {
        }

        @Override
        public void a() {
            p.this.f15622c.b0();
        }
    }

    public class h implements D5.h {

        public final Vector2 f15660a;

        public h(final Vector2 val$value) {
            this.f15660a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f15660a != null) {
                str = this.f15660a.f79838x + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f15660a.f79838x = variable.float_value;
                p.this.f15622c.b0();
            }
        }
    }

    public class i implements D5.h {

        public final Vector2 f15662a;

        public i(final Vector2 val$value) {
            this.f15662a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f15662a != null) {
                str = this.f15662a.f79839y + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f15662a.f79839y = variable.float_value;
                p.this.f15622c.b0();
            }
        }
    }

    public class j implements D5.h {

        public final Vector3 f15664a;

        public j(final Vector3 val$value) {
            this.f15664a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f15664a != null) {
                str = this.f15664a.getX() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f15664a.setX(variable.float_value);
                p.this.f15622c.b0();
            }
        }
    }

    public class k implements Runnable {

        public final H f15666b;

        public k(final H val$graphView) {
            this.f15666b = val$graphView;
        }

        @Override
        public void run() {
            p.this.u0();
            this.f15666b.b0();
        }
    }

    public class l implements D5.h {

        public final Vector3 f15668a;

        public l(final Vector3 val$value) {
            this.f15668a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f15668a != null) {
                str = this.f15668a.getY() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f15668a.setY(variable.float_value);
                p.this.f15622c.b0();
            }
        }
    }

    public class m implements D5.h {

        public final Vector3 f15670a;

        public m(final Vector3 val$value) {
            this.f15670a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f15670a != null) {
                str = this.f15670a.getZ() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f15670a.setZ(variable.float_value);
                p.this.f15622c.b0();
            }
        }
    }

    public class n implements D5.h {

        public final Vector4 f15672a;

        public n(final Vector4 val$value) {
            this.f15672a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f15672a != null) {
                str = this.f15672a.getX() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f15672a.n(variable.float_value);
                p.this.f15622c.b0();
            }
        }
    }

    public class o implements D5.h {

        public final Vector4 f15674a;

        public o(final Vector4 val$value) {
            this.f15674a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f15674a != null) {
                str = this.f15674a.getY() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f15674a.o(variable.float_value);
                p.this.f15622c.b0();
            }
        }
    }

    public class C0438p implements D5.h {

        public final Vector4 f15676a;

        public C0438p(final Vector4 val$value) {
            this.f15676a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f15676a != null) {
                str = this.f15676a.getZ() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f15676a.p(variable.float_value);
                p.this.f15622c.b0();
            }
        }
    }

    public class q implements D5.h {

        public final Vector4 f15678a;

        public q(final Vector4 val$value) {
            this.f15678a = val$value;
        }

        @Override
        public Variable get() {
            String str;
            if (this.f15678a != null) {
                str = this.f15678a.f() + "";
            } else {
                str = "0";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f15678a.m(variable.float_value);
                p.this.f15622c.b0();
            }
        }
    }

    public static class r {

        public static final int[] f15680a;

        static {
            int[] iArr = new int[com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.values().length];
            f15680a = iArr;
            try {
                iArr[com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15680a[com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15680a[com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15680a[com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15680a[com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.COLOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15680a[com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15680a[com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.CUBEMAP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public class s implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.z {

        public final ShaderGraphData f15681a;

        public s(final ShaderGraphData val$data) {
            this.f15681a = val$data;
        }

        @Override
        public ShaderGraphData a() {
            return this.f15681a;
        }

        @Override
        public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C b(ShaderGraphNode targetNode, int targetInputIndex) {
            return p.this.h0(this.f15681a, targetNode, targetInputIndex);
        }
    }

    public class t implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.z {

        public final ShaderGraphData f15683a;

        public t(final ShaderGraphData val$data) {
            this.f15683a = val$data;
        }

        @Override
        public ShaderGraphData a() {
            return this.f15683a;
        }

        @Override
        public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C b(ShaderGraphNode node, int index) {
            return p.this.h0(this.f15683a, node, index);
        }
    }

    public class u implements D5.h {

        public final int f15685a;

        public final int f15686b;

        public final com.itsmagic.engine.Engines.Graphics.ShaderGraph.C f15687c;

        public u(final int val$actualIndex, final int val$inputIndex, final com.itsmagic.engine.Engines.Graphics.ShaderGraph.C val$type) {
            this.f15685a = val$actualIndex;
            this.f15686b = val$inputIndex;
            this.f15687c = val$type;
        }

        @Override
        public Variable get() {
            return new Variable("", p.this.D(this.f15686b) + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable == null) {
                return;
            }
            p.this.f15621b.F(ShaderGraphInputDefault.g(this.f15685a, variable.float_value));
            p.this.r0(this.f15686b, this.f15687c);
            p.this.f15622c.b0();
        }
    }

    public class v implements D5.h {

        public final int f15689a;

        public final com.itsmagic.engine.Engines.Graphics.ShaderGraph.C f15690b;

        public final int f15691c;

        public final int f15692d;

        public v(final int val$inputIndex, final com.itsmagic.engine.Engines.Graphics.ShaderGraph.C val$type, final int val$compIndex, final int val$actualIndex) {
            this.f15689a = val$inputIndex;
            this.f15690b = val$type;
            this.f15691c = val$compIndex;
            this.f15692d = val$actualIndex;
        }

        @Override
        public Variable get() {
            return new Variable("", p.this.E(this.f15689a, this.f15690b)[this.f15691c] + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable == null) {
                return;
            }
            float[] E10 = p.this.E(this.f15689a, this.f15690b);
            float f10 = E10[0];
            float f11 = E10[1];
            float f12 = E10[2];
            float f13 = E10[3];
            int i10 = this.f15691c;
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
            com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = this.f15690b;
            p.this.f15621b.F(c10 == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2 ? ShaderGraphInputDefault.d(this.f15692d, f10, f11) : c10 == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3 ? ShaderGraphInputDefault.e(this.f15692d, f10, f11, f12) : ShaderGraphInputDefault.f(this.f15692d, f10, f11, f12, f13));
            p.this.r0(this.f15689a, this.f15690b);
            p.this.f15622c.b0();
        }
    }

    public class w implements D5.h {

        public final int f15694a;

        public final int f15695b;

        public final com.itsmagic.engine.Engines.Graphics.ShaderGraph.C f15696c;

        public w(final int val$actualIndex, final int val$inputIndex, final com.itsmagic.engine.Engines.Graphics.ShaderGraph.C val$type) {
            this.f15694a = val$actualIndex;
            this.f15695b = val$inputIndex;
            this.f15696c = val$type;
        }

        @Override
        public Variable get() {
            String str;
            ShaderGraphInputDefault k10 = p.this.f15621b.k(this.f15694a);
            if (k10 == null || (str = k10.fileIPP) == null) {
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
            ShaderGraphData graphData = p.this.f15622c.getGraphData();
            ShaderGraphInputDefault k10 = p.this.f15621b.k(this.f15694a);
            if (com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.b(graphData, com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.m(k10 != null ? k10.fileIPP : ""), com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.m(str))) {
                p.this.f15621b.F(ShaderGraphInputDefault.h(this.f15694a, str));
                p.this.r0(this.f15695b, this.f15696c);
                p.this.f15622c.b0();
            } else {
                N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_MAX_TEXTURES_LIMIT_REACHED) + " (8)");
            }
        }
    }

    public class x implements D5.h {

        public final int f15698a;

        public final int f15699b;

        public final com.itsmagic.engine.Engines.Graphics.ShaderGraph.C f15700c;

        public x(final int val$actualIndex, final int val$inputIndex, final com.itsmagic.engine.Engines.Graphics.ShaderGraph.C val$type) {
            this.f15698a = val$actualIndex;
            this.f15699b = val$inputIndex;
            this.f15700c = val$type;
        }

        @Override
        public Variable get() {
            String str;
            ShaderGraphInputDefault k10 = p.this.f15621b.k(this.f15698a);
            if (k10 == null || (str = k10.fileIPP) == null) {
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
            ShaderGraphData graphData = p.this.f15622c.getGraphData();
            ShaderGraphInputDefault k10 = p.this.f15621b.k(this.f15698a);
            if (com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.b(graphData, com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.f(k10 != null ? k10.fileIPP : ""), com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.f(str))) {
                p.this.f15621b.F(ShaderGraphInputDefault.c(this.f15698a, str));
                p.this.r0(this.f15699b, this.f15700c);
                p.this.f15622c.b0();
            } else {
                N7.c.v0(Lang.l(Lang.T.SHADER_GRAPH_MAX_TEXTURES_LIMIT_REACHED) + " (8)");
            }
        }
    }

    public class y implements D5.h {
        public y() {
        }

        @Override
        public Variable get() {
            return new Variable("", p.this.f15621b.inspectorAttributeName != null ? p.this.f15621b.inspectorAttributeName : "");
        }

        @Override
        public void set(Variable variable) {
            p.this.f15621b.G(variable != null ? variable.d() : "");
        }
    }

    public class z implements D5.h {

        public final RawNumberNode f15703a;

        public z(final RawNumberNode val$raw) {
            this.f15703a = val$raw;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f15703a.value);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f15703a.value = variable.float_value;
                p.this.f15622c.b0();
            }
        }
    }

    public p(Context context, ShaderGraphNode node, H graphView) {
        super(context);
        this.f15623d = new GradientDrawable();
        this.f15626g = new Paint(1);
        this.f15617G = -1;
        this.f15621b = node;
        this.f15622c = graphView;
        node.E(new k(graphView));
        setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        setClipToPadding(false);
        setClipChildren(false);
        s();
        f0();
    }

    public static String B(String expr) {
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

    public static String C(float v10, int decimals) {
        return n0(Tc.b.p(v10, decimals));
    }

    public static String d0(String expr) {
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

    public static String n0(String s10) {
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

    public static Float o0(String expr) {
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

    public static float[] p0(String expr, int comps) {
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
                    Float o02 = o0(split[0]);
                    if (o02 == null) {
                        return null;
                    }
                    while (i10 < comps) {
                        fArr[i10] = o02.floatValue();
                        i10++;
                    }
                    return fArr;
                }
                if (split.length < comps) {
                    return null;
                }
                while (i10 < comps) {
                    Float o03 = o0(split[i10]);
                    if (o03 == null) {
                        return null;
                    }
                    fArr[i10] = o03.floatValue();
                    i10++;
                }
                return fArr;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public final void A() {
        String n10 = Theme.n();
        if (n10 == null || n10.equals(this.f15625f)) {
            return;
        }
        this.f15625f = n10;
        r(false);
    }

    public final float D(int inputIndex) {
        ShaderGraphInputDefault k10 = this.f15621b.k(Z(inputIndex));
        if (k10 != null) {
            return k10.f81303x;
        }
        Float o02 = o0(L(inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER));
        if (o02 != null) {
            return o02.floatValue();
        }
        return 0.0f;
    }

    public final float[] E(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C type) {
        int i10 = type == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2 ? 2 : type == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3 ? 3 : 4;
        ShaderGraphInputDefault k10 = this.f15621b.k(Z(inputIndex));
        float[] fArr = new float[4];
        int i11 = 0;
        if (k10 != null) {
            fArr[0] = k10.f81303x;
            fArr[1] = k10.f81304y;
            fArr[2] = k10.f81305z;
            fArr[3] = k10.f81302w;
            return fArr;
        }
        String L10 = L(inputIndex, type);
        float[] p02 = p0(L10, i10);
        if (p02 != null) {
            while (i11 < i10) {
                fArr[i11] = p02[i11];
                i11++;
            }
            return fArr;
        }
        Float o02 = o0(L10);
        if (o02 != null) {
            while (i11 < i10) {
                fArr[i11] = o02.floatValue();
                i11++;
            }
        }
        return fArr;
    }

    public final com.itsmagic.engine.Engines.Graphics.ShaderGraph.C F(com.itsmagic.engine.Engines.Graphics.ShaderGraph.C type) {
        return (type == null || type == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.DYNAMIC) ? com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER : type;
    }

    public N6.w G(int index) {
        N6.w[] wVarArr = this.f15645z;
        if (wVarArr == null || index < 0 || index >= wVarArr.length) {
            return null;
        }
        return wVarArr[index];
    }

    public int H(int uiIndex) {
        return Z(uiIndex);
    }

    public N6.w I(int index) {
        N6.w[] wVarArr = this.f15636q;
        if (wVarArr == null || index < 0 || index >= wVarArr.length) {
            return null;
        }
        return wVarArr[index];
    }

    public N6.w J(int slotIndex) {
        return I(a0(slotIndex));
    }

    public N6.w K(int index) {
        N6.w[] wVarArr = this.f15637r;
        if (wVarArr == null || index < 0 || index >= wVarArr.length) {
            return null;
        }
        return wVarArr[index];
    }

    public final String L(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        Object obj = this.f15621b;
        if (!(obj instanceof com.itsmagic.engine.Engines.Graphics.ShaderGraph.B)) {
            return null;
        }
        try {
            return ((com.itsmagic.engine.Engines.Graphics.ShaderGraph.B) obj).d(Z(inputIndex), desiredType);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public PointF M(boolean input, int index) {
        View view;
        View[] viewArr = input ? this.f15639t : this.f15640u;
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

    public PointF N(boolean input, int index) {
        View view;
        View[] viewArr = input ? this.f15639t : this.f15640u;
        if (viewArr == null || index < 0 || index >= viewArr.length || (view = viewArr[index]) == null) {
            return null;
        }
        view.getLocationOnScreen(new int[2]);
        return new PointF(r5[0] + (view.getWidth() * 0.5f), r5[1] + (view.getHeight() * 0.5f));
    }

    public final void O(LinearLayout root) {
        List<C5.b> p10;
        if (root == null || (p10 = this.f15621b.p(getContext())) == null || p10.isEmpty()) {
            return;
        }
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(Theme.i(Theme.T.PANEL));
        int k02 = Nc.b.k0(4.0f);
        int k03 = Nc.b.k0(2.0f);
        linearLayout.setPadding(k02, k03, k02, k03);
        root.addView(linearLayout, new LinearLayout.LayoutParams(-1, -2));
        for (C5.b bVar : p10) {
            if (bVar != null) {
                b.a aVar = bVar.f2079n;
                if (aVar == b.a.Vector) {
                    C5.h.y(linearLayout, N7.c.B(), bVar, 0, getContext());
                } else if (aVar == b.a.Component) {
                    C5.h.w(linearLayout, N7.c.B(), bVar, 0, getContext(), new C5.n() {
                        @Override
                        public final void refresh(int i10) {
                            p.this.W(i10);
                        }
                    });
                } else {
                    C5.h.x(linearLayout, N7.c.B(), bVar, 0, true, getContext());
                }
            }
        }
    }

    public final boolean P(View v10, float localX, float localY) {
        return localX >= v10.getX() && localX <= v10.getX() + ((float) v10.getWidth()) && localY >= v10.getY() && localY <= v10.getY() + ((float) v10.getHeight());
    }

    public boolean Q() {
        return this.f15615E;
    }

    public boolean R(float localX, float localY) {
        if (localX >= 0.0f && localY >= 0.0f && localX <= getWidth() && localY <= getHeight()) {
            FrameLayout frameLayout = this.f15628i;
            if (frameLayout == null || P(frameLayout, localX, localY)) {
                return true;
            }
            View[] viewArr = this.f15642w;
            if (viewArr != null) {
                for (View view : viewArr) {
                    if (view != null && view.getVisibility() == 0 && P(view, localX, localY)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean S(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (!R(motionEvent.getX(), motionEvent.getY())) {
                return false;
            }
            boolean z10 = this.f15622c.getSelectedNodeView() == this;
            this.f15622c.i0(this);
            if (this.f15622c.N()) {
                this.f15620J = false;
                return true;
            }
            this.f15620J = z10;
            this.f15618H = motionEvent.getRawX();
            this.f15619I = motionEvent.getRawY();
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (this.f15620J) {
                    float rawX = motionEvent.getRawX() - this.f15618H;
                    float rawY = motionEvent.getRawY() - this.f15619I;
                    this.f15618H = motionEvent.getRawX();
                    this.f15619I = motionEvent.getRawY();
                    b0(rawX, rawY);
                    this.f15622c.c0();
                }
                return true;
            }
            if (actionMasked != 3) {
                return false;
            }
        }
        this.f15620J = false;
        return true;
    }

    public final void T(View view) {
        this.f15621b.exposeInInspector = !r2.exposeInInspector;
        q();
        t();
        this.f15622c.b0();
    }

    public final boolean U(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (!R(motionEvent.getX(), motionEvent.getY())) {
                return false;
            }
            boolean z10 = this.f15622c.getSelectedNodeView() == this;
            this.f15622c.i0(this);
            if (this.f15622c.N()) {
                this.f15620J = false;
                return true;
            }
            this.f15620J = z10;
            this.f15618H = motionEvent.getRawX();
            this.f15619I = motionEvent.getRawY();
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (this.f15620J) {
                    float rawX = motionEvent.getRawX() - this.f15618H;
                    float rawY = motionEvent.getRawY() - this.f15619I;
                    this.f15618H = motionEvent.getRawX();
                    this.f15619I = motionEvent.getRawY();
                    b0(rawX, rawY);
                    this.f15622c.c0();
                }
                return true;
            }
            if (actionMasked != 3) {
                return false;
            }
        }
        this.f15620J = false;
        return true;
    }

    public final void V(int i10, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10, View view) {
        boolean[] zArr = this.f15611A;
        if (zArr == null || i10 < 0 || i10 >= zArr.length || zArr[i10]) {
            l0(view, i10, c10);
        }
    }

    public final void W(int i10) {
        this.f15622c.b0();
    }

    public final void X() {
        ViewGroup.LayoutParams layoutParams;
        int i10;
        this.f15616F = false;
        FrameLayout frameLayout = this.f15631l;
        if (frameLayout == null || (layoutParams = frameLayout.getLayoutParams()) == null || (i10 = this.f15617G) <= 0 || layoutParams.height == i10) {
            return;
        }
        layoutParams.height = i10;
        this.f15631l.setLayoutParams(layoutParams);
    }

    public final void Y(List list, LinearLayout linearLayout, int i10) {
        k0(list, linearLayout);
    }

    public final int Z(int uiIndex) {
        int[] iArr = this.f15612B;
        return (iArr == null || uiIndex < 0 || uiIndex >= iArr.length) ? uiIndex : iArr[uiIndex];
    }

    public final int a0(int actualIndex) {
        if (this.f15612B == null) {
            return actualIndex;
        }
        int i10 = 0;
        while (true) {
            int[] iArr = this.f15612B;
            if (i10 >= iArr.length) {
                return -1;
            }
            if (iArr[i10] == actualIndex) {
                return i10;
            }
            i10++;
        }
    }

    public final void b0(float dx, float dy) {
        float max = Math.max(1.0E-4f, this.f15622c.getScale());
        ShaderGraphNode shaderGraphNode = this.f15621b;
        shaderGraphNode.f81310x += dx / max;
        shaderGraphNode.f81311y += dy / max;
        f0();
    }

    public void c0() {
        this.f15625f = Theme.n();
        r(true);
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        float width;
        float height;
        float f10;
        float f11;
        A();
        super.dispatchDraw(canvas);
        if (this.f15615E) {
            float f12 = this.f15627h * 0.5f;
            if (this.f15628i != null) {
                width = this.f15628i.getRight() - f12;
                height = this.f15628i.getBottom() - f12;
                f10 = r1.getLeft() + f12;
                f11 = this.f15628i.getTop() + f12;
            } else {
                width = getWidth() - f12;
                height = getHeight() - f12;
                f10 = f12;
                f11 = f10;
            }
            float f13 = width;
            float f14 = height;
            float k02 = Nc.b.k0(4.0f);
            canvas.drawRoundRect(f10, f11, f13, f14, k02, k02, this.f15626g);
        }
    }

    public final void e0() {
        PointF M10;
        if (this.f15628i == null || this.f15642w == null) {
            return;
        }
        float k02 = Nc.b.k0(0.0f) / Math.max(1.0E-4f, this.f15622c.getScale());
        int left = this.f15628i.getLeft();
        int i10 = 0;
        while (true) {
            View[] viewArr = this.f15642w;
            if (i10 >= viewArr.length) {
                this.f15622c.c0();
                return;
            }
            View view = viewArr[i10];
            if (view != null && (M10 = M(true, i10)) != null) {
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                if (measuredWidth > 0 && measuredHeight > 0) {
                    N6.w[] wVarArr = this.f15645z;
                    N6.w wVar = (wVarArr == null || i10 < 0 || i10 >= wVarArr.length) ? null : wVarArr[i10];
                    int measuredWidth2 = wVar != null ? wVar.getMeasuredWidth() : Nc.b.k0(30.0f);
                    float f10 = M10.f32426y - (measuredHeight * 0.5f);
                    view.setX(((left - measuredWidth) + (measuredWidth2 * 0.5f)) - k02);
                    view.setY(f10);
                }
            }
            i10++;
        }
    }

    public void f0() {
        float scale = this.f15622c.getScale();
        float panX = this.f15622c.getPanX();
        float panY = this.f15622c.getPanY();
        setX((this.f15621b.f81310x * scale) + panX);
        setY((this.f15621b.f81311y * scale) + panY);
        setPivotX(0.0f);
        setPivotY(0.0f);
        setScaleX(scale);
        setScaleY(scale);
        u0();
    }

    public void g0(ShaderGraphData data) {
        boolean z10;
        ShaderGraphSlot[] n10;
        ShaderGraphSlot shaderGraphSlot;
        List<ShaderGraphNodeConnection> list;
        if (this.f15642w == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            View[] viewArr = this.f15642w;
            if (i10 >= viewArr.length) {
                post(new Runnable() {
                    @Override
                    public final void run() {
                        p.this.e0();
                    }
                });
                return;
            }
            View view = viewArr[i10];
            if (view != null) {
                int Z10 = Z(i10);
                if (data != null && (list = data.connections) != null) {
                    for (ShaderGraphNodeConnection shaderGraphNodeConnection : list) {
                        if (shaderGraphNodeConnection != null && this.f15621b.j().equals(shaderGraphNodeConnection.toNodeId) && shaderGraphNodeConnection.toSlot == Z10) {
                            z10 = true;
                            break;
                        }
                    }
                }
                z10 = false;
                view.setVisibility(z10 ? 8 : 0);
                if (!z10 && (n10 = this.f15621b.n(data)) != null && i10 < n10.length && (shaderGraphSlot = n10[i10]) != null) {
                    r0(i10, F(shaderGraphSlot.type));
                }
            }
            i10++;
        }
    }

    public PointF getBranchAnchorLocal() {
        View view = this.f15641v;
        if (view == null) {
            return null;
        }
        float f10 = 0.0f;
        float f11 = 0.0f;
        while (view != null && view != this) {
            f10 += view.getX();
            f11 += view.getY();
            if (!(view.getParent() instanceof View)) {
                break;
            }
            view = (View) view.getParent();
        }
        return new PointF(f10 + (this.f15641v.getWidth() * 0.5f), f11 + (this.f15641v.getHeight() * 0.5f));
    }

    public N6.w getBranchSocket() {
        return this.f15638s;
    }

    public float getCardLeftLocal() {
        if (this.f15628i != null) {
            return r0.getLeft();
        }
        return 0.0f;
    }

    public float getCardRightLocal() {
        return this.f15628i != null ? r0.getRight() : getWidth();
    }

    public N6.w[] getInputSockets() {
        return this.f15636q;
    }

    public ShaderGraphNode getNode() {
        return this.f15621b;
    }

    public N6.w[] getOutputSockets() {
        return this.f15637r;
    }

    public final com.itsmagic.engine.Engines.Graphics.ShaderGraph.C h0(ShaderGraphData data, ShaderGraphNode targetNode, int inputIndex) {
        List<ShaderGraphNodeConnection> list;
        ShaderGraphNodeConnection shaderGraphNodeConnection;
        ShaderGraphNode f10;
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D10;
        ShaderGraphSlot shaderGraphSlot;
        if (targetNode == null) {
            return com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        }
        ShaderGraphSlot[] m10 = targetNode.m();
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        if (m10 != null && inputIndex >= 0 && inputIndex < m10.length && (shaderGraphSlot = m10[inputIndex]) != null) {
            com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = shaderGraphSlot.type;
            if (c11 == null) {
                c11 = c10;
            }
            if (c11 != com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.DYNAMIC) {
                c10 = c11;
            }
        }
        if (data != null && (list = data.connections) != null) {
            Iterator<ShaderGraphNodeConnection> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    shaderGraphNodeConnection = null;
                    break;
                }
                shaderGraphNodeConnection = it.next();
                if (shaderGraphNodeConnection != null && targetNode.j().equals(shaderGraphNodeConnection.toNodeId) && shaderGraphNodeConnection.toSlot == inputIndex) {
                    break;
                }
            }
            if (shaderGraphNodeConnection != null && (f10 = data.f(shaderGraphNodeConnection.fromNodeId)) != null && (D10 = f10.D(shaderGraphNodeConnection.fromSlot, new t(data))) != null && D10 != com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.DYNAMIC) {
                return D10;
            }
        }
        return c10;
    }

    public final com.itsmagic.engine.Engines.Graphics.ShaderGraph.C i0(ShaderGraphSlot slot, boolean input, int uiIndex, int actualIndex, ShaderGraphData data) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10;
        ShaderGraphNodeConnection shaderGraphNodeConnection;
        ShaderGraphNode f10;
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D10;
        if (slot == null || (c10 = slot.type) == null) {
            c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        }
        if (c10 == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.DYNAMIC) {
            c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        }
        if (input && data != null && this.f15621b != null) {
            if (actualIndex >= 0) {
                uiIndex = actualIndex;
            }
            List<ShaderGraphNodeConnection> list = data.connections;
            if (list != null) {
                Iterator<ShaderGraphNodeConnection> it = list.iterator();
                while (it.hasNext()) {
                    shaderGraphNodeConnection = it.next();
                    if (shaderGraphNodeConnection != null && this.f15621b.j().equals(shaderGraphNodeConnection.toNodeId) && shaderGraphNodeConnection.toSlot == uiIndex) {
                        break;
                    }
                }
            }
            shaderGraphNodeConnection = null;
            if (shaderGraphNodeConnection != null && (f10 = data.f(shaderGraphNodeConnection.fromNodeId)) != null && (D10 = f10.D(shaderGraphNodeConnection.fromSlot, new s(data))) != null && D10 != com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.DYNAMIC) {
                return D10;
            }
        }
        return c10;
    }

    public final void j0(int targetHeight) {
        this.f15617G = targetHeight;
        if (this.f15616F) {
            return;
        }
        this.f15616F = true;
        post(new Runnable() {
            @Override
            public final void run() {
                p.this.X();
            }
        });
    }

    public final void k0(final List<C5.b> entries, final LinearLayout content) {
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
                        p.this.Y(entries, content, i11);
                    }
                });
            } else {
                C5.h.x(content, N7.c.B(), bVar, 0, true, getContext());
            }
        }
    }

    public final void l0(View anchor, int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C type) {
        String[] strArr;
        int i10;
        if (anchor == null || type == null) {
            return;
        }
        boolean[] zArr = this.f15611A;
        if (zArr == null || inputIndex < 0 || inputIndex >= zArr.length || zArr[inputIndex]) {
            int Z10 = Z(inputIndex);
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setOrientation(1);
            int k02 = Nc.b.k0(8.0f);
            linearLayout.setPadding(k02, k02, k02, k02);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(Theme.i(Theme.T.CARD));
            gradientDrawable.setCornerRadius(Nc.b.k0(6.0f));
            linearLayout.setBackground(gradientDrawable);
            PopupWindow popupWindow = new PopupWindow((View) linearLayout, Nc.b.k0(260.0f), -2, true);
            popupWindow.setOutsideTouchable(true);
            popupWindow.setFocusable(true);
            if (type == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER) {
                C5.h.x(linearLayout, N7.c.B(), new C5.b(new u(Z10, inputIndex, type), "", b.a.SLFloatWrap).l(true), 0, true, getContext());
            } else {
                com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
                if (type == c10 || type == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3 || type == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4 || type == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.COLOR) {
                    int i11 = type == c10 ? 2 : type == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3 ? 3 : 4;
                    C5.b bVar = new C5.b("", b.a.Vector, new C5.b[i11]);
                    if (i11 == 2) {
                        strArr = new String[]{"X", "Y"};
                    } else {
                        strArr = i11 == 3 ? new String[]{"X", "Y", Signature.SIG_BOOLEAN} : new String[]{"X", "Y", Signature.SIG_BOOLEAN, ExifInterface.LONGITUDE_WEST};
                    }
                    int i12 = 0;
                    while (i12 < i11) {
                        int i13 = i12;
                        bVar.f2081p[i13] = new C5.b(new v(inputIndex, type, i12, Z10), strArr[i13], b.a.SLFloatWrap).l(true);
                        i12 = i13 + 1;
                        bVar = bVar;
                    }
                    i10 = 0;
                    C5.h.y(linearLayout, N7.c.B(), bVar, 0, getContext());
                    popupWindow.showAsDropDown(anchor, i10, Nc.b.k0(4.0f));
                }
                if (type == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE) {
                    C5.h.x(linearLayout, N7.c.B(), new C5.b(new w(Z10, inputIndex, type), "", b.a.Texture).l(true), 0, true, getContext());
                } else if (type == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.CUBEMAP) {
                    C5.h.x(linearLayout, N7.c.B(), new C5.b(new x(Z10, inputIndex, type), "", b.a.CubemapOrGallery).l(true), 0, true, getContext());
                }
            }
            i10 = 0;
            popupWindow.showAsDropDown(anchor, i10, Nc.b.k0(4.0f));
        }
    }

    public final void m0() {
        LinearLayout linearLayout = this.f15632m;
        if (linearLayout == null || this.f15633n == null) {
            return;
        }
        int height = linearLayout.getHeight();
        int height2 = this.f15633n.getHeight();
        if (height <= 0 || height2 <= 0) {
            return;
        }
        int max = Math.max(height, height2);
        if (this.f15632m.getMinimumHeight() != max) {
            this.f15632m.setMinimumHeight(max);
        }
        if (this.f15633n.getMinimumHeight() != max) {
            this.f15633n.setMinimumHeight(max);
        }
    }

    @Override
    public void onDetachedFromWindow() {
        this.f15621b.E(null);
        super.onDetachedFromWindow();
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int width;
        super.onLayout(changed, left, top, right, bottom);
        if (this.f15631l != null && (width = getWidth()) > 0 && this.f15631l.getLayoutParams() != null && this.f15631l.getLayoutParams().height != width) {
            j0(width);
        }
        e0();
        m0();
    }

    public final void q() {
        ImageView imageView = this.f15635p;
        if (imageView == null) {
            return;
        }
        boolean z10 = this.f15621b.exposeInInspector;
        imageView.setImageResource(z10 ? R.drawable.vision : R.drawable.vision_off);
        Vc.e.x(this.f15635p, getContext(), Theme.i(z10 ? Theme.T.PRIMARY : Theme.T.ACCENT));
        this.f15635p.setAlpha(1.0f);
    }

    public final void q0(boolean hasRawEntries) {
        boolean z10 = this.f15613C || hasRawEntries;
        boolean z11 = this.f15614D;
        this.f15632m.setVisibility(z10 ? 0 : 8);
        this.f15633n.setVisibility(z11 ? 0 : 8);
    }

    public final void r(boolean invalidate) {
        this.f15623d.setColor(Theme.i(Theme.T.CARD));
        this.f15623d.setStroke(Nc.b.k0(1.0f), com.itsmagic.engine.Engines.Graphics.ShaderGraph.i.d());
        this.f15626g.setColor(com.itsmagic.engine.Engines.Graphics.ShaderGraph.i.c());
        GradientDrawable gradientDrawable = this.f15624e;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(Theme.i(Theme.T.PANEL_TOPBAR));
            this.f15624e.setStroke(Nc.b.k0(1.0f), com.itsmagic.engine.Engines.Graphics.ShaderGraph.i.d());
        }
        q();
        if (invalidate) {
            invalidate();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0036, code lost:
    
        if (o0(r3) != null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0061, code lost:
    
        r8 = d0(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
    
        if (r8 != null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0067, code lost:
    
        r8 = B(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006b, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x005e, code lost:
    
        if (o0(r3) == null) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void r0(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C type) {
        TextView textView;
        String str;
        boolean z10;
        boolean[] zArr;
        String str2;
        TextView[] textViewArr = this.f15643x;
        if (textViewArr == null || inputIndex < 0 || inputIndex >= textViewArr.length || (textView = textViewArr[inputIndex]) == null || type == null) {
            return;
        }
        ShaderGraphInputDefault k10 = this.f15621b.k(Z(inputIndex));
        String L10 = k10 == null ? L(inputIndex, type) : null;
        if (k10 == null && L10 != null) {
            if (type != com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER) {
                com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
                if (type == c10 || type == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3 || type == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4 || type == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.COLOR) {
                    if (p0(L10, type == c10 ? 2 : type == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3 ? 3 : 4) == null) {
                    }
                }
            }
            zArr = this.f15611A;
            if (zArr != null && inputIndex >= 0 && inputIndex < zArr.length) {
                zArr[inputIndex] = z10;
            }
            if (z10) {
                textView.setText(str != null ? Tc.b.d(str) : "-");
                ImageView[] imageViewArr = this.f15644y;
                ImageView imageView = (imageViewArr == null || inputIndex < 0 || inputIndex >= imageViewArr.length) ? null : imageViewArr[inputIndex];
                if (imageView != null) {
                    imageView.setImageDrawable(null);
                    imageView.setVisibility(8);
                    return;
                }
                return;
            }
            switch (r.f15680a[type.ordinal()]) {
                case 1:
                    textView.setText(C(k10 != null ? k10.f81303x : D(inputIndex), 6));
                    return;
                case 2:
                    float[] E10 = E(inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
                    textView.setText(C(E10[0], 6) + DocLint.SEPARATOR + C(E10[1], 6));
                    return;
                case 3:
                    float[] E11 = E(inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3);
                    textView.setText(C(E11[0], 6) + DocLint.SEPARATOR + C(E11[1], 6) + DocLint.SEPARATOR + C(E11[2], 6));
                    return;
                case 4:
                case 5:
                    float[] E12 = E(inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4);
                    textView.setText(C(E12[0], 6) + DocLint.SEPARATOR + C(E12[1], 6) + DocLint.SEPARATOR + C(E12[2], 6) + DocLint.SEPARATOR + C(E12[3], 6));
                    return;
                case 6:
                case 7:
                    if (k10 == null || (str2 = k10.fileIPP) == null) {
                        str2 = "";
                    }
                    ImageView[] imageViewArr2 = this.f15644y;
                    ImageView imageView2 = (imageViewArr2 == null || inputIndex < 0 || inputIndex >= imageViewArr2.length) ? null : imageViewArr2[inputIndex];
                    if (!str2.isEmpty()) {
                        int max = Math.max(str2.lastIndexOf(47), str2.lastIndexOf(92));
                        textView.setText(Tc.b.d(max >= 0 ? str2.substring(max + 1) : str2));
                        s0(imageView2, type, str2);
                        return;
                    } else {
                        textView.setText("-");
                        if (imageView2 != null) {
                            imageView2.setImageDrawable(null);
                            imageView2.setVisibility(8);
                            return;
                        }
                        return;
                    }
                default:
                    return;
            }
        }
        str = null;
        z10 = true;
        zArr = this.f15611A;
        if (zArr != null) {
            zArr[inputIndex] = z10;
        }
        if (z10) {
        }
    }

    public final void s() {
        int k02 = Nc.b.k0(4.0f);
        setBackground(null);
        setPadding(0, 0, 0, 0);
        this.f15623d.setColor(Theme.i(Theme.T.CARD));
        float f10 = k02;
        this.f15623d.setCornerRadius(f10);
        this.f15623d.setStroke(Nc.b.k0(1.0f), com.itsmagic.engine.Engines.Graphics.ShaderGraph.i.d());
        this.f15627h = Nc.b.k0(2.0f);
        this.f15626g.setStyle(Paint.Style.STROKE);
        this.f15626g.setStrokeWidth(this.f15627h);
        this.f15626g.setColor(com.itsmagic.engine.Engines.Graphics.ShaderGraph.i.c());
        if (this.f15621b.z()) {
            this.f15629j = 0;
        } else {
            this.f15629j = Nc.b.k0(110.0f) + Nc.b.k0(30.0f) + Nc.b.k0(16.0f);
        }
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f15628i = frameLayout;
        frameLayout.setBackground(this.f15623d);
        int k03 = Nc.b.k0(2.0f);
        this.f15628i.setPadding(k03, k03, k03, k03);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        this.f15621b.z();
        int k04 = Nc.b.k0(-2.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = this.f15629j;
        addView(this.f15628i, layoutParams);
        this.f15628i.addView(linearLayout, new FrameLayout.LayoutParams(k04, -2));
        ShaderGraphSlot[] n10 = this.f15621b.n(this.f15622c.getGraphData());
        if (this.f15621b.x() && (n10 == null || n10.length == 0)) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            this.f15624e = gradientDrawable;
            gradientDrawable.setColor(Theme.i(Theme.T.PANEL_TOPBAR));
            gradientDrawable.setCornerRadius(Nc.b.k0(999.0f));
            gradientDrawable.setStroke(Nc.b.k0(1.0f), com.itsmagic.engine.Engines.Graphics.ShaderGraph.i.d());
            removeAllViews();
            this.f15628i = null;
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
            this.f15641v = new View(getContext());
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(k07, k07);
            this.f15641v.setLayoutParams(layoutParams2);
            this.f15641v.setVisibility(4);
            linearLayout2.addView(this.f15641v, layoutParams2);
            TextView textView = new TextView(getContext());
            this.f15630k = textView;
            textView.setTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
            this.f15630k.setTextSize(2, 12.0f);
            this.f15630k.setTypeface(Typeface.DEFAULT_BOLD);
            this.f15630k.setSingleLine(true);
            this.f15630k.setEllipsize(TextUtils.TruncateAt.END);
            linearLayout2.addView(this.f15630k, new LinearLayout.LayoutParams(-2, -2));
            ShaderGraphSlot[] q10 = this.f15621b.q();
            if (q10 != null && q10.length > 0) {
                this.f15640u = new View[q10.length];
                View view = new View(getContext());
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(k07, k07);
                view.setLayoutParams(layoutParams3);
                view.setVisibility(4);
                view.setPadding(Nc.b.k0(6.0f), 0, 0, 0);
                linearLayout2.addView(view, layoutParams3);
                this.f15640u[0] = view;
                this.f15614D = true;
            }
            this.f15639t = new View[0];
            this.f15613C = false;
            u0();
            setOnTouchListener(new View.OnTouchListener() {
                @Override
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    boolean S10;
                    S10 = p.this.S(view2, motionEvent);
                    return S10;
                }
            });
            return;
        }
        if (this.f15621b.z()) {
            LinearLayout linearLayout3 = new LinearLayout(getContext());
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(Theme.i(Theme.T.PANEL_TOPBAR));
            gradientDrawable2.setCornerRadii(new float[]{f10, f10, f10, f10, 0.0f, 0.0f, 0.0f, 0.0f});
            linearLayout3.setBackground(gradientDrawable2);
            linearLayout3.setOrientation(0);
            linearLayout3.setGravity(8388629);
            linearLayout3.setPadding(Nc.b.k0(4.0f), Nc.b.k0(2.0f), Nc.b.k0(4.0f), Nc.b.k0(2.0f));
            linearLayout.addView(linearLayout3, new LinearLayout.LayoutParams(-1, -2));
            this.f15635p = new ImageView(getContext());
            int k08 = Nc.b.k0(16.0f);
            linearLayout3.addView(this.f15635p, new LinearLayout.LayoutParams(k08, k08));
            q();
            this.f15635p.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    p.this.T(view2);
                }
            });
        } else {
            FrameLayout frameLayout2 = new FrameLayout(getContext());
            GradientDrawable gradientDrawable3 = new GradientDrawable();
            gradientDrawable3.setColor(Theme.i(Theme.T.PANEL_TOPBAR));
            gradientDrawable3.setCornerRadii(new float[]{f10, f10, f10, f10, 0.0f, 0.0f, 0.0f, 0.0f});
            frameLayout2.setBackground(gradientDrawable3);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, -2));
            this.f15641v = new View(getContext());
            int k09 = Nc.b.k0(10.0f);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(k09, k09);
            layoutParams4.gravity = 8388627;
            this.f15641v.setLayoutParams(layoutParams4);
            this.f15641v.setVisibility(4);
            frameLayout2.addView(this.f15641v, layoutParams4);
            TextView textView2 = new TextView(getContext());
            this.f15630k = textView2;
            textView2.setTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
            this.f15630k.setTextSize(2, 12.0f);
            this.f15630k.setTypeface(Typeface.DEFAULT_BOLD);
            this.f15630k.setSingleLine(true);
            this.f15630k.setEllipsize(TextUtils.TruncateAt.END);
            int k010 = Nc.b.k0(6.0f);
            this.f15630k.setPadding(Nc.b.k0(10.0f) + k010, k010, k010, k010);
            frameLayout2.addView(this.f15630k, new FrameLayout.LayoutParams(-1, -2));
        }
        O(linearLayout);
        LinearLayout linearLayout4 = new LinearLayout(getContext());
        linearLayout4.setOrientation(0);
        linearLayout4.setPadding(0, Nc.b.k0(1.0f), 0, Nc.b.k0(1.0f));
        linearLayout.addView(linearLayout4, new LinearLayout.LayoutParams(-2, -2));
        Ac.b bVar = Theme.T.PANEL;
        linearLayout4.setBackgroundColor(Theme.i(bVar));
        LinearLayout linearLayout5 = new LinearLayout(getContext());
        this.f15632m = linearLayout5;
        linearLayout5.setOrientation(1);
        linearLayout4.addView(this.f15632m, new LinearLayout.LayoutParams(-2, -2, 1.0f));
        this.f15632m.setPadding(Nc.b.k0(0.0f), 0, Nc.b.k0(4.0f), 0);
        LinearLayout linearLayout6 = this.f15632m;
        Ac.b bVar2 = Theme.T.PANEL_TOPBAR;
        linearLayout6.setBackgroundColor(Theme.i(bVar2));
        LinearLayout linearLayout7 = new LinearLayout(getContext());
        this.f15633n = linearLayout7;
        linearLayout7.setOrientation(1);
        linearLayout4.addView(this.f15633n, new LinearLayout.LayoutParams(-2, -2, 1.0f));
        this.f15633n.setPadding(Nc.b.k0(4.0f), 0, Nc.b.k0(0.0f), 0);
        this.f15633n.setBackgroundColor(Theme.i(bVar));
        if (this.f15621b.z()) {
            setPreviewEnabled(false);
        } else {
            FrameLayout frameLayout3 = new FrameLayout(getContext());
            this.f15631l = frameLayout3;
            frameLayout3.setBackgroundColor(Theme.i(bVar2));
            linearLayout.addView(this.f15631l, new LinearLayout.LayoutParams(-1, -2));
            ImageView imageView = new ImageView(getContext());
            this.f15634o = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.f15631l.addView(this.f15634o, new FrameLayout.LayoutParams(-1, -1));
            this.f15631l.setClickable(false);
            this.f15631l.setFocusable(false);
            this.f15634o.setClickable(false);
            setPreviewEnabled(EditorSettings.a() != null && EditorSettings.a().materialGraphPreviewsEnabled && this.f15621b.y());
        }
        u();
        t();
        u0();
        setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean U10;
                U10 = p.this.U(view2, motionEvent);
                return U10;
            }
        });
    }

    public final void s0(ImageView thumb, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C type, String file) {
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
        if (type != com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.CUBEMAP) {
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

    public void setBranchSocket(N6.w socket) {
        this.f15638s = socket;
    }

    public void setInputSockets(N6.w[] sockets) {
        this.f15636q = sockets;
    }

    public void setOutputSockets(N6.w[] sockets) {
        this.f15637r = sockets;
    }

    public void setPreviewBitmap(Bitmap bmp) {
        ImageView imageView = this.f15634o;
        if (imageView == null || bmp == null) {
            return;
        }
        imageView.setImageBitmap(bmp);
    }

    public void setPreviewEnabled(boolean enabled) {
        FrameLayout frameLayout = this.f15631l;
        if (frameLayout == null) {
            return;
        }
        int i10 = enabled ? 0 : 8;
        if (frameLayout.getVisibility() != i10) {
            this.f15631l.setVisibility(i10);
            requestLayout();
        }
    }

    @Override
    public void setSelected(boolean selected) {
        this.f15615E = selected;
        invalidate();
    }

    public final void t() {
        if (!this.f15621b.z()) {
            q0(false);
            return;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (this.f15621b.exposeInInspector) {
            steppedArrayList.add(new C5.b(new y(), "", b.a.SLStringWrap).l(true));
        }
        ShaderGraphNode shaderGraphNode = this.f15621b;
        if (shaderGraphNode instanceof RawNumberNode) {
            steppedArrayList.add(new C5.b(new z((RawNumberNode) shaderGraphNode), "", b.a.SLFloatWrap).l(true));
        } else if (shaderGraphNode instanceof RawSliderNode) {
            steppedArrayList.add(new C5.b(new a((RawSliderNode) shaderGraphNode), "", b.a.SLFloat01).l(true));
        } else if (shaderGraphNode instanceof RawFloat2Node) {
            steppedArrayList.add(x("", ((RawFloat2Node) shaderGraphNode).value));
        } else if (shaderGraphNode instanceof RawFloat3Node) {
            steppedArrayList.add(y("", ((RawFloat3Node) shaderGraphNode).value));
        } else if (shaderGraphNode instanceof RawFloat4Node) {
            steppedArrayList.add(z("", ((RawFloat4Node) shaderGraphNode).value));
        } else if (shaderGraphNode instanceof RawMat3Node) {
            RawMat3Node rawMat3Node = (RawMat3Node) shaderGraphNode;
            steppedArrayList.add(y("C0", rawMat3Node.f81199c0));
            steppedArrayList.add(y("C1", rawMat3Node.f81200c1));
            steppedArrayList.add(y("C2", rawMat3Node.f81201c2));
        } else if (shaderGraphNode instanceof RawMat4Node) {
            RawMat4Node rawMat4Node = (RawMat4Node) shaderGraphNode;
            steppedArrayList.add(z("C0", rawMat4Node.f81204c0));
            steppedArrayList.add(z("C1", rawMat4Node.f81205c1));
            steppedArrayList.add(z("C2", rawMat4Node.f81206c2));
            steppedArrayList.add(z("C3", rawMat4Node.f81207c3));
        } else if (shaderGraphNode instanceof RawColorNode) {
            steppedArrayList.add(new C5.b(new b((RawColorNode) shaderGraphNode), "", b.a.Color).l(true));
        } else if (shaderGraphNode instanceof RawTextureNode) {
            steppedArrayList.add(new C5.b(new c((RawTextureNode) shaderGraphNode), "", b.a.Texture).l(true));
        } else if (shaderGraphNode instanceof RawCubemapNode) {
            steppedArrayList.add(new C5.b(new d((RawCubemapNode) shaderGraphNode), "", b.a.CubemapOrGallery).l(true));
        } else if (shaderGraphNode instanceof PbrPresetNode) {
            PbrPresetNode pbrPresetNode = (PbrPresetNode) shaderGraphNode;
            String K10 = pbrPresetNode.K();
            steppedArrayList.add(new C5.b("Selected: " + ((K10 == null || K10.isEmpty()) ? "None" : H3.g.w1(K10)), 12));
            e eVar = new e(pbrPresetNode);
            b.a aVar = b.a.Button;
            steppedArrayList.add(new C5.b(eVar, "Select Preset", aVar).l(true));
            steppedArrayList.add(new C5.b(new f(pbrPresetNode), "Clear Preset", aVar).l(true));
        } else if (shaderGraphNode instanceof RawGradientNode) {
            steppedArrayList.add(N9.a.b("", ((RawGradientNode) shaderGraphNode).gradient, getContext(), new g()));
        }
        k0(steppedArrayList, this.f15632m);
        q0(!steppedArrayList.isEmpty());
    }

    public void t0() {
        boolean z10 = false;
        if (this.f15621b.z()) {
            setPreviewEnabled(false);
            return;
        }
        if (EditorSettings.a() != null && EditorSettings.a().materialGraphPreviewsEnabled && this.f15621b.y()) {
            z10 = true;
        }
        setPreviewEnabled(z10);
    }

    public final void u() {
        ShaderGraphData graphData = this.f15622c.getGraphData();
        ShaderGraphSlot[] n10 = this.f15621b.n(graphData);
        ShaderGraphSlot[] r10 = this.f15621b.r(graphData);
        this.f15613C = n10 != null && n10.length > 0;
        this.f15614D = r10 != null && r10.length > 0;
        if (n10 != null) {
            this.f15639t = new View[n10.length];
            this.f15642w = new View[n10.length];
            this.f15643x = new TextView[n10.length];
            this.f15645z = new N6.w[n10.length];
            this.f15644y = new ImageView[n10.length];
            this.f15611A = new boolean[n10.length];
            this.f15612B = new int[n10.length];
            for (int i10 = 0; i10 < n10.length; i10++) {
                ShaderGraphSlot shaderGraphSlot = n10[i10];
                this.f15612B[i10] = this.f15621b.l(graphData, i10);
                this.f15639t[i10] = w(this.f15632m, shaderGraphSlot, true, i10);
            }
        } else {
            this.f15612B = null;
        }
        if (r10 != null) {
            this.f15640u = new View[r10.length];
            for (int i11 = 0; i11 < r10.length; i11++) {
                this.f15640u[i11] = w(this.f15633n, r10[i11], false, i11);
            }
        }
        g0(graphData);
    }

    public final void u0() {
        if (this.f15630k == null) {
            return;
        }
        this.f15630k.setText(this.f15621b.v(this.f15622c.getGraphData()));
    }

    public final View v(final int inputIndex, ShaderGraphSlot slot) {
        ImageView imageView = null;
        if (slot == null) {
            return null;
        }
        final com.itsmagic.engine.Engines.Graphics.ShaderGraph.C F10 = F(i0(slot, true, inputIndex, Z(inputIndex), this.f15622c.getGraphData()));
        if (this.f15621b.z() || F10 == null) {
            return null;
        }
        switch (r.f15680a[F10.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                LinearLayout linearLayout = new LinearLayout(getContext());
                linearLayout.setOrientation(0);
                linearLayout.setGravity(16);
                linearLayout.setClipChildren(false);
                linearLayout.setClipToPadding(false);
                FrameLayout frameLayout = new FrameLayout(getContext());
                int k02 = Nc.b.k0(4.0f);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setColor(Theme.i(Theme.T.PANEL_TOPBAR));
                gradientDrawable.setCornerRadius(k02);
                gradientDrawable.setStroke(Nc.b.k0(1.0f), Theme.i(Theme.T.CARD));
                frameLayout.setBackground(gradientDrawable);
                int k03 = Nc.b.k0(22.0f);
                com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE;
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(Nc.b.k0((F10 == c10 || F10 == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.CUBEMAP) ? 110.0f : 54.0f), k03);
                layoutParams.rightMargin = Nc.b.k0(4.0f);
                linearLayout.addView(frameLayout, layoutParams);
                TextView textView = new TextView(getContext());
                textView.setTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
                textView.setTextSize(2, 10.0f);
                textView.setSingleLine(true);
                textView.setEllipsize(TextUtils.TruncateAt.END);
                if (F10 == c10 || F10 == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.CUBEMAP) {
                    LinearLayout linearLayout2 = new LinearLayout(getContext());
                    linearLayout2.setOrientation(0);
                    linearLayout2.setGravity(16);
                    int k04 = Nc.b.k0(4.0f);
                    linearLayout2.setPadding(k04, 0, k04, 0);
                    frameLayout.addView(linearLayout2, new FrameLayout.LayoutParams(-1, -1));
                    ImageView imageView2 = new ImageView(getContext());
                    imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    int k05 = Nc.b.k0(16.0f);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(k05, k05);
                    layoutParams2.rightMargin = Nc.b.k0(4.0f);
                    linearLayout2.addView(imageView2, layoutParams2);
                    textView.setGravity(8388627);
                    linearLayout2.addView(textView, new LinearLayout.LayoutParams(0, -2, 1.0f));
                    imageView = imageView2;
                } else {
                    textView.setGravity(17);
                    frameLayout.addView(textView, new FrameLayout.LayoutParams(-1, -1));
                }
                N6.w wVar = new N6.w(getContext());
                wVar.setType(F10);
                wVar.setClickable(false);
                int k06 = Nc.b.k0(30.0f);
                linearLayout.addView(wVar, new LinearLayout.LayoutParams(k06, k06));
                View[] viewArr = this.f15642w;
                if (viewArr != null && inputIndex >= 0 && inputIndex < viewArr.length) {
                    viewArr[inputIndex] = linearLayout;
                    this.f15643x[inputIndex] = textView;
                    this.f15644y[inputIndex] = imageView;
                    if (this.f15645z == null) {
                        this.f15645z = new N6.w[viewArr.length];
                    }
                    this.f15645z[inputIndex] = wVar;
                }
                r0(inputIndex, F10);
                frameLayout.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        p.this.V(inputIndex, F10, view);
                    }
                });
                addView(linearLayout, new FrameLayout.LayoutParams(-2, -2));
                linearLayout.bringToFront();
                return linearLayout;
            default:
                return null;
        }
    }

    public final View w(LinearLayout column, ShaderGraphSlot slot, boolean input, int index) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(input ? 8388627 : 8388629);
        linearLayout.setPadding(0, Nc.b.k0(2.0f), 0, Nc.b.k0(2.0f));
        int k02 = Nc.b.k0(10.0f);
        View view = new View(getContext());
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(k02, k02);
        view.setLayoutParams(layoutParams);
        view.setVisibility(4);
        TextView textView = new TextView(getContext());
        if (slot != null) {
            String str = slot.name;
            String str2 = str != null ? str : "";
            if (!input && ((c10 = slot.type) == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2 || c10 == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3 || c10 == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4 || c10 == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.COLOR)) {
                str2 = str2 + "(" + com.itsmagic.engine.Engines.Graphics.ShaderGraph.y.g(slot.type) + ")";
            }
            textView.setText(str2);
        } else {
            textView.setText("");
        }
        textView.setTextSize(2, 11.0f);
        textView.setTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
        textView.setPadding(Nc.b.k0(2.0f), 0, Nc.b.k0(2.0f), 0);
        if (input) {
            linearLayout.addView(view, layoutParams);
            linearLayout.addView(textView);
            v(index, slot);
        } else {
            linearLayout.addView(textView);
            linearLayout.addView(view, layoutParams);
        }
        column.addView(linearLayout, new LinearLayout.LayoutParams(-1, -2));
        return view;
    }

    public final C5.b x(String title, Vector2 value) {
        C5.b bVar = new C5.b(title, b.a.Vector, new C5.b[2]);
        C5.b[] bVarArr = bVar.f2081p;
        h hVar = new h(value);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(hVar, "X", aVar).l(true);
        bVar.f2081p[1] = new C5.b(new i(value), "Y", aVar).l(true);
        return bVar;
    }

    public final C5.b y(String title, Vector3 value) {
        C5.b bVar = new C5.b(title, b.a.Vector, new C5.b[3]);
        C5.b[] bVarArr = bVar.f2081p;
        j jVar = new j(value);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(jVar, "X", aVar).l(true);
        bVar.f2081p[1] = new C5.b(new l(value), "Y", aVar).l(true);
        bVar.f2081p[2] = new C5.b(new m(value), Signature.SIG_BOOLEAN, aVar).l(true);
        return bVar;
    }

    public final C5.b z(String title, Vector4 value) {
        C5.b bVar = new C5.b(title, b.a.Vector, new C5.b[4]);
        C5.b[] bVarArr = bVar.f2081p;
        n nVar = new n(value);
        b.a aVar = b.a.SLFloatWrap;
        bVarArr[0] = new C5.b(nVar, "X", aVar).l(true);
        bVar.f2081p[1] = new C5.b(new o(value), "Y", aVar).l(true);
        bVar.f2081p[2] = new C5.b(new C0438p(value), Signature.SIG_BOOLEAN, aVar).l(true);
        bVar.f2081p[3] = new C5.b(new q(value), ExifInterface.LONGITUDE_WEST, aVar).l(true);
        return bVar;
    }
}
