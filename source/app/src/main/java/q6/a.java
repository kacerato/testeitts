package Q6;

import C5.b;
import C5.h;
import U9.C3117f;
import U9.InterfaceC3114c;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.ImGUI.Styles.UIStyle;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import q7.C15045a;
import r4.C15147a;
import ub.n;

public class a extends EditorPanel {

    public final String f21949X;

    public UIStyle f21950Y;

    public LinearLayout f21951Z;

    public final AtomicBoolean f21952a0;

    public View f21953b0;

    public List<C5.b> f21954c0;

    public final AtomicBoolean f21955d0;

    public View f21956e0;

    public View f21957f0;

    public ImageView f21958g0;

    public n f21959h0;

    public Bitmap f21960i0;

    public int[] f21961j0;

    public class C0530a extends AbstractViewOnClickListenerC12733a {
        public C0530a() {
        }

        @Override
        public void click(View view) {
            a.this.H1();
            a.this.C1(view);
            a.this.R0();
            com.itsmagic.engine.Engines.Engine.World.a.i(new C3117f(a.this.f21949X));
        }
    }

    public class b implements Runnable {

        public final C15045a f21963b;

        public class C0531a implements InterfaceC3114c {
            public C0531a() {
            }

            @Override
            public float a(float px) {
                return Nc.b.w0(px * 3.5f);
            }
        }

        public class RunnableC0532b implements Runnable {

            public final int f21966b;

            public final int f21967c;

            public RunnableC0532b(final int val$w, final int val$h) {
                this.f21966b = val$w;
                this.f21967c = val$h;
            }

            @Override
            public void run() {
                if (a.this.f21960i0 == null || a.this.f21960i0.getWidth() != this.f21966b || a.this.f21960i0.getHeight() != this.f21967c) {
                    a.this.f21960i0 = Bitmap.createBitmap(this.f21966b, this.f21967c, Bitmap.Config.ARGB_8888);
                }
                Bitmap bitmap = a.this.f21960i0;
                int[] iArr = a.this.f21961j0;
                int i10 = this.f21966b;
                bitmap.setPixels(iArr, 0, i10, 0, 0, i10, this.f21967c);
                a.this.f21958g0.setImageBitmap(a.this.f21960i0);
                a.this.f21958g0.invalidate();
            }
        }

        public b(final C15045a val$loading) {
            this.f21963b = val$loading;
        }

        @Override
        public void run() {
            try {
                try {
                    if (a.this.f21959h0 == null) {
                        TextureConfig textureConfig = new TextureConfig();
                        textureConfig.allowModifications = true;
                        textureConfig.genMipmaps = false;
                        a.this.f21959h0 = new n(256, 256, textureConfig);
                    }
                    a.this.f21950Y.x0(a.this.f21959h0, new C0531a());
                    a.this.f21961j0 = new int[65536];
                    int i10 = 0;
                    for (int i11 = 0; i11 < 256; i11++) {
                        int i12 = 0;
                        while (i12 < 256) {
                            a.this.f21961j0[i10] = a.this.f21959h0.i(i12, i11).intColor;
                            i12++;
                            i10++;
                        }
                    }
                    N7.c.j0(new RunnableC0532b(256, 256));
                } catch (Exception e10) {
                    e10.printStackTrace();
                    N7.c.v0("Failed to prepare texture:" + e10.getMessage());
                }
                this.f21963b.p1();
                a.this.f21952a0.set(false);
            } catch (Throwable th2) {
                this.f21963b.p1();
                a.this.f21952a0.set(false);
                throw th2;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            a.this.C1(null);
        }
    }

    public class d implements B5.b {
        public d() {
        }

        @Override
        public void a(List<C5.b> entries) {
            a.this.L1();
        }
    }

    public class e implements C5.n {

        public final B5.b f21971a;

        public final List f21972b;

        public final LinearLayout f21973c;

        public e(final B5.b val$entriesListener, final List val$entries, final LinearLayout val$content) {
            this.f21971a = val$entriesListener;
            this.f21972b = val$entries;
            this.f21973c = val$content;
        }

        @Override
        public void refresh(int position) {
            B5.b bVar = this.f21971a;
            if (bVar != null) {
                bVar.a(this.f21972b);
            } else {
                a.this.K1(this.f21972b, this.f21973c, true, bVar);
            }
        }
    }

    public a(String inProjectFile) {
        super(null, Tc.b.v(inProjectFile));
        this.f21952a0 = new AtomicBoolean();
        this.f21954c0 = null;
        this.f21955d0 = new AtomicBoolean();
        super.e1(false);
        this.f21949X = inProjectFile;
    }

    public void C1(View view) {
        synchronized (this.f21955d0) {
            this.f21956e0 = view;
            this.f21955d0.set(true);
        }
    }

    private void D1(View view) {
        if (this.f21952a0.compareAndSet(false, true)) {
            N7.c.o();
            if (view == null) {
                view = this.f21957f0;
            }
            new Thread(new b(C15045a.t1(view, C15147a.e.Left))).start();
        }
    }

    private void E1() {
        View view = this.f21953b0;
        this.f21958g0 = (ImageView) view.findViewById(R.id.img);
        ((TextView) view.findViewById(R.id.textureName)).setText(Tc.b.v(this.f21949X));
        this.f21951Z = (LinearLayout) view.findViewById(R.id.scrollContent);
        L1();
        View findViewById = view.findViewById(R.id.done);
        this.f21957f0 = findViewById;
        findViewById.setOnClickListener(new C0530a());
    }

    private void F1() {
        try {
            this.f21950Y = UIStyle.O(X7.a.x(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + this.f21949X)));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.f21950Y == null) {
            this.f21950Y = new UIStyle();
        }
        this.f21950Y.Y0(new c());
    }

    private void G1() {
        this.f21954c0 = null;
        L1();
    }

    public void H1() {
        X7.a.a(this.f21949X, this.f21950Y.E0());
    }

    public static FloatingPanelArea I1(View anchor, C15147a.e anchorSide, String inProjectFile) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        if (inProjectFile == null || inProjectFile.isEmpty()) {
            throw new NullPointerException("listener can't be null");
        }
        N7.c.t();
        return C15147a.g(anchor, new a(inProjectFile), anchorSide, N7.c.g(370), N7.c.f(300));
    }

    public static FloatingPanelArea J1(String inProjectFile) {
        if (inProjectFile == null || inProjectFile.isEmpty()) {
            throw new NullPointerException("listener can't be null");
        }
        N7.c.t();
        return C15147a.m(new a(inProjectFile), N7.c.g(370), N7.c.f(300));
    }

    public void L1() {
        if (this.f21954c0 == null) {
            LinkedList linkedList = new LinkedList();
            this.f21954c0 = linkedList;
            linkedList.addAll(this.f21950Y.h0(M()));
        }
        K1(this.f21954c0, this.f21951Z, true, new d());
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.uistyle_editor_panel, (ViewGroup) null);
        this.f21953b0 = inflate;
        F1();
        if (this.f21950Y != null) {
            E1();
            this.f21955d0.set(true);
        } else {
            N7.c.v0("Invalid file");
            R0();
        }
        return inflate;
    }

    public void K1(List<C5.b> entries, LinearLayout content, boolean clearViews, B5.b entriesListener) {
        if (clearViews) {
            content.removeAllViews();
        }
        for (C5.b bVar : entries) {
            b.a aVar = bVar.f2079n;
            if (aVar == b.a.Vector) {
                h.y(content, this.f70908j, bVar, 0, M());
            } else if (aVar == b.a.Component) {
                h.w(content, this.f70908j, bVar, 0, M(), new e(entriesListener, entries, content));
            } else {
                h.x(content, this.f70908j, bVar, 0, true, M());
            }
        }
    }

    @Override
    public EditorPanel k() {
        return new a(this.f21949X);
    }

    @Override
    public void m1() {
        boolean z10;
        super.m1();
        synchronized (this.f21955d0) {
            try {
                z10 = false;
                if (this.f21955d0.get() && !this.f21952a0.get()) {
                    this.f21955d0.set(false);
                    z10 = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            D1(this.f21956e0);
        }
    }
}
