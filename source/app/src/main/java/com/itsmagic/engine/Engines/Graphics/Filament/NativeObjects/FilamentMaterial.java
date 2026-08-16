package com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects;

import Lc.g;
import androidx.annotation.Keep;
import com.google.android.filament.Material;
import com.google.android.filament.MaterialInstance;
import com.google.android.filament.TextureSampler;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ec.f;
import ge.X;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import yb.C16165b;

public class FilamentMaterial extends SGCListenerObject {

    public final Set<String> f80094b;

    @Keep
    private final Map<String, FilamentTexture> bindedTextures;

    @Keep
    private final List<d> bindedTexturesList;

    @Keep
    private final FilamentMaterialTemplate buildedFromTemplate;

    public boolean f80095c;

    @Keep
    private final MaterialInstance material;

    public static final M9.c f80092d = new a();

    @Keep
    private static final X<FilamentMaterialTemplate> concreteTemplatesReferences = new X<>(100);

    @Keep
    private static final g<Set<FilamentTexture>> concreteTexturesReferences = new g<>(1000);

    public static final Lc.b<Set<FilamentTexture>> f80093e = new b();

    public class a implements M9.c {
        @Override
        public void a(long pointer) {
            Qb.c.j(pointer);
            FilamentMaterial.concreteTexturesReferences.e(pointer);
            FilamentMaterial.concreteTemplatesReferences.e(pointer);
        }
    }

    public class b implements Lc.b<Set<FilamentTexture>> {
        @Override
        public void a(Object texture, Set<FilamentTexture> object, Lc.c<Set<FilamentTexture>> knockback) {
            if (object == null || !object.contains((FilamentTexture) texture)) {
                return;
            }
            knockback.a(true);
        }
    }

    public class c extends M9.b {
        public c(Class cls) {
            super(cls);
        }

        @Override
        public void b(long pointer) {
            if (FilamentMaterial.this.f80095c) {
                return;
            }
            for (int i10 = 0; i10 < FilamentMaterial.this.bindedTexturesList.size(); i10++) {
                d dVar = (d) FilamentMaterial.this.bindedTexturesList.get(i10);
                FilamentTexture filamentTexture = dVar.f80098b;
                if (filamentTexture != null && filamentTexture.C().getNativeObject() == pointer) {
                    C16165b.f130162h.f(FilamentMaterial.this, dVar.f80097a);
                }
            }
        }
    }

    public static class d {

        public String f80097a;

        public FilamentTexture f80098b;

        public d(String param, FilamentTexture texture) {
            this.f80097a = param;
            this.f80098b = texture;
        }
    }

    public static class e {

        public List<String> f80099a = new SteppedArrayList();
    }

    public FilamentMaterial(FilamentMaterialTemplate template, Material templateMat) {
        this(template, templateMat, null);
    }

    public static boolean n(FilamentMaterialTemplate filamentMaterialTemplate) {
        Qb.a.d();
        K8.a.G();
        return concreteTemplatesReferences.containsValue(filamentMaterialTemplate);
    }

    public static boolean o(FilamentTexture filamentTexture) {
        Qb.a.d();
        K8.a.G();
        return concreteTexturesReferences.wf(filamentTexture, f80093e);
    }

    public void A(String name, float[] buffer, int size, int offset) {
        G(name, MaterialInstance.b.FLOAT2, buffer, size, offset);
    }

    public void B(String name, float x10, float y10, float z10) {
        Qb.a.d();
        this.material.I(name, x10, y10, z10);
    }

    public void C(String name, Vector3 v10) {
        Qb.a.d();
        this.material.I(name, v10.getX(), v10.getY(), v10.getZ());
    }

    public void D(String name, float[] buffer, int size, int offset) {
        G(name, MaterialInstance.b.FLOAT3, buffer, size, offset);
    }

    public void E(String name, float x10, float y10, float z10, float w10) {
        Qb.a.d();
        this.material.J(name, x10, y10, z10, w10);
    }

    public void F(String name, float[] buffer, int size, int offset) {
        G(name, MaterialInstance.b.FLOAT4, buffer, size, offset);
    }

    public final void G(String name, MaterialInstance.b element, float[] buffer, int size, int offset) {
        Qb.a.d();
        if (buffer == null) {
            throw new NullPointerException("buffer is null");
        }
        this.material.R(name, element, buffer, offset, size);
    }

    public void H(String name, int v10) {
        Qb.a.d();
        this.material.K(name, v10);
    }

    public void I(String name, int[] buffer, int size, int offset) {
        J(name, MaterialInstance.c.INT, buffer, size, offset);
    }

    public final void J(String name, MaterialInstance.c element, int[] buffer, int size, int offset) {
        Qb.a.d();
        if (buffer == null) {
            throw new NullPointerException("buffer is null");
        }
        this.material.S(name, element, buffer, offset, size);
    }

    public void K(float v10, float v12) {
        Qb.a.d();
        this.material.Y(v10, v12);
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        Qb.a.d();
        K8.a.G();
        if (this.f80095c) {
            throw new RuntimeException();
        }
        if (FilamentRenderable.isUsed(this)) {
            throw new FilamentContractViolationError("Stills in use");
        }
        this.f80095c = true;
        SGC.destroyImmediate(this);
    }

    @Override
    public int destroyPriority() {
        return 30;
    }

    public final Set<String> j(List<f> params) {
        if (params == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < params.size(); i10++) {
            f fVar = params.get(i10);
            if (fVar != null && fVar.a() != null) {
                hashSet.add(fVar.a());
            }
        }
        return hashSet;
    }

    public void k() {
        if (C16165b.f130163i.J()) {
            for (int i10 = 0; i10 < this.bindedTexturesList.size(); i10++) {
                C16165b.f130163i.f(this, this.bindedTexturesList.get(i10).f80097a);
            }
        }
    }

    public MaterialInstance l() {
        return this.material;
    }

    public boolean m(String name) {
        Set<String> set = this.f80094b;
        return set == null || set.contains(name);
    }

    public void p(String name, FilamentTexture texture) {
        q(name, texture, texture.B());
    }

    public void q(String name, FilamentTexture texture, TextureSampler sampler) {
        Qb.a.d();
        FilamentTexture filamentTexture = this.bindedTextures.get(name);
        if (filamentTexture == texture) {
            return;
        }
        this.bindedTextures.put(name, texture);
        int i10 = 0;
        while (true) {
            if (i10 >= this.bindedTexturesList.size()) {
                this.bindedTexturesList.add(new d(name, texture));
                break;
            }
            d dVar = this.bindedTexturesList.get(i10);
            if (!dVar.f80097a.equals(name)) {
                i10++;
            } else if (dVar.f80098b == texture) {
                return;
            } else {
                dVar.f80098b = texture;
            }
        }
        g<Set<FilamentTexture>> gVar = concreteTexturesReferences;
        Set<FilamentTexture> u10 = gVar.u(this.material.l());
        if (u10 == null) {
            u10 = new HashSet<>();
            gVar.td(this.material.l(), u10);
        }
        if (filamentTexture != null && filamentTexture != texture) {
            u10.remove(filamentTexture);
        }
        u10.add(texture);
        this.material.T(name, texture.C(), sampler);
    }

    public void r(String name, boolean b10) {
        Qb.a.d();
        this.material.G(name, b10 ? 1.0f : 0.0f);
    }

    public void s(String name, boolean b10, boolean b22) {
        Qb.a.d();
        this.material.H(name, b10 ? 1.0f : 0.0f, b22 ? 1.0f : 0.0f);
    }

    public void u(String name, ColorINT v10) {
        Qb.a.d();
        this.material.I(name, v10.w(), v10.u(), v10.s());
    }

    public void v(String name, ColorINT v10) {
        Qb.a.d();
        this.material.J(name, v10.w(), v10.u(), v10.s(), v10.o());
    }

    public void w(String name, float v10) {
        Qb.a.d();
        this.material.G(name, v10);
    }

    public void x(String name, float[] buffer, int size, int offset) {
        G(name, MaterialInstance.b.FLOAT, buffer, size, offset);
    }

    public void y(String name, float x10, float y10) {
        Qb.a.d();
        this.material.H(name, x10, y10);
    }

    public void z(String name, Vector2 v10) {
        Qb.a.d();
        this.material.H(name, v10.f79838x, v10.f79839y);
    }

    public FilamentMaterial(FilamentMaterialTemplate template, Material templateMat, List<f> params) {
        this.bindedTextures = new HashMap();
        this.bindedTexturesList = new SteppedArrayList();
        MaterialInstance d10 = templateMat.d();
        this.material = d10;
        this.buildedFromTemplate = template;
        this.f80094b = j(params);
        super.setDestroyListeners(new M9.b[]{new c(FilamentTexture.class)});
        SGC.put(this, d10.l(), f80092d, false);
        concreteTemplatesReferences.td(d10.l(), template);
    }
}
