package com.itsmagic.engine.Engines.Graphics.FrameBuffer;

import Qb.a;
import androidx.annotation.Keep;
import com.google.android.filament.RenderTarget;
import com.itsmagic.engine.Engines.Engine.Texture.ColorTexture;
import com.itsmagic.engine.Engines.Engine.Texture.DepthTexture;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderTarget;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;

public class FBO {

    public final int f80137a;

    public final int f80138b;

    public final FilamentRenderTarget f80139c;

    @Keep
    private DepthTexture concreteDepthReference;

    @Keep
    private ColorTexture[] concreteTextureReference;

    public FilamentView f80140d = null;

    public boolean f80141e = false;

    public boolean f80142f;

    public FBO(int w10, int h10, ColorTexture[] colorTexture, DepthTexture depthTexture) {
        this.f80137a = w10;
        this.f80138b = h10;
        RenderTarget.b bVar = new RenderTarget.b();
        if (colorTexture != null) {
            ColorTexture[] colorTextureArr = new ColorTexture[colorTexture.length];
            this.concreteTextureReference = colorTextureArr;
            System.arraycopy(colorTexture, 0, colorTextureArr, 0, colorTextureArr.length);
            for (int i10 = 0; i10 < colorTexture.length; i10++) {
                ColorTexture colorTexture2 = colorTexture[i10];
                switch (i10) {
                    case 0:
                        bVar.f(RenderTarget.a.COLOR, colorTexture2.D0());
                        break;
                    case 1:
                        bVar.f(RenderTarget.a.COLOR1, colorTexture2.D0());
                        break;
                    case 2:
                        bVar.f(RenderTarget.a.COLOR2, colorTexture2.D0());
                        break;
                    case 3:
                        bVar.f(RenderTarget.a.COLOR3, colorTexture2.D0());
                        break;
                    case 4:
                        bVar.f(RenderTarget.a.COLOR4, colorTexture2.D0());
                        break;
                    case 5:
                        bVar.f(RenderTarget.a.COLOR5, colorTexture2.D0());
                        break;
                    case 6:
                        bVar.f(RenderTarget.a.COLOR6, colorTexture2.D0());
                        break;
                    case 7:
                        bVar.f(RenderTarget.a.COLOR7, colorTexture2.D0());
                        break;
                }
            }
        }
        if (depthTexture != null) {
            this.concreteDepthReference = depthTexture;
            bVar.f(RenderTarget.a.DEPTH, depthTexture.B0());
        }
        this.f80139c = new FilamentRenderTarget(bVar, colorTexture, depthTexture);
    }

    public void a() {
        if (this.f80142f) {
            throw new RuntimeException("Can't bind a garbage FBO");
        }
        if (this.f80141e) {
            throw new RuntimeException("framebuffer binded to multiple views at the same time");
        }
        if (this.f80140d != null) {
            throw new RuntimeException("framebuffer binded to multiple views at the same time");
        }
        a.j().B(this);
        this.f80141e = true;
    }

    public void b(FilamentView view) {
        if (view == null) {
            throw new NullPointerException("View can't be null");
        }
        if (this.f80142f) {
            throw new RuntimeException("Can't bind a garbage FBO");
        }
        if (this.f80141e) {
            throw new RuntimeException("framebuffer binded to multiple views at the same time");
        }
        if (this.f80140d != null) {
            throw new RuntimeException("framebuffer binded to multiple views at the same time");
        }
        this.f80140d = view;
        view.B(this);
    }

    public void c() {
        if (this.f80142f) {
            throw new RuntimeException("Can't destroy a garbage FBO");
        }
        if (FilamentView.v(this)) {
            throw new RuntimeException("FBO still bound to a view");
        }
        this.f80142f = true;
        this.f80139c.destroyImmediate();
    }

    public FilamentRenderTarget d() {
        return this.f80139c;
    }

    public void e() {
        if (this.f80142f) {
            throw new RuntimeException("Can't unbind a garbage FBO");
        }
        FilamentView filamentView = this.f80140d;
        if (filamentView != null) {
            filamentView.F();
            this.f80140d = null;
        } else {
            this.f80141e = false;
            a.j().F();
        }
    }
}
