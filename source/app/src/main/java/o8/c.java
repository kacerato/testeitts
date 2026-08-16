package O8;

import JAVARuntime.Brush;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import ub.p;

public class c extends a {

    public Brush f16559l;

    public c(Brush brush) {
        this.f16559l = brush;
    }

    @Override
    public NativeFloatBuffer a() {
        return null;
    }

    @Override
    public float c(float x10, float y10) {
        return this.f16559l.getIntensity(x10, y10);
    }

    @Override
    public p f() {
        return null;
    }

    @Override
    public void g() {
    }

    @Override
    public void j() {
    }
}
