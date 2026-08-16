package Rb;

import com.google.android.filament.EntityManager;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentLight;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;

public class c extends SGCListenerObject {

    public static final M9.c f22694c = new M9.c() {
        @Override
        public final void a(long j10) {
            c.h(j10);
        }
    };

    public int f22695b;

    public c() {
        K8.a.G();
        Qb.a.d();
        int a10 = EntityManager.f().a();
        this.f22695b = a10;
        SGC.put(this, a10, f22694c, false);
    }

    public static void h(long j10) {
        Qb.c.a((int) j10);
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        K8.a.G();
        Qb.a.d();
        if (FilamentScene.k(this)) {
            throw new FilamentContractViolationError("Entity still used by a scene");
        }
        if (FilamentRenderable.isUsed(this)) {
            throw new FilamentContractViolationError("Entity still used by a renderable");
        }
        if (FilamentCamera.h(this)) {
            throw new FilamentContractViolationError("Entity still used by a camera");
        }
        if (FilamentLight.f(this)) {
            throw new FilamentContractViolationError("Entity still used by a light");
        }
        SGC.destroyImmediate(this);
    }

    @Override
    public int destroyPriority() {
        return 40;
    }

    public void f() {
        try {
            destroyImmediate();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public int getId() {
        return this.f22695b;
    }
}
