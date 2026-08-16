package L4;

import C5.b;
import F5.c;
import Vc.e;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.CubemapConfig;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import q7.C15045a;
import r4.C15147a;
import wb.C15983e;

public class a extends EditorPanel {

    public final String f11556X;

    public CubemapConfig f11557Y;

    public LinearLayout f11558Z;

    public final AtomicBoolean f11559a0;

    public View f11560b0;

    public List<C5.b> f11561c0;

    public final AtomicBoolean f11562d0;

    public View f11563e0;

    public View f11564f0;

    public class C0377a implements D5.h {
        public C0377a() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", a.this.f11557Y.j());
        }

        @Override
        public void set(Variable variable) {
            a.this.f11557Y.A((variable == null || variable.str_value.isEmpty()) ? null : variable.str_value);
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", a.this.f11557Y.g());
        }

        @Override
        public void set(Variable variable) {
            a.this.f11557Y.x((variable == null || variable.str_value.isEmpty()) ? null : variable.str_value);
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", a.this.f11557Y.k());
        }

        @Override
        public void set(Variable variable) {
            a.this.f11557Y.B((variable == null || variable.str_value.isEmpty()) ? null : variable.str_value);
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", a.this.f11557Y.h());
        }

        @Override
        public void set(Variable variable) {
            a.this.f11557Y.y((variable == null || variable.str_value.isEmpty()) ? null : variable.str_value);
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", a.this.f11557Y.l());
        }

        @Override
        public void set(Variable variable) {
            a.this.f11557Y.C((variable == null || variable.str_value.isEmpty()) ? null : variable.str_value);
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", a.this.f11557Y.i());
        }

        @Override
        public void set(Variable variable) {
            a.this.f11557Y.z((variable == null || variable.str_value.isEmpty()) ? null : variable.str_value);
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", a.this.C1());
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                int i10 = variable.int_value;
                if (i10 == 0) {
                    a.this.f11557Y.m().j0(TextureConfig.c.Nearest);
                } else if (i10 == 1) {
                    a.this.f11557Y.m().j0(TextureConfig.c.Linear);
                }
            }
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", a.this.f11557Y.m().genMipmaps + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                a.this.f11557Y.m().genMipmaps = variable.booolean_value.booleanValue();
            }
        }
    }

    public class i implements D5.h {
        public i() {
        }

        @Override
        public Variable get() {
            return new Variable("", a.this.f11557Y.m().p() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                a.this.f11557Y.m().w0(variable.int_value);
            }
        }
    }

    public class j implements C5.n {

        public final B5.b f11574a;

        public final List f11575b;

        public final LinearLayout f11576c;

        public j(final B5.b val$entriesListener, final List val$entries, final LinearLayout val$content) {
            this.f11574a = val$entriesListener;
            this.f11575b = val$entries;
            this.f11576c = val$content;
        }

        @Override
        public void refresh(int position) {
            B5.b bVar = this.f11574a;
            if (bVar != null) {
                bVar.a(this.f11575b);
            } else {
                a.this.L1(this.f11575b, this.f11576c, true, bVar);
            }
        }
    }

    public class k extends AbstractViewOnClickListenerC12733a {
        public k() {
        }

        @Override
        public void click(View view) {
            a.this.I1();
            a.this.x1(view);
            a.this.R0();
        }
    }

    public static class l {

        public static final int[] f11579a;

        public static final int[] f11580b;

        public static final int[] f11581c;

        static {
            int[] iArr = new int[TextureConfig.h.values().length];
            f11581c = iArr;
            try {
                iArr[TextureConfig.h.Clamp.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11581c[TextureConfig.h.Repeat.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11581c[TextureConfig.h.MirrorRepeat.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[TextureConfig.c.values().length];
            f11580b = iArr2;
            try {
                iArr2[TextureConfig.c.Nearest.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11580b[TextureConfig.c.Linear.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[CubemapConfig.a.values().length];
            f11579a = iArr3;
            try {
                iArr3[CubemapConfig.a.PANORAMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f11579a[CubemapConfig.a.SIX_FACES.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public class m implements Runnable {

        public final C15045a f11582b;

        public m(final C15045a val$loading) {
            this.f11582b = val$loading;
        }

        @Override
        public void run() {
            try {
                try {
                    com.itsmagic.engine.Engines.Engine.Texture.Cubemap.a.b(a.this.f11557Y, a.this.f11556X);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    N7.c.v0("Failed to prepare texture:" + e10.getMessage());
                }
            } finally {
                this.f11582b.p1();
                a.this.f11559a0.set(false);
            }
        }
    }

    public class n implements e.k {

        public final ImageView f11584a;

        public n(final ImageView val$im) {
            this.f11584a = val$im;
        }

        @Override
        public void a(Drawable drawable) {
            drawable.setFilterBitmap(a.this.f11557Y.m().k() != TextureConfig.c.Nearest);
            this.f11584a.setImageDrawable(drawable);
        }
    }

    public class o extends c.n0<CubemapConfig.a> {
        public o() {
        }

        @Override
        public void a() {
            a.this.H1();
        }

        @Override
        public void set(CubemapConfig.a value) {
            a.this.f11557Y.v(value);
            a.this.H1();
        }

        @Override
        public String c(CubemapConfig.a enumObject) {
            int i10 = l.f11579a[enumObject.ordinal()];
            if (i10 == 1) {
                return "Panorama";
            }
            if (i10 == 2) {
                return "6 faces";
            }
            throw new RuntimeException();
        }
    }

    public class p implements D5.h {
        public p() {
        }

        @Override
        public Variable get() {
            return new Variable("", TextureConfig.f79814s[a.this.f11557Y.m().maxResolutionID] + "x" + TextureConfig.f79814s[a.this.f11557Y.m().maxResolutionID]);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                a.this.f11557Y.m().maxResolutionID = variable.int_value;
            }
        }
    }

    public class q implements D5.h {
        public q() {
        }

        @Override
        public Variable get() {
            return new Variable("", a.this.f11557Y.m().gammaCorrection + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                a.this.f11557Y.m().gammaCorrection = variable.booolean_value.booleanValue();
                a.this.x1(null);
            }
        }
    }

    public class r implements D5.h {
        public r() {
        }

        @Override
        public Variable get() {
            return new Variable("", a.this.f11557Y.m().s() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                a.this.f11557Y.m().B0(variable.int_value);
            }
        }
    }

    public class s implements B5.b {
        public s() {
        }

        @Override
        public void a(List<C5.b> entries) {
            a.this.M1();
        }
    }

    public class t implements D5.h {
        public t() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", a.this.f11557Y.f());
        }

        @Override
        public void set(Variable variable) {
            if (variable == null || variable.str_value.isEmpty()) {
                a.this.f11557Y.w(null);
            } else {
                a.this.f11557Y.w(variable.str_value);
            }
        }
    }

    public a(String inProjectFile) {
        super(null, Tc.b.v(inProjectFile));
        this.f11559a0 = new AtomicBoolean();
        this.f11561c0 = null;
        this.f11562d0 = new AtomicBoolean();
        super.e1(false);
        this.f11556X = inProjectFile;
    }

    public static FloatingPanelArea J1(View anchor, C15147a.e anchorSide, String inProjectFile) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        if (inProjectFile == null || inProjectFile.isEmpty()) {
            throw new NullPointerException("listener can't be null");
        }
        N7.c.t();
        return C15147a.g(anchor, new a(inProjectFile), anchorSide, N7.c.g(370), N7.c.f(300));
    }

    public static FloatingPanelArea K1(String inProjectFile) {
        if (inProjectFile == null || inProjectFile.isEmpty()) {
            throw new NullPointerException("listener can't be null");
        }
        N7.c.t();
        return C15147a.m(new a(inProjectFile), N7.c.g(370), N7.c.f(300));
    }

    public final void A1(String org2, String active) {
        U.h u10 = new U.h().y().u(R.drawable.wo_uimage);
        View findViewById = this.f11560b0.findViewById(R.id.edited);
        ((TextView) findViewById.findViewById(R.id.resolution)).setText("Resolution: " + active);
        ImageView imageView = (ImageView) findViewById.findViewById(R.id.img);
        File file = new File((com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/" + Tc.b.O(this.f11556X) + ".meta/") + "thumb.png");
        if (file.exists()) {
            Vc.e.j(file.getAbsolutePath(), M(), u10, com.bumptech.glide.load.engine.i.f59186b, new n(imageView));
        }
    }

    public final List<C5.b> B1() {
        LinkedList linkedList = new LinkedList();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add("Pixel");
        steppedArrayList.add("Linear");
        linkedList.add(new C5.b(new g(), C1(), steppedArrayList, b.a.SLDropdown, "Filter"));
        return linkedList;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.cubemap_editor_panel, (ViewGroup) null);
        this.f11560b0 = inflate;
        G1();
        if (this.f11557Y != null) {
            z1();
        } else {
            N7.c.v0("Invalid cubemap");
            R0();
        }
        return inflate;
    }

    public final String C1() {
        int i10 = l.f11580b[this.f11557Y.m().k().ordinal()];
        return i10 != 1 ? i10 != 2 ? "Unknown" : "Linear" : "Pixel";
    }

    public final List<C5.b> D1() {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new h(), "Mipmaps", b.a.SLBoolean));
        linkedList.add(new C5.b(new i(), "Mipmap levels", b.a.SLInt));
        return linkedList;
    }

    public final List<C5.b> E1() {
        LinkedList linkedList = new LinkedList();
        if (this.f11557Y.e() == CubemapConfig.a.PANORAMA) {
            linkedList.add(new C5.b(new t(), "Panorama texture", b.a.Texture, M()));
        } else if (this.f11557Y.e() == CubemapConfig.a.SIX_FACES) {
            C0377a c0377a = new C0377a();
            b.a aVar = b.a.Texture;
            linkedList.add(new C5.b(c0377a, "positive X", aVar, M()));
            linkedList.add(new C5.b(new b(), "negative X", aVar, M()));
            linkedList.add(new C5.b(new c(), "positive Y", aVar, M()));
            linkedList.add(new C5.b(new d(), "negative Y", aVar, M()));
            linkedList.add(new C5.b(new e(), "positive Z", aVar, M()));
            linkedList.add(new C5.b(new f(), "negative Z", aVar, M()));
        }
        return linkedList;
    }

    public final String F1() {
        int i10 = l.f11581c[this.f11557Y.m().wrap.ordinal()];
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? "Unknown" : "MirrorRepeat" : "Repeat" : "Clamp";
    }

    public final void G1() {
        try {
            CubemapConfig g10 = C15983e.g(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + this.f11556X));
            this.f11557Y = g10;
            if (g10 == null) {
                this.f11557Y = new CubemapConfig();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void H1() {
        this.f11561c0 = null;
        M1();
    }

    public final void I1() {
        C15983e.m(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + this.f11556X), this.f11557Y);
    }

    public void L1(List<C5.b> entries, LinearLayout content, boolean clearViews, B5.b entriesListener) {
        if (clearViews) {
            content.removeAllViews();
        }
        for (C5.b bVar : entries) {
            b.a aVar = bVar.f2079n;
            if (aVar == b.a.Vector) {
                C5.h.y(content, this.f70908j, bVar, 0, M());
            } else if (aVar == b.a.Component) {
                C5.h.w(content, this.f70908j, bVar, 0, M(), new j(entriesListener, entries, content));
            } else {
                C5.h.x(content, this.f70908j, bVar, 0, true, M());
            }
        }
    }

    public final void M1() {
        if (this.f11561c0 == null) {
            LinkedList linkedList = new LinkedList();
            this.f11561c0 = linkedList;
            linkedList.add(F5.c.i(Lang.l(Lang.T.SOURCE_MODE), CubemapConfig.a.class, this.f11557Y.e(), new o()));
            this.f11561c0.addAll(E1());
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (int i10 : TextureConfig.f79814s) {
                steppedArrayList.add(i10 + "x" + i10);
            }
            this.f11561c0.add(new C5.b(new p(), TextureConfig.f79814s[this.f11557Y.m().maxResolutionID] + "x" + TextureConfig.f79814s[this.f11557Y.m().maxResolutionID], steppedArrayList, b.a.SLDropdown, "Max resolution"));
            this.f11561c0.add(new C5.b(new q(), "Gamma correction", b.a.SLBoolean));
            this.f11561c0.add(new C5.b(new r(), "Quality", b.a.SLInt));
            this.f11561c0.addAll(B1());
            this.f11561c0.addAll(D1());
        }
        L1(this.f11561c0, this.f11558Z, true, new s());
    }

    public final void N1() {
        if (this.f11557Y.m().width == 0) {
            A1("", "");
            return;
        }
        A1(this.f11557Y.m().originalWidth + "x" + this.f11557Y.m().originalHeight, this.f11557Y.m().width + "x" + this.f11557Y.m().height);
    }

    public final void O1() {
        new U.h().y().u(R.drawable.wo_uimage);
        new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/" + Tc.b.O(this.f11556X) + ".texture");
    }

    @Override
    public EditorPanel k() {
        return new a(this.f11556X);
    }

    @Override
    public void m1() {
        boolean z10;
        super.m1();
        synchronized (this.f11562d0) {
            try {
                z10 = false;
                if (this.f11562d0.get() && !this.f11559a0.get()) {
                    this.f11562d0.set(false);
                    z10 = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            y1(this.f11563e0);
        }
    }

    public final void x1(View view) {
        synchronized (this.f11562d0) {
            this.f11563e0 = view;
            this.f11562d0.set(true);
        }
    }

    public final void y1(View view) {
        if (this.f11559a0.compareAndSet(false, true)) {
            N7.c.o();
            if (view == null) {
                view = this.f11564f0;
            }
            new Thread(new m(C15045a.t1(view, C15147a.e.Left))).start();
        }
    }

    public final void z1() {
        View view = this.f11560b0;
        ((TextView) view.findViewById(R.id.textureName)).setText(Tc.b.v(this.f11556X));
        N1();
        this.f11558Z = (LinearLayout) view.findViewById(R.id.scrollContent);
        M1();
        View findViewById = view.findViewById(R.id.done);
        this.f11564f0 = findViewById;
        findViewById.setOnClickListener(new k());
    }
}
