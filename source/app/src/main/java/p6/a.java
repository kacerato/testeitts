package P6;

import C5.b;
import C5.n;
import P6.b;
import Vc.e;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.load.engine.i;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Texture.Noise.NoiseData;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine2.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import q7.C15045a;
import r4.C15147a;
import ub.j;
import yb.C16165b;

public class a extends EditorPanel {

    public final String f20689X;

    public NoiseData f20690Y;

    public TextureConfig f20691Z;

    public View f20692a0;

    public View f20693b0;

    public LinearLayout f20694c0;

    public List<C5.b> f20695d0;

    public final AtomicBoolean f20696e0;

    public View f20697f0;

    public final AtomicBoolean f20698g0;

    public class C0506a extends AbstractViewOnClickListenerC12733a {
        public C0506a() {
        }

        @Override
        public void click(View view) {
            a.this.F1();
            a.this.R0();
        }
    }

    public class b implements e.k {

        public final ImageView f20700a;

        public b(final ImageView val$im) {
            this.f20700a = val$im;
        }

        @Override
        public void a(Drawable drawable) {
            drawable.setFilterBitmap(a.this.f20691Z.k() != TextureConfig.c.Nearest);
            this.f20700a.setImageDrawable(drawable);
        }
    }

    public class c implements Runnable {

        public class RunnableC0507a implements Runnable {
            public RunnableC0507a() {
            }

            @Override
            public void run() {
                try {
                    a.this.C1(a.this.f20691Z.originalWidth + "x" + a.this.f20691Z.originalHeight, a.this.f20691Z.width + "x" + a.this.f20691Z.height);
                    a.this.F1();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public c() {
        }

        @Override
        public void run() {
            try {
                ub.g u10 = C16165b.u(a.this.f20689X);
                if (u10 != null) {
                    a.this.f20691Z.width = u10.getWidth();
                    a.this.f20691Z.height = u10.getHeight();
                    a.this.f20691Z.originalWidth = u10.getWidth();
                    a.this.f20691Z.originalHeight = u10.getHeight();
                    N7.c.j0(new RunnableC0507a());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class d implements Runnable {

        public final C15045a f20704b;

        public class RunnableC0508a implements Runnable {
            public RunnableC0508a() {
            }

            @Override
            public void run() {
                a.this.K1();
            }
        }

        public d(final C15045a val$loading) {
            this.f20704b = val$loading;
        }

        @Override
        public void run() {
            try {
                try {
                    a.this.F1();
                    a.this.D1();
                    N7.c.j0(new RunnableC0508a());
                } catch (Exception e10) {
                    e10.printStackTrace();
                    N7.c.v0("Failed to prepare noise:" + e10.getMessage());
                }
            } finally {
                this.f20704b.p1();
                a.this.f20698g0.set(false);
            }
        }
    }

    public class e implements e.k {

        public final ImageView f20707a;

        public e(final ImageView val$im) {
            this.f20707a = val$im;
        }

        @Override
        public void a(Drawable drawable) {
            drawable.setFilterBitmap(a.this.f20691Z.k() != TextureConfig.c.Nearest);
            this.f20707a.setImageDrawable(drawable);
        }
    }

    public class f implements b.z {
        public f() {
        }

        @Override
        public void a() {
            a.this.E1();
        }

        @Override
        public void b() {
            a.this.z1(null);
        }
    }

    public class g implements B5.b {
        public g() {
        }

        @Override
        public void a(List<C5.b> entries) {
            a.this.I1();
        }
    }

    public class h implements n {

        public final B5.b f20711a;

        public final List f20712b;

        public final LinearLayout f20713c;

        public h(final B5.b val$entriesListener, final List val$entries, final LinearLayout val$content) {
            this.f20711a = val$entriesListener;
            this.f20712b = val$entries;
            this.f20713c = val$content;
        }

        @Override
        public void refresh(int position) {
            B5.b bVar = this.f20711a;
            if (bVar != null) {
                bVar.a(this.f20712b);
            } else {
                a.this.H1(this.f20712b, this.f20713c, true, bVar);
            }
        }
    }

    public a(String filePath) {
        super(null, "Noise editor");
        this.f20695d0 = null;
        this.f20696e0 = new AtomicBoolean();
        this.f20698g0 = new AtomicBoolean();
        super.e1(false);
        this.f20689X = filePath;
    }

    private void A1(View view) {
        if (this.f20698g0.compareAndSet(false, true)) {
            N7.c.o();
            if (view == null) {
                view = this.f20693b0;
            }
            new Thread(new d(C15045a.t1(view, C15147a.e.Left))).start();
        }
    }

    private void B1() {
        View view = this.f20692a0;
        ((TextView) view.findViewById(R.id.textureName)).setText(Tc.b.v(this.f20689X));
        J1();
        this.f20694c0 = (LinearLayout) view.findViewById(R.id.scrollContent);
        I1();
        View findViewById = view.findViewById(R.id.done);
        this.f20693b0 = findViewById;
        findViewById.setOnClickListener(new C0506a());
    }

    public void C1(String org2, String active) {
        Vc.e.j(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/" + Tc.b.O(this.f20689X) + ".texture").getAbsolutePath(), M(), new U.h().y().u(R.drawable.wo_uimage), i.f59186b, new e((ImageView) this.f20692a0.findViewById(R.id.edited).findViewById(R.id.img)));
    }

    public void E1() {
        this.f20695d0 = null;
        I1();
    }

    public static FloatingPanelArea G1(View anchor, C15147a.e anchorSide, String inProjectFile) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        if (inProjectFile == null || inProjectFile.isEmpty()) {
            throw new NullPointerException("listener can't be null");
        }
        N7.c.t();
        return C15147a.g(anchor, new a(inProjectFile), anchorSide, N7.c.g(300), N7.c.f(T6.a.f24083g0));
    }

    public void I1() {
        if (this.f20695d0 == null) {
            LinkedList linkedList = new LinkedList();
            this.f20695d0 = linkedList;
            linkedList.addAll(P6.b.f(this.f20690Y, new f()));
        }
        H1(this.f20695d0, this.f20694c0, true, new g());
    }

    private void J1() {
        TextureConfig textureConfig = this.f20691Z;
        if (textureConfig.width == 0 || textureConfig.originalWidth == 0) {
            try {
                O9.b.d(new c());
            } catch (Error | Exception e10) {
                e10.printStackTrace();
            }
        }
        if (this.f20691Z.width == 0) {
            C1("", "");
            return;
        }
        C1(this.f20691Z.originalWidth + "x" + this.f20691Z.originalHeight, this.f20691Z.width + "x" + this.f20691Z.height);
    }

    public void K1() {
        Vc.e.j(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/" + Tc.b.O(this.f20689X) + ".texture").getAbsolutePath(), M(), new U.h().y().u(R.drawable.wo_uimage), i.f59186b, new b((ImageView) this.f20692a0.findViewById(R.id.edited).findViewById(R.id.img)));
    }

    public void z1(View view) {
        synchronized (this.f20696e0) {
            this.f20697f0 = view;
            this.f20696e0.set(true);
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.noise_editor_panel, (ViewGroup) null);
        this.f20692a0 = inflate;
        NoiseData noiseData = (NoiseData) X7.a.m().fromJson(X7.a.r(this.f20689X), NoiseData.class);
        this.f20690Y = noiseData;
        if (noiseData == null) {
            this.f20690Y = new NoiseData();
        }
        this.f20691Z = this.f20690Y.textureConfig;
        B1();
        return inflate;
    }

    public final void D1() {
        j jVar = new j(this.f20690Y);
        jVar.U0();
        Bitmap createBitmap = Bitmap.createBitmap(jVar.getWidth(), jVar.getHeight(), Bitmap.Config.ARGB_8888);
        int width = jVar.getWidth();
        int height = jVar.getHeight();
        for (int i10 = 0; i10 < width; i10++) {
            for (int i11 = 0; i11 < height; i11++) {
                createBitmap.setPixel(i10, i11, jVar.i(i10, i11).intColor);
            }
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/" + (Tc.b.O(this.f20689X) + ".texture")));
            try {
                if (this.f20691Z.y()) {
                    createBitmap.compress(Bitmap.CompressFormat.PNG, this.f20691Z.s(), fileOutputStream);
                } else {
                    createBitmap.compress(Bitmap.CompressFormat.JPEG, this.f20691Z.s(), fileOutputStream);
                }
                fileOutputStream.close();
            } finally {
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public final void F1() {
        X7.a.b(this.f20689X, X7.a.m().toJson(this.f20690Y), M());
    }

    public void H1(List<C5.b> entries, LinearLayout content, boolean clearViews, B5.b entriesListener) {
        if (clearViews) {
            content.removeAllViews();
        }
        for (C5.b bVar : entries) {
            b.a aVar = bVar.f2079n;
            if (aVar == b.a.Vector) {
                C5.h.y(content, this.f70908j, bVar, 0, M());
            } else if (aVar == b.a.Component) {
                C5.h.w(content, this.f70908j, bVar, 0, M(), new h(entriesListener, entries, content));
            } else {
                C5.h.x(content, this.f70908j, bVar, 0, true, M());
            }
        }
    }

    @Override
    public EditorPanel k() {
        return new a(this.f20689X);
    }

    @Override
    public void m1() {
        boolean z10;
        super.m1();
        synchronized (this.f20696e0) {
            try {
                z10 = false;
                if (this.f20696e0.get() && !this.f20698g0.get()) {
                    this.f20696e0.set(false);
                    z10 = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            A1(this.f20697f0);
        }
    }
}
