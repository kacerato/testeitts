package W3;

import C5.b;
import D5.h;
import F5.c;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;

public class a extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class C0758a implements h {
        public C0758a() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().recompileWhenFinishTyping + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().recompileWhenFinishTyping = variable.booolean_value.booleanValue();
                a.this.B();
            }
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().recompileWhenOpenScript + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().recompileWhenOpenScript = variable.booolean_value.booleanValue();
                a.this.B();
            }
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().allowAutomaticFormatter + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().allowAutomaticFormatter = variable.booolean_value.booleanValue();
                a.this.B();
            }
        }
    }

    public class d extends c.n0<EditorSettings.Settings.a> {
        public d() {
        }

        @Override
        public void set(EditorSettings.Settings.a value) {
            EditorSettings.a().codeCompletion = value;
            a.this.B();
        }
    }

    public a() {
        super("Java - Scripting");
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        C0758a c0758a = new C0758a();
        b.a aVar = b.a.SLBoolean;
        steppedArrayList.add(new C5.b(c0758a, "recompile when finish typing", aVar));
        steppedArrayList.add(new C5.b(new b(), "recompile when open script", aVar));
        steppedArrayList.add(new C5.b(new c(), "allow automatic formatter", aVar));
        steppedArrayList.add(F5.c.i("Code completion", EditorSettings.Settings.a.class, EditorSettings.a().codeCompletion, new d()));
        return steppedArrayList;
    }
}
