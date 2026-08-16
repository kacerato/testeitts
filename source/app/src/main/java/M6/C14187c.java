package m6;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class C14187c extends EditorPanel {
    public C14187c() {
        super(null, "Low memory warning");
        e1(false);
    }

    public static FloatingPanelArea p1() {
        return C15147a.m(new C14187c(), N7.c.g(380), N7.c.f(200));
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.low_memory_warning_panel, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.warning_tittle);
        TextView textView2 = (TextView) inflate.findViewById(R.id.full_ram_memory);
        TextView textView3 = (TextView) inflate.findViewById(R.id.warning);
        textView.setText(Lang.l(Lang.T.WARNING));
        textView2.setText(Lang.l(Lang.T.FULL_MEMORY_WARNING));
        textView3.setText(Lang.l(Lang.T.FULL_MEMORY_WARNING_STOP_APP));
        return inflate;
    }
}
