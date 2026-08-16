package E7;

import com.google.android.filament.IndirectLight;
import com.google.android.filament.LightManager;
import com.google.android.filament.Skybox;
import com.google.android.filament.View;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentIndirectLight;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentLight;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentSkybox;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import java.util.function.Consumer;

public class b {

    public e f5701a;

    public FilamentSkybox f5702b;

    public FilamentIndirectLight f5703c;

    public boolean f5704d;

    public boolean f5705e;

    public class a implements Consumer<GameObject> {
        public a() {
        }

        @Override
        public void accept(GameObject gameObject) {
            for (int i10 = 0; i10 < gameObject.D(); i10++) {
                accept(gameObject.C(i10));
            }
            for (int i11 = 0; i11 < gameObject.N(); i11++) {
                gameObject.L(i11).setOverrideScene(b.this.f5701a.f5711b);
            }
        }
    }

    public b() {
        e eVar = new e();
        this.f5701a = eVar;
        this.f5704d = false;
        this.f5705e = false;
        eVar.f5711b = new FilamentScene();
        FilamentSkybox filamentSkybox = new FilamentSkybox(new Skybox.a().b(0.0f, 0.0f, 0.0f, 0.0f));
        this.f5702b = filamentSkybox;
        this.f5701a.f5711b.v(filamentSkybox);
        FilamentIndirectLight filamentIndirectLight = new FilamentIndirectLight(new IndirectLight.a().c(1, new ColorINT("#ff9d9d9d").d0()).b(25000.0f), null);
        this.f5703c = filamentIndirectLight;
        this.f5701a.f5711b.u(filamentIndirectLight);
        this.f5701a.f5710a = new FilamentView();
        e eVar2 = this.f5701a;
        eVar2.f5710a.C(eVar2.f5711b);
        this.f5701a.f5710a.z(false);
        this.f5701a.f5710a.w(View.d.OPAQUE);
        this.f5701a.f5710a.D(0, 0, 512, 512);
        this.f5701a.f5712c = new FilamentCamera();
        e eVar3 = this.f5701a;
        eVar3.f5710a.x(eVar3.f5712c);
        e eVar4 = this.f5701a;
        eVar4.f5711b.j(eVar4.f5712c.f());
        this.f5701a.f5714e = new Tb.a(512, 512);
        this.f5701a.f5713d = new FilamentLight(new LightManager.a(LightManager.d.SUN).e(0.0f, -1.0f, 0.0f).g(100000.0f).d(1.0f, 1.0f, 1.0f).c(false));
        e eVar5 = this.f5701a;
        eVar5.f5711b.j(eVar5.f5713d.e());
    }

    public void a(GameObject gameObject) {
        new a().accept(gameObject);
    }

    public void b() {
        this.f5701a.f5710a.F();
        this.f5701a.f5710a.x(null);
        this.f5701a.f5710a.C(null);
        this.f5701a.f5711b.v(null);
        this.f5701a.f5711b.u(null);
        e eVar = this.f5701a;
        eVar.f5711b.s(eVar.f5712c.f());
        e eVar2 = this.f5701a;
        eVar2.f5711b.s(eVar2.f5713d.e());
        this.f5701a.f5714e.c();
        this.f5701a.f5713d.destroyImmediate();
        this.f5701a.f5713d.e().destroyImmediate();
        this.f5701a.f5712c.destroyImmediate();
        this.f5701a.f5710a.destroyImmediate();
        this.f5702b.destroyImmediate();
        this.f5703c.destroyImmediate();
        this.f5701a.f5711b.destroyImmediate();
        this.f5701a = null;
        this.f5702b = null;
        this.f5703c = null;
    }

    public void c() {
    }
}
