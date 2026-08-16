package G4;

import C5.d;
import C5.j;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine2.R;
import java.lang.reflect.Field;
import java.util.LinkedList;

public class g extends EditorPanel {

    public static final String f7565d0 = "RecyclerClassPanel";

    public Class f7566X;

    public Object f7567Y;

    public InspectorEditor f7568Z;

    public RecyclerView f7569a0;

    public C5.c f7570b0;

    public h f7571c0;

    public class a implements j {
        public a() {
        }

        @Override
        public void refresh(int position) {
            g.this.v1(position);
        }
    }

    public class b extends LinearLayoutManager {
        public b(Context context) {
            super(context);
        }

        @Override
        public boolean supportsPredictiveItemAnimations() {
            return false;
        }
    }

    public class c extends P8.a {
        public c() {
        }

        @Override
        public void a(Field field, Object instance, Class address) {
            if (g.this.f7571c0 != null) {
                g.this.f7571c0.a(g.this);
            }
        }

        @Override
        public void b() {
            g.this.t1();
            if (g.this.f7571c0 != null) {
                g.this.f7571c0.a(g.this);
            }
        }
    }

    public g(String tittle, Class cls, Object instance, h callbacks) {
        super(null, tittle);
        this.f7568Z = new InspectorEditor(true);
        this.f7566X = cls;
        this.f7567Y = instance;
        this.f7571c0 = callbacks;
    }

    public void t1() {
        LinkedList linkedList = new LinkedList();
        linkedList.add(s1());
        C5.c cVar = this.f7570b0;
        if (cVar != null) {
            cVar.f(linkedList);
            return;
        }
        this.f7570b0 = new C5.c(linkedList, M(), new a());
        this.f7569a0.setLayoutManager(new b(M()));
        this.f7569a0.setAdapter(this.f7570b0);
    }

    public void v1(int position) {
        C5.c cVar = this.f7570b0;
        if (cVar != null) {
            cVar.l(position);
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.class_inspector_panel, (ViewGroup) null);
        this.f7569a0 = (RecyclerView) inflate;
        t1();
        return inflate;
    }

    @Override
    public void G0() {
        h hVar = this.f7571c0;
        if (hVar != null) {
            hVar.b(this);
        }
    }

    @Override
    public EditorPanel k() {
        return new g(X(), this.f7566X, this.f7567Y, this.f7571c0);
    }

    public final C5.d s1() {
        C5.a aVar = new C5.a(X(), true, this.f7568Z);
        aVar.f2042o.addAll(P8.f.B(this.f7566X, this.f7567Y, M(), true, new c()));
        aVar.f2037j = R.drawable.cube_v2;
        return new C5.d(null, d.a.Component, aVar, null);
    }

    public h u1() {
        return this.f7571c0;
    }

    public final void w1() {
        if (this.f7570b0 != null) {
            this.f7570b0.n(0, s1());
        }
    }

    public void x1(h callbacks) {
        this.f7571c0 = callbacks;
    }
}
