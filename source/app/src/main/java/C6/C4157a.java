package c6;

import N7.c;
import android.view.View;
import android.view.ViewGroup;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class C4157a extends EditorPanel {

    public static final String f34423X = "WarningContentPackagePanel";

    public static void p1() {
        C4157a c4157a = new C4157a();
        float g10 = c.g(500);
        float f10 = c.f(500);
        C15147a.n(c4157a, 0.5f - (g10 / 2.0f), 0.5f - (f10 / 2.0f), g10, f10);
    }

    @Override
    public View C0() {
        return this.f70908j.inflate(R.layout.tree_list_panel, (ViewGroup) null);
    }
}
