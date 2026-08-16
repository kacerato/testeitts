package wb;

import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.FileCubemap;
import java.lang.ref.WeakReference;

public class C15982d {

    public WeakReference<FileCubemap> f127392a;

    public final String f127393b;

    public C15982d(FileCubemap texture, String project) {
        this.f127392a = null;
        this.f127392a = new WeakReference<>(texture);
        this.f127393b = project;
    }

    public boolean a() {
        return this.f127392a.get() != null;
    }

    public boolean b() {
        return this.f127392a.get() != null;
    }
}
