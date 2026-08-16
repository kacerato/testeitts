package M3;

import F7.l;
import Y3.d;
import Y3.e;
import Y3.f;
import Y3.g;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class b extends N3.a {

    public final List<com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a> f14516c0;

    public LinearLayout f14517d0;

    public l<com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a> f14518e0;

    public b() {
        super(Lang.l(Lang.T.PROJECT_SETTINGS));
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f14516c0 = steppedArrayList;
        steppedArrayList.add(new d());
        steppedArrayList.add(new Y3.c());
        steppedArrayList.add(new f());
        steppedArrayList.add(new g());
        steppedArrayList.add(new e());
        super.u1(steppedArrayList);
    }
}
