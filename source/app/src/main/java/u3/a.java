package U3;

import C5.b;
import D5.h;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;

public class a extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class C0711a implements h {
        public C0711a() {
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
                T5.b.p();
                T5.b.o();
            }
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            String str = EditorSettings.a().packagesDatabasePath;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                String str = variable.str_value;
                EditorSettings.a().packagesDatabasePath = str != null ? str.trim() : "";
                a.this.B();
                T5.b.p();
                T5.b.o();
            }
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            String str = EditorSettings.a().packagesVersionPath;
            if (str == null) {
                str = "";
            }
            return new Variable("", str);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                String str = variable.str_value;
                EditorSettings.a().packagesVersionPath = str != null ? str.trim() : "";
                a.this.B();
                T5.b.p();
                T5.b.o();
            }
        }
    }

    public a() {
        super("Package manager");
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        C0711a c0711a = new C0711a();
        b.a aVar = b.a.SLString;
        steppedArrayList.add(new C5.b(c0711a, "Repository", aVar));
        steppedArrayList.add(new C5.b("Default repository:https://github.com/ITsMagic-Software/Packages-Manifest", 12));
        steppedArrayList.add(new C5.b(new b(), "Database file", aVar));
        steppedArrayList.add(new C5.b("Default database file:release/autogen_database.json.gz", 12));
        steppedArrayList.add(new C5.b(new c(), "Version file", aVar));
        steppedArrayList.add(new C5.b("Default Version file:release/autogen_version.txt", 12));
        return steppedArrayList;
    }
}
