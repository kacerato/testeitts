package wc;

import java.lang.ref.WeakReference;

@Deprecated
public class c {

    public WeakReference<com.itsmagic.engine.Engines.Native.Base.a> f127434a;

    public long f127435b;

    public long f127436c;

    public int f127437d;

    public c(com.itsmagic.engine.Engines.Native.Base.a buffer, long pointer) {
        this.f127434a = null;
        this.f127434a = new WeakReference<>(buffer);
        this.f127435b = pointer;
        this.f127436c = 0L;
        this.f127437d = buffer.getEngineInstanceID();
    }

    public <T extends com.itsmagic.engine.Engines.Native.Base.a> T a() {
        return (T) this.f127434a.get();
    }

    public boolean b() {
        return this.f127434a.get() != null;
    }

    public c(com.itsmagic.engine.Engines.Native.Base.a buffer, long pointer, long texturePointer) {
        this.f127434a = null;
        this.f127434a = new WeakReference<>(buffer);
        this.f127435b = pointer;
        this.f127436c = texturePointer;
        this.f127437d = buffer.getEngineInstanceID();
    }
}
