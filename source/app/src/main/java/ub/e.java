package ub;

import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import java.io.File;

public class e extends g {

    public Tb.a f118742s;

    public e(File ioFile) {
        super(ioFile, true);
    }

    public Tb.a G0() {
        return this.f118742s;
    }

    public void H0(Tb.a buffer) {
        this.f118742s = buffer;
        Q();
    }

    @Override
    public boolean J() {
        return this.f118742s != null;
    }

    @Override
    public boolean N() {
        return false;
    }

    @Override
    public void apply() {
    }

    @Override
    public void f(FilamentMaterial m10, String attributeName) {
        Tb.a aVar = this.f118742s;
        if (aVar == null) {
            throw new RuntimeException("No attached render data");
        }
        aVar.l().f(m10, attributeName);
    }

    @Override
    public int getHeight() {
        return this.f118742s.l().getHeight();
    }

    @Override
    public int getWidth() {
        return this.f118742s.l().getWidth();
    }

    @Override
    public long q() {
        Tb.a aVar = this.f118742s;
        if (aVar == null) {
            return 0L;
        }
        return aVar.l().q();
    }

    public e(File ioFile, TextureConfig config) {
        super(ioFile, true);
    }

    public e(File ioFile, TextureConfig config, boolean applyOGL, boolean async) {
        super(ioFile, true);
    }

    public e(String file) {
        super(file, true);
    }

    public e(String file, TextureConfig config) {
        super(file, true);
    }

    public e(String file, TextureConfig config, boolean applyOGL) {
        super(file, true);
    }

    public e(String file, TextureConfig config, boolean applyOGL, boolean async) {
        super(file, true);
    }
}
