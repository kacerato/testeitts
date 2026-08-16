package d8;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.JavaComponent.JavaComponent;
import java.lang.ref.WeakReference;

public class l {

    public final WeakReference<JavaComponent> f84443a;

    public l(JavaComponent javaComponent) {
        this.f84443a = new WeakReference<>(javaComponent);
    }

    public JavaComponent a() {
        return this.f84443a.get();
    }

    public boolean b() {
        return this.f84443a.get() != null;
    }

    public boolean c() {
        return this.f84443a.get() != null;
    }
}
