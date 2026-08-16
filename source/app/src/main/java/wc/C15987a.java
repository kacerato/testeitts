package wc;

import com.itsmagic.engine.Engines.Engine.GC.SGC;
import wc.b;

@Deprecated
public class C15987a extends b {

    public final M9.c f127429d;

    public class C2193a implements M9.c {
        public C2193a() {
        }

        @Override
        public void a(long pointer) {
            C15987a.this.f127433a.a(pointer);
        }
    }

    public C15987a(b.a listener) {
        super(listener);
        this.f127429d = new C2193a();
    }

    @Override
    public void a(c reference) {
        reference.getClass();
        SGC.put(reference.a(), reference.f127435b, this.f127429d, true);
    }

    @Override
    public void b(com.itsmagic.engine.Engines.Native.Base.a nativeBuffer) {
        nativeBuffer.getClass();
        SGC.destroyImmediate(nativeBuffer);
    }
}
