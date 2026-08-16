package Bb;

import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;

public class a extends com.itsmagic.engine.Engines.Engine.Texture.Data.a {

    public Tb.a f1666j;

    public a(Tb.a frameBuffer) {
        this.f1666j = frameBuffer;
    }

    @Override
    public boolean A() {
        return true;
    }

    @Override
    public boolean B() {
        return false;
    }

    public void T(Tb.a frameBuffer) {
        this.f1666j = frameBuffer;
    }

    @Override
    public int bytesPerItem() {
        return 0;
    }

    @Override
    public boolean e(Runnable post) {
        return false;
    }

    public Tb.a getFrameBuffer() {
        return this.f1666j;
    }

    @Override
    public FilamentTexture k() {
        Tb.a aVar = this.f1666j;
        if (aVar == null || aVar.l() == null) {
            return null;
        }
        return this.f1666j.l().k();
    }

    @Override
    public long nativeUsedBytes() {
        return 0L;
    }

    @Override
    public long p() {
        return this.f1666j.l().q();
    }

    @Override
    public boolean y() {
        return true;
    }
}
