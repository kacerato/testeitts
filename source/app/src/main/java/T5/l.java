package t5;

import android.view.View;
import android.view.ViewGroup;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class l extends EditorPanel {

    public static final String f117083Z = "SimpleViewPanel";

    public final int f117084X;

    public final c f117085Y;

    public class a extends AbstractViewOnClickListenerC12733a {
        public a() {
        }

        @Override
        public void click(View v10) {
            l.this.R0();
        }
    }

    public static class b implements c {
        @Override
        public void a() {
        }

        @Override
        public void b(View v10, l panel) {
        }
    }

    public interface c {
        void a();

        void b(View v10, l panel);
    }

    public l(String icon, String tittle, int resourceID, c listener) {
        super(icon, tittle);
        super.e1(false);
        this.f117084X = resourceID;
        this.f117085Y = listener;
    }

    public static FloatingPanelArea p1(int widthDP, int heightDP, int resourceID, c listener) {
        return r1(null, null, widthDP, heightDP, null, resourceID, listener);
    }

    public static FloatingPanelArea q1(int widthDP, int heightDP, String name, int resourceID, c listener) {
        return r1(null, null, widthDP, heightDP, name, resourceID, listener);
    }

    public static FloatingPanelArea r1(View anchor, C15147a.e anchorSide, int widthDP, int heightDP, String name, int resourceID, c listener) {
        l lVar = new l(null, name, resourceID, listener);
        float g10 = N7.c.g(widthDP);
        float f10 = N7.c.f(heightDP);
        FloatingPanelArea m10 = anchor == null ? C15147a.m(lVar, g10, f10) : C15147a.g(anchor, lVar, anchorSide, g10, f10);
        if (name == null) {
            m10.T();
        }
        m10.I1(widthDP, heightDP, FloatingPanelArea.i.MinSize);
        return m10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(this.f117084X, (ViewGroup) null);
        View findViewById = inflate.findViewById(R.id.auto_close);
        if (findViewById != null) {
            findViewById.setOnClickListener(new a());
        }
        this.f117085Y.b(inflate, this);
        return inflate;
    }

    @Override
    public void G0() {
        this.f117085Y.a();
        super.G0();
    }

    @Override
    public EditorPanel k() {
        return new l(S(), X(), this.f117084X, this.f117085Y);
    }
}
