package S3;

import C5.b;
import D5.h;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;

public class c extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class a implements h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().maxTerminalHistory + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().maxTerminalHistory = variable.int_value;
                c.this.B();
            }
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().catchTerminalExceptionsEvenIfClosed + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().catchTerminalExceptionsEvenIfClosed = variable.booolean_value.booleanValue();
                c.this.B();
            }
        }
    }

    public c() {
        super("Terminal");
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new C5.b(new a(), "Max history", b.a.SLInt));
        steppedArrayList.add(new C5.b(new b(), "Catch terminal exceptions even if closed", b.a.SLBoolean));
        return steppedArrayList;
    }
}
