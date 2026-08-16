package B5;

import C5.b;
import C5.d;
import C5.m;
import M7.c;
import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import dd.C12908b;
import g7.C13299a;
import gb.C13317e;
import java.util.LinkedList;
import java.util.List;
import r4.C15147a;

public class d extends B5.a {

    public int f1545g;

    public C5.c f1546h;

    public GameObject f1547i;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            C5.c cVar = d.this.f1546h;
            if (cVar != null) {
                try {
                    cVar.notifyDataSetChanged();
                } catch (Exception unused) {
                }
            }
        }
    }

    public class b implements Runnable {

        public final Component f1549b;

        public b(final Component val$component) {
            this.f1549b = val$component;
        }

        @Override
        public void run() {
            C5.d n10;
            int V02 = d.this.f1547i.V0(this.f1549b);
            if (V02 < 0 || (n10 = d.this.n(this.f1549b)) == null) {
                return;
            }
            try {
                if (d.this.f1546h.getItemCount() > d.this.f1545g + V02) {
                    d dVar = d.this;
                    dVar.f1546h.n(V02 + dVar.f1545g, n10);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class c implements M7.d {
        public c() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            J3.a.e();
            J3.a.f();
            d.this.a();
        }
    }

    public class C0032d implements M7.d {
        public C0032d() {
        }

        @Override
        public void onClick(View v10, Context context, M7.c tbButton) {
            if (C13317e.J(d.this.f1547i)) {
                C13299a.d(v10, C15147a.e.Left, d.this.f1547i);
            } else {
                Toast.makeText(context, "Please select an object", 0).show();
            }
        }
    }

    public class e implements C5.j {
        public e() {
        }

        @Override
        public void refresh(int position) {
            d.this.b(position);
        }
    }

    public class f extends LinearLayoutManager {
        public f(Context context) {
            super(context);
        }

        @Override
        public boolean supportsPredictiveItemAnimations() {
            return false;
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", d.this.f1547i.getGuid().j().toString());
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                d.this.f1547i.getGuid().n(result.str_value);
            }
        }
    }

    public class h implements D5.h {

        public final Component f1556a;

        public class a implements Runnable {

            public final Variable f1558b;

            public a(final Variable val$variable) {
                this.f1558b = val$variable;
            }

            @Override
            public void run() {
                h.this.f1556a.setEnabled(this.f1558b.booolean_value.booleanValue());
            }
        }

        public h(final Component val$component) {
            this.f1556a = val$component;
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(this.f1556a.isEnabled()));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class i implements D5.g {
        public i() {
        }

        @Override
        public boolean a(View view, Context context, int adapterPosition) {
            return true;
        }
    }

    public class j implements Component.d {

        public final Component f1561a;

        public j(final Component val$component) {
            this.f1561a = val$component;
        }

        @Override
        public void a() {
            d.this.s(this.f1561a);
        }
    }

    public class k implements Runnable {

        public final int f1563b;

        public k(final int val$position) {
            this.f1563b = val$position;
        }

        @Override
        public void run() {
            C5.c cVar = d.this.f1546h;
            if (cVar != null) {
                try {
                    cVar.notifyItemChanged(this.f1563b);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public enum l {
        Transform,
        Components,
        Physics,
        Options
    }

    public d(GameObject currentObject, View scrollView, LinearLayout scrollContent, LinearLayout topContent, RecyclerView midListview, Activity context, LayoutInflater layoutInflater) {
        super(scrollView, scrollContent, topContent, midListview, context, layoutInflater);
        this.f1545g = 1;
        this.f1547i = currentObject;
    }

    private void l() {
    }

    private void m() {
        C5.c cVar = this.f1546h;
        if (cVar != null) {
            cVar.h();
        }
    }

    public C5.d n(Component component) {
        C5.a aVar;
        String title = component.getTitle();
        if (EditorSettings.a().translateComponentNames) {
            title = component.getDisplayableTitle();
        }
        if (component.getEditor().c()) {
            aVar = new C5.a(title, true, component.getEditor());
            aVar.f2032e = false;
        } else {
            aVar = new C5.a(title, component.isEnabled(), new h(component), component.getEditor());
        }
        if (component.getEditor().f()) {
            aVar.f2035h = new i();
        }
        aVar.f2037j = component.getIconResource();
        aVar.f2044q = component.getInspectorColorDirectV2(this.f1511e);
        aVar.f2043p = component.getInspectorColorV2(this.f1511e);
        try {
            aVar.f2046s = component.isDeprecated();
            if (component.isDeprecated()) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                aVar.f2042o = steppedArrayList;
                steppedArrayList.add(new C5.b(Lang.l(Lang.T.DEPRECATED_PREFIX) + component.getDeprecatedMessage(), 12, R.color.theme_error));
                aVar.f2042o.addAll(component.getInternalInspectorEntries(this.f1511e));
                aVar.f2042o.addAll(component.getInspectorEntries(this.f1511e));
            } else {
                List<C5.b> internalInspectorEntries = component.getInternalInspectorEntries(this.f1511e);
                aVar.f2042o = internalInspectorEntries;
                internalInspectorEntries.addAll(component.getInspectorEntries(this.f1511e));
            }
        } catch (Error e10) {
            e10.printStackTrace();
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            aVar.f2042o = steppedArrayList2;
            steppedArrayList2.add(new C5.b(Lang.l(Lang.T.ERROR_SOMETHING_WENT_WRONG), 12, R.color.theme_error));
        } catch (Exception e11) {
            e11.printStackTrace();
            SteppedArrayList steppedArrayList3 = new SteppedArrayList();
            aVar.f2042o = steppedArrayList3;
            steppedArrayList3.add(new C5.b(Lang.l(Lang.T.ERROR_SOMETHING_WENT_WRONG), 12, R.color.theme_error));
        }
        if (aVar.f2042o == null) {
            aVar.f2042o = new SteppedArrayList();
        }
        component.exposeAnimationEntries(component.f79250n, aVar.f2042o);
        List<C12908b> longTapMenu = component.getLongTapMenu();
        if (longTapMenu != null) {
            aVar.f2039l.addAll(longTapMenu);
        }
        List<m> inspectorExtras = component.getInspectorExtras();
        if (inspectorExtras != null) {
            aVar.f2040m.addAll(inspectorExtras);
        }
        component.setCustomInspectorListener(new j(component));
        C5.d dVar = new C5.d(this.f1547i, d.a.Component, aVar, component);
        component.f79257u = dVar;
        return dVar;
    }

    private C5.d o() {
        C5.a aVar = new C5.a(Lang.l(Lang.T.OPTIONS), true, this.f1547i.optionsEditor);
        aVar.f2042o.add(new C5.b(new g(), "Meta ID", b.a.SLStringWrap));
        aVar.f2042o.add(this.f1547i.I0(Lang.l(Lang.T.TAG), this.f1511e));
        aVar.f2042o.add(new C5.b(Lang.l(Lang.T.CHANGING_META_ID), 12));
        aVar.f2037j = R.drawable.generic_settings;
        return new C5.d(this.f1547i, d.a.Component, aVar, null);
    }

    private C5.d p() {
        C5.a aVar = new C5.a(Lang.l(Lang.T.TRANSFORM), true, this.f1547i.transform.getEditor());
        aVar.f2042o = this.f1547i.transform.getInspectorEntries(this.f1511e);
        aVar.f2037j = R.drawable.cube_v2;
        return new C5.d(this.f1547i, d.a.Component, aVar, null);
    }

    private void u() {
        if (!C13317e.J(this.f1547i)) {
            this.f1507a.removeAllViews();
            l();
            m();
            return;
        }
        this.f1507a.removeAllViews();
        l();
        m();
        try {
            x();
        } catch (NullPointerException e10) {
            e10.printStackTrace();
        }
    }

    private void v() {
        LinkedList linkedList = new LinkedList();
        linkedList.add(o());
        this.f1545g = 1;
        for (int i10 = 0; i10 < this.f1547i.N(); i10++) {
            try {
                Component L10 = this.f1547i.L(i10);
                if (L10 != null) {
                    linkedList.add(n(L10));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        C5.c cVar = this.f1546h;
        if (cVar != null) {
            cVar.f(linkedList);
            return;
        }
        this.f1546h = new C5.c(linkedList, this.f1511e, new e());
        this.f1510d.setLayoutManager(new f(this.f1511e));
        this.f1510d.setAdapter(this.f1546h);
    }

    private void w() {
        m();
        v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void x() {
        this.f1509c.setVisibility(8);
        this.f1508b.setVisibility(8);
        this.f1507a.setVisibility(0);
        this.f1510d.setVisibility(0);
        View inflate = this.f1512f.inflate(R.layout.editorv2_inspector_prefab, (ViewGroup) null);
        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.b(inflate, this.f1511e);
        this.f1507a.addView(inflate);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.content);
        ((TextView) inflate.findViewById(R.id.name)).setText("Edit:" + this.f1547i.getName());
        LinkedList linkedList = new LinkedList();
        linkedList.add(new M7.c(R.drawable.save_v2, new c(), c.b.Left, this.f1511e));
        linkedList.add(new M7.c(R.drawable.plus, new C0032d(), c.b.Right, this.f1511e));
        linearLayout.removeAllViews();
        for (int i10 = 0; i10 < linkedList.size(); i10++) {
            M7.g gVar = (M7.g) linkedList.get(i10);
            gVar.a(linearLayout, this.f1511e, this.f1512f);
            M7.k kVar = new M7.k(Nc.b.l0(2.0f, this.f1511e));
            kVar.a(linearLayout, this.f1511e, this.f1512f);
            gVar.n(kVar.e());
        }
        w();
    }

    @Override
    public void a() {
        super.a();
        t();
        l();
        m();
    }

    @Override
    public void b(int position) {
        N7.c.j0(new k(position));
    }

    @Override
    public void c() {
        N7.c.j0(new a());
    }

    @Override
    public void d() {
        super.d();
        q(this.f1547i);
    }

    public final void q(GameObject gameObject) {
        if (C13317e.J(gameObject)) {
            LinearLayout linearLayout = this.f1507a;
            if (linearLayout != null) {
                linearLayout.removeAllViews();
            }
            this.f1547i = gameObject;
            u();
        }
    }

    public void r(GameObject gameObject) {
        t();
        q(gameObject);
    }

    public void s(Component component) {
        if (this.f1546h != null) {
            N7.c.j0(new b(component));
        }
    }

    public final void t() {
        l();
    }
}
