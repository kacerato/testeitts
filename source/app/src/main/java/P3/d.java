package P3;

import C5.b;
import D5.h;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.Iterator;
import java.util.List;

public class d extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class a implements h {

        public final List f20683a;

        public a(final List val$themes) {
            this.f20683a = val$themes;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            int i10;
            if (variable == null || (i10 = variable.int_value) < 0 || i10 >= this.f20683a.size()) {
                return;
            }
            Theme.D((Theme.e) this.f20683a.get(i10));
        }
    }

    public d() {
        super("Theme");
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        List<Theme.e> q10 = Theme.q();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        Iterator<Theme.e> it = q10.iterator();
        while (it.hasNext()) {
            steppedArrayList2.add(it.next().a());
        }
        steppedArrayList.add(new C5.b(new a(q10), Theme.m().a(), steppedArrayList2, b.a.SLDropdown, "Theme"));
        steppedArrayList.add(new C5.b("Import themes to data/ITsMagic/Themes", 12));
        return steppedArrayList;
    }
}
