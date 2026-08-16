package Fc;

import Hc.c;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;

public final class b extends a {

    public final c.e f6753C;

    public b(String file, c.e sharedData) {
        super(file, sharedData.e(), sharedData.f());
        this.f6753C = sharedData;
        I(sharedData.d(), sharedData.g());
    }

    @Override
    public NativeShortBuffer C() {
        return this.f6753C.d();
    }

    @Override
    public boolean e0() {
        return false;
    }
}
