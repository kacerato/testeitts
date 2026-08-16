package com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects;

import M9.c;
import androidx.annotation.Keep;
import com.google.android.filament.Material;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import ec.f;
import java.util.List;

public class FilamentMaterialTemplate extends SGCListenerObject {

    public static final c f80100c = new a();

    public boolean f80101b;

    @Keep
    private Material material;

    public class a implements c {
        @Override
        public void a(long pointer) {
            Qb.c.i(pointer);
        }
    }

    public FilamentMaterialTemplate(Material.b builder) {
        K8.a.G();
        Qb.a.d();
        Material a10 = builder.a(Qb.a.f());
        this.material = a10;
        SGC.put(this, a10.m(), f80100c, false);
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        K8.a.G();
        Qb.a.d();
        if (this.f80101b) {
            throw new RuntimeException();
        }
        if (FilamentMaterial.n(this)) {
            throw new FilamentContractViolationError("MaterialTemplate still used by a material instance");
        }
        this.f80101b = true;
        SGC.destroyImmediate(this);
        this.material = null;
    }

    @Override
    public int destroyPriority() {
        return 50;
    }

    public FilamentMaterial e() {
        return f(null);
    }

    public FilamentMaterial f(List<f> params) {
        if (this.f80101b) {
            throw new RuntimeException("Material template already destroyed");
        }
        if (this.material != null) {
            return new FilamentMaterial(this, this.material, params);
        }
        throw new RuntimeException("Material is laze init and stills not finized");
    }
}
