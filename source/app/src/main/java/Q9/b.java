package Q9;

import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import java.util.ArrayDeque;

public class b {

    public final FilamentMaterialTemplate f21998a;

    public final ArrayDeque<FilamentMaterial> f21999b = new ArrayDeque<>();

    public b(FilamentMaterialTemplate template) {
        this.f21998a = template;
    }

    public FilamentMaterial a() {
        FilamentMaterial pollFirst = this.f21999b.pollFirst();
        return pollFirst == null ? this.f21998a.e() : pollFirst;
    }

    public void b(FilamentMaterial mi2) {
        this.f21999b.addLast(mi2);
    }

    public void c(int keep) {
        while (this.f21999b.size() > keep) {
            this.f21999b.removeFirst();
        }
    }
}
