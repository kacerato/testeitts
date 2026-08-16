package dc;

import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import da.C12888b;
import java.util.List;

public interface k {
    void a();

    FilamentMaterial b();

    void c(C12888b event);

    k copy();

    boolean d();

    void e(Material material, List<SerializableShaderEntry> serializableShaderEntries);

    void f(List<SerializableShaderEntry> serializedShaderEntries);

    String g();

    String h();

    void i();

    void j();

    <T extends ShaderBinder> T k();

    void l();
}
