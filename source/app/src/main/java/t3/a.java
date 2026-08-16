package T3;

import C5.b;
import D5.h;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;

public class a extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class C0571a implements h {
        public C0571a() {
        }

        @Override
        public Variable get() {
            return new Variable("", EditorSettings.a().materialGraphPreviewsEnabled + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                EditorSettings.a().materialGraphPreviewsEnabled = variable.booolean_value.booleanValue();
                a.this.B();
            }
        }
    }

    public a() {
        super("MaterialGraph");
    }

    @Override
    public List<b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new b(new C0571a(), "Enable previews", b.a.SLBoolean));
        return steppedArrayList;
    }
}
