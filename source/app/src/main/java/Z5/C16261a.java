package z5;

import android.media.MediaPlayer;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.VideoView;
import c8.b;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.ExportProject.Utils.BuildConfigs;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.a;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Engine.World.a;
import com.itsmagic.engine2.R;
import java.util.concurrent.atomic.AtomicBoolean;
import q7.C15045a;
import rc.C15169a;

public class C16261a extends EditorPanel {

    public static final String f130671k0 = "GameView";

    public static final Class f130672l0 = C16261a.class;

    public static InterfaceC16267g f130673m0;

    public static final o4.f f130674n0;

    public static final InterfaceC16267g f130675o0;

    public InterfaceC16267g f130676X;

    public final b.f f130677Y;

    public boolean f130678Z;

    public float f130679a0;

    public boolean f130680b0;

    public VideoView f130681c0;

    public View f130682d0;

    public final AtomicBoolean f130683e0;

    public boolean f130684f0;

    public o4.f f130685g0;

    public final a.i f130686h0;

    public final GameObject.d f130687i0;

    public final World.d f130688j0;

    public class C2242a extends EditorPanel.j {
        @Override
        public Class b() {
            return C16261a.f130672l0;
        }

        @Override
        public String c() {
            return C16261a.f130671k0;
        }
    }

    public class b implements InterfaceC16267g {
        @Override
        public o4.f a() {
            return C16261a.f130674n0;
        }

        @Override
        public boolean isVisible() {
            return false;
        }
    }

    public class c implements b.f {

        public class RunnableC2243a implements Runnable {
            public RunnableC2243a() {
            }

            @Override
            public void run() {
                final C16261a c16261a = C16261a.this;
                N7.c.j0(new Runnable() {
                    @Override
                    public final void run() {
                        C16261a.this.S0();
                    }
                });
                if (EditorSettings.a().maximizeGameViewWhenPlay) {
                    final C16261a c16261a2 = C16261a.this;
                    N7.c.j0(new Runnable() {
                        @Override
                        public final void run() {
                            C16261a.this.y0();
                        }
                    });
                }
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                if (EditorSettings.a().maximizeGameViewWhenPlay) {
                    final C16261a c16261a = C16261a.this;
                    N7.c.j0(new Runnable() {
                        @Override
                        public final void run() {
                            C16261a.this.z0();
                        }
                    });
                }
            }
        }

        public c() {
        }

        @Override
        public void a() {
            N7.c.d(new RunnableC2243a());
        }

        @Override
        public void b() {
            N7.c.d(new b());
        }
    }

    public class d implements InterfaceC16267g {
        public d() {
        }

        @Override
        public o4.f a() {
            return C16261a.this.O();
        }

        @Override
        public boolean isVisible() {
            return C16261a.this.w0();
        }
    }

    public class e implements Runnable {

        public final C15045a f130693b;

        public class RunnableC2244a implements Runnable {

            public class C2245a implements MediaPlayer.OnCompletionListener {
                public C2245a() {
                }

                @Override
                public void onCompletion(MediaPlayer mp) {
                    final C16261a c16261a = C16261a.this;
                    c16261a.U0(new Runnable() {
                        @Override
                        public final void run() {
                            C16261a.r1(C16261a.this);
                        }
                    });
                }
            }

            public class b implements MediaPlayer.OnErrorListener {
                public b() {
                }

                @Override
                public boolean onError(MediaPlayer mp, int what, int extra) {
                    final C16261a c16261a = C16261a.this;
                    c16261a.U0(new Runnable() {
                        @Override
                        public final void run() {
                            C16261a.r1(C16261a.this);
                        }
                    });
                    return true;
                }
            }

            public RunnableC2244a() {
            }

            @Override
            public void run() {
                e.this.f130693b.p1();
                try {
                    C16261a.this.f130683e0.set(true);
                    C16261a.this.f130682d0.setVisibility(0);
                    C16261a.this.f130681c0.setOnCompletionListener(new C2245a());
                    C16261a.this.f130681c0.setOnErrorListener(new b());
                    C16261a.this.f130681c0.setVideoURI(Uri.parse("android.resource://" + N7.c.C() + "/" + R.raw.intro));
                    C16261a.this.f130681c0.start();
                } catch (Error | Exception e10) {
                    e10.printStackTrace();
                    C16261a.this.x1();
                }
            }
        }

        public e(final C15045a val$loading) {
            this.f130693b = val$loading;
        }

        @Override
        public void run() {
            com.itsmagic.engine.Core.Components.ProjectController.a.q0();
            C16261a.this.U0(new RunnableC2244a());
        }
    }

    public class f implements a.k {

        public class RunnableC2246a implements Runnable {
            public RunnableC2246a() {
            }

            @Override
            public void run() {
                c8.b.t(C16261a.this.A());
                C16261a.this.f130682d0.setVisibility(8);
                C16261a.this.S0();
            }
        }

        public class b implements a.k {
            public b() {
            }

            @Override
            public World onFailed() {
                return null;
            }

            @Override
            public void onSuccess() {
            }
        }

        public f() {
        }

        @Override
        public World onFailed() {
            N7.c.v0("Failed to load apk first world.");
            C16261a.this.f130682d0.setVisibility(8);
            c8.b.f34440i.set(false);
            com.itsmagic.engine.Engines.Engine.World.a.H(c8.b.f34439h, true, new b());
            return null;
        }

        @Override
        public void onSuccess() {
            N7.c.j0(new RunnableC2246a());
        }
    }

    public class g implements a.i {
        public g() {
        }

        @Override
        public boolean a(GameObject gameObject, Component component, int index) {
            if (!(component instanceof Camera)) {
                return false;
            }
            ((Camera) component).f73132Z = C16261a.this.f130684f0;
            return false;
        }
    }

    public class h implements GameObject.d {
        public h() {
        }

        @Override
        public void a(GameObject gameObject, GameObject child, int index) {
            C16261a.this.w1(child);
        }
    }

    public class i implements World.d {
        public i() {
        }

        @Override
        public void a(GameObject object, int index) {
            C16261a.this.w1(object);
        }
    }

    static {
        EditorPanel.a(new C2242a());
        f130674n0 = new o4.f();
        f130675o0 = new b();
    }

    public C16261a(K8.a engine) {
        super(engine);
        this.f130677Y = new c();
        this.f130679a0 = 0.0f;
        this.f130683e0 = new AtomicBoolean();
        this.f130686h0 = new g();
        this.f130687i0 = new h();
        this.f130688j0 = new i();
    }

    public static void r1(C16261a c16261a) {
        c16261a.x1();
    }

    @Override
    public void A0(o4.b engineUpdateData) {
        y1(false);
        i1(false);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.game_view, (ViewGroup) null);
        this.f130682d0 = inflate;
        this.f130681c0 = (VideoView) inflate.findViewById(R.id.videoView);
        this.f130682d0.setVisibility(8);
        f130673m0 = this.f130676X;
        c8.b.g(this.f130677Y);
        return inflate;
    }

    @Override
    public void G0() {
        if (f130673m0 == this.f130676X) {
            f130673m0 = f130675o0;
            y1(false);
        }
        c8.b.r(this.f130677Y);
    }

    @Override
    public void L0() {
        super.L0();
        if (this.f130683e0.get()) {
            N7.c.P("Entered APK testing mode, press back twice to exit");
            this.f130681c0.start();
        }
    }

    @Override
    public boolean f() {
        return false;
    }

    @Override
    public EditorPanel k() {
        return new C16261a();
    }

    @Override
    public void m1() {
        super.m1();
        AtomicBoolean atomicBoolean = c8.b.f34441j;
        if (atomicBoolean.get()) {
            v1();
            atomicBoolean.set(false);
            c8.b.f34440i.set(true);
        } else {
            if (c8.b.f34440i.get()) {
                return;
            }
            this.f130682d0.setVisibility(8);
        }
    }

    public final void v1() {
        new Thread(new e(C15045a.r1())).start();
    }

    public final void w1(GameObject object) {
        object.f79296m.f(this.f130685g0);
        object.x0(this.f130686h0);
        object.w0(this.f130687i0);
    }

    public final void x1() {
        String str;
        this.f130683e0.set(false);
        BuildConfigs c10 = BuildConfigs.c(N7.c.t());
        if (c10 != null && (str = c10.worldZero) != null && !str.trim().isEmpty()) {
            com.itsmagic.engine.Engines.Engine.World.a.H(c10.worldZero, true, new f());
            return;
        }
        N7.c.v0("Please configure the world at APK exporter.");
        c8.b.f34440i.set(false);
        c8.b.f34441j.set(false);
        this.f130682d0.setVisibility(8);
    }

    public final void y1(boolean isVisible) {
        if (com.itsmagic.engine.Engines.Engine.World.a.f80030c != null) {
            this.f130685g0 = super.O();
            this.f130684f0 = isVisible;
            com.itsmagic.engine.Engines.Engine.World.a.f80030c.l(this.f130688j0);
        }
    }

    @Override
    public void z(o4.b engineUpdateData) {
        y1(w0() && !this.f70922x.g());
        if (!c8.b.f34440i.get()) {
            if (this.f130678Z) {
                this.f130678Z = false;
                N7.c.f0(this);
                N7.c.D().H0();
                return;
            }
            return;
        }
        if (!this.f130678Z) {
            this.f130678Z = true;
            N7.c.a(this);
            N7.c.D().e0(this);
        }
        if (C15169a.j("android_back").f()) {
            System.out.println("BACK " + this.f130680b0 + " | " + this.f130679a0);
            if (!this.f130680b0) {
                this.f130680b0 = true;
                this.f130679a0 = 0.0f;
            } else if (this.f130679a0 <= 1.0f) {
                c8.b.u(M());
                N7.c.f0(this);
                N7.c.D().H0();
                this.f130678Z = false;
            } else {
                this.f130679a0 = 0.0f;
                this.f130680b0 = false;
            }
        }
        if (this.f130680b0) {
            this.f130679a0 += K8.d.d();
        }
    }

    public C16261a() {
        super(null, Lang.l(Lang.T.GAME), f130671k0);
        this.f130677Y = new c();
        this.f130679a0 = 0.0f;
        this.f130683e0 = new AtomicBoolean();
        this.f130686h0 = new g();
        this.f130687i0 = new h();
        this.f130688j0 = new i();
        super.a1(false);
        this.f130676X = new d();
    }
}
