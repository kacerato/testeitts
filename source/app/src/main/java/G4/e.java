package G4;

import C5.b;
import C5.n;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.List;
import r4.C15147a;
import rc.C15169a;

public class e extends EditorPanel {

    public static final String f7550d0 = "EntriesClassPanel";

    public List<C5.b> f7551X;

    public InspectorEditor f7552Y;

    public LinearLayout f7553Z;

    public f f7554a0;

    public boolean f7555b0;

    public FloatingPanelArea f7556c0;

    public class a implements n {

        public final List f7557a;

        public final LinearLayout f7558b;

        public a(final List val$entries, final LinearLayout val$content) {
            this.f7557a = val$entries;
            this.f7558b = val$content;
        }

        @Override
        public void refresh(int position) {
            e.this.w1(this.f7557a, this.f7558b);
            if (e.this.f7554a0 != null) {
                e.this.f7554a0.f(e.this);
            }
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View view) {
            e.this.R0();
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {
        public c() {
        }

        @Override
        public void click(View v10) {
            e.this.f7554a0.g(v10, e.this);
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {

        public class a implements Runnable {

            public final View f7563b;

            public a(final View val$v) {
                this.f7563b = val$v;
            }

            @Override
            public void run() {
                e.this.f7554a0.a(this.f7563b, e.this);
            }
        }

        public d() {
        }

        @Override
        public void click(View v10) {
            N7.c.d(new a(v10));
        }
    }

    public e(String tittle, f callbacks) {
        super(null, tittle);
        this.f7552Y = new InspectorEditor(true);
        this.f7555b0 = false;
        this.f7551X = new SteppedArrayList();
        this.f7554a0 = callbacks;
    }

    private void r1() {
        w1(this.f7551X, this.f7553Z);
    }

    public void w1(List<C5.b> entries, LinearLayout content) {
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

    public static e x1(String tittle, int w10, int h10, f callbacks) {
        e eVar = new e(tittle, callbacks);
        eVar.e1(false);
        FloatingPanelArea m10 = C15147a.m(eVar, N7.c.g(w10), N7.c.f(h10));
        m10.T();
        eVar.f7556c0 = m10;
        m10.I1(w10, h10, FloatingPanelArea.i.Fixed);
        return eVar;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.modern_class_inspector_layout_panel, (ViewGroup) null);
        this.f7553Z = (LinearLayout) inflate.findViewById(R.id.layout);
        ((TextView) inflate.findViewById(R.id.tittle)).setText(X());
        inflate.findViewById(R.id.close_button).setOnClickListener(new b());
        TextView textView = (TextView) inflate.findViewById(R.id.back);
        textView.setOnClickListener(new c());
        textView.setText(Lang.l(Lang.T.CANCEL));
        TextView textView2 = (TextView) inflate.findViewById(R.id.next);
        textView2.setOnClickListener(new d());
        textView2.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_NEXT));
        f fVar = this.f7554a0;
        if (fVar != null && fVar.d()) {
            textView.setVisibility(8);
            textView2.setVisibility(8);
        }
        r1();
        this.f7554a0.b(this);
        return inflate;
    }

    @Override
    public void G0() {
        f fVar = this.f7554a0;
        if (fVar != null) {
            fVar.e(this);
        }
    }

    @Override
    public EditorPanel k() {
        return new e(X(), this.f7551X, this.f7554a0);
    }

    @Override
    public void n1() {
        super.n1();
        if (this.f7555b0) {
            if (C15169a.q()) {
                N7.c.D().u(this);
            } else {
                N7.c.D().s0(this);
            }
        }
    }

    public f s1() {
        return this.f7554a0;
    }

    public void t1() {
        w1(this.f7551X, this.f7553Z);
    }

    public void u1(f callbacks) {
        this.f7554a0 = callbacks;
    }

    public void v1(List<C5.b> entries) {
        this.f7551X = entries;
        w1(entries, this.f7553Z);
    }

    public e(String tittle, List<C5.b> entries, f callbacks) {
        super(null, tittle);
        this.f7552Y = new InspectorEditor(true);
        this.f7555b0 = false;
        this.f7551X = entries;
        this.f7554a0 = callbacks;
    }
}
