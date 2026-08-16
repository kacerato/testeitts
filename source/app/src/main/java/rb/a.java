package Rb;

import com.google.android.filament.ColorGrading;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;

public class a extends SGCListenerObject {

    public static final M9.c f22691d = new C0548a();

    public final ColorGrading f22692b;

    public boolean f22693c;

    public class C0548a implements M9.c {
        @Override
        public void a(long pointer) {
            Qb.c.e(pointer);
        }
    }

    public a(ColorGrading.a builder) {
        K8.a.G();
        Qb.a.d();
        ColorGrading a10 = builder.a(Qb.a.f());
        this.f22692b = a10;
        SGC.put(this, a10.x(), f22691d, false);
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        K8.a.G();
        Qb.a.d();
        if (this.f22693c) {
            throw new RuntimeException();
        }
        if (FilamentView.q(this)) {
            throw new FilamentContractViolationError("ColorGrading still bound to a view");
        }
        this.f22693c = true;
        SGC.destroyImmediate(this);
    }

    @Override
    public int destroyPriority() {
        return 30;
    }

    public ColorGrading e() {
        return this.f22692b;
    }
}
