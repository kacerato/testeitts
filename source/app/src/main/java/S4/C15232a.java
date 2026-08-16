package s4;

import N7.c;
import Vc.e;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class C15232a extends EditorPanel {

    public final int f109187X;

    public final boolean f109188Y;

    public C15232a(int resource, boolean fullscreen) {
        super(null, "");
        super.e1(false);
        this.f109187X = resource;
        this.f109188Y = fullscreen;
    }

    public static C15232a p1(int resource) {
        C15232a c15232a = new C15232a(resource, true);
        FloatingPanelArea m10 = C15147a.m(c15232a, 1.0f, 1.0f);
        m10.T();
        m10.F1(false);
        m10.N0(true, true, true, false);
        return c15232a;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.simple_fixed_image_view_panel, (ViewGroup) null);
        e.V((ImageView) inflate.findViewById(R.id.imageView), this.f109187X, M());
        if (this.f109188Y) {
            c.a(this);
        }
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        c.f0(this);
    }
}
