package B5;

import C5.b;
import C5.d;
import a8.C3590b;
import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.textfield.TextInputEditText;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Panels.Objects.ObjectsPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.F;
import com.itsmagic.engine.Activities.Editor.Utils.UIComponents.CustomCheckBox.CustomCheckBox;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Link.PrefabLink;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import dd.C12908b;
import g7.C13299a;
import gb.C13317e;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import r4.C15147a;

public class c extends B5.a {

    public C5.c f1517g;

    public GameObject f1518h;

    public class a implements D5.h {
        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f1518h.dontDestroyOnLoad + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f1518h.dontDestroyOnLoad = variable.booolean_value.booleanValue();
            }
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f1518h.allowAnimations + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                c.this.f1518h.allowAnimations = variable.booolean_value.booleanValue();
            }
        }
    }

    public class C0031c implements D5.h {
        public C0031c() {
        }

        @Override
        public Variable get() {
            return new Variable("", c.this.f1518h.getGuid().j().toString());
        }

        @Override
        public void set(Variable result) {
            if (result != null) {
                c.this.f1518h.getGuid().n(result.str_value);
            }
        }
    }

    public class d implements D5.h {

        public final Component f1522a;

        public class a implements Runnable {

            public final Variable f1524b;

            public a(final Variable val$variable) {
                this.f1524b = val$variable;
            }

            @Override
            public void run() {
                d.this.f1522a.setEnabled(this.f1524b.booolean_value.booleanValue());
            }
        }

        public d(final Component val$component) {
            this.f1522a = val$component;
        }

        @Override
        public Variable get() {
            return new Variable("", Boolean.valueOf(this.f1522a.isEnabled()));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.g {
        public e() {
        }

        @Override
        public boolean a(View view, Context context, int adapterPosition) {
            return true;
        }
    }

    public class f implements Runnable {

        public final int f1527b;

        public f(final int val$position) {
            this.f1527b = val$position;
        }

        @Override
        public void run() {
            C5.c cVar = c.this.f1517g;
            if (cVar != null) {
                try {
                    cVar.notifyItemChanged(this.f1527b);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override
        public void run() {
            C5.c cVar = c.this.f1517g;
            if (cVar != null) {
                try {
                    cVar.notifyDataSetChanged();
                } catch (Exception unused) {
                }
            }
        }
    }

    public class h implements Runnable {

        public final Component f1530b;

        public h(final Component val$component) {
            this.f1530b = val$component;
        }

        @Override
        public void run() {
            C5.d n10;
            if (c.this.f1518h.V0(this.f1530b) < 0 || (n10 = c.this.n(this.f1530b)) == null) {
                return;
            }
            for (int i10 = 0; i10 < c.this.f1517g.getItemCount(); i10++) {
                try {
                    if (c.this.f1517g.i(i10).f2155b == this.f1530b) {
                        c.this.f1517g.n(i10, n10);
                        return;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
    }

    public class i implements TextView.OnEditorActionListener {

        public final TextInputEditText f1532b;

        public i(final TextInputEditText val$textInputEditText) {
            this.f1532b = val$textInputEditText;
        }

        @Override
        public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
            if (actionId != 6) {
                return false;
            }
            N7.c.Y();
            try {
                c.this.f1518h.E1(v10.getText().toString());
                ObjectsPanel.O1(c.this.f1518h);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f1532b.clearFocus();
            return false;
        }
    }

    public class j implements View.OnFocusChangeListener {

        public final View f1534a;

        public j(final View val$name) {
            this.f1534a = val$name;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            N7.c.Y();
            if (hasFocus) {
                return;
            }
            try {
                Editable text = F.c(this.f1534a).getText();
                if (text != null) {
                    c.this.f1518h.E1(text.toString());
                    ObjectsPanel.O1(c.this.f1518h);
                }
            } catch (Exception unused) {
            }
        }
    }

    public class k implements CustomCheckBox.a {
        public k() {
        }

        @Override
        public void a(CustomCheckBox compoundButton, boolean b10) {
            N7.c.Y();
            c.this.f1518h.setEnabled(b10);
        }
    }

    public class l extends AbstractViewOnClickListenerC12733a {
        public l() {
        }

        @Override
        public void click(View v10) {
            N7.c.Y();
            if (C13317e.J(c.this.f1518h)) {
                C13299a.d(v10, C15147a.e.Left, c.this.f1518h);
            } else {
                Toast.makeText(c.this.f1511e, "Please select an object", 0).show();
            }
        }
    }

    public class m implements TextView.OnEditorActionListener {

        public final TextInputEditText f1538b;

        public m(final TextInputEditText val$textInputEditText) {
            this.f1538b = val$textInputEditText;
        }

        @Override
        public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
            if (actionId != 6) {
                return false;
            }
            N7.c.Y();
            try {
                c.this.f1518h.E1(v10.getText().toString());
                ObjectsPanel.O1(c.this.f1518h);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f1538b.clearFocus();
            return false;
        }
    }

    public class n implements View.OnFocusChangeListener {

        public final View f1540a;

        public n(final View val$name) {
            this.f1540a = val$name;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            N7.c.Y();
            if (hasFocus) {
                return;
            }
            try {
                Editable text = F.c(this.f1540a).getText();
                if (text != null) {
                    c.this.f1518h.E1(text.toString());
                    ObjectsPanel.O1(c.this.f1518h);
                }
            } catch (Exception unused) {
            }
        }
    }

    public class o implements D5.g {
        public o() {
        }

        @Override
        public boolean a(View view, Context context, int adapterPosition) {
            return true;
        }
    }

    public class p implements C5.j {
        public p() {
        }

        @Override
        public void refresh(int position) {
            c.this.b(position);
        }
    }

    public class q extends LinearLayoutManager {
        public q(Context context) {
            super(context);
        }

        @Override
        public boolean supportsPredictiveItemAnimations() {
            return false;
        }
    }

    public enum r {
        Transform,
        Components,
        Physics,
        Options
    }

    public c(GameObject currentObject, View scrollView, LinearLayout scrollContent, LinearLayout topContent, RecyclerView midListview, Activity context, LayoutInflater layoutInflater) {
        super(scrollView, scrollContent, topContent, midListview, context, layoutInflater);
        this.f1518h = currentObject;
    }

    @Override
    public void a() {
        super.a();
        k();
        l();
    }

    @Override
    public void b(int position) {
        N7.c.j0(new f(position));
    }

    @Override
    public void c() {
        N7.c.j0(new g());
    }

    @Override
    public void d() {
        super.d();
        if (W7.b.f27309i.f31909a.b() == C3590b.a.GameObject) {
            u();
        }
    }

    @Override
    public void h() {
        List<C5.b> list;
        super.h();
        if (this.f1517g != null) {
            for (int i10 = 0; i10 < this.f1517g.getItemCount(); i10++) {
                C5.a aVar = this.f1517g.i(i10).f2157d;
                if (aVar != null && (list = aVar.f2042o) != null) {
                    Iterator<C5.b> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().b();
                    }
                }
            }
        }
    }

    public final void k() {
    }

    public final void l() {
        C5.c cVar = this.f1517g;
        if (cVar != null) {
            cVar.h();
        }
    }

    public final C5.d m() {
        this.f1518h.optionsEditor.i(true);
        C5.a aVar = new C5.a(Lang.l(Lang.T.OPTIONS), true, this.f1518h.optionsEditor);
        aVar.f2037j = R.drawable.modeller_wireframe;
        return new C5.d(this.f1518h, d.a.Component, aVar, null);
    }

    public final C5.d n(Component component) {
        C5.a aVar;
        String title = component.getTitle();
        if (EditorSettings.a().translateComponentNames) {
            title = component.getDisplayableTitle();
        }
        if (component.getEditor().c()) {
            aVar = new C5.a(title, true, component.getEditor());
            aVar.f2032e = false;
        } else {
            aVar = new C5.a(title, component.isEnabled(), new d(component), component.getEditor());
        }
        if (component.getEditor().f()) {
            aVar.f2035h = new e();
        }
        aVar.f2037j = component.getIconResource();
        aVar.f2038k = component.shouldTintIcon();
        aVar.f2044q = component.getInspectorColorDirectV2(this.f1511e);
        aVar.f2043p = component.getInspectorColorV2(this.f1511e);
        try {
            aVar.f2046s = component.isDeprecated();
            if (component.isDeprecated()) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                aVar.f2042o = steppedArrayList;
                steppedArrayList.add(new C5.b(Lang.l(Lang.T.DEPRECATED_PREFIX) + component.getDeprecatedMessage(), 12, R.color.theme_error));
            }
            aVar.f2042o = component.getInternalInspectorEntries(this.f1511e);
            List<C5.b> inspectorEntries = component.getInspectorEntries(this.f1511e);
            if (inspectorEntries != null) {
                aVar.f2042o.addAll(inspectorEntries);
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
        component.exposeAnimationEntries(this.f1518h, aVar.f2042o);
        List<C12908b> longTapMenu = component.getLongTapMenu();
        if (longTapMenu != null) {
            aVar.f2039l.addAll(longTapMenu);
        }
        List<C5.m> inspectorExtras = component.getInspectorExtras();
        if (inspectorExtras != null) {
            aVar.f2040m.addAll(inspectorExtras);
        }
        C5.d dVar = new C5.d(this.f1518h, d.a.Component, aVar, component);
        component.f79257u = dVar;
        return dVar;
    }

    public final C5.d o() {
        C5.a aVar = new C5.a(Lang.l(Lang.T.OPTIONS), true, this.f1518h.optionsEditor);
        List<C5.b> list = aVar.f2042o;
        a aVar2 = new a();
        String l10 = Lang.l(Lang.T.DONT_DESTROY_ON_LOAD);
        b.a aVar3 = b.a.SLBoolean;
        list.add(new C5.b(aVar2, l10, aVar3));
        aVar.f2042o.add(new C5.b(new b(), "Allow animations", aVar3));
        if (!r()) {
            aVar.f2042o.add(new C5.b(new C0031c(), "Meta ID", b.a.SLStringWrap));
        }
        if (!r()) {
            aVar.f2042o.add(this.f1518h.I0(Lang.l(Lang.T.TAG), this.f1511e));
        }
        if (!r()) {
            aVar.f2042o.add(new C5.b(Lang.l(Lang.T.CHANGING_META_ID), 12));
        }
        aVar.f2037j = R.drawable.generic_settings;
        return new C5.d(this.f1518h, d.a.Component, aVar, null);
    }

    public final C5.d p() {
        GameObject gameObject = this.f1518h;
        Component.e eVar = Component.e.UIRect;
        if (gameObject.c0(eVar) == null) {
            C5.a aVar = new C5.a(Lang.l(Lang.T.TRANSFORM), true, this.f1518h.transform.getEditor());
            aVar.f2042o = this.f1518h.transform.getInspectorEntries(this.f1511e);
            aVar.f2037j = R.drawable.cube_v2;
            return new C5.d(this.f1518h, d.a.Component, aVar, null);
        }
        UIRect uIRect = (UIRect) this.f1518h.c0(eVar);
        C5.a aVar2 = new C5.a(Lang.l(Lang.T.RECT), true, this.f1518h.transform.getEditor());
        aVar2.f2042o = uIRect.getInspectorEntries(this.f1511e);
        aVar2.f2037j = R.drawable.boundinc_center_v2;
        return new C5.d(this.f1518h, d.a.Component, aVar2, null);
    }

    public final boolean q() {
        if (C13317e.J(this.f1518h)) {
            return ((PrefabLink) this.f1518h.c0(Component.e.PrefabLink)).isChild();
        }
        return false;
    }

    public final boolean r() {
        return C13317e.J(this.f1518h) && this.f1518h.c0(Component.e.PrefabLink) != null;
    }

    public void s(Component component) {
        if (this.f1517g != null) {
            N7.c.j0(new h(component));
        }
    }

    public void t(GameObject gameObject) {
        LinearLayout linearLayout = this.f1507a;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
        }
        this.f1518h = gameObject;
        u();
    }

    public final void u() {
        if (!C13317e.J(this.f1518h)) {
            a();
            return;
        }
        a();
        try {
            x();
        } catch (NullPointerException e10) {
            e10.printStackTrace();
        }
    }

    public final void v() {
        LinkedList linkedList = new LinkedList();
        this.f1518h.c0(Component.e.UIRect);
        if (this.f1518h.c1()) {
            linkedList.add(m());
        } else {
            int i10 = 0;
            if (r()) {
                for (int i11 = 0; i11 < this.f1518h.N(); i11++) {
                    try {
                        Component L10 = this.f1518h.L(i11);
                        if (L10 != null && (!r() || L10.getType() == Component.e.PrefabLink)) {
                            C5.d n10 = n(L10);
                            n10.f2157d.f2035h = new o();
                            linkedList.add(n10);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                if (!q()) {
                    linkedList.add(p());
                    if (!com.itsmagic.engine.Engines.Engine.World.a.y()) {
                        linkedList.add(o());
                    }
                }
                while (i10 < this.f1518h.N()) {
                    try {
                        Component L11 = this.f1518h.L(i10);
                        if (L11 != null && !L11.f79241c && L11.getType() != Component.e.PrefabLink && !L11.clonedByPrefab) {
                            linkedList.add(n(L11));
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                    i10++;
                }
            } else {
                linkedList.add(p());
                if (!com.itsmagic.engine.Engines.Engine.World.a.y()) {
                    linkedList.add(o());
                }
                while (i10 < this.f1518h.N()) {
                    try {
                        Component L12 = this.f1518h.L(i10);
                        if (L12 != null && !L12.f79241c) {
                            linkedList.add(n(L12));
                        }
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                    i10++;
                }
            }
        }
        C5.c cVar = this.f1517g;
        if (cVar != null) {
            cVar.f(linkedList);
            return;
        }
        this.f1517g = new C5.c(linkedList, this.f1511e, new p());
        this.f1510d.setLayoutManager(new q(this.f1511e));
        this.f1510d.setAdapter(this.f1517g);
    }

    public final void w() {
        l();
        v();
    }

    public final void x() {
        this.f1509c.setVisibility(8);
        this.f1508b.setVisibility(8);
        this.f1507a.setVisibility(0);
        this.f1510d.setVisibility(0);
        if (this.f1518h.c1()) {
            View inflate = this.f1512f.inflate(R.layout.editorv2_inspector_group, (ViewGroup) null);
            com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.b(inflate, this.f1511e);
            this.f1507a.addView(inflate);
            View findViewById = inflate.findViewById(R.id.gameobject_name);
            F.d(this.f1518h.getName(), findViewById);
            F.e(F.a.SingleLineText, findViewById);
            TextInputEditText c10 = F.c(findViewById);
            c10.setOnEditorActionListener(new m(c10));
            F.c(findViewById).setOnFocusChangeListener(new n(findViewById));
        } else {
            View inflate2 = this.f1512f.inflate(R.layout.editorv2_inspector_gameobject, (ViewGroup) null);
            com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.b(inflate2, this.f1511e);
            this.f1507a.addView(inflate2);
            View findViewById2 = inflate2.findViewById(R.id.gameobject_name);
            CustomCheckBox customCheckBox = (CustomCheckBox) inflate2.findViewById(R.id.toggle);
            View findViewById3 = inflate2.findViewById(R.id.addComponent);
            F.d(this.f1518h.getName(), findViewById2);
            F.e(F.a.SingleLineText, findViewById2);
            TextInputEditText c11 = F.c(findViewById2);
            c11.setOnEditorActionListener(new i(c11));
            F.c(findViewById2).setOnFocusChangeListener(new j(findViewById2));
            customCheckBox.setChecked(this.f1518h.isEnabled());
            customCheckBox.setOnCheckedChangeListener(new k());
            findViewById3.setOnClickListener(new l());
        }
        w();
    }
}
