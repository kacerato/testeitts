package P6;

import C5.b;
import C5.n;
import D5.h;
import F5.c;
import JAVARuntime.Runnable;
import Vc.e;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import c4.C4153a;
import com.bumptech.glide.load.engine.i;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.b;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.tonyodev.fetch2core.server.FileRequest;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import q7.C15045a;
import r4.C15147a;
import ub.g;
import yb.C16165b;

public class c extends EditorPanel {

    public final String f20767X;

    public TextureConfig f20768Y;

    public LinearLayout f20769Z;

    public final AtomicBoolean f20770a0;

    public View f20771b0;

    public List<C5.b> f20772c0;

    public final AtomicBoolean f20773d0;

    public View f20774e0;

    public View f20775f0;

    public class A implements h {
        public A() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.saturation + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.saturation = variable.int_value;
                c.this.A1(null);
            }
        }
    }

    public class B implements h {
        public B() {
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(c.this.f20768Y.sepia));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.sepia = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class C implements h {
        public C() {
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(c.this.f20768Y.sharpen));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.sharpen = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class D implements h {
        public D() {
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(c.this.f20768Y.sketch));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.sketch = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class E implements h {
        public E() {
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(c.this.f20768Y.vignette));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.vignette = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class F implements h {
        public F() {
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(c.this.f20768Y.gaussian));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.gaussian = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class G implements e.k {

        public final ImageView f20782a;

        public G(final ImageView val$im) {
            this.f20782a = val$im;
        }

        @Override
        public void a(Drawable drawable) {
            drawable.setFilterBitmap(c.this.f20768Y.k() != TextureConfig.c.Nearest);
            this.f20782a.setImageTintList(null);
            this.f20782a.clearColorFilter();
            this.f20782a.setImageDrawable(drawable);
        }
    }

    public class H implements Runnable {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                try {
                    c.this.D1(c.this.f20768Y.originalWidth + "x" + c.this.f20768Y.originalHeight, c.this.f20768Y.width + "x" + c.this.f20768Y.height);
                    c.this.a2();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public H() {
        }

        @Override
        public void run() {
            try {
                g u10 = C16165b.u(c.this.f20767X);
                if (u10 != null) {
                    c.this.f20768Y.width = u10.getWidth();
                    c.this.f20768Y.height = u10.getHeight();
                    c.this.f20768Y.originalWidth = u10.getWidth();
                    c.this.f20768Y.originalHeight = u10.getHeight();
                    N7.c.j0(new a());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class I implements h {
        public I() {
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(c.this.f20768Y.allowContrast));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.allowContrast = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class J implements h {
        public J() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.contrast + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.contrast = variable.int_value;
                c.this.A1(null);
            }
        }
    }

    public class K implements h {
        public K() {
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(c.this.f20768Y.allowBrightness));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.allowBrightness = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class L implements h {
        public L() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.brightness + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.brightness = variable.int_value;
                c.this.A1(null);
            }
        }
    }

    public class M implements h {
        public M() {
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(c.this.f20768Y.allowBoost));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.allowBoost = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class N implements h {
        public N() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.boostRed + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.boostRed = variable.int_value;
                c.this.A1(null);
            }
        }
    }

    public class O implements h {
        public O() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.boostGreen + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.boostGreen = variable.int_value;
                c.this.A1(null);
            }
        }
    }

    public class P implements h {
        public P() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.boostBlue + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.boostBlue = variable.int_value;
                c.this.A1(null);
            }
        }
    }

    public class Q implements h {
        public Q() {
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(c.this.f20768Y.allowColorDepth));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.allowColorDepth = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class R implements h {
        public R() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.colordepth + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.colordepth = variable.int_value;
                c.this.A1(null);
            }
        }
    }

    public class S implements h {
        public S() {
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(c.this.f20768Y.allowOpacity));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.allowOpacity = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class T implements h {
        public T() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.opacityTextureFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.opacityTextureFile = variable.str_value;
                c.this.A1(null);
            }
        }
    }

    public class U implements n {

        public final B5.b f20798a;

        public final List f20799b;

        public final LinearLayout f20800c;

        public U(final B5.b val$entriesListener, final List val$entries, final LinearLayout val$content) {
            this.f20798a = val$entriesListener;
            this.f20799b = val$entries;
            this.f20800c = val$content;
        }

        @Override
        public void refresh(int position) {
            B5.b bVar = this.f20798a;
            if (bVar != null) {
                bVar.a(this.f20799b);
            } else {
                c.this.d2(this.f20799b, this.f20800c, true, bVar);
            }
        }
    }

    public static class V {

        public static final int[] f20802a;

        public static final int[] f20803b;

        public static final int[] f20804c;

        static {
            int[] iArr = new int[TextureConfig.h.values().length];
            f20804c = iArr;
            try {
                iArr[TextureConfig.h.Clamp.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20804c[TextureConfig.h.Repeat.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20804c[TextureConfig.h.MirrorRepeat.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[TextureConfig.c.values().length];
            f20803b = iArr2;
            try {
                iArr2[TextureConfig.c.Nearest.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20803b[TextureConfig.c.Linear.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[TextureConfig.f.values().length];
            f20802a = iArr3;
            try {
                iArr3[TextureConfig.f.Texture.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f20802a[TextureConfig.f.Sprite.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public class W implements e.k {

        public final ImageView f20805a;

        public W(final ImageView val$im) {
            this.f20805a = val$im;
        }

        @Override
        public void a(Drawable drawable) {
            this.f20805a.setImageTintList(null);
            this.f20805a.clearColorFilter();
            this.f20805a.setImageDrawable(drawable);
        }
    }

    public class X implements e.k {

        public final ImageView f20807a;

        public X(final ImageView val$im) {
            this.f20807a = val$im;
        }

        @Override
        public void a(Drawable drawable) {
            drawable.setFilterBitmap(c.this.f20768Y.k() != TextureConfig.c.Nearest);
            this.f20807a.setImageTintList(null);
            this.f20807a.clearColorFilter();
            this.f20807a.setImageDrawable(drawable);
        }
    }

    public class Y implements h {
        public Y() {
        }

        @Override
        public Variable get() {
            return new Variable("", TextureConfig.f79814s[c.this.f20768Y.maxResolutionID] + "x" + TextureConfig.f79814s[c.this.f20768Y.maxResolutionID]);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.maxResolutionID = variable.int_value;
                c.this.A1(null);
            }
        }
    }

    public class Z extends c.n0<TextureConfig.f> {
        public Z() {
        }

        @Override
        public void set(TextureConfig.f value) {
            if (value != null) {
                c.this.f20768Y.type = value;
                c.this.a2();
                c.this.Z1();
            }
        }

        @Override
        public String c(TextureConfig.f enumObject) {
            int i10 = V.f20802a[enumObject.ordinal()];
            return i10 != 1 ? i10 != 2 ? super.c(enumObject) : "Sprite" : SerializableShaderEntry.f81152f;
        }
    }

    public class C2942a implements h {
        public C2942a() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.s() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.B0(variable.int_value);
                c.this.A1(null);
            }
        }
    }

    public class a0 implements F5.b {
        public a0() {
        }

        @Override
        public void onClick() {
            c.this.a2();
            O6.a.P2(c.this.f20767X);
            c.this.R0();
        }
    }

    public class C2943b implements h {

        public final List f20813a;

        public C2943b(final List val$names) {
            this.f20813a = val$names;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                try {
                    c.this.f20768Y.m0(TextureConfig.d.valueOf((String) this.f20813a.get(variable.int_value)));
                    c.this.A1(null);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public class C0510c implements h {
        public C0510c() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.allowModifications + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.allowModifications = variable.booolean_value.booleanValue();
                c.this.Z1();
                c.this.A1(null);
            }
        }
    }

    public class C2944d extends c.n0<TextureConfig.b> {
        public C2944d() {
        }

        @Override
        public void set(TextureConfig.b value) {
            c.this.f20768Y.compressionFormat = value;
            c.this.Z1();
        }

        @Override
        public String c(TextureConfig.b enumObject) {
            return enumObject.getName();
        }
    }

    public class C2945e extends c.n0<TextureConfig.a> {
        public C2945e() {
        }

        @Override
        public void set(TextureConfig.a value) {
            c.this.f20768Y.compressionEffort = value;
        }
    }

    public class C2946f implements h {
        public C2946f() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.gammaCorrection + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.gammaCorrection = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class C2947g implements h {
        public C2947g() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.blackIsAlpha + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.blackIsAlpha = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class C2948h implements h {
        public C2948h() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.is9patch + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.is9patch = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class C2949i implements h {
        public C2949i() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.autoGenNormalMap + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.autoGenNormalMap = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class C2950j implements h {
        public C2950j() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.b() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.c0(variable.int_value);
                c.this.A1(null);
            }
        }
    }

    public class C2951k extends AbstractViewOnClickListenerC12733a {
        public C2951k() {
        }

        @Override
        public void click(View view) {
            c.this.a2();
            c.this.R0();
        }
    }

    public class RunnableC2952l implements Runnable {

        public final C15045a f20824b;

        public class a implements Runnable {

            public class RunnableC0511a implements Runnable {
                public RunnableC0511a() {
                }

                @Override
                public void run() {
                    c.this.g2();
                }
            }

            public a() {
            }

            @Override
            public void run() {
                System.gc();
                try {
                    C16165b.i(c.this.f20767X).E0();
                    N7.c.j0(new RunnableC0511a());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public RunnableC2952l(final C15045a val$loading) {
            this.f20824b = val$loading;
        }

        @Override
        public void run() {
            try {
                try {
                    File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + c.this.f20767X);
                    c.this.a2();
                    com.itsmagic.engine.Engines.Engine.Texture.Utils.b.i(file, c.this.M(), new b.C1370b().a(b.c.ONLY_TEXTURE).b(true));
                    C4153a.j(file, com.itsmagic.engine.Core.Components.ProjectController.a.T());
                    K8.a.I(new a());
                } catch (Exception e10) {
                    e10.printStackTrace();
                    N7.c.v0("Failed to prepare texture:" + e10.getMessage());
                }
            } finally {
                this.f20824b.p1();
                c.this.f20770a0.set(false);
            }
        }
    }

    public class C2953m implements B5.b {
        public C2953m() {
        }

        @Override
        public void a(List<C5.b> entries) {
            c.this.e2();
        }
    }

    public class C2954n implements h {
        public C2954n() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.J1());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                int i10 = variable.int_value;
                if (i10 == 0) {
                    c.this.f20768Y.j0(TextureConfig.c.Nearest);
                } else if (i10 == 1) {
                    c.this.f20768Y.j0(TextureConfig.c.Linear);
                }
                c.this.A1(null);
            }
        }
    }

    public class C2955o implements h {
        public C2955o() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.X1());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                int i10 = variable.int_value;
                if (i10 == 0) {
                    c.this.f20768Y.wrap = TextureConfig.h.Clamp;
                } else if (i10 == 1) {
                    c.this.f20768Y.wrap = TextureConfig.h.Repeat;
                } else if (i10 == 2) {
                    c.this.f20768Y.wrap = TextureConfig.h.MirrorRepeat;
                }
                c.this.A1(null);
            }
        }
    }

    public class C2956p implements h {
        public C2956p() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.genMipmaps + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.genMipmaps = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class C2957q implements h {
        public C2957q() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.p() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.w0(variable.int_value);
                c.this.A1(null);
            }
        }
    }

    public class C2958r implements h {
        public C2958r() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.flipX + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.flipX = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class C2959s implements h {
        public C2959s() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.flipY + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.flipY = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class C2960t extends c.n0<TextureConfig.e> {
        public C2960t() {
        }

        @Override
        public void a() {
            super.a();
        }

        @Override
        public void set(TextureConfig.e value) {
            c.this.f20768Y.rotate = value;
            c.this.A1(null);
        }
    }

    public class C2961u implements h {
        public C2961u() {
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(c.this.f20768Y.grayscale));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.grayscale = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class C2962v implements h {
        public C2962v() {
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(c.this.f20768Y.invertColors));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.invertColors = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class C2963w implements h {
        public C2963w() {
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(c.this.f20768Y.noise));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.noise = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class C2964x implements h {
        public C2964x() {
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(c.this.f20768Y.allowHUE));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.allowHUE = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public class C2965y implements h {
        public C2965y() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f20768Y.hue + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.hue = variable.int_value;
                c.this.A1(null);
            }
        }
    }

    public class C2966z implements h {
        public C2966z() {
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(c.this.f20768Y.allowSaturation));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f20768Y.allowSaturation = variable.booolean_value.booleanValue();
                c.this.A1(null);
            }
        }
    }

    public c(String inProjectFile) {
        super(null, Tc.b.v(inProjectFile));
        this.f20770a0 = new AtomicBoolean();
        this.f20772c0 = null;
        this.f20773d0 = new AtomicBoolean();
        super.e1(false);
        this.f20767X = inProjectFile;
    }

    public void A1(View view) {
        synchronized (this.f20773d0) {
            this.f20774e0 = view;
            this.f20773d0.set(true);
        }
    }

    private void B1(View view) {
        if (this.f20770a0.compareAndSet(false, true)) {
            N7.c.o();
            if (view == null) {
                view = this.f20775f0;
            }
            new Thread(new RunnableC2952l(C15045a.t1(view, C15147a.e.Left))).start();
        }
    }

    private void C1() {
        View view = this.f20771b0;
        ((TextView) view.findViewById(com.itsmagic.engine2.R.id.textureName)).setText(Tc.b.v(this.f20767X));
        f2();
        this.f20769Z = (LinearLayout) view.findViewById(com.itsmagic.engine2.R.id.scrollContent);
        e2();
        View findViewById = view.findViewById(com.itsmagic.engine2.R.id.done);
        this.f20775f0 = findViewById;
        findViewById.setOnClickListener(new C2951k());
    }

    public void D1(String org2, String active) {
        U.h u10 = new U.h().y().u(com.itsmagic.engine2.R.drawable.wo_uimage);
        View findViewById = this.f20771b0.findViewById(com.itsmagic.engine2.R.id.original);
        ((TextView) findViewById.findViewById(com.itsmagic.engine2.R.id.resolution)).setText("Original: " + org2);
        ImageView imageView = (ImageView) findViewById.findViewById(com.itsmagic.engine2.R.id.img);
        String absolutePath = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/" + this.f20767X).getAbsolutePath();
        Context M10 = M();
        i iVar = i.f59186b;
        e.j(absolutePath, M10, u10, iVar, new W(imageView));
        View findViewById2 = this.f20771b0.findViewById(com.itsmagic.engine2.R.id.edited);
        ((TextView) findViewById2.findViewById(com.itsmagic.engine2.R.id.resolution)).setText("Active: " + active);
        e.j(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/" + Tc.b.O(this.f20767X) + ".texture").getAbsolutePath(), M(), u10, iVar, new X((ImageView) findViewById2.findViewById(com.itsmagic.engine2.R.id.img)));
    }

    private List<C5.b> I1() {
        LinkedList linkedList = new LinkedList();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add("Pixel");
        steppedArrayList.add("Linear");
        C2954n c2954n = new C2954n();
        String J12 = J1();
        b.a aVar = b.a.SLDropdown;
        linkedList.add(new C5.b(c2954n, J12, steppedArrayList, aVar, "Filter"));
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        steppedArrayList2.add("Clamp");
        steppedArrayList2.add("Repeat");
        steppedArrayList2.add("MirrorRepeat");
        linkedList.add(new C5.b(new C2955o(), X1(), steppedArrayList2, aVar, "Wrap"));
        linkedList.add(new C5.b(new C2956p(), "Mipmaps", b.a.SLBoolean));
        linkedList.add(new C5.b(new C2957q(), "Mipmap levels", b.a.SLInt));
        return linkedList;
    }

    public String J1() {
        int i10 = V.f20803b[this.f20768Y.k().ordinal()];
        return i10 != 1 ? i10 != 2 ? "Unknown" : "Linear" : "Pixel";
    }

    private List<C5.b> K1() {
        LinkedList linkedList = new LinkedList();
        C2958r c2958r = new C2958r();
        b.a aVar = b.a.SLBoolean;
        linkedList.add(new C5.b(c2958r, "Flip x", aVar));
        linkedList.add(new C5.b(new C2959s(), "Flip y", aVar));
        linkedList.add(F5.c.i(Lang.l(Lang.T.ROTATE), TextureConfig.e.class, this.f20768Y.rotate, new C2960t()));
        return linkedList;
    }

    public String X1() {
        int i10 = V.f20804c[this.f20768Y.wrap.ordinal()];
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? "Unknown" : "MirrorRepeat" : "Repeat" : "Clamp";
    }

    public void Z1() {
        this.f20772c0 = null;
        e2();
    }

    public void a2() {
        X7.a.b(this.f20767X + ".config", X7.a.m().toJson(this.f20768Y), M());
    }

    public static FloatingPanelArea b2(View anchor, C15147a.e anchorSide, String inProjectFile) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        if (inProjectFile == null || inProjectFile.isEmpty()) {
            throw new NullPointerException("listener can't be null");
        }
        N7.c.t();
        return C15147a.g(anchor, new c(inProjectFile), anchorSide, N7.c.g(370), N7.c.f(300));
    }

    public static FloatingPanelArea c2(String inProjectFile) {
        if (inProjectFile == null || inProjectFile.isEmpty()) {
            throw new NullPointerException("listener can't be null");
        }
        N7.c.t();
        return C15147a.m(new c(inProjectFile), N7.c.g(370), N7.c.f(300));
    }

    public void e2() {
        if (this.f20772c0 == null) {
            this.f20772c0 = new LinkedList();
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (int i10 : TextureConfig.f79814s) {
                steppedArrayList.add(i10 + "x" + i10);
            }
            this.f20772c0.add(new C5.b(new Y(), TextureConfig.f79814s[this.f20768Y.maxResolutionID] + "x" + TextureConfig.f79814s[this.f20768Y.maxResolutionID], steppedArrayList, b.a.SLDropdown, "Max resolution"));
            this.f20772c0.add(F5.c.i(FileRequest.FIELD_TYPE, TextureConfig.f.class, this.f20768Y.type, new Z()));
            if (this.f20768Y.type == TextureConfig.f.Sprite) {
                this.f20772c0.add(F5.c.c("Open Sprite Editor", new a0()));
            }
            TextureConfig textureConfig = this.f20768Y;
            if (textureConfig.compressionFormat == TextureConfig.b.UNCOMPRESSED || textureConfig.allowModifications) {
                this.f20772c0.add(new C5.b(new C2942a(), "Quality", b.a.SLInt));
            }
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            SteppedArrayList steppedArrayList3 = new SteppedArrayList();
            String str = "";
            for (TextureConfig.g gVar : TextureConfig.g.values()) {
                String obj = gVar.toString();
                steppedArrayList3.add(obj);
                steppedArrayList2.add(obj);
                if (this.f20768Y.l().toString().equals(gVar.toString())) {
                    str = obj;
                }
            }
            this.f20772c0.add(new C5.b(new C2943b(steppedArrayList3), str, steppedArrayList2, b.a.SLDropdown, "Format"));
            List<C5.b> list = this.f20772c0;
            C0510c c0510c = new C0510c();
            b.a aVar = b.a.SLBoolean;
            list.add(new C5.b(c0510c, "Allow realtime modification", aVar));
            TextureConfig textureConfig2 = this.f20768Y;
            if (textureConfig2.allowModifications) {
                this.f20772c0.add(new C5.b("Compression is not supported, be carefully", 12, com.itsmagic.engine2.R.color.colorAccent));
            } else {
                this.f20772c0.add(F5.c.i("Compression", TextureConfig.b.class, textureConfig2.compressionFormat, new C2944d()));
                TextureConfig textureConfig3 = this.f20768Y;
                if (textureConfig3.compressionFormat != TextureConfig.b.UNCOMPRESSED) {
                    this.f20772c0.add(F5.c.i("Compression effort", TextureConfig.a.class, textureConfig3.compressionEffort, new C2945e()));
                }
            }
            this.f20772c0.add(new C5.b(new C2946f(), "Gamma correction", aVar));
            this.f20772c0.add(new C5.b(new C2947g(), "Black is alpha", aVar));
            this.f20772c0.add(new C5.b(new C2948h(), "Is 9 patch", aVar));
            this.f20772c0.add(new C5.b(new C2949i(), "Auto generate normalmap", aVar));
            this.f20772c0.add(new C5.b(new C2950j(), "Normal map bias", b.a.SLInt));
            this.f20772c0.addAll(I1());
            this.f20772c0.addAll(K1());
            this.f20772c0.addAll(R1());
        }
        d2(this.f20772c0, this.f20769Z, true, new C2953m());
    }

    private void f2() {
        TextureConfig textureConfig = this.f20768Y;
        if (textureConfig.width == 0 || textureConfig.originalWidth == 0) {
            try {
                O9.b.d(new H());
            } catch (Error | Exception e10) {
                e10.printStackTrace();
            }
        }
        if (this.f20768Y.width == 0) {
            D1("", "");
            return;
        }
        D1(this.f20768Y.originalWidth + "x" + this.f20768Y.originalHeight, this.f20768Y.width + "x" + this.f20768Y.height);
    }

    public void g2() {
        e.j(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/" + Tc.b.O(this.f20767X) + ".texture").getAbsolutePath(), M(), new U.h().y().u(com.itsmagic.engine2.R.drawable.wo_uimage), i.f59186b, new G((ImageView) this.f20771b0.findViewById(com.itsmagic.engine2.R.id.edited).findViewById(com.itsmagic.engine2.R.id.img)));
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(com.itsmagic.engine2.R.layout.texture_editor_panel, (ViewGroup) null);
        this.f20771b0 = inflate;
        Y1();
        if (this.f20768Y != null) {
            C1();
        } else {
            N7.c.v0("Invalid texture");
            R0();
        }
        return inflate;
    }

    public final List<C5.b> E1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.BOOST), this.f20768Y.allowBoost, new M()));
        List<C5.b> list = bVar.f2064Q.f2042o;
        N n10 = new N();
        b.a aVar = b.a.SLIntSlider;
        list.add(new C5.b(n10, "Red ", aVar, 0.0f, 150.0f, 0.0f));
        bVar.f2064Q.f2042o.add(new C5.b(new O(), "Green ", aVar, 0.0f, 150.0f, 0.0f));
        bVar.f2064Q.f2042o.add(new C5.b(new P(), "Blue ", aVar, 0.0f, 150.0f, 0.0f));
        bVar.f2064Q.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        linkedList.add(bVar);
        return linkedList;
    }

    public final List<C5.b> F1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.BRIGHTNESS), this.f20768Y.allowBrightness, new K()));
        bVar.f2064Q.f2042o.add(new C5.b(new L(), "Value ", b.a.SLIntSlider, -100.0f, 100.0f, 0.0f));
        bVar.f2064Q.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        linkedList.add(bVar);
        return linkedList;
    }

    public final List<C5.b> G1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.COLOR_DEPTH), this.f20768Y.allowColorDepth, new Q()));
        bVar.f2064Q.f2042o.add(new C5.b(new R(), "Depth ", b.a.SLIntSlider, 0.0f, 4.0f, 0.0f));
        bVar.f2064Q.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        linkedList.add(bVar);
        return linkedList;
    }

    public final List<C5.b> H1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.CONTRAST), this.f20768Y.allowContrast, new I()));
        bVar.f2064Q.f2042o.add(new C5.b(new J(), "Value ", b.a.SLIntSlider, -100.0f, 100.0f, 0.0f));
        bVar.f2064Q.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        linkedList.add(bVar);
        return linkedList;
    }

    public final List<C5.b> L1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.GAUSSIAN), this.f20768Y.gaussian, new F()));
        bVar.f2064Q.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        linkedList.add(bVar);
        return linkedList;
    }

    public final List<C5.b> M1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.GREY_SCALE), this.f20768Y.grayscale, new C2961u()));
        bVar.f2064Q.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        linkedList.add(bVar);
        return linkedList;
    }

    public final List<C5.b> N1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.HUE), this.f20768Y.allowHUE, new C2964x()));
        bVar.f2064Q.f2042o.add(new C5.b(new C2965y(), "Value ", b.a.SLIntSlider, 0.0f, 360.0f, 0.0f));
        bVar.f2064Q.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        linkedList.add(bVar);
        return linkedList;
    }

    public final List<C5.b> O1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.INVERT_COLORS), this.f20768Y.grayscale, new C2962v()));
        bVar.f2064Q.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        linkedList.add(bVar);
        return linkedList;
    }

    public final List<C5.b> P1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.NOISE), this.f20768Y.noise, new C2963w()));
        bVar.f2064Q.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        linkedList.add(bVar);
        return linkedList;
    }

    public final List<C5.b> Q1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.OPACITY), this.f20768Y.allowOpacity, new S()));
        bVar.f2064Q.f2042o.add(new C5.b(new T(), "Alpha texture", b.a.Texture, M()));
        bVar.f2064Q.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        linkedList.add(bVar);
        return linkedList;
    }

    public final List<C5.b> R1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.POST_PROCESSING), true));
        C5.a aVar = bVar.f2064Q;
        aVar.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        aVar.f2042o.addAll(O1());
        bVar.f2064Q.f2042o.addAll(M1());
        bVar.f2064Q.f2042o.addAll(N1());
        bVar.f2064Q.f2042o.addAll(P1());
        bVar.f2064Q.f2042o.addAll(S1());
        bVar.f2064Q.f2042o.addAll(T1());
        bVar.f2064Q.f2042o.addAll(U1());
        bVar.f2064Q.f2042o.addAll(V1());
        bVar.f2064Q.f2042o.addAll(W1());
        bVar.f2064Q.f2042o.addAll(L1());
        bVar.f2064Q.f2042o.addAll(H1());
        bVar.f2064Q.f2042o.addAll(F1());
        bVar.f2064Q.f2042o.addAll(E1());
        bVar.f2064Q.f2042o.addAll(G1());
        bVar.f2064Q.f2042o.addAll(Q1());
        linkedList.add(bVar);
        return linkedList;
    }

    public final List<C5.b> S1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.SATURATION), this.f20768Y.allowSaturation, new C2966z()));
        bVar.f2064Q.f2042o.add(new C5.b(new A(), "Value ", b.a.SLIntSlider, 0.0f, 200.0f, 0.0f));
        bVar.f2064Q.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        linkedList.add(bVar);
        return linkedList;
    }

    public final List<C5.b> T1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.SEPIA), this.f20768Y.sepia, new B()));
        bVar.f2064Q.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        linkedList.add(bVar);
        return linkedList;
    }

    public final List<C5.b> U1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.SHARPEN), this.f20768Y.sharpen, new C()));
        bVar.f2064Q.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        linkedList.add(bVar);
        return linkedList;
    }

    public final List<C5.b> V1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.SKETCH), this.f20768Y.sketch, new D()));
        bVar.f2064Q.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        linkedList.add(bVar);
        return linkedList;
    }

    public final List<C5.b> W1() {
        LinkedList linkedList = new LinkedList();
        C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.VIGNETTE), this.f20768Y.vignette, new E()));
        bVar.f2064Q.f2043p = com.itsmagic.engine2.R.color.interface_panel;
        linkedList.add(bVar);
        return linkedList;
    }

    public final void Y1() {
        try {
            this.f20768Y = (TextureConfig) X7.a.m().fromJson(X7.a.s(this.f20767X + ".config", M()), TextureConfig.class);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.f20768Y == null) {
            this.f20768Y = new TextureConfig();
        }
    }

    public void d2(List<C5.b> entries, LinearLayout content, boolean clearViews, B5.b entriesListener) {
        if (clearViews) {
            content.removeAllViews();
        }
        for (C5.b bVar : entries) {
            b.a aVar = bVar.f2079n;
            if (aVar == b.a.Vector) {
                C5.h.y(content, this.f70908j, bVar, 0, M());
            } else if (aVar == b.a.Component) {
                C5.h.w(content, this.f70908j, bVar, 0, M(), new U(entriesListener, entries, content));
            } else {
                C5.h.x(content, this.f70908j, bVar, 0, true, M());
            }
        }
    }

    @Override
    public EditorPanel k() {
        return new c(this.f20767X);
    }

    @Override
    public void m1() {
        boolean z10;
        super.m1();
        synchronized (this.f20773d0) {
            try {
                z10 = false;
                if (this.f20773d0.get() && !this.f20770a0.get()) {
                    this.f20773d0.set(false);
                    z10 = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            B1(this.f20774e0);
        }
    }
}
