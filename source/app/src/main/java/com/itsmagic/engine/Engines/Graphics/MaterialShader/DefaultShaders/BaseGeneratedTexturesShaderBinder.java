package com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders;

import JAVARuntime.Texture;
import Nc.b;
import ab.d;
import com.itsmagic.engine.Engines.Engine.Texture.Sprite.Rect;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.World.a;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import ub.g;
import ub.p;

public abstract class BaseGeneratedTexturesShaderBinder extends ShaderBinder {
    public Texture genNormal;

    /* JADX WARN: Removed duplicated region for block: B:14:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean A0(Texture tex, p fallback, p tripleFallback, String name, FilamentMaterial filamentMaterial, int spriteIndex) {
        float f10;
        float f11;
        float f12;
        float f13;
        if (!Texture.isRenderable(tex)) {
            if (p.L(fallback)) {
                if (filamentMaterial.m(name + "Sprite")) {
                    filamentMaterial.E(name + "Sprite", 0.0f, 0.0f, 1.0f, 1.0f);
                }
                fallback.f(filamentMaterial, name);
                return true;
            }
            if (!p.L(tripleFallback)) {
                return false;
            }
            if (filamentMaterial.m(name + "Sprite")) {
                filamentMaterial.E(name + "Sprite", 0.0f, 0.0f, 1.0f, 1.0f);
            }
            tripleFallback.f(filamentMaterial, name);
            return true;
        }
        p pVar = tex.instance;
        if (pVar instanceof g) {
            TextureConfig u02 = ((g) pVar).u0();
            if (u02.type == TextureConfig.f.Sprite && u02.v() != null && u02.v().C() > 0) {
                Rect B10 = u02.v().B(b.F(0, spriteIndex, u02.v().C() - 1));
                float d10 = B10.d();
                float e10 = B10.e();
                float c10 = B10.c();
                f11 = B10.b();
                f10 = c10;
                f13 = e10;
                f12 = d10;
                if (filamentMaterial.m(name + "Sprite")) {
                    filamentMaterial.E(name + "Sprite", f12, f13, f10, f11);
                }
                tex.instance.f(filamentMaterial, name);
                return true;
            }
        }
        f10 = 1.0f;
        f11 = 1.0f;
        f12 = 0.0f;
        f13 = 0.0f;
        if (filamentMaterial.m(name + "Sprite")) {
        }
        tex.instance.f(filamentMaterial, name);
        return true;
    }

    @Deprecated
    public boolean B0(p tex, p fallback, String name, FilamentMaterial filamentMaterial) {
        if (Texture.isRenderable(tex)) {
            tex.f(filamentMaterial, name);
            return true;
        }
        if (!p.L(fallback)) {
            return false;
        }
        fallback.f(filamentMaterial, name);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean C0(p tex, p fallback, String name, FilamentMaterial filamentMaterial, int spriteIndex) {
        float f10;
        float f11;
        float f12;
        float f13;
        if (!Texture.isRenderable(tex)) {
            if (!p.L(fallback)) {
                return false;
            }
            if (filamentMaterial.m(name + "Sprite")) {
                filamentMaterial.E(name + "Sprite", 0.0f, 0.0f, 1.0f, 1.0f);
            }
            fallback.f(filamentMaterial, name);
            return true;
        }
        if (tex instanceof g) {
            TextureConfig u02 = ((g) tex).u0();
            if (u02.type == TextureConfig.f.Sprite && u02.v() != null && u02.v().C() > 0) {
                Rect B10 = u02.v().B(b.F(0, spriteIndex, u02.v().C() - 1));
                float d10 = B10.d();
                float e10 = B10.e();
                float c10 = B10.c();
                f13 = B10.b();
                f10 = d10;
                f11 = e10;
                f12 = c10;
                if (filamentMaterial.m(name + "Sprite")) {
                    filamentMaterial.E(name + "Sprite", f10, f11, f12, f13);
                }
                tex.f(filamentMaterial, name);
                return true;
            }
        }
        f10 = 0.0f;
        f11 = 0.0f;
        f12 = 1.0f;
        f13 = 1.0f;
        if (filamentMaterial.m(name + "Sprite")) {
        }
        tex.f(filamentMaterial, name);
        return true;
    }

    public void D0() {
        this.genNormal = null;
    }

    public abstract Texture E0();

    public p F0() {
        return d.d(G0(), this.genNormal);
    }

    public abstract Texture G0();

    public void H0() {
        if (a.f80030c == null || E0() == null) {
            this.genNormal = null;
            return;
        }
        a.f80030c.o();
        if (d.d(G0(), this.genNormal) == null) {
            p a10 = d.a(E0(), G0(), d.a.NM);
            if (a10 != null) {
                this.genNormal = a10.p0();
            } else {
                this.genNormal = null;
            }
        }
    }

    @Deprecated
    public boolean z0(Texture tex, p fallback, p tripleFallback, String name, FilamentMaterial filamentMaterial) {
        if (Texture.isRenderable(tex)) {
            tex.instance.f(filamentMaterial, name);
            return true;
        }
        if (p.L(fallback)) {
            fallback.f(filamentMaterial, name);
            return true;
        }
        if (!p.L(tripleFallback)) {
            return false;
        }
        tripleFallback.f(filamentMaterial, name);
        return true;
    }
}
