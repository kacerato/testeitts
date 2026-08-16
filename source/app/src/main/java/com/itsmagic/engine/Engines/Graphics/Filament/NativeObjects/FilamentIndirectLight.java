package com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects;

import M9.c;
import androidx.annotation.Keep;
import com.google.android.filament.IndirectLight;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import ge.X;
import wb.C15980b;

public class FilamentIndirectLight extends SGCListenerObject {

    public static final c f80085c = new a();

    @Keep
    private static final X<FilamentTexture> concreteCBReferences = new X<>();

    public boolean f80086b;

    @Keep
    private FilamentTexture filamentTexture;

    @Keep
    private final IndirectLight indirectLight;

    public class a implements c {
        @Override
        public void a(long pointer) {
            Qb.c.g(pointer);
            FilamentIndirectLight.concreteCBReferences.e(pointer);
        }
    }

    public FilamentIndirectLight(IndirectLight.a builder, C15980b cubemapInstance) {
        K8.a.G();
        Qb.a.d();
        this.filamentTexture = cubemapInstance != null ? cubemapInstance.a() : null;
        if (cubemapInstance != null) {
            builder.f(cubemapInstance.a().C());
        }
        IndirectLight a10 = builder.a(Qb.a.f());
        this.indirectLight = a10;
        SGC.put(this, a10.q(), f80085c, false);
        if (cubemapInstance != null) {
            concreteCBReferences.td(a10.q(), this.filamentTexture);
        }
    }

    public static boolean h(FilamentTexture filamentTexture) {
        Qb.a.d();
        K8.a.G();
        return concreteCBReferences.containsValue(filamentTexture);
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        K8.a.G();
        Qb.a.d();
        if (this.f80086b) {
            throw new RuntimeException();
        }
        if (FilamentScene.q(this)) {
            throw new FilamentContractViolationError("IndirectLight still bound to a scene");
        }
        this.f80086b = true;
        this.filamentTexture = null;
        SGC.destroyImmediate(this);
    }

    @Override
    public int destroyPriority() {
        return 30;
    }

    public IndirectLight f() {
        return this.indirectLight;
    }
}
