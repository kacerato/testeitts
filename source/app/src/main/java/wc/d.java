package wc;

import com.itsmagic.engine.Engines.Engine.GC.SGC;
import wc.b;

@Deprecated
public class d extends b {

    public final M9.c f127438d;

    public class a implements M9.c {
        public a() {
        }

        @Override
        public void a(long pointer) {
            d.this.f127433a.a(pointer);
        }
    }

    public d(b.a listener) {
        super(listener);
        this.f127438d = new a();
    }

    @Override
    public void a(c reference) {
        reference.getClass();
        SGC.put(reference.a(), reference.f127435b, this.f127438d, false);
    }

    @Override
    public void b(com.itsmagic.engine.Engines.Native.Base.a nativeBuffer) {
        nativeBuffer.getClass();
        SGC.destroyImmediate(nativeBuffer);
    }
}
