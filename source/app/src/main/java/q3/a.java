package Q3;

import C5.b;
import F5.c;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;

public class a extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class C0526a implements D5.h {
        public C0526a() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().reopenTheLatestProjectAtStartup + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().reopenTheLatestProjectAtStartup = variable.booolean_value.booleanValue();
                a.this.B();
            }
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().enableProfilingToolsV2 + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().enableProfilingToolsV2 = variable.booolean_value.booleanValue();
                a.this.B();
            }
        }
    }

    public class c implements D5.h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().vibrateOnSelection + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().vibrateOnSelection = variable.booolean_value.booleanValue();
                a.this.B();
            }
        }
    }

    public class d implements D5.h {
        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().focusOnPropertiesAfterObjectSelection + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().focusOnPropertiesAfterObjectSelection = variable.booolean_value.booleanValue();
                a.this.B();
            }
        }
    }

    public class e implements D5.h {
        public e() {
        }

        @Override
        public Variable get() {
            String str = EditorSettings.a().packagesRepositoryUrl;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                String str = variable.str_value;
                EditorSettings.a().packagesRepositoryUrl = str != null ? str.trim() : "";
                a.this.B();
            }
        }
    }

    public class f extends c.n0<EditorSettings.Settings.b> {
        public f() {
        }

        @Override
        public void set(EditorSettings.Settings.b value) {
            EditorSettings.a().orientation = value;
            a.this.B();
            N7.c.c(value);
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().maximizeGameViewWhenPlay + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().maximizeGameViewWhenPlay = variable.booolean_value.booleanValue();
                a.this.B();
            }
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().projectCheckAtStartup + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().projectCheckAtStartup = variable.booolean_value.booleanValue();
                a.this.B();
            }
        }
    }

    public a() {
        super("Behaviours");
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        C0526a c0526a = new C0526a();
        b.a aVar = b.a.SLBoolean;
        steppedArrayList.add(new C5.b(c0526a, "Reopen the latest project at startup", aVar));
        steppedArrayList.add(new C5.b(new b(), "Enable profiling", aVar));
        steppedArrayList.add(new C5.b(new c(), "Vibrate on selection", aVar));
        steppedArrayList.add(new C5.b(new d(), "Focus on properties after object selection", aVar));
        steppedArrayList.add(new C5.b(new e(), "Packages repository URL (empty = default)", b.a.SLString));
        steppedArrayList.add(F5.c.i("Orientation", EditorSettings.Settings.b.class, EditorSettings.a().orientation, new f()));
        steppedArrayList.add(new C5.b(new g(), "Maximize game view when play", aVar));
        steppedArrayList.add(new C5.b(new h(), "Project check at startup", aVar));
        return steppedArrayList;
    }
}
