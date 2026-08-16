package com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects;

import Lc.g;
import M9.c;
import androidx.annotation.Keep;
import com.google.android.filament.RenderTarget;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Engine.Texture.ColorTexture;
import com.itsmagic.engine.Engines.Engine.Texture.DepthTexture;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import java.util.HashSet;
import java.util.Set;

public class FilamentRenderTarget extends SGCListenerObject {

    public static final c f80102c = new a();

    @Keep
    private static final g<Set<FilamentTexture>> concreteTexturesReferences = new g<>(100);

    public static final Lc.b<Set<FilamentTexture>> f80103d = new b();

    public boolean f80104b;

    @Keep
    private final RenderTarget renderTarget;

    @Keep
    private final Set<FilamentTexture> usedTextures;

    public class a implements c {
        @Override
        public void a(long pointer) {
            Qb.c.k(pointer);
            FilamentRenderTarget.concreteTexturesReferences.e(pointer);
        }
    }

    public class b implements Lc.b<Set<FilamentTexture>> {
        @Override
        public void a(Object texture, Set<FilamentTexture> object, Lc.c<Set<FilamentTexture>> knockback) {
            if (object == null || !object.contains((FilamentTexture) texture)) {
                return;
            }
            knockback.a(true);
        }
    }

    public FilamentRenderTarget(RenderTarget.b builder, ColorTexture[] colorTextures, DepthTexture depthTexture) {
        this.f80104b = false;
        this.usedTextures = new HashSet();
        K8.a.G();
        Qb.a.d();
        this.renderTarget = builder.b(Qb.a.f());
        if (colorTextures != null) {
            for (ColorTexture colorTexture : colorTextures) {
                if (colorTexture != null && colorTexture.k() != null) {
                    this.usedTextures.add(colorTexture.k());
                }
            }
        }
        if (depthTexture != null && depthTexture.k() != null) {
            this.usedTextures.add(depthTexture.k());
        }
        SGC.put(this, this.renderTarget.m(), f80102c, false);
        concreteTexturesReferences.td(this.renderTarget.m(), this.usedTextures);
    }

    public static boolean h(FilamentTexture filamentTexture) {
        Qb.a.d();
        K8.a.G();
        return concreteTexturesReferences.wf(filamentTexture, f80103d);
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        Qb.a.d();
        K8.a.G();
        if (this.f80104b) {
            throw new RuntimeException();
        }
        if (FilamentView.s(this)) {
            throw new FilamentContractViolationError("RenderTarget still bound to a view");
        }
        this.f80104b = true;
        SGC.destroyImmediate(this);
    }

    @Override
    public int destroyPriority() {
        return 30;
    }

    public RenderTarget f() {
        return this.renderTarget;
    }

    public FilamentRenderTarget(RenderTarget.b builder, FilamentTexture colorTexture, FilamentTexture depthTexture) {
        this.f80104b = false;
        HashSet hashSet = new HashSet();
        this.usedTextures = hashSet;
        K8.a.G();
        Qb.a.d();
        RenderTarget b10 = builder.b(Qb.a.f());
        this.renderTarget = b10;
        if (colorTexture != null) {
            hashSet.add(colorTexture);
        }
        if (depthTexture != null) {
            hashSet.add(depthTexture);
        }
        SGC.put(this, b10.m(), f80102c, false);
        concreteTexturesReferences.td(b10.m(), hashSet);
    }
}
