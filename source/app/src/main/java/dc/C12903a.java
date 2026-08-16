package dc;

import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Modules.UpdateModule;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Custom.MaterialShader;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Material.CustomShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import da.C12888b;
import java.util.List;
import pc.C14955g;

public class C12903a implements k {

    public final String f84496a;

    public final MaterialShader f84497b;

    public FilamentMaterial f84498c;

    public CustomShaderBinder f84499d;

    public boolean f84500e = false;

    public Material f84501f;

    public boolean f84502g;

    public final UpdateModule f84503h;

    public class C1574a extends UpdateModule {
        public C1574a() {
        }

        @Override
        public String c() {
            return "Custom shader [" + C12903a.this.f84496a + "] pre render";
        }

        @Override
        public void h() {
            C12903a.this.o();
        }
    }

    public C12903a(Material material, String shaderName, MaterialShader materialShader) {
        C1574a c1574a = new C1574a();
        this.f84503h = c1574a;
        this.f84496a = shaderName;
        this.f84497b = materialShader;
        this.f84501f = material;
        n();
        c1574a.a();
    }

    @Override
    public void a() {
        CustomShaderBinder customShaderBinder = this.f84499d;
        if (customShaderBinder != null) {
            customShaderBinder.X();
        }
        this.f84503h.b();
    }

    @Override
    public FilamentMaterial b() {
        n();
        return this.f84498c;
    }

    @Override
    public void c(C12888b event) {
        Material material;
        if (event instanceof C14955g) {
            CustomShaderBinder customShaderBinder = this.f84499d;
            if (customShaderBinder != null && (material = this.f84501f) != null) {
                customShaderBinder.c0(material.B());
                if (this.f84499d.S()) {
                    this.f84501f.Y();
                }
            }
            this.f84498c = null;
            this.f84499d = null;
        }
        CustomShaderBinder customShaderBinder2 = this.f84499d;
        if (customShaderBinder2 != null) {
            customShaderBinder2.o(event);
        }
    }

    @Override
    public k copy() {
        return new C12903a(this.f84501f, this.f84496a, this.f84497b);
    }

    @Override
    public boolean d() {
        CustomShaderBinder customShaderBinder = this.f84499d;
        return customShaderBinder != null && customShaderBinder.S();
    }

    @Override
    public void e(Material material, List<SerializableShaderEntry> serializableShaderEntries) {
        CustomShaderBinder customShaderBinder = this.f84499d;
        if (customShaderBinder != null) {
            customShaderBinder.b0(serializableShaderEntries);
            this.f84499d.o0(false);
        }
        this.f84501f = material;
        this.f84500e = true;
    }

    @Override
    public void f(List<SerializableShaderEntry> serializedShaderEntries) {
        CustomShaderBinder customShaderBinder = this.f84499d;
        if (customShaderBinder != null) {
            customShaderBinder.c0(serializedShaderEntries);
        }
    }

    @Override
    public String g() {
        return this.f84497b.f80144b;
    }

    @Override
    public String h() {
        return this.f84496a;
    }

    @Override
    public void i() {
    }

    @Override
    public void j() {
        CustomShaderBinder customShaderBinder = this.f84499d;
        if (customShaderBinder != null) {
            customShaderBinder.x0();
        }
    }

    @Override
    public <T extends ShaderBinder> T k() {
        CustomShaderBinder customShaderBinder = this.f84499d;
        if (customShaderBinder == null) {
            return null;
        }
        return customShaderBinder;
    }

    @Override
    public void l() {
        CustomShaderBinder customShaderBinder = this.f84499d;
        if (customShaderBinder != null) {
            customShaderBinder.W();
        }
    }

    public final void n() {
        MaterialShader materialShader;
        FilamentMaterialTemplate filamentMaterialTemplate;
        if ((this.f84498c != null && this.f84499d != null) || (materialShader = this.f84497b) == null || materialShader.f80143a || (filamentMaterialTemplate = materialShader.f80145c) == null) {
            return;
        }
        this.f84498c = filamentMaterialTemplate.f(materialShader.f80148f);
        CustomShaderBinder customShaderBinder = new CustomShaderBinder(this.f84497b);
        this.f84499d = customShaderBinder;
        Material material = this.f84501f;
        if (material != null) {
            customShaderBinder.b0(material.B());
            this.f84499d.o0(false);
        }
        if (this.f84499d.C() != null) {
            this.f84499d.C().m(this.f84497b.a());
        }
        this.f84499d.h0(this.f84498c, this.f84501f);
        Material material2 = this.f84501f;
        if (material2 != null) {
            material2.P();
        }
    }

    public void o() {
        n();
        CustomShaderBinder customShaderBinder = this.f84499d;
        if (customShaderBinder != null) {
            customShaderBinder.Z0(this.f84501f, null, this.f84498c);
        }
    }
}
