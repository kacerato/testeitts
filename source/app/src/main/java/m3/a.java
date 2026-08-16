package M3;

import F7.l;
import S3.d;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import r4.C15147a;

public class a extends N3.a {

    public final List<com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a> f14513c0;

    public LinearLayout f14514d0;

    public l<com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a> f14515e0;

    public a() {
        super(Lang.l(Lang.T.EDITOR_SETTINGS));
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f14513c0 = steppedArrayList;
        steppedArrayList.add(new S3.b());
        steppedArrayList.add(new d());
        steppedArrayList.add(new P3.a());
        steppedArrayList.add(new P3.c());
        steppedArrayList.add(new P3.d());
        steppedArrayList.add(new R3.a());
        steppedArrayList.add(new R3.b());
        steppedArrayList.add(new W3.a());
        steppedArrayList.add(new Q3.a());
        steppedArrayList.add(new T3.a());
        steppedArrayList.add(new U3.a());
        steppedArrayList.add(new P3.b());
        steppedArrayList.add(new V3.a());
        steppedArrayList.add(new X3.a());
        steppedArrayList.add(new S3.c());
        super.u1(steppedArrayList);
    }

    public static FloatingPanelArea w1(String jumpTo) {
        float g10 = N7.c.g(330);
        float f10 = N7.c.f(400);
        a aVar = new a();
        if (jumpTo != null && !jumpTo.trim().isEmpty()) {
            aVar.s1(jumpTo);
        }
        return C15147a.n(aVar, 0.2f, 0.1f, g10, f10);
    }
}
