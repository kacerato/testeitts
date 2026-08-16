package Fc;

import com.itsmagic.engine.Engines.Sound.Imported.ImportedAudioHeader;
import com.itsmagic.engine.Engines.Sound.Native.NativeSoundEmitter;

public abstract class a extends NativeSoundEmitter {

    public final String f6750A;

    public final ImportedAudioHeader f6751B;

    public final String f6752u;

    public a(String file, String cacheKey, ImportedAudioHeader header) {
        this.f6752u = file;
        this.f6750A = cacheKey;
        this.f6751B = header;
    }

    public final String c0() {
        return this.f6750A;
    }

    public final ImportedAudioHeader d0() {
        return this.f6751B;
    }

    @Override
    public void destroy() {
        Hc.c.v(this);
        super.destroy();
    }

    public abstract boolean e0();

    public final String getFile() {
        return this.f6752u;
    }
}
