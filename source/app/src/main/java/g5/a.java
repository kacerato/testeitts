package G5;

import C5.b;
import C5.n;
import Ic.C2633l;
import JAVARuntime.Runnable;
import JAVARuntime.Texture;
import P6.b;
import Xb.O1;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.SeekBar.SeekBar;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Texture.Noise.NoiseData;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import java.io.File;
import java.util.List;
import jd.C13823b;
import r4.C15147a;
import t5.f;
import ub.p;
import w3.f;
import y8.C16152a;

public class a extends C5.b implements D5.e {

    public int f7575S;

    public int f7576T;

    public int f7577U;

    public final k f7578V;

    public LinearLayout f7579W;

    public ImageView f7580X;

    public ImageView f7581Y;

    public SeekBar f7582Z;

    public boolean f7583a0;

    public final Context f7584b0;

    public final String f7585c0;

    public boolean f7586d0;

    public int f7587e0;

    public class C0137a implements D5.e {
        public C0137a() {
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            a.this.onCreate(view, context, entry);
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View view) {
            a.this.f7583a0 = !r2.f7583a0;
            a.this.E();
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {
        public c() {
        }

        @Override
        public void click(View view) {
            a.this.I(view);
        }
    }

    public class d implements SeekBar.a {
        public d() {
        }

        @Override
        public void a(float value, boolean fromUser) {
            a.this.f7578V.f(value);
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {

        public final View f7592b;

        public final Context f7593c;

        public class C0138a implements Yc.g {
            public C0138a() {
            }

            @Override
            public void b(C13823b file) {
                if (file == null || file.f().isEmpty()) {
                    a.this.f7578V.b("");
                } else {
                    a.this.f7578V.b(file.f());
                }
                a.this.z();
                a.this.F();
            }
        }

        public class b implements f.j {
            public b() {
            }

            @Override
            public void a(ColorINT colorINT) {
                a.this.f7578V.c(colorINT);
                a.this.F();
            }
        }

        public e(final View val$v, final Context val$context) {
            this.f7592b = val$v;
            this.f7593c = val$context;
        }

        @Override
        public void click(View view) {
            int i10 = a.this.f7587e0;
            a aVar = a.this;
            if (i10 == aVar.f7575S) {
                Yc.c.a(".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm", new C0138a());
                return;
            }
            int i11 = aVar.f7587e0;
            a aVar2 = a.this;
            if (i11 == aVar2.f7576T) {
                t5.f.L1(aVar2.f7578V.j(), this.f7592b, this.f7593c, C15147a.e.Below, new b());
            }
        }
    }

    public class f implements View.OnLongClickListener {
        public f() {
        }

        @Override
        public boolean onLongClick(View view) {
            N7.c.Y();
            a.this.I(view);
            return true;
        }
    }

    public class g extends SteppedArrayList<C12908b> {

        public class C0139a implements dd.d {

            public class C0140a implements Yc.g {
                public C0140a() {
                }

                @Override
                public void b(C13823b file) {
                    if (file == null || file.f().isEmpty()) {
                        a.this.f7578V.b("");
                    } else {
                        a.this.f7578V.b(file.f());
                    }
                    a.this.z();
                    a.this.F();
                }
            }

            public C0139a() {
            }

            @Override
            public void onSelected(View v10) {
                Yc.c.a(".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm", new C0140a());
            }
        }

        public class b implements dd.d {
            public b() {
            }

            @Override
            public void onSelected(View v10) {
                a.this.f7578V.b("");
                a.this.F();
            }
        }

        public class c implements dd.d {
            public c() {
            }

            @Override
            public void onSelected(View v10) {
                a.this.f7578V.b("");
                a.this.F();
            }
        }

        public class d implements dd.d {

            public class RunnableC0141a implements Runnable {

                public class C0142a implements Runnable {
                    public C0142a() {
                    }

                    @Override
                    public void run() {
                        a.this.f7578V.a();
                    }
                }

                public RunnableC0141a() {
                }

                @Override
                public void run() {
                    O1 k10 = a.this.f7578V.k(a.this.f7585c0);
                    k10.f28151b = new NoiseData();
                    k10.f28152c = true;
                    k10.f28150a = true;
                    a.this.f7578V.g();
                    N7.c.j0(new C0142a());
                }
            }

            public d() {
            }

            @Override
            public void onSelected(View v10) {
                K8.a.I(new RunnableC0141a());
            }
        }

        public class e implements dd.d {

            public class C0143a implements b8.g {

                public class C0144a implements f.c {
                    public C0144a() {
                    }

                    @Override
                    public void onCancel() {
                    }

                    @Override
                    public void onError(String error) {
                        N7.c.v0("failed to import image:" + error);
                    }

                    @Override
                    public void onSuccess(String fileName, File imageFile) {
                        String str = "/Files/Textures/" + fileName;
                        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(a.this.f7584b0) + str);
                        C16152a.b(imageFile, file);
                        imageFile.delete();
                        try {
                            Vc.e.F(a.this.f7581Y, file);
                            a.this.f7578V.b(str);
                            a.this.z();
                            N7.c.v0("Image (" + fileName + ") copied to Textures folder");
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            N7.c.v0("failed to import image:" + e10.getMessage());
                        }
                    }
                }

                public C0143a() {
                }

                @Override
                public void a(Activity act) {
                    w3.f.e(new C0144a());
                }

                @Override
                public void b(Activity act) {
                }
            }

            public e() {
            }

            @Override
            public void onSelected(View v10) {
                Activity activity;
                try {
                    activity = N7.c.o();
                } catch (Exception unused) {
                    activity = null;
                }
                if (activity == null || a.this.f7584b0 == null) {
                    Toast.makeText(activity, Lang.l(Lang.T.SOMETHING_WENT_WRONG), 0).show();
                } else {
                    W7.b.f27308h.f(activity, new C0143a());
                }
            }
        }

        public class f implements dd.d {
            public f() {
            }

            @Override
            public void onSelected(View v10) {
                String str = a.this.f7578V.get();
                if (str == null || str.isEmpty()) {
                    N7.c.v0("No texture attached!");
                } else {
                    N7.c.D().B0(new w5.k(a.this.f7578V.get()));
                }
            }
        }

        public class C0145g implements dd.d {
            public C0145g() {
            }

            @Override
            public void onSelected(View v10) {
                String str = a.this.f7578V.get();
                if (str == null || str.isEmpty()) {
                    N7.c.v0("No texture attached!");
                } else {
                    P6.c.c2(str);
                }
            }
        }

        public class h implements dd.d {
            public h() {
            }

            @Override
            public void onSelected(View v10) {
                String str = a.this.f7578V.get();
                if (str == null || str.isEmpty()) {
                    N7.c.v0("No texture attached!");
                    return;
                }
                try {
                    com.bumptech.glide.b.D(a.this.f7584b0).o(com.itsmagic.engine.Core.Components.ProjectController.a.S(a.this.f7584b0) + "/").h1(a.this.f7581Y);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                a.this.z();
                a.this.f7578V.b("");
                a.this.F();
            }
        }

        public g() {
            add(new C12908b("Use texture", new C0139a()));
            if (a.this.f7578V.d()) {
                add(new C12908b("Use color", new b()));
            } else {
                add(new C12908b("Use color", false));
            }
            if (a.this.f7578V.e()) {
                add(new C12908b("Use number", new c()));
            } else {
                add(new C12908b("Use number", false));
            }
            if (a.this.f7586d0) {
                add(new C12908b("Use noise", new d()));
            } else {
                add(new C12908b("Use noise", false));
            }
            add(new C12908b());
            add(new C12908b("Import texture", new e()));
            String str = a.this.f7578V.get();
            if (str == null || str.isEmpty()) {
                add(new C12908b("Show texture in files", false));
                add(new C12908b("Open texture settings", false));
                add(new C12908b("Remove texture", false));
            } else {
                add(new C12908b("Show texture in files", new f()));
                add(new C12908b("Open texture settings", new C0145g()));
                add(new C12908b("Remove texture", new h()));
            }
        }
    }

    public class h implements b.z {

        public final O1 f7612a;

        public h(final O1 val$ref) {
            this.f7612a = val$ref;
        }

        @Override
        public void a() {
            a.this.E();
        }

        @Override
        public void b() {
            this.f7612a.f28152c = true;
            a.this.f7578V.g();
        }
    }

    public class i implements n {
        public i() {
        }

        @Override
        public void refresh(int position) {
            a.this.E();
        }
    }

    public static abstract class j implements k {
        @Override
        public void a() {
        }

        @Override
        public void b(String file) {
        }

        @Override
        public void c(ColorINT color) {
        }

        @Override
        public void f(float v10) {
        }

        @Override
        public String get() {
            return "";
        }

        @Override
        public float getFloatValue() {
            return 0.0f;
        }

        @Override
        public Texture getInstance() {
            return null;
        }

        @Override
        public ColorINT j() {
            return null;
        }

        @Override
        public O1 k(String fieldName) {
            return null;
        }
    }

    public interface k {
        void a();

        void b(String file);

        void c(ColorINT color);

        default boolean d() {
            return false;
        }

        default boolean e() {
            return false;
        }

        void f(float v10);

        default void g() {
        }

        String get();

        float getFloatValue();

        Texture getInstance();

        default boolean h() {
            return false;
        }

        default List<C5.b> i(LinearLayout parent, a advancedTextureEntry) {
            return new SteppedArrayList();
        }

        ColorINT j();

        O1 k(String fieldName);

        default List<C12908b> l(a advancedTextureEntry) {
            return new SteppedArrayList();
        }
    }

    public a(String name, k teListener) {
        super((D5.e) null, R.layout.inspector_component_advtexture, (Object) null);
        this.f7575S = 0;
        this.f7576T = 1;
        this.f7577U = 2;
        this.f7583a0 = false;
        this.f7586d0 = false;
        this.f7587e0 = 0;
        this.f2072g = this;
        this.f7578V = teListener;
        this.f7584b0 = N7.c.t();
        this.f7585c0 = name;
    }

    public final a A() {
        this.f7586d0 = true;
        return this;
    }

    public final a B(ViewGroup parent) {
        View inflate = N7.c.B().inflate(R.layout.inspector_component_advtexture, (ViewGroup) null);
        parent.addView(inflate);
        onCreate(inflate, this.f7584b0, this);
        return this;
    }

    public final void C(List<C5.b> entries) {
        entries.add(new C5.b(new C0137a(), R.layout.inspector_component_advtexture, (Object) null));
    }

    public final boolean D() {
        return this.f7583a0;
    }

    public void E() {
        O1 k10;
        NoiseData noiseData;
        if (this.f7583a0) {
            Vc.e.V(this.f7580X, R.drawable.tree_list_open_v4, this.f7584b0);
            this.f7580X.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.HIGH_ICON_TINT)));
        } else {
            Vc.e.V(this.f7580X, R.drawable.tree_list_closed_v3_inverse, this.f7584b0);
            this.f7580X.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.MID_ICON_TINT)));
        }
        this.f7579W.removeAllViews();
        if (!this.f7583a0) {
            this.f7579W.setVisibility(8);
            return;
        }
        this.f7579W.setVisibility(0);
        List<C5.b> i10 = this.f7578V.i(this.f7579W, this);
        if (this.f7586d0 && (noiseData = (k10 = this.f7578V.k(this.f7585c0)).f28151b) != null) {
            C5.b bVar = new C5.b(new C5.a(Lang.l(Lang.T.NOISE), true, noiseData.inspectorEditor));
            bVar.f2064Q.f2043p = Theme.i(Theme.T.PANEL_TOPBAR);
            bVar.f2064Q.f2042o.addAll(P6.b.f(noiseData, new h(k10)));
            i10.add(0, bVar);
        }
        H(i10, this.f7579W);
    }

    public final void F() {
        Texture kVar = this.f7578V.getInstance();
        if (kVar != null) {
            this.f7582Z.setVisibility(8);
            this.f7581Y.setVisibility(0);
            p pVar = kVar.instance;
            String file = pVar instanceof ub.g ? ((ub.g) pVar).getFile() : "";
            if (C2633l.b(file, ".ivo")) {
                Vc.e.U(this.f7581Y, R.drawable.video_output);
            } else {
                String str = Tc.b.O(file) + ".texture";
                if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f7584b0) + "/" + str).exists()) {
                    Vc.e.S(this.f7581Y, com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f7584b0) + "/" + str, this.f7584b0, R.drawable.empty_image, com.bumptech.glide.load.engine.i.f59186b);
                } else {
                    Vc.e.S(this.f7581Y, com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f7584b0) + "/" + file, this.f7584b0, R.drawable.empty_image, com.bumptech.glide.load.engine.i.f59186b);
                }
            }
            this.f7581Y.setBackgroundColor(Theme.i(Theme.T.BACKGROUND));
            this.f7587e0 = this.f7575S;
        } else if (this.f7578V.d() && this.f7578V.j() != null) {
            this.f7582Z.setVisibility(8);
            this.f7581Y.setVisibility(0);
            this.f7581Y.setImageDrawable(null);
            this.f7581Y.setBackgroundColor(this.f7578V.j().intColor);
            this.f7587e0 = this.f7576T;
        } else if (this.f7578V.e()) {
            this.f7581Y.setVisibility(8);
            this.f7582Z.setVisibility(0);
            this.f7587e0 = this.f7577U;
        } else {
            this.f7582Z.setVisibility(8);
            this.f7581Y.setVisibility(0);
        }
        if (this.f7587e0 != this.f7575S || kVar == null) {
            this.f7580X.setVisibility(4);
            this.f7580X.setClickable(false);
        } else {
            this.f7580X.setVisibility(0);
            this.f7580X.setClickable(true);
        }
    }

    public final void G(boolean open) {
        this.f7583a0 = open;
        if (this.f7580X != null) {
            E();
        }
    }

    public final void H(List<C5.b> entries, LinearLayout content) {
        content.removeAllViews();
        for (C5.b bVar : entries) {
            b.a aVar = bVar.f2079n;
            if (aVar == b.a.Vector) {
                C5.h.y(content, N7.c.B(), bVar, 0, N7.c.t());
            } else if (aVar == b.a.Component) {
                C5.h.w(content, N7.c.B(), bVar, 0, N7.c.t(), new i());
            } else {
                C5.h.x(content, N7.c.B(), bVar, 0, true, N7.c.t());
            }
        }
    }

    public final void I(View view) {
        g gVar = new g();
        gVar.addAll(this.f7578V.l(this));
        Y6.a.F1(view, C15147a.e.Below, gVar);
    }

    @Override
    public final void onCreate(View v10, Context context, C5.b unused) {
        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.b(v10, context);
        this.f7579W = (LinearLayout) v10.findViewById(R.id.entries);
        ((TextView) v10.findViewById(R.id.tittle)).setText(this.f7585c0);
        ImageView imageView = (ImageView) v10.findViewById(R.id.open);
        this.f7580X = imageView;
        imageView.setOnClickListener(new b());
        v10.findViewById(R.id.option).setOnClickListener(new c());
        this.f7581Y = (ImageView) v10.findViewById(R.id.colorImage);
        SeekBar seekBar = (SeekBar) v10.findViewById(R.id.seekBar);
        this.f7582Z = seekBar;
        seekBar.setRadiusBottomRight(Nc.b.k0(4.0f));
        this.f7582Z.setRadiusTopRight(Nc.b.k0(4.0f));
        this.f7582Z.setValue(this.f7578V.getFloatValue());
        this.f7582Z.setOnValueChangeListener(new d());
        F();
        this.f7581Y.setOnClickListener(new e(v10, context));
        this.f7581Y.setOnLongClickListener(new f());
        E();
    }

    public final void z() {
        if (this.f7586d0) {
            this.f7578V.k(this.f7585c0).f28151b = null;
            this.f7578V.k(this.f7585c0).f28150a = false;
            this.f7578V.g();
        }
    }
}
