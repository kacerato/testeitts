package q5;

import N7.c;
import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.ExportProject.Utils.BuildConfigs;

public class C15043a {

    public Activity f105919c;

    public EditorPanel f105920d;

    public BuildConfigs f105921e;

    public InterfaceC1963a f105922f;

    public final Context f105918b = c.t();

    public final LayoutInflater f105917a = LayoutInflater.from(c.t());

    public interface InterfaceC1963a {
        void b();
    }

    public C15043a() {
        a();
    }

    public final void a() {
        BuildConfigs c10 = BuildConfigs.c(this.f105918b);
        this.f105921e = c10;
        if (c10 == null) {
            this.f105921e = new BuildConfigs();
        }
    }

    public View b() {
        throw new RuntimeException("Override this method at " + getClass().getSimpleName());
    }

    public void c() {
    }

    public boolean d() {
        BuildConfigs.d(this.f105921e, this.f105918b);
        return true;
    }

    public void e() {
        a();
    }

    public void f() {
        this.f105922f.b();
    }

    public void g(InterfaceC1963a callbacks) {
        this.f105922f = callbacks;
    }

    public void h() {
    }
}
