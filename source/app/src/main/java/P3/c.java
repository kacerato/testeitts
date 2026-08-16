package P3;

import C5.b;
import D5.h;
import android.content.Context;
import android.widget.Toast;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.Iterator;
import java.util.List;

public class c extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class a implements h {

        public final List f20678a;

        public final Context f20679b;

        public a(final List val$languages, final Context val$context) {
            this.f20678a = val$languages;
            this.f20679b = val$context;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                Lang.D((Lang.d) this.f20678a.get(variable.int_value));
                Toast.makeText(this.f20679b, Lang.l(Lang.T.ON_LANGUAGE_CHANGED), 0).show();
            }
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().translateComponentNames + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().translateComponentNames = variable.booolean_value.booleanValue();
                c.this.B();
            }
        }
    }

    public class C0504c implements h {
        public C0504c() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().translateNoCodeV2 + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().translateNoCodeV2 = variable.booolean_value.booleanValue();
                c.this.B();
            }
        }
    }

    public c() {
        super("Language");
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        List<Lang.d> s10 = Lang.s();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        Iterator<Lang.d> it = s10.iterator();
        while (it.hasNext()) {
            steppedArrayList2.add(it.next().a());
        }
        steppedArrayList.add(new C5.b(new a(s10, context), Lang.p().a(), steppedArrayList2, b.a.SLDropdown, "Language"));
        b bVar = new b();
        b.a aVar = b.a.SLBoolean;
        steppedArrayList.add(new C5.b(bVar, "translate component names", aVar));
        steppedArrayList.add(new C5.b(new C0504c(), "translate NoCode", aVar));
        steppedArrayList.add(new C5.b("Import languages to data/ITsMagic/Languages", 12));
        return steppedArrayList;
    }
}
