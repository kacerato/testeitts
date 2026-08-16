package com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects;

import M9.c;
import androidx.annotation.Keep;
import com.google.android.filament.Engine;
import com.google.android.filament.Skybox;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import ge.X;
import wb.C15980b;

public class FilamentSkybox extends SGCListenerObject {

    public static final c f80115c = new a();

    @Keep
    private static final X<FilamentTexture> concreteCBReferences = new X<>(100);

    public boolean f80116b;

    @Keep
    private FilamentTexture filamentTexture;

    @Keep
    private final Skybox skybox;

    public class a implements c {
        @Override
        public void a(long pointer) {
            Qb.c.n(pointer);
            FilamentSkybox.concreteCBReferences.e(pointer);
        }
    }

    public FilamentSkybox(Skybox.a builder, Engine engine) {
        K8.a.G();
        Qb.a.d();
        Skybox a10 = builder.a(engine);
        this.skybox = a10;
        SGC.put(this, a10.l(), f80115c, false);
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
        if (this.f80116b) {
            throw new RuntimeException();
        }
        if (FilamentScene.r(this)) {
            throw new FilamentContractViolationError("Skybox still bound to a scene");
        }
        this.f80116b = true;
        this.filamentTexture = null;
        SGC.destroyImmediate(this);
    }

    @Override
    public int destroyPriority() {
        return 30;
    }

    public Skybox f() {
        return this.skybox;
    }

    public FilamentSkybox(Skybox.a builder) {
        K8.a.G();
        Qb.a.d();
        Skybox a10 = builder.a(Qb.a.f());
        this.skybox = a10;
        SGC.put(this, a10.l(), f80115c, false);
    }

    public FilamentSkybox(Skybox.a builder, C15980b cubemapInstance) {
        K8.a.G();
        Qb.a.d();
        this.filamentTexture = cubemapInstance != null ? cubemapInstance.a() : null;
        if (cubemapInstance != null) {
            builder.d(cubemapInstance.a().C());
        }
        Skybox a10 = builder.a(Qb.a.f());
        this.skybox = a10;
        concreteCBReferences.td(a10.l(), this.filamentTexture);
        SGC.put(this, a10.l(), f80115c, false);
    }
}
