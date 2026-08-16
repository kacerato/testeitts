package X3;

import C5.b;
import D5.h;
import android.content.Context;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;

public class a extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class C0777a implements h {
        public C0777a() {
        }

        @Override
        public Variable get() {
            return new Variable("", a.this.w().shortcut_saveProject + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                a.this.w().shortcut_saveProject = variable.str_value;
            }
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", a.this.w().shortcut_maximizePanel + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                a.this.w().shortcut_maximizePanel = variable.str_value;
            }
        }
    }

    public class c implements F5.d {
        public c() {
        }

        @Override
        public void b(String key) {
            a.this.w().shortcut_focusCamera = key;
        }

        @Override
        public String get() {
            return a.this.w().shortcut_focusCamera;
        }
    }

    public class d implements F5.d {
        public d() {
        }

        @Override
        public void b(String key) {
            a.this.w().shortcut_positionAxis = key;
        }

        @Override
        public String get() {
            return a.this.w().shortcut_positionAxis;
        }
    }

    public class e implements F5.d {
        public e() {
        }

        @Override
        public void b(String key) {
            a.this.w().shortcut_rotationAxis = key;
        }

        @Override
        public String get() {
            return a.this.w().shortcut_rotationAxis;
        }
    }

    public class f implements F5.d {
        public f() {
        }

        @Override
        public void b(String key) {
            a.this.w().shortcut_scaleAxis = key;
        }

        @Override
        public String get() {
            return a.this.w().shortcut_scaleAxis;
        }
    }

    public a() {
        super("Shortcuts");
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        C0777a c0777a = new C0777a();
        b.a aVar = b.a.SLString;
        steppedArrayList.add(new C5.b(c0777a, "Save project", aVar));
        steppedArrayList.add(new C5.b(new b(), "Maximize panel", aVar));
        steppedArrayList.add(F5.c.k("Focus camera", new c()));
        steppedArrayList.add(F5.c.k("Position axis", new d()));
        steppedArrayList.add(F5.c.k("Rotation axis", new e()));
        steppedArrayList.add(F5.c.k("Scale axis", new f()));
        return steppedArrayList;
    }
}
