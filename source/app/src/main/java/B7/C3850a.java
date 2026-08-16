package b7;

import C5.b;
import C5.n;
import U.h;
import Vc.e;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import r4.C15147a;

public class C3850a extends EditorPanel {

    public final String f32982X;

    public B9.b f32983Y;

    public LinearLayout f32984Z;

    public final AtomicBoolean f32985a0;

    public View f32986b0;

    public List<C5.b> f32987c0;

    public final AtomicBoolean f32988d0;

    public View f32989e0;

    public View f32990f0;

    public class C0883a extends AbstractViewOnClickListenerC12733a {
        public C0883a() {
        }

        @Override
        public void click(View view) {
            C3850a.this.x1();
            C3850a.this.R0();
        }
    }

    public class b implements B5.b {
        public b() {
        }

        @Override
        public void a(List<C5.b> entries) {
            C3850a.this.A1();
        }
    }

    public class c implements n {

        public final B5.b f32993a;

        public final List f32994b;

        public final LinearLayout f32995c;

        public c(final B5.b val$entriesListener, final List val$entries, final LinearLayout val$content) {
            this.f32993a = val$entriesListener;
            this.f32994b = val$entries;
            this.f32995c = val$content;
        }

        @Override
        public void refresh(int position) {
            B5.b bVar = this.f32993a;
            if (bVar != null) {
                bVar.a(this.f32994b);
            } else {
                C3850a.this.z1(this.f32994b, this.f32995c, true, bVar);
            }
        }
    }

    public C3850a(String inProjectFile) {
        super(null, Tc.b.v(inProjectFile));
        this.f32985a0 = new AtomicBoolean();
        this.f32987c0 = null;
        this.f32988d0 = new AtomicBoolean();
        super.e1(false);
        this.f32982X = inProjectFile;
    }

    public void A1() {
        if (this.f32987c0 == null) {
            this.f32987c0 = new LinkedList();
        }
        z1(this.f32987c0, this.f32984Z, true, new b());
    }

    private void B1() {
    }

    private void r1(View view) {
        synchronized (this.f32988d0) {
            this.f32989e0 = view;
            this.f32988d0.set(true);
        }
    }

    private void s1(View view) {
    }

    private void t1() {
        View view = this.f32986b0;
        ((TextView) view.findViewById(R.id.textureName)).setText(Tc.b.v(this.f32982X));
        B1();
        this.f32984Z = (LinearLayout) view.findViewById(R.id.scrollContent);
        A1();
        View findViewById = view.findViewById(R.id.done);
        this.f32990f0 = findViewById;
        findViewById.setOnClickListener(new C0883a());
    }

    private void u1(String org2, String active) {
        new h().y().u(R.drawable.wo_uimage);
        View findViewById = this.f32986b0.findViewById(R.id.original);
        ((TextView) findViewById.findViewById(R.id.resolution)).setText(org2);
        ImageView imageView = (ImageView) findViewById.findViewById(R.id.img);
        new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()) + "/" + this.f32982X);
        e.U(imageView, R.drawable.video_file);
    }

    private void v1() {
        try {
            this.f32983Y = (B9.b) X7.a.m().fromJson(X7.a.s(this.f32982X + ".config", M()), B9.b.class);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.f32983Y == null) {
            this.f32983Y = new B9.b();
        }
    }

    private void w1() {
        this.f32987c0 = null;
        A1();
    }

    public void x1() {
        X7.a.b(this.f32982X + ".config", X7.a.m().toJson(this.f32983Y), M());
    }

    public static FloatingPanelArea y1(View anchor, C15147a.e anchorSide, String inProjectFile) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        if (inProjectFile == null || inProjectFile.isEmpty()) {
            throw new NullPointerException("listener can't be null");
        }
        N7.c.t();
        return C15147a.g(anchor, new C3850a(inProjectFile), anchorSide, N7.c.g(400), N7.c.f(300));
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.video_editor_panel, (ViewGroup) null);
        this.f32986b0 = inflate;
        v1();
        if (this.f32983Y != null) {
            t1();
        } else {
            N7.c.v0("Invalid texture");
            R0();
        }
        return inflate;
    }

    @Override
    public void m1() {
        boolean z10;
        super.m1();
        synchronized (this.f32988d0) {
            try {
                z10 = false;
                if (this.f32988d0.get() && !this.f32985a0.get()) {
                    this.f32988d0.set(false);
                    z10 = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            s1(this.f32989e0);
        }
    }

    public void z1(List<C5.b> entries, LinearLayout content, boolean clearViews, B5.b entriesListener) {
        if (clearViews) {
            content.removeAllViews();
        }
        for (C5.b bVar : entries) {
            b.a aVar = bVar.f2079n;
            if (aVar == b.a.Vector) {
                C5.h.y(content, this.f70908j, bVar, 0, M());
            } else if (aVar == b.a.Component) {
                C5.h.w(content, this.f70908j, bVar, 0, M(), new c(entriesListener, entries, content));
            } else {
                C5.h.x(content, this.f70908j, bVar, 0, true, M());
            }
        }
    }
}
