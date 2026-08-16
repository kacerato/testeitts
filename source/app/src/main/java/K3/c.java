package K3;

import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

public class c {

    public boolean f10790a = false;

    public final AtomicBoolean f10791b = new AtomicBoolean();

    public f f10792c;

    public final a f10793d;

    public final String f10794e;

    public c(a callback, String project) {
        this.f10793d = callback;
        this.f10794e = project;
    }

    public void a(String project, BuildDictionary buildDictionary, File parent) {
        this.f10792c.a(project, buildDictionary, parent);
    }

    public void b() {
        this.f10791b.set(true);
    }

    public boolean c() {
        return this.f10791b.get();
    }

    public void d() {
    }

    public void e() {
    }

    public void f() {
    }
}
