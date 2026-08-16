package G4;

import C5.b;
import C5.n;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine2.R;
import java.lang.reflect.Field;
import java.util.List;

public class a extends EditorPanel {

    public static final String f7532c0 = "ClassPanel";

    public Class f7533X;

    public Object f7534Y;

    public InspectorEditor f7535Z;

    public LinearLayout f7536a0;

    public G4.b f7537b0;

    public class C0136a extends P8.a {
        public C0136a() {
        }

        @Override
        public void a(Field field, Object instance, Class address) {
            if (a.this.f7537b0 != null) {
                a.this.f7537b0.b(a.this);
            }
        }

        @Override
        public void b() {
            a.this.r1();
            if (a.this.f7537b0 != null) {
                a.this.f7537b0.b(a.this);
            }
        }
    }

    public class b implements n {
        public b() {
        }

        @Override
        public void refresh(int position) {
            a.this.r1();
            if (a.this.f7537b0 != null) {
                a.this.f7537b0.b(a.this);
            }
        }
    }

    public a(String tittle, Class cls, Object instance, G4.b classPanelCallbacks) {
        super(null, tittle);
        this.f7535Z = new InspectorEditor(true);
        this.f7533X = cls;
        this.f7534Y = instance;
        this.f7537b0 = classPanelCallbacks;
    }

    private void u1(List<C5.b> entries, LinearLayout content) {
        content.removeAllViews();
        for (C5.b bVar : entries) {
            b.a aVar = bVar.f2079n;
            if (aVar == b.a.Vector) {
                C5.h.y(content, this.f70908j, bVar, 0, M());
            } else if (aVar == b.a.Component) {
                C5.h.w(content, this.f70908j, bVar, 0, M(), new b());
            } else {
                C5.h.x(content, this.f70908j, bVar, 0, true, M());
            }
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.class_inspector_layout_panel, (ViewGroup) null);
        this.f7536a0 = (LinearLayout) inflate.findViewById(R.id.layout);
        r1();
        return inflate;
    }

    @Override
    public void G0() {
        G4.b bVar = this.f7537b0;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    @Override
    public EditorPanel k() {
        return new a(X(), this.f7533X, this.f7534Y, this.f7537b0);
    }

    public final void r1() {
        u1(P8.f.B(this.f7533X, this.f7534Y, M(), true, new C0136a()), this.f7536a0);
    }

    public G4.b s1() {
        return this.f7537b0;
    }

    public void t1(G4.b classPanelCallbacks) {
        this.f7537b0 = classPanelCallbacks;
    }
}
