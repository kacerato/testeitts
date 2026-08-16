package G4;

import C5.b;
import C5.n;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine2.R;
import java.util.List;
import r4.C15147a;

public class c extends EditorPanel {

    public static final String f7540c0 = "EntriesClassPanel";

    public List<C5.b> f7541X;

    public InspectorEditor f7542Y;

    public FloatingPanelArea f7543Z;

    public LinearLayout f7544a0;

    public d f7545b0;

    public class a implements n {

        public final List f7546a;

        public final LinearLayout f7547b;

        public a(final List val$entries, final LinearLayout val$content) {
            this.f7546a = val$entries;
            this.f7547b = val$content;
        }

        @Override
        public void refresh(int position) {
            c.this.z1(this.f7546a, this.f7547b);
            if (c.this.f7545b0 != null) {
                c.this.f7545b0.b(c.this);
            }
        }
    }

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public c(String tittle, List<C5.b> entries) {
        super(null, tittle);
        this.f7542Y = new InspectorEditor(true);
        this.f7541X = entries;
    }

    private void r1() {
        z1(this.f7541X, this.f7544a0);
    }

    public static c w1(View v10, C15147a.e anchorSide, String tittle, float w10, float h10, List<C5.b> entries) {
        c cVar = new c(tittle, entries);
        cVar.e1(false);
        C15147a.g(v10, cVar, anchorSide, w10, h10);
        return cVar;
    }

    public static c x1(String tittle, int wdp, int hdp, List<C5.b> entries) {
        c cVar = new c(tittle, entries);
        cVar.e1(false);
        cVar.f7543Z = C15147a.m(cVar, N7.c.g(wdp), N7.c.f(hdp));
        return cVar;
    }

    public static c y1(String tittle, List<C5.b> entries) {
        c cVar = new c(tittle, entries);
        cVar.e1(false);
        cVar.f7543Z = C15147a.m(cVar, N7.c.g(250), N7.c.f(250));
        return cVar;
    }

    public void z1(List<C5.b> entries, LinearLayout content) {
        if (content != null) {
            content.removeAllViews();
            if (entries != null) {
                for (int i10 = 0; i10 < entries.size(); i10++) {
                    C5.b bVar = entries.get(i10);
                    b.a aVar = bVar.f2079n;
                    if (aVar == b.a.Vector) {
                        C5.h.y(content, this.f70908j, bVar, 0, M());
                    } else if (aVar == b.a.Component) {
                        C5.h.w(content, this.f70908j, bVar, 0, M(), new a(entries, content));
                    } else {
                        C5.h.x(content, this.f70908j, bVar, 0, true, M());
                    }
                }
            }
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.class_inspector_layout_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new b());
        this.f7544a0 = (LinearLayout) inflate.findViewById(R.id.layout);
        r1();
        return inflate;
    }

    @Override
    public void G0() {
        d dVar = this.f7545b0;
        if (dVar != null) {
            dVar.a(this);
        }
    }

    @Override
    public EditorPanel k() {
        return new c(X(), this.f7541X, this.f7545b0);
    }

    public d s1() {
        return this.f7545b0;
    }

    public void t1() {
        z1(this.f7541X, this.f7544a0);
    }

    public void u1(d callbacks) {
        this.f7545b0 = callbacks;
    }

    public void v1(List<C5.b> entries) {
        this.f7541X = entries;
        z1(entries, this.f7544a0);
    }

    public c(String tittle, List<C5.b> entries, d callbacks) {
        super(null, tittle);
        this.f7542Y = new InspectorEditor(true);
        this.f7541X = entries;
        this.f7545b0 = callbacks;
    }
}
