package com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects;

import Rb.c;
import androidx.annotation.Keep;
import com.google.android.filament.Engine;
import com.google.android.filament.LightManager;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import java.util.HashMap;
import java.util.Map;

public class FilamentLight extends SGCListenerObject {

    public final c f80090b;

    public boolean f80091c;

    public static final M9.c f80089d = new a();

    @Keep
    private static final Map<Integer, c> concreteEntityReferences = new HashMap();

    public class a implements M9.c {
        @Override
        public void a(long pointer) {
            LightManager e02 = Qb.a.f().e0();
            int i10 = (int) pointer;
            if (e02.L(i10)) {
                e02.v(i10);
            }
            FilamentLight.concreteEntityReferences.remove(Integer.valueOf(i10));
        }
    }

    public FilamentLight(LightManager.a builder, Engine engine) {
        K8.a.G();
        Qb.a.d();
        c cVar = new c();
        this.f80090b = cVar;
        builder.a(engine, cVar.getId());
        SGC.put(this, cVar.getId(), f80089d, false);
        concreteEntityReferences.put(Integer.valueOf(cVar.getId()), cVar);
    }

    public static boolean f(c entity) {
        Qb.a.d();
        K8.a.G();
        return concreteEntityReferences.containsValue(entity);
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        K8.a.G();
        Qb.a.d();
        if (this.f80091c) {
            throw new RuntimeException();
        }
        if (FilamentScene.k(this.f80090b)) {
            throw new FilamentContractViolationError("Light entity still bound to a scene");
        }
        this.f80091c = true;
        SGC.destroyImmediate(this);
        this.f80090b.destroyImmediate();
    }

    @Override
    public int destroyPriority() {
        return 20;
    }

    public c e() {
        return this.f80090b;
    }

    public void h(Vector3 dir) {
        K8.a.G();
        if (this.f80091c) {
            throw new RuntimeException();
        }
        LightManager e02 = Qb.a.f().e0();
        int B10 = e02.B(this.f80090b.getId());
        e02.y(B10, new float[3]);
        e02.R(B10, dir.getX(), dir.getY(), dir.getZ());
        e02.y(B10, new float[3]);
    }

    public void i(Vector3 dir) {
        K8.a.G();
        if (this.f80091c) {
            throw new RuntimeException();
        }
        LightManager e02 = Qb.a.f().e0();
        e02.X(e02.B(this.f80090b.getId()), dir.getX(), dir.getY(), dir.getZ());
    }

    public void j(boolean v10) {
        K8.a.G();
        if (this.f80091c) {
            throw new RuntimeException();
        }
        LightManager e02 = Qb.a.f().e0();
        e02.Y(e02.B(this.f80090b.getId()), v10);
    }

    public void setColor(ColorINT color) {
        K8.a.G();
        if (this.f80091c) {
            throw new RuntimeException();
        }
        LightManager e02 = Qb.a.f().e0();
        e02.Q(e02.B(this.f80090b.getId()), color.w(), color.u(), color.s());
    }

    public void setIntensity(float v10) {
        K8.a.G();
        if (this.f80091c) {
            throw new RuntimeException();
        }
        LightManager e02 = Qb.a.f().e0();
        e02.T(e02.B(this.f80090b.getId()), v10);
    }

    public FilamentLight(LightManager.a builder) {
        K8.a.G();
        Qb.a.d();
        c cVar = new c();
        this.f80090b = cVar;
        builder.a(Qb.a.f(), cVar.getId());
        SGC.put(this, cVar.getId(), f80089d, false);
        concreteEntityReferences.put(Integer.valueOf(cVar.getId()), cVar);
    }
}
