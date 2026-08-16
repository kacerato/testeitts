package ub;

import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import java.io.File;
import yb.C16165b;

public class q extends g {

    public com.itsmagic.engine.Engines.Engine.Texture.Data.a f118787s;

    public q(File ioFile) {
        super(ioFile, true);
    }

    public final p G0() {
        if (p.L(C16165b.f130163i)) {
            return C16165b.f130163i;
        }
        return null;
    }

    public com.itsmagic.engine.Engines.Engine.Texture.Data.a H0() {
        return this.f118787s;
    }

    public void I0(com.itsmagic.engine.Engines.Engine.Texture.Data.a overrider) {
        this.f118787s = overrider;
        Q();
    }

    @Override
    public boolean J() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118787s;
        return (aVar != null && aVar.A()) || G0() != null;
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
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118787s;
        if (aVar != null && aVar.A()) {
            this.f118787s.f(m10, attributeName);
            return;
        }
        p G02 = G0();
        if (G02 != null) {
            G02.f(m10, attributeName);
        }
    }

    @Override
    public int getHeight() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118787s;
        if (aVar != null) {
            return aVar.getHeight();
        }
        p G02 = G0();
        if (G02 != null) {
            return G02.getHeight();
        }
        return 1;
    }

    @Override
    public int getWidth() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118787s;
        if (aVar != null) {
            return aVar.getWidth();
        }
        p G02 = G0();
        if (G02 != null) {
            return G02.getWidth();
        }
        return 1;
    }

    @Override
    public long q() {
        com.itsmagic.engine.Engines.Engine.Texture.Data.a aVar = this.f118787s;
        if (aVar != null) {
            return aVar.p();
        }
        p G02 = G0();
        if (G02 != null) {
            return G02.q();
        }
        return 0L;
    }

    public q(File ioFile, TextureConfig config) {
        super(ioFile, true);
    }

    public q(File ioFile, TextureConfig config, boolean applyOGL, boolean async) {
        super(ioFile, true);
    }

    public q(String file) {
        super(file, true);
    }

    public q(String file, TextureConfig config) {
        super(file, true);
    }

    public q(String file, TextureConfig config, boolean applyOGL) {
        super(file, true);
    }

    public q(String file, TextureConfig config, boolean applyOGL, boolean async) {
        super(file, true);
    }
}
