package M3;

import F7.l;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class c extends N3.a {

    public final List<com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a> f14519c0;

    public LinearLayout f14520d0;

    public l<com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a> f14521e0;

    public c() {
        super(Lang.l(Lang.T.SETTINGS));
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f14519c0 = steppedArrayList;
        steppedArrayList.add(new Z3.a());
        super.u1(steppedArrayList);
    }
}
